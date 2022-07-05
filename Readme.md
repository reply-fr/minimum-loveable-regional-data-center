# Minimum Loveable Regional Data Center

In this repository we specify what is expected from the Regional Data Centers (RVDC), and we document related architectural constructs.

## User Stories

With User Stories we document requirements from various personas across the eco-system of Regional Virtual Data Centers (RVDC). For example, the following user stories are in scope of the Data Officer:

```
As a Data Manager,
I backup data located in RVDC
so that data is protected from failures of the infrastructure

As a Data Manager,
I restore data to RVDC
in order to respond to failures signaled by Service Managers
```

While a common approach of agile teams is to start software engineering from user stories, for this project we add an extra step with feature files.

## Feature files

Feature files are based on [the Gherkin syntax](https://cucumber.io/docs/gherkin/reference/), that allows refinement of User Stories with testable statements. For example, following scenarios go deeper on previous user stories:

```
Scenario: where a Data Manager protects RVDC data
  Given one "Data Manager"
  When the daily backup window is starting
  Then a full copy of all virtual disks of a RVDC is made outside the RVDC VPC
   And an incremental copy of daily backup is done for "7 days"
   And copies of first day of the month backup are preserved for "24 months"
```

You will find the full collection of features files, including User Stories for each of them, in the directory [./features](./features). Some of these files are related to System Management, others to Active Directory. Of course, there are also features files for the Infrastructure Management and Cloud Operations.

## Technical Architecture

The implementation of feature files is described with architectural diagrams made with [drawio](https://app.diagrams.net/). You will find the full set of technical diagrams in the directory [./architecture](./architecture). These can be easily integrated into Confluence and similar wikis and on-line information services.
