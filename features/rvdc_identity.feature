Feature: connecting RVDC to identity management

  As a Identity Engineer,
  I manage user access across RVDC environments
  in order to identity management and governance across the RVDC. By using roles, accounts, and access permissions



Scenario: where a Identity Engineer is extending the corporate directory to a RVDC
  Given one "Identity Engineer"
  When Creation of a new user
  Then Configure Single Sign On to authorize the user to use multiple applications with the single sign-on facility


Scenario: where a Identity Engineer is extending the corporate directory to a RVDC
  Given one "Identity Engineer"
  When "Identity Engineer" wants to remove access for users when they leave the organization 
  Then Integrate access controls with operator and application life cycle and your centralized federation provider


Scenario: where a Identify Engineer is extending the corporate directory to a RVDC
  Given one "Identity Engineer"
  When Periodically
  Then remove permissions they no longer use and establish review processes to achieve least privilege permissions.
  Continuously monitor and reduce unused identities and permissions.