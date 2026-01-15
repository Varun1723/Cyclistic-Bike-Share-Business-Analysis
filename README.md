# 🚴 Cyclistic Bike-Share Analysis Case Study

## 📌 Project Overview
**Role:** Junior Data Analyst (Marketing Team)  
**Company:** Cyclistic (Fictional Bike-Share Company based in Chicago)  
**Goal:** Design marketing strategies to convert casual riders into annual members by analyzing historical bike trip data.  
**Data Source:** [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) (Public dataset provided by Motivate International Inc.)

---

## 🔍 Business Task
**The Problem:**
Cyclistic's finance analysts have concluded that annual members are significantly more profitable than casual riders. The Director of Marketing believes the company’s future growth depends on maximizing the number of annual memberships.

**The Question:**
> *How do annual members and casual riders use Cyclistic bikes differently?*

**The Strategy:**
Analyze 12 months of historical trip data (2019) to identify trends in usage, seasonality, and ride behaviors between the two user groups.

---

## 🛠️ Tech Stack & Workflow

| Phase | Tool | Description |
| :--- | :--- | :--- |
| **Data Cleaning** | **Python (Pandas)** | Standardized column names across Q1-Q4 datasets to ensure schema consistency. |
| **Data Storage** | **MySQL** | Loaded 3.8 million rows into a local database for efficient querying. |
| **Analysis** | **SQL** | Executed aggregation queries to calculate ride duration, seasonality, and weekly trends. |
| **Visualization** | **Tableau** | Built interactive dashboards to visualize the contrast between "Commuter" and "Leisure" behaviors. |

---

## 📊 Key Findings & Visualizations

### 1. Weekly Usage: Commuters vs. Weekend Warriors
**Insight:** Annual members use the service primarily during the workweek (Mon-Fri), indicating a commute-heavy use case. Casual riders dominate the weekends.

![Weekly Usage Trends](/output/visualisation_visuals/weekly_usage.png)

### 2. Seasonality: The Summer Surge
**Insight:** Casual ridership is highly seasonal, peaking in **June, July, and August**, while member ridership remains relatively stable throughout the year.

![Seasonality Trends](/output/visualisation_visuals/seasonality.png)

### 3. Ride Duration: The Cost of Leisure
**Insight:** Casual riders keep bikes for **2x-3x longer** than members on average. This suggests they are using the service for leisure/sightseeing rather than point-to-point travel.

![Ride Duration Comparison](/output/visualisation_visuals/ride_duration.png)

---

## 🚀 Recommendations
Based on the data analysis, here are the top 3 recommendations for the marketing team:

1.  **Introduce a "Weekend Warrior" Mini-Membership**
    * **Why:** Data shows casual riders are most active on Saturdays and Sundays.
    * **Action:** Create a lower-cost membership tier valid only on weekends (Fri-Sun) to capture the high-volume casual user base without cannibalizing full commuter memberships.

2.  **Launch "Summer Sprint" Campaigns in May**
    * **Why:** Casual ridership spikes in June.
    * **Action:** Target casual riders with digital ads one month prior to the peak season (May), offering a seasonal "Summer Pass" promotion.

3.  **Gamify "Leisure Riding" for Members**
    * **Why:** Casual riders enjoy long trips.
    * **Action:** Market the Annual Membership as a "Worry-Free" option that removes the stress of single-ride time limits, appealing to riders who want to keep the bike for long leisure rides.

---

## 📂 Repository Structure
```text
Cyclistic_Case_Study/
│
├── data/                  # Raw CSV files (Gitignored if too large)
├── python_scripts/        # Python files for fixing headers
├── sql_scripts/           # SQL queries for cleaning and analysis
├── visualizations/        # Exported Tableau charts (PNG/JPG)
├── README.md              # Project documentation