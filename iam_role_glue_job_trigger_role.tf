data "aws_iam_policy_document" "role_document" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = [
        "lambda.amazonaws.com",
      ]

      type = "Service"
    }
  }
}

resource "aws_iam_role" "role" {
  name               = "${local.prefix}-${var.namespace}-glue-job-trigger-role"
  assume_role_policy = "${data.aws_iam_policy_document.role_document.json}"
  tags               = "${local.tags}"
}

resource "aws_iam_role_policy_attachment" "attach_glue_job_trigger_policy" {
  policy_arn = "${aws_iam_policy.glue_job_trigger_policy.arn}"
  role       = "${aws_iam_role.role.name}"
}

resource "aws_iam_role_policy_attachment" "attach_glue_job_lambda_basic_policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "${aws_iam_role.role.name}"
}
