data "aws_iam_policy_document" "glue_job_trigger_policy_document" {
  statement {
    sid = "glue-job-trigger"

    actions = ["glue:StartJobRun"]
  }
}

resource "aws_iam_policy" "glue_job_trigger_policy" {
  name   = "${local.prefix}-glue-job-trigger-policy"
  path   = "${local.policy_path}"
  policy = "${data.aws_iam_policy_document.glue_job_trigger_policy_document.json}"
}
