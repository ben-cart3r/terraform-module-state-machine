locals {
  definition = merge(
    {
      Type = "Fail"
    },
    var.cause == null ? null : { Comment = var.cause },
    var.error == null ? null : { InputPath = var.error },
  )
}
