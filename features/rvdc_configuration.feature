Feature: configuration of one RVDC

  As an Accor RVDC Manager,
  I capture RVDC technical attributes in a configuration file
  so as to specify expected capabilities for one RVDC location
  # requirement: Accor RVDC Manager taylors RVDC to requirements of hotesl and sites connected to it
  # use case: direction of Accor integrates an acquired hospitality brand into the set of services provided by RVDC

  As an Accor Software Engineer,
  I capture RVDC technical attributes in a configuration file
  so as to specify expected capabilities for one RVDC location
  # requirement: Accor Software Engineer is funding the infrastructure needed for a RVDC
  # use case: new software package has been prepared and there is a need for a temporary testing environment


Scenario: where an Accor RVDC Manager is asking for a new RVDC
  Given one "Accor RVDC Manager"
  When a configuration file for a "production RVDC" is provided
   And "production RVDC" does not exit
  Then a new RVDC environment is created according to the provided configuration file

Scenario: where an Accor RVDC Manager is updating capabilities of one RVDC
  Given one "Accor RVDC Manager"
  When a configuration file for a "production RVDC" is provided
   And "production RVDC" already exists
  Then the RVDC environment is updated according to the provided configuration file

Scenario: where an Accor Software Engineer is asking for a new RVDC
  Given one "Accor Software Engineer"
  When a configuration file for a "non-production RVDC" is provided
   And "non-production RVDC" does not exit
  Then a new RVDC environment is created according to the provided configuration file

Scenario: where an Accor Software Engineer is updating capabilities of one RVDC
  Given one "Accor Software Engineer"
  When a configuration file for a "non-production RVDC" is provided
   And "non-production RVDC" already exists
  Then the RVDC environment is updated according to the provided configuration file
