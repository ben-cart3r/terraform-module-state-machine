locals {
  definition = merge(
    {
      Type     = "Parallel",
      Branches = var.branches
    },
    var.comment == null ? null : { Comment = var.comment },
    var.end ? { End = true } : null,
    var.end ? null : { Next = var.next },
    var.input_path == null ? null : { InputPath = var.input_path },
    var.output_path == null ? null : { OutputPath = var.output_path },
    var.result_path == null ? null : { ResultPath = var.result_path },
    var.result_selector == null ? null : { ResultSelector = var.result_selector },
    var.catch == null ? null : { Catch = var.catch },
    var.retry == null ? null : { Retry = var.retry }
  )
}
