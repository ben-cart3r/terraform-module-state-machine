locals {
  definition = jsonencode(
    merge(
      {
        Comment = var.comment
        StartAt = var.start_at
        States  = var.states
      },
      var.timeout_seconds == null ? null : { TimeoutSeconds = var.timeout_seconds },
      var.amazon_states_language_version == null ? null : { Version = var.amazon_states_language_version }
    )
  )
}
