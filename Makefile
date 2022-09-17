TERRAFORM_VERSION           ?= 1.1.7
TERRAFORM_DOCS_VERSION      ?= 0.16.0
TFSEC_VERSION               ?= v1.13.2-amd64
CUR_DIR                     := $(shell pwd)# ${PWD} is incosistent in GitHub Actions
SUBMODULES_PREFIX           := states

export

clean:
	rm -rf ./**/.terraform*

fmt:
	docker run --rm --platform=linux/amd64 \
		-v ${CUR_DIR}:/src \
		-w /src \
		hashicorp/terraform:${TERRAFORM_VERSION} fmt -recursive

sec-scan: clean
	docker run --rm --platform=linux/amd64 \
		-v ${CUR_DIR}:/src \
		tfsec/tfsec:${TFSEC_VERSION} /src

docs:
	docker run --rm --platform=linux/amd64 \
		-v "$(CUR_DIR):/terraform-docs" \
		quay.io/terraform-docs/terraform-docs:${TERRAFORM_DOCS_VERSION} markdown \
		--output-file ./README.md \
		--output-mode inject \
		/terraform-docs

docs-submodules:
	for submodule in ${SUBMODULES_PREFIX}/*; do\
		echo "Generating docs for $${submodule}..."; \
		docker run --rm --platform=linux/amd64 \
			-v "$(CUR_DIR)/$${submodule}:/terraform-docs" \
			quay.io/terraform-docs/terraform-docs:${TERRAFORM_DOCS_VERSION} markdown \
			--output-file ./README.md \
			--output-mode inject \
			/terraform-docs; \
	done


init-no-backend:
	docker run --rm --platform=linux/amd64 \
		-v ${CUR_DIR}:/src \
		-v ${HOME}/.ssh:/root/.ssh/ \
		-v ${HOME}/.gitconfig:/root/.gitconfig \
		-w /src \
		hashicorp/terraform:${TERRAFORM_VERSION} init \
		-backend=false

validate: clean init-no-backend
	docker run --rm --platform=linux/amd64 \
		-v ${CUR_DIR}:/src \
		-w /src \
		hashicorp/terraform:${TERRAFORM_VERSION} validate

validate-submodules: clean
	for submodule in ${SUBMODULES_PREFIX}/*; do\
		echo "Validating $${submodule}..."; \
		docker run --rm --platform=linux/amd64 \
			-v ${CUR_DIR}:/src \
			-v ${HOME}/.ssh:/root/.ssh/ \
			-v ${HOME}/.gitconfig:/root/.gitconfig \
			-w /src/$${submodule} \
			hashicorp/terraform:${TERRAFORM_VERSION} init \
			-backend=false; \
		docker run --rm --platform=linux/amd64 \
			-v ${CUR_DIR}:/src \
			-w /src/$${submodule} \
			hashicorp/terraform:${TERRAFORM_VERSION} validate; \
	done
