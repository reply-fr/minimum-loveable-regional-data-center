Feature: managing shared services provided by RVDC

  As an Application Owner,
  I deploy my application to selected RVDC
  so that connected hotels can consume it as a shared service

  As an Application Owner,
  I can express system requirements for my workloads
  so that IT Ops can shape a solution based on selected RVDC (compute, storage, infrastructure, ...)
  # risk: that regional managers ask for AWS regions not covered by RVDC deployments
  
  As a Regional Technical Engineer (part of IT Ops),
  I can act on some regional data centers close to me (at regional hub level)
  in order to serve regional application teams directly

  As an Application Owner,
  I want to interact closely with Migration Team selected,
  in order to document each use case and to control user acceptance tests (UAT)
  
  As a Regional Technical Engineer (part of IT Ops),
  I prefer to lead Application Owners towards SaaS deployments for non-differenciation workloads
  in order to limit deployments on RVDC to PaaS and IaaS workloads
  
  As an Application Owner,
  I want to lift and shift existing workload on-premise or in hosted environment to RVDC
  in order to accelerate the provisioning of development non-production resources

  As an Application Owner,
  I want to lift and shift existing workload on-premise or in hosted environment to RVDC
  in order to enable new ways of developing and operating information systems

  As a Regional Financial Officer,
  I want to lift and shift existing business critical workload to RVDC
  in order to improve and rationalize service levels of business critical workloads

  As a Regional Technical Engineer (part of IT Ops),
  I want to lift and shift locally managed workloads to RVDC
  in order to replace shadow IT with managed services provided from RVDC

Scenario: where a Service Manager deploys a new application to RVDC
  Given one "a Service Manager"
  When 
  Then 
