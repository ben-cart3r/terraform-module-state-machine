locals {
  definition = merge(
    {
      Type = "Pass"
    },
    var.comment == null ? null : { Comment = var.comment },
    var.end ? { End = true } : null,
    var.end ? null : { Next = var.next },
    var.input_path == null ? null : { InputPath : var.input_path },
    var.output_path == null ? null : { OutputPath : var.output_path },
    var.parameters == null ? null : { Parameters : var.parameters },
    var.result == null ? null : { Result : var.result },
    var.result_path == null ? null : { ResultPath : var.result_path }
  )
}
