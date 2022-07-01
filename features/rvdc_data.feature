Feature: managing data located in RVDC

  As an Accor Data Manager,
  I backup data located in RVDC
  so that data is protected from failures of the infrastructure

  As an Accor Data Manager,
  I restore data to RVDC
  in order to respond to failures signaled by Accor Service Managers

Scenario: where an Accor Data Manager protects RVDC data
  Given one "Accor Data Manager"
  When the daily backup window is starting
  Then a full copy of all virtual disks of a RVDC is made outside the RVDC VPC
   And an incremental copy of daily backup is done for "7 days"
   And copies of first day of the month backup are preserved for "24 months"

Scenario: where an Accor Data Manager restores a file
  Given one "Accor Service Manager"
  When an "Accor Service Manager" is asking for "file restoration"
  Then data is extracted from most recent backup and restored on target virtual disk

Scenario: where an Accor Data Manager restores a virtual disk
  Given one "Accor Service Manager"
  When an "Accor Service Manager" is asking for "disk restoration"
  Then data is extracted from past backups and restored on target virtual disk

Scenario: where an Accor Data Manager restores a service
  Given one "Accor Service Manager"
  When an "Accor Service Manager" is asking for "service restoration"
  Then data is extracted from past backups and restored on disks attached to servers
