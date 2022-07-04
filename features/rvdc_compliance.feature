Feature: enforcing compliance for RVDC services

  As a Compliance Engineer,
  I Develop compliance policies and procedures for RVDC services.
  in order to  helping you avoid waste, fraud, abuse, discrimination, and other practices that disrupt operations and put the company at risk.


Scenario: where a  Compliance Engineer is extending corporate compliance controls to a RVDC
  Given one " Compliance Engineer"
  When there is a need to put a tagging strategy  
  Then Put a tagging a policy that doesn't allow to put personally identifiable information (PII) or other confidential or sensitive information in tags.


Scenario: where a  Compliance Engineer is extending corporate compliance controls to a RVDC
  Given one " Compliance Engineer"
  When " Compliance Engineer" wants to define a role that forbid uploading data to S3 buckets without encryption
  Then Get a notifcation where there is any attempt to upload no Encrypted data to S3 Buckets

