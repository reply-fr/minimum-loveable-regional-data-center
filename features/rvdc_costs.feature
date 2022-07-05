Feature: continuously optimising RVDC costs

  As a FinOps Engineer,
  I want to observe precisely expenses incurred by cloud resources
  in order to analyze and optimize value for money of our information systems

  As a FinOps Engineer,
  I want to detect deviations from budget consumption
  in order to analyze unplanned events and prevent financial impact 
  
  As a FinOps Engineer,
  I want to influence the software pipelines
  in order to automate tagging, resource life cycle

  As a FinOps Engineer,
  I need to assign budget owners to AWS accounts and cloud resources
  in order to involve as many employees as possible into FinOps
  
  As a FinOps Engineer,
  I can engage with corporate software development teams
  in order to include financial aspects into design decisions


Scenario: where a  FinOps Engineer is extracting costs ad usage reports from RVDC
  Given one "FinOps Engineer"
  When the consumption exceeds a certain amount
  Then The "FinOps Engineer" will put a maximum of budget for certain services, 
  ad get notified when this budget exceeds


Scenario: where a FinOps Engineer is extracting costs ad usage reports from RVDC
  Given one "FinOps Engineer"
  When Control who can create, modifiy ad delete resources
  Then Implement groups and roles that align to RVDC  policies ad control who
  can create, modify, or decommission instaces ad resources in each group
  Which would help controling the consumption and avoid overuse of certain services
