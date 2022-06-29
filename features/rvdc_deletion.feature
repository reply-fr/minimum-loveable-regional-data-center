Feature: deletion of individual RVDC

  As an Accor RVDC Manager,
  I request the deletion of a RVDC location
  so as to terminate services provided to hotels and remote sites, and to destroy related cloud resources

  As an Accor Software Engineer,
  I request the deletion of a RVDC location
  so as to terminate tests and to destroy cloud resources used during tests


Scenario: where an Accor RVDC Manager is asking for RVDC deletion
  Given one "Accor RVDC Manager"
  When there is a need for terminating services provided by one RVDC
  Then the "Accor RVDC Manager" requests the deletion of a "production RVDC"

Scenario: where an Accor Software Engineer is asking for RVDC deletion
  Given one "Accor Software Engineer"
  When there is a need for terminating a test RVDC environment
  Then the "Accor Software Engineer" requests the deletion of a "non-production RVDC"

Scenario Outline: where an invoicing context is purged for deleted RVDC
  Given one <requestor>
  When a request is made for the deletion of a <target>
  Then all RVDC resources are deleted
  And there is no cost anymore invoiced to <budget>

  Examples: request contexts
  | requestor               | target              | budget    |
  | Accor RVDC Manager      | production RVDC     | permanent |
  | Accor Software Engineer | non-production RVDC | sandbox   |
