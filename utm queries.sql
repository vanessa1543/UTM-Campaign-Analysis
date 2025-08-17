CREATE DATABASE utm_campaigns;
USE utm_campaigns;
CREATE TABLE campaign_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Source VARCHAR(50),
    Medium VARCHAR(50),
    Campaign VARCHAR(100),
    Device VARCHAR(50),
    Location VARCHAR(50),
    Clicks INT,
    Conversions INT,
    Revenue DECIMAL(12,2),
    UTM_URL TEXT
);
show tables;
SELECT * FROM campaign_data limit 10;

-- Q3. Campaign performance
SELECT 
    Campaign,
    SUM(Clicks) AS total_clicks,
    SUM(Conversions) AS total_conversions,
    SUM(Revenue) AS total_revenue
FROM campaign_data
GROUP BY Campaign
ORDER BY total_revenue DESC;

-- Q4. Conversion rates
SELECT 
    Campaign,
    SUM(Conversions) / SUM(Clicks) * 100 AS conversion_rate
FROM campaign_data
GROUP BY Campaign
ORDER BY conversion_rate DESC;
-- Q5 Source and Medium Insights
SELECT 
    Source,
    SUM(Revenue) AS total_revenue
FROM campaign_data
GROUP BY Source
ORDER BY total_revenue DESC;
-- Q6 Which Medium performed best?
SELECT 
    Medium,
    SUM(Revenue) AS total_revenue
FROM campaign_data
GROUP BY Medium
ORDER BY total_revenue DESC;
-- Q7 Time-based Analysis(Revenue trend by month)
SELECT 
    YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(Revenue) AS monthly_revenue
FROM campaign_data
GROUP BY year, month
ORDER BY year, month;
-- Q8 Rank Campaigns by revenue within each source
SELECT 
    Source,
    Campaign,
    SUM(Revenue) AS total_revenue,
    RANK() OVER (PARTITION BY Source ORDER BY SUM(Revenue) DESC) AS rank_within_source
FROM campaign_data
GROUP BY Source, Campaign;



