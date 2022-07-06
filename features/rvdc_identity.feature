Feature: connecting RVDC to identity management

  As a Cloud Engineer,
  I create, configure and manage identities during the design and test phases
  in order to authenticate and authorize selected persons to access the infrastructure

  As a Cloud Engineer,
  I create, configure and manage instance roles and security deployed on AWS
  in order to leverage AWS identity and Access Management

  As a Cloud Engineer,
  I handover the management of identities to Cloud Operations
  in order to support infrastructure authentication, authorization at scale

  As a Cloud Operations Engineer,
  I manage identities during normal operations based on observability
  in order to maintain full access to the infrastructure by machines and Infrastructure Engineers, Business Users, and Application Support Engineers

  As a Regional Engineer,
  I receive monthly reports on identity life cycles
  in order to deprovision unused accounts (disable then delete)

  As a System Engineer,
  I am using a delegation account for administrative tasks
  in order to better seggregate roles and duties

  As a Regional Engineer,
  I qualify identity requirements from Application Owners
  in order to define groups in the corporate directory and related permissions, and service accounts

  As a Migration Manager,
  I interact with the Active Directory Team
  in order to extend the support of regional workloads from regional hubs to RVDC

  As a Active Directory Team,
  I extend existing regional domains to RVDC
  in order to support lift and shift of regional workloads to RVDC

Scenario: where an identity is created
 Given a corporate directory of identities
  When a ticket is raised in ServiceNow for the creation of an identity
  Then the request is validated
   And an automated software pipeline is triggered for identity creation
   And the requestor is notified
   And the ticket is closed in ServiceNow

 Scenario: where an identity is deleted
  Given a corporate directory of identities
   When a ticket is raised in ServiceNow for the creation of an identity
   Then the request is validated
    And an automated software pipeline is triggered for identity disablement
    And the requestor is notified
    And the ticket is closed in ServiceNow

 Scenario: where identity permissions are granted or revoked
  Given a corporate directory of identities
   When a ticket is raised in ServiceNow for the creation of an identity
   Then the request is validated
    And an automated software pipeline is triggered for group assignment of the identity
    And group is providing requested permission
    And the requestor is notified
    And the ticket is closed in ServiceNow

Scenario: where a corporate group is given permission into AWS account
 Given a corporate directory of identities (AD)
   And a set of AWS account
   And federation between corporate directory (AD) and AWS SSO
  When a person authenticates against the corporate directory
   And the person visits the AWS IdP Portal
  Then the person clicks on the select AWS


Scenario: where identities and permissions are reviewed periodically
 Given a corporate directory of identities (AD)
  When monthly periods are ending
  Then reports are sent to regions to provide them insight on identities usage
   And regional teams can delete unused accounts appropriately
