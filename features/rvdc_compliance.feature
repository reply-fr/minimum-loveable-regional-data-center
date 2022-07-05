Feature: enforcing compliance for RVDC services

  As a Compliance Engineer,
  I develop compliance policies for regional services
  in order to avoid waste, fraud, abuse, discrimination, and other practices that disrupt operations and put the company at risk.


Scenario: where a Compliance Engineer is extending corporate compliance controls to a RVDC
  Given one "Compliance Engineer"
  When there is a need to put a tagging strategy
  Then put a tagging policy that doesn't allow to put personally identifiable information (PII) or other confidential or sensitive information in tags.


Scenario: where a Compliance Engineer is extending corporate compliance controls to a RVDC
  Given one "Compliance Engineer"
  When " Compliance Engineer" wants to define a role that forbid uploading data to S3 buckets without encryption
  Then get a notification where there is any attempt to upload no Encrypted data to S3 Buckets
