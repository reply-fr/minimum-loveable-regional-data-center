Feature: continuously optimising RVDC costs

  As a FinOps Engineer,
  I want to observe precisely expenses incurred by cloud resources
  in order to analyze and optimize value for money of our information systems

  As a FinOps Engineer,
  I want to report precisely expenses incurred by cloud resources
  in order to communicate to regions the costs of the resources that they use (show back)

  As a FinOps Engineer,
  I want to report precisely shared expenses incurred by cloud resources
  in order to split costs across regions according to their consumption (show back)

  As a FinOps Engineer,
  I want to detect deviations from budget and consumption forecast
  in order to analyze unplanned events and prevent financial impact 
  
  As a FinOps Engineer,
  I want to detect deviations from baseline
  in order to analyze unexpected over- and under- consumptions and react appropriately 
  
  As a FinOps Engineer,
  I need to assign budget owners to AWS accounts and cloud resources
  in order to involve as many employees as possible into FinOps
  
  As a FinOps Engineer,
  I want to influence the software pipelines
  in order to automate tagging and resource life cycle

  As a FinOps Engineer,
  I can engage with corporate software development teams
  in order to include financial aspects into design decisions

  As a FinOps Engineer,
  I want to predict running costs of future services before they are deployed
  in order to budget and plan the rollout and to sustain related costs
  
  As a FinOps Engineer,
  I want to aggregate consumptions of cloud resources over one year and three years
  in order to negociate discounts from AWS


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
