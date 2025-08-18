# UTM Campaign Analysis Project  

This project analyzes marketing campaign performance (Jan–Jun 2024) using **Python, SQL, and Power BI**.  
The goal is to evaluate campaign effectiveness, identify revenue drivers, and optimize underperforming channels.  

---

## Problem Statement  
Businesses often run multiple campaigns across different channels, but struggle to:  
- Track performance across campaigns in a centralized way  
- Understand which channels drive **revenue and conversions**  
- Compare actual results against **targets**  
- Make data-driven decisions for future campaign investments  

This project answers those questions using a structured data analysis approach.  

---

## Pre-Analysis Questions  
1. Which campaigns generated the highest **revenue**?  
2. Which campaigns achieved the best **conversion rates**?  
3. How do different sources (Google, LinkedIn, Email, etc.) perform?  
4. Are we meeting or exceeding **conversion targets**?  
5. Which campaigns should be scaled up or optimized?  

---

## Executive Summary (Jan–Jun 2024 UTM Campaign Performance)  
- **Clicks:** 76K  
- **Conversions:** 38K  
- **Revenue:** $3.98M  
- **Conversion Rate:** 50.23% (exceeded 45% target by +111%)  

**Key Insights:**  
- **Top Drivers:** Webinar campaigns, Google, and LinkedIn delivered the most value.  
- **Underperformers:** Email and Facebook consistently lagged in both revenue and efficiency.  
- **Black Friday Campaign:** Conversion efficiency was strong at 54.9% (well above 35% target).  
- **Webinar Promo:** Revenue improved, though conversion rate dipped slightly (49.7%).  

Each click generated an average of **$52.98 in revenue**, highlighting high-quality traffic and strong ROI potential.  

---

## Tools & Workflow  
- **SQL** → Cleaned and aggregated campaign data  
- **Python (Pandas, Matplotlib, Seaborn)** → Exploratory analysis and visualizations  
- **Power BI** → Interactive dashboard and KPI tracking  

---

## Dataset Information  
- **Period:** Jan–Jun 2024  
- **Source:** UTM tracking data (campaigns, clicks, conversions, revenue)  
- **Key Fields:** Campaign, Source, Clicks, Conversions, Revenue  

---

## Project Structure  
UTM-Campaign-Analysis/
│
├── data/ # Raw & cleaned datasets
├── sql/ # SQL queries used for aggregation & analysis
│ └── campaign_analysis.sql
├── python/ # Jupyter notebooks & scripts
│ └── utm_tracking.ipynb
├── dashboard/ # Power BI .pbix file and dashboard screenshots
│ └── Campaign_Dashboard.png
├── README.md # Project documentation
└── requirements.txt # Python dependencies

---

## Python Analysis  
Sample analysis performed in Jupyter Notebook:  
```python
# Calculate conversion rate
df["conversion_rate"] = (df["conversions"] / df["clicks"]) * 100

Example visualization:

### 1. Top 5 Campaigns by Revenue  
![Top Campaigns by Revenue](Top5_revenue.png)  
  

### 2. Device Performance  
![Device Performance](device_performance.png)  

### 3. Source/Medium Performance  
![Source Medium](revenue.png)  

### 4. Location × Device Heatmap  
![Location Device Heatmap](Heatmap.png) 

## SQL Analysis 

Sample SQL query used to group performance by campaign:
SELECT 
    campaign,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    SUM(revenue) AS total_revenue,
    (SUM(conversions)*1.0 / SUM(clicks)) * 100 AS conversion_rate
FROM utm_campaigns
GROUP BY campaign;

## Power BI Dashboard 

Finally, we built an interactive dashboard in Power BI to track campaign performance.

### Preview of Dashboard
![UTM Campaign Dashboard](Campaign_Dashboard.png)

## Key Dashboard Features:

**KPIs:** Total clicks, conversions, revenue, conversion rate vs. target

**Donut Chart:** Revenue by campaign

**Line & Clustered Column Chart:** Revenue and conversion rate per campaign

**KPI Visuals with Targets:** Track whether campaigns met 20–35% conversion rate goals

## Final Insights & Recommendations

Focus investment on Webinar and Google campaigns – strong ROI and revenue growth.

Optimize or scale down Email and Facebook campaigns – underperforming across all metrics.

Adjust conversion targets upwards (20–35%) as current performance consistently exceeds benchmarks.

Continue monitoring campaign efficiency to balance scaling with traffic quality
 

