locals {
  definition = merge(
    {
      Type     = "Map",
      Iterator = var.iterator
    },
    var.comment == null ? null : { Comment = var.comment },
    var.end ? { End = true } : null,
    var.end ? null : { Next = var.next },
    var.input_path == null ? null : { InputPath = var.input_path },
    var.output_path == null ? null : { OutputPath = var.output_path },
    var.result_path == null ? null : { ResultPath = var.result_path },
    var.result_selector == null ? null : { ResultSelector = var.result_selector },
    var.catch == null ? null : { Catch = var.catch },
    var.retry == null ? null : { Retry = var.retry },
    var.items_path == null ? null : { ItemsPath = var.items_path },
    var.max_concurrency == null ? null : { MaxConcurrency = var.max_concurrency }
  )
}
