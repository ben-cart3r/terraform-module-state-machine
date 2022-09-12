locals {
  definition = merge(
    {
      Type     = "Task",
      Resource = var.resource
    },
    var.comment == null ? null : { Comment = var.comment },
    var.end ? { End = true } : null,
    var.end ? null : { Next = var.next },
    var.input_path == null ? null : { InputPath = var.input_path },
    var.output_path == null ? null : { OutputPath = var.output_path },
    var.parameters == null ? null : { Parameters = var.parameters },
    var.result_path == null ? null : { ResultPath = var.result_path },
    var.result_selector == null ? null : { ResultSelector = var.result_selector },
    var.catch == null ? null : { Catch = var.catch },
    var.heartbeat_seconds == null ? null : { HeartbeatSeconds = var.heartbeat_seconds },
    var.heartbeat_seconds_path == null ? null : { HeartbeatSecondsPath = var.heartbeat_seconds_path },
    var.retry == null ? null : { Retry = var.retry },
    var.timeout_seconds == null ? null : { TimeoutSeconds = var.timeout_seconds },
    var.timeout_seconds_path == null ? null : { TimeoutSecondsPath = var.timeout_seconds_path }
  )
}
