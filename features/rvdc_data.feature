Feature: maaging data located in RVDC

  As a  Data Maager,
  I backup data located in RVDC
  so that data is protected from failures of the infrastructure

  As a  Data Maager,
  I restore data to RVDC
  in order to respond to failures signaled by  Service Maagers

Scenario: where a  Data Maager protects RVDC data
  Given one " Data Maager"
  When the daily backup window is starting
  Then a full copy of all virtual disks of a RVDC is made outside the RVDC VPC
   ad a incremental copy of daily backup is done for "7 days"
   and copies of first day of the month backup are preserved for "24 months"

Scenario: where a  Data Maager restores a file
  Given one " Service Maager"
  When a " Service Maager" is asking for "file restoration"
  Then data is extracted from most recent backup ad restored on target virtual disk

Scenario: where a  Data Maager restores a virtual disk
  Given one " Service Maager"
  When a " Service Maager" is asking for "disk restoration"
  Then data is extracted from past backups ad restored on target virtual disk

Scenario: where a  Data Maager restores a service
  Given one " Service Maager"
  When a " Service Maager" is asking for "service restoration"
  Then data is extracted from past backups ad restored on disks attached to servers
