Feature: configuration of one RVDC

  As an  RVDC Manager,
  I capture RVDC technical attributes in a configuration file
  so as to specify expected capabilities for one RVDC location
  # requirement:  RVDC Manager taylors RVDC to requirements of hotesl and sites connected to it
  # use case: direction of  integrates an acquired hospitality brand into the set of services provided by RVDC

  As a Software Engineer,
  I capture RVDC technical attributes in a configuration file
  so as to specify expected capabilities for one RVDC location
  # requirement:  Software Engineer is funding the infrastructure needed for a RVDC
  # use case: new software package has been prepared and there is a need for a temporary testing environment


Scenario: where a  RVDC Manager is asking for a new RVDC
  Given one " RVDC Manager"
  When a configuration file for a "production RVDC" is provided
   And "production RVDC" does not exit
  Then a new RVDC environment is created ding to the provided configuration file

Scenario: where an  RVDC Manager is updating capabilities of one RVDC
  Given one " RVDC Manager"
  When a configuration file for a "production RVDC" is provided
   And "production RVDC" already exists
  Then the RVDC environment is updated ding to the provided configuration file

Scenario: where an  Software Engineer is asking for a new RVDC
  Given one " Software Engineer"
  When a configuration file for a "non-production RVDC" is provided
   And "non-production RVDC" does not exit
  Then a new RVDC environment is created ding to the provided configuration file

Scenario: where an  Software Engineer is updating capabilities of one RVDC
  Given one " Software Engineer"
  When a configuration file for a "non-production RVDC" is provided
   And "non-production RVDC" already exists
  Then the RVDC environment is updated ding to the provided configuration file
