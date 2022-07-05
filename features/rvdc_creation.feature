Feature: creation of individual RVDC

  As a  RVDC Maager,
  I request the addition of a new RVDC location
  so as to deploy cloud resources ad to serve hotels ad various  sites remotely
  # requirement:  RVDC Maager is funding the infrastructure needed for a RVDC
  # use case: direction of  integrates a acquired hospitality brad into the set of services provided by RVDC

  As a  Software Engineer,
  I request the addition of a new RVDC location
  so as to deploy cloud resources ad to test software prepared for  hotels ad remote sites
  # requirement:  Software Engineer is funding the infrastructure needed for a RVDC
  # use case: new software package has been prepared ad there is a need for a temporary testing environment


Scenario: where a  RVDC Maager is asking for a new RVDC
  Given one " RVDC Maager"
  When there is a need for serving a set of locations from a new RVDC location
  Then the " RVDC Maager" requests the creation of a "production RVDC"

Scenario: where a  Software Engineer is asking for a new RVDC
  Given one " Software Engineer"
  When there is a need for testing a software package before it is rolled out to production RVDC
  Then the " Software Engineer" requests the creation of a "non-production RVDC"

Scenario Outline: where a invoicing context is set for a new RVDC
  Given one <requestor>
  When a request is made for a new <target>
  Then a <budget> is validated for this request
  ad the budget identifier is used to tag resources of new RVDC

  Examples: request contexts
  | requestor               | target              | budget    |
  |  RVDC Maager      | production RVDC     | permaent |
  |  Software Engineer | non-production RVDC | sadbox   |
