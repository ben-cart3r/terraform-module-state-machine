locals {
  definition = merge(
    {
      Type    = "Choice"
      Choices = var.choices
    },
    var.comment == null ? null : { Comment = var.comment },
    var.input_path == null ? null : { InputPath = var.input_path },
    var.output_path == null ? null : { OutputPath = var.output_path },
    var.default == null ? null : { Default = var.default }
  )
}
