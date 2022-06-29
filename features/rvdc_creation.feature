Feature: creation of individual RVDC

  As an Accor RVDC Manager,
  I request the addition of a new RVDC location
  so as to deploy cloud resources and to serve hotels and various Accor sites remotely
  # requirement: Accor RVDC Manager is funding the infrastructure needed for a RVDC
  # use case: direction of Accor integrates an acquired hospitality brand into the set of services provided by RVDC

  As an Accor Software Engineer,
  I request the addition of a new RVDC location
  so as to deploy cloud resources and to test software prepared for Accor hotels and remote sites
  # requirement: Accor Software Engineer is funding the infrastructure needed for a RVDC
  # use case: new software package has been prepared and there is a need for a temporary testing environment


Scenario: where an Accor RVDC Manager is asking for a new RVDC
  Given one "Accor RVDC Manager"
  When there is a need for serving a set of locations from a new RVDC location
  Then the "Accor RVDC Manager" requests the creation of a "production RVDC"

Scenario: where an Accor Software Engineer is asking for a new RVDC
  Given one "Accor Software Engineer"
  When there is a need for testing a software package before it is rolled out to production RVDC
  Then the "Accor Software Engineer" requests the creation of a "non-production RVDC"

Scenario Outline: where an invoicing context is set for a new RVDC
  Given one <requestor>
  When a request is made for a new <target>
  Then a <budget> is validated for this request
  And the budget identifier is used to tag resources of new RVDC

  Examples: request contexts
  | requestor               | target              | budget    |
  | Accor RVDC Manager      | production RVDC     | permanent |
  | Accor Software Engineer | non-production RVDC | sandbox   |
