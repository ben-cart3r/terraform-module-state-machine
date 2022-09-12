locals {
  definition = merge(
    {
      Type = "Wait"
    },
    var.comment == null ? null : { Comment = var.comment },
    var.end ? { End = true } : null,
    var.end ? null : { Next = var.next },
    var.input_path == null ? null : { InputPath = var.input_path },
    var.output_path == null ? null : { OutputPath = var.output_path },
    var.seconds == null ? null : { Parameters = var.seconds },
    var.seconds_path == null ? null : { Result = var.seconds_path },
    var.timestamp == null ? null : { ResultPath = var.timestamp },
    var.timestamp_path == null ? null : { Result = var.timestamp_path },
  )
}
