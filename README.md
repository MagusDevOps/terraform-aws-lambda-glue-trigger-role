# terraform-aws-lambda-glue-trigger-role

## Usage
```HCL
module "lambda-glue-trigger-role" {
  source            = "MagusDevOps/lambda-glue-trigger-role/aws"
  version           = "x.x.x"
  ...
}
```
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- aws

## Required Inputs

The following input variables are required:

### account\_id

Description: AWS account ID

Type: `string`

### namespace

Description: a name that provides a logical grouping of resources

Type: `string`

### prefix

Description: a string that provides a differentiation an environment

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### additional\_tags

Description: A map of additional tags

Type: `map`

Default: `{}`

### namespace\_tag\_key

Description: tag key for the namespace variables

Type: `string`

Default: `"namespace"`

### prefix\_tag\_key

Description: the prefix tag key defaults to 'environment'

Type: `string`

Default: `"environment"`

## Outputs

The following outputs are exported:

### role\_arn

### role\_name

