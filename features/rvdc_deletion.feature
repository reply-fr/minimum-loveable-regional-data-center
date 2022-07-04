Feature: deletion of individual RVDC

  As a  RVDC Manager,
  I request the deletion of a RVDC location
  so as to terminate services provided to hotels and remote sites, and to destroy related cloud resources

  As a  Software Engineer,
  I request the deletion of a RVDC location
  so as to terminate tests and to destroy cloud resources used during tests


Scenario: where a RVDC Manager is asking for RVDC deletion
  Given one " RVDC Manager"
  When there is a need for terminating services provided by one RVDC
  Then the " RVDC Manager" requests the deletion of a "production RVDC"

Scenario: where a  Software Engineer is asking for RVDC deletion
  Given one " Software Engineer"
  When there is a need for terminating a test RVDC environment
  Then the " Software Engineer" requests the deletion of a "non-production RVDC"

Scenario Outline: where a invoicing context is purged for deleted RVDC
  Given one <requestor>
  When a request is made for the deletion of a <target>
  Then all RVDC resources are deleted
  And there is no cost anymore invoiced to <budget>

  Examples: request contexts
  | requestor               | target              | budget    |
  |  RVDC Manager      | production RVDC     | permanent |
  |  Software Engineer | non-production RVDC | sandbox   |
