# IMUNE — Health Investment Advisor

**IMUNE** is a decision-support MVP that transforms hospital operational data into indicators, dashboards and prioritization views to support investigation of units with potential process bottlenecks.

The project combines data ingestion, relational storage, SQL analytics and an Oracle APEX application.

## Problem

Hospital operational data can be difficult to compare across units. IMUNE organizes this information into analytical views that help investigate differences in volume, patient profile and authorization time.

The MVP focuses on turning raw hospital records into structured indicators rather than making clinical decisions.

## Data pipeline

~~~text
DataSUS (SIA/SIH)
        ↓
TabWin conversion (.dbc/.dbf → .csv)
        ↓
OCI Object Storage
        ↓
Oracle Autonomous Database
        ↓
SQL cleaning and analytical queries
        ↓
Oracle APEX
        ↓
Dashboards, rankings and hospital drill-down
~~~

The main table documented in the MVP is ADMIN.BARI.

## Analytical layer

The SQL layer supports analyses such as:

- volume of hospital records by unit;
- average patient age;
- average authorization time;
- temporal analysis;
- sex and race distributions;
- hospital-level comparisons;
- investigation-priority ranking.

## Oracle APEX application

The MVP includes:

- executive dashboard;
- interactive hospital filter;
- KPIs;
- comparative charts;
- temporal analysis;
- hospital analysis page;
- drill-down and hospital details;
- prioritization view.

Visual evidence of the application is documented in [docs/evidencias.md](docs/evidencias.md).

## Prioritization heuristic

For the MVP, hospitals are grouped according to average authorization time:

- **High:** 20 days or more
- **Medium:** 5 to under 20 days
- **Low:** under 5 days

This classification is a **project heuristic for investigation prioritization** and is not an official clinical indicator.

## Tech stack

- Oracle Autonomous Database
- Oracle Cloud Infrastructure (OCI) Object Storage
- Oracle APEX
- SQL
- DataSUS / TabWin
- Git and GitHub

## Repository structure

~~~text
.
├── apex/       # Oracle APEX application export
├── data/       # Data acquisition and pipeline documentation
├── docs/       # Architecture and visual evidence
├── imagens/    # Project images
└── sql/        # Ingestion, cleaning and analytical SQL
~~~

## Architecture

A more detailed description of the solution is available in [docs/arquitetura.md](docs/arquitetura.md).

## What this project demonstrates

- Data architecture and pipeline design
- SQL-based cleaning, aggregation and analytics
- Cloud data storage
- Building decision-support dashboards
- Translating operational data into actionable analytical views
