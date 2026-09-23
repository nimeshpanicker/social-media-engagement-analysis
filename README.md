# 📱 Social Media Engagement Analysis

![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Excel](https://img.shields.io/badge/Excel-Data-orange?logo=microsoftexcel)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Portfolio-orange)
![Status](https://img.shields.io/badge/Project-Completed-success)

> An end-to-end **Social Media Engagement Analytics** project using SQL, Excel, and Power BI to analyse platform performance, content effectiveness, audience engagement, reach, clicks, follower growth, conversion-related metrics, and sentiment.

---

# 📌 Project Overview

Social media platforms generate large amounts of engagement data across different platforms and content formats.

This project analyses **200 social media posts** across:

- Facebook
- Instagram
- YouTube
- LinkedIn

and evaluates performance across:

- Engagement Rate
- Reach
- Impressions
- Clicks
- CTR
- Profile Visits
- Likes
- Comments
- Shares
- Follower Growth
- Content Type
- Sentiment

# 📊 Dataset Overview

| AttributeDetails  |                     |
| ----------------- | ------------------- |
| Total Posts       | 200                 |
| Platforms         | 4                   |
| Content Types     | 4                   |
| Columns           | 13                  |
| Sentiment Classes | Positive / Negative |
| Main Analysis     | SQL                 |
| Dashboard         | Power BI            |
| Supporting Tool   | Excel               |

### Platforms
```
```
```
Facebook
Instagram
YouTube
LinkedIn
```

### Content Types
```
```
```
Post
Story
Reel
Article
```

---

# 🗂️ Dataset Schema

The project uses a single table:

```
```

```
SocialMediaEngagement
```

| ColumnDescription |                               |
| ----------------- | ----------------------------- |
| `Platform`        | Social media platform         |
| `EngagementRate`  | Engagement efficiency metric  |
| `FollowersGrowth` | Follower growth               |
| `AvgDailyReach`   | Average daily reach           |
| `Impressions`     | Number of impressions         |
| `Clicks`          | Number of clicks              |
| `ProfileVisits`   | Profile visits                |
| `Followers`       | Followers                     |
| `ContentType`     | Post, Story, Reel, or Article |
| `Likes`           | Number of likes               |
| `Comments`        | Number of comments            |
| `Shares`          | Number of shares              |
| `Sentiment`       | Positive / Negative           |

---

# 🛠️ Tools & Technologies

## SQL

Used for:

-  Data aggregation 
-  KPI calculations 
-  Platform analysis 
-  Content analysis 
-  CTR calculation 
-  Profile-visit rate calculation 
-  Conditional filtering 
-  CTEs 
-  Window functions 
-  Ranking 
-  Top-N analysis 
-  Comparative analysis 
-  Composite KPI analysis 

## Power BI

Used for:

-  KPI cards 
-  Platform comparison 
-  Engagement-stage analysis 
-  Sentiment analysis 
-  Content performance matrix 
-  Click distribution 
-  Platform × content analysis 
-  Business dashboard reporting 

## Excel

Used for:

-  Dataset storage 
-  Data inspection 
-  Supporting analysis 

---

# 🔎 SQL Analysis

The SQL analysis covers platform, engagement, conversion, content, sentiment, ranking, and advanced KPI questions.

The analysis includes queries for:

-  Post volume by platform 
-  Average engagement rate 
-  Follower growth 
-  Reach and impressions 
-  Likes, comments, and shares 
-  CTR 
-  Profile Visit Rate 
-  Platform-content performance 
-  Best-performing content 
-  Top-N content 
-  Conditional platform analysis 
-  Sentiment analysis 
-  Top-performing posts 
-  Composite platform scoring 

---

# 🧮 Key Calculated Metrics

## Click-Through Rate

```
```

```
CTR =
Total Clicks ÷ Total Impressions × 100
```

## Profile Visit Rate

```
```

```
Profile Visit Rate =
Total Profile Visits ÷ Total Impressions × 100
```

## Composite Platform Score

The project also uses an analytical composite score based on:

-  Average Engagement Rate 
-  Average Reach 
-  CTR 
-  Average Follower Growth 

The metrics are normalised using a min-max approach with equal weighting.

---

# 📈 Key Performance Indicators

| KPIResult          |           |
| ------------------ | --------- |
| Total Posts        | 200       |
| Platforms          | 4         |
| Content Types      | 4         |
| Total Likes        | 1,009,901 |
| Total Comments     | 194,621   |
| Total Clicks       | 5,047,472 |
| Total Shares       | 155,178   |
| Positive Sentiment | 50.5%     |
| Negative Sentiment | 49.5%     |

### Overall Engagement Volume

The dataset contains more than:

- **5 million clicks** 
- **1 million likes** 
- **194K comments** 
- **155K shares** 

---

# 📣 Platform Performance

## Platform KPI Comparison

| PlatformAvg Engagement RateTotal Follower GrowthAvg Daily Reach |       |         |           |
| --------------------------------------------------------------- | ----- | ------- | --------- |
| Facebook                                                        | 8.23% | 75,920  | 35,350.52 |
| Instagram                                                       | 8.67% | 104,140 | 33,847.82 |
| YouTube                                                         | 8.97% | 83,271  | 30,436.12 |
| LinkedIn                                                        | 8.69% | 56,871  | 29,733.32 |

### Platform Insights

**YouTube**

-  Highest average engagement rate: **8.97%** 
-  Highest CTR: **26.01%** 
-  Highest profile-visit rate: **15.56%** 

**Instagram**

-  Highest total follower growth: **104,140** 
-  Largest number of posts: **65** 
-  Largest share of total clicks: **33.22%** 

**Facebook**

-  Highest average daily reach: **35,350.52** 

**LinkedIn**

-  Highest average likes per post 
-  Highest average comments per post 

### Important Observation

No single platform leads across every KPI.

This demonstrates why platform performance should be evaluated using multiple metrics rather than relying on a single measure.

---

# 📊 Platform Post Volume

| PlatformPosts |    |
| ------------- | -- |
| Instagram     | 65 |
| YouTube       | 51 |
| Facebook      | 50 |
| LinkedIn      | 34 |

Instagram represents the largest number of posts in the dataset.

---

# 📊 Reach, Impressions & Engagement

| PlatformAvg ReachAvg ImpressionsAvg ClicksAvg Profile Visits |           |            |           |           |
| ------------------------------------------------------------ | --------- | ---------- | --------- | --------- |
| Facebook                                                     | 35,350.52 | 106,476.12 | 24,122.72 | 15,699.28 |
| Instagram                                                    | 33,847.82 | 113,049.17 | 25,794.68 | 14,982.94 |
| LinkedIn                                                     | 29,733.32 | 105,925.12 | 25,435.88 | 15,739.88 |
| YouTube                                                      | 30,436.12 | 97,998.73  | 25,487.49 | 15,248.31 |

This comparison demonstrates that reach, impressions, clicks, and profile visits provide different perspectives on platform performance.

---

# 🖱️ Click-Through Rate Analysis

## CTR Formula

```
```

```
CTR = Total Clicks ÷ Total Impressions × 100
```

| PlatformTotal ClicksTotal ImpressionsCTR |           |           |        |
| ---------------------------------------- | --------- | --------- | ------ |
| Facebook                                 | 1,206,136 | 5,323,806 | 22.66% |
| Instagram                                | 1,676,654 | 7,348,196 | 22.82% |
| LinkedIn                                 | 864,820   | 3,601,454 | 24.01% |
| YouTube                                  | 1,299,862 | 4,997,935 | 26.01% |

### Key Insight

**YouTube records the highest CTR at 26.01%.**

This indicates that YouTube generated the highest click rate relative to impressions in this dataset.

---

# 👤 Profile Visit Rate

## Formula

```
```

```
Profile Visit Rate =
Total Profile Visits ÷ Total Impressions × 100
```

| PlatformTotal Profile VisitsTotal ImpressionsProfile Visit Rate |         |           |        |
| --------------------------------------------------------------- | ------- | --------- | ------ |
| Facebook                                                        | 784,964 | 5,323,806 | 14.74% |
| Instagram                                                       | 973,891 | 7,348,196 | 13.25% |
| LinkedIn                                                        | 535,156 | 3,601,454 | 14.86% |
| YouTube                                                         | 777,664 | 4,997,935 | 15.56% |

### Key Insight

**YouTube records the highest profile-visit rate at 15.56%.**

---

# ❤️ Engagement Performance

## Total Engagement

| MetricTotal |           |
| ----------- | --------- |
| Likes       | 1,009,901 |
| Comments    | 194,621   |
| Shares      | 155,178   |

## Average Engagement per Post

| PlatformAvg LikesAvg CommentsAvg Shares |          |          |        |
| --------------------------------------- | -------- | -------- | ------ |
| Facebook                                | 5,105.60 | 1,001.34 | 723.14 |
| Instagram                               | 5,050.48 | 867.54   | 784.37 |
| LinkedIn                                | 5,424.71 | 1,092.59 | 752.65 |
| YouTube                                 | 4,743.14 | 1,000.31 | 832.29 |

### Key Insights

| MetricPlatform                |           |
| ----------------------------- | --------- |
| Highest Total Likes           | Instagram |
| Highest Total Shares          | Instagram |
| Highest Average Likes/Post    | LinkedIn  |
| Highest Average Comments/Post | LinkedIn  |
| Highest Average Shares/Post   | YouTube   |

---

# 📝 Content-Type Analysis

## Average Engagement Rate

| Content TypeAvg Engagement Rate |       |
| ------------------------------- | ----- |
| Article                         | 9.18% |
| Story                           | 8.91% |
| Post                            | 8.40% |
| Reel                            | 8.03% |

### Content Insights

- **Article** has the highest average engagement rate. 
- **Post** has the highest average reach. 
- **Story** has the highest average follower growth. 

This shows that the best format can change depending on the KPI being measured.

---

# 📱 Platform × Content Performance

| PlatformBest Content TypeAvg Engagement Rate |         |       |
| -------------------------------------------- | ------- | ----- |
| Facebook                                     | Story   | 9.16% |
| Instagram                                    | Article | 9.26% |
| LinkedIn                                     | Article | 9.34% |
| YouTube                                      | Article | 9.82% |

### Best Content by Platform

```
```

```
Facebook  → Story
Instagram → Article
LinkedIn  → Article
YouTube   → Article
```

---

# 🏆 Top 3 Content Types by Platform

| PlatformRank 1Rank 2Rank 3 |                 |                 |               |
| -------------------------- | --------------- | --------------- | ------------- |
| Facebook                   | Story – 9.16%   | Article – 8.20% | Reel – 7.96%  |
| Instagram                  | Article – 9.26% | Story – 8.98%   | Post – 8.75%  |
| LinkedIn                   | Article – 9.34% | Reel – 8.55%    | Story – 8.22% |
| YouTube                    | Article – 9.82% | Story – 8.98%   | Post – 8.90%  |

### Key Observation

Content performance is **platform-specific**.

A content type that performs well on one platform may not necessarily produce the same results on another platform.

---

# 🖱️ Highest-Click Content by Platform

| PlatformContent TypeAvg Clicks |      |           |
| ------------------------------ | ---- | --------- |
| Facebook                       | Reel | 27,478.54 |
| Instagram                      | Post | 29,008.73 |
| LinkedIn                       | Post | 29,966.00 |
| YouTube                        | Post | 28,693.67 |

### Key Insight

The content type with the highest engagement rate is not necessarily the content type with the highest click performance.

This is an important analytical finding because engagement and conversion-related behaviour measure different aspects of content effectiveness.

---

# 👥 Follower Growth by Content

| PlatformContent TypeAvg Follower Growth |       |          |
| --------------------------------------- | ----- | -------- |
| LinkedIn                                | Story | 1,953.75 |

The **LinkedIn Story** combination records the highest follower-growth result in the corresponding SQL analysis.

---

# 💬 Sentiment Analysis

## Sentiment Distribution

| SentimentPostsPercentage |     |       |
| ------------------------ | --- | ----- |
| Positive                 | 101 | 50.5% |
| Negative                 | 99  | 49.5% |

The dataset has an almost evenly divided sentiment distribution.

---

## Engagement Rate by Sentiment

| SentimentAvg Engagement Rate |       |
| ---------------------------- | ----- |
| Negative                     | 8.76% |
| Positive                     | 8.53% |

### Key Insight

Negative-sentiment posts have a slightly higher average engagement rate in the dataset.

This should **not** be interpreted as negative sentiment being desirable.

It demonstrates that:

```
```

```
Engagement ≠ Sentiment
```

A post can generate substantial interaction while still being associated with negative audience sentiment.

---

# 🏅 Top 10 Posts by Engagement Rate

| RankPlatformContent TypeEngagement RateReachClicksFollower Growth |           |         |        |        |        |       |
| ----------------------------------------------------------------- | --------- | ------- | ------ | ------ | ------ | ----- |
| 1                                                                 | YouTube   | Reel    | 12.48% | 49,427 | 22,550 | 205   |
| 2                                                                 | Facebook  | Article | 12.46% | 51,484 | 36,412 | 2,405 |
| 3                                                                 | Instagram | Article | 12.44% | 49,323 | 32,576 | 1,471 |
| 4                                                                 | Facebook  | Story   | 12.43% | 17,516 | 2,596  | 1,337 |
| 5                                                                 | Facebook  | Reel    | 12.40% | 12,494 | 24,095 | 2,832 |
| 6                                                                 | YouTube   | Reel    | 12.39% | 48,080 | 13,416 | 2,749 |
| 7                                                                 | Instagram | Post    | 12.34% | 19,918 | 46,817 | 2,713 |
| 8                                                                 | Facebook  | Story   | 12.27% | 25,412 | 7,110  | 2,890 |
| 9                                                                 | YouTube   | Story   | 12.26% | 49,974 | 40,487 | 328   |
| 10                                                                | Instagram | Article | 12.23% | 8,190  | 35,943 | 899   |

### Observation

Individual post performance varies considerably from platform-level averages.

This highlights the importance of analysing both:

-  Aggregate platform performance 
-  Individual post performance 

---

# 📊 Composite Platform Analysis

The project also includes an analytical composite KPI framework.

The score combines:

-  Average Engagement Rate 
-  Average Reach 
-  CTR 
-  Average Follower Growth 

using equal weighting and min-max normalisation.

| PlatformEngagement RateReachCTRAvg Follower GrowthOverall Score |       |           |        |          |       |
| --------------------------------------------------------------- | ----- | --------- | ------ | -------- | ----- |
| YouTube                                                         | 8.97% | 30,436.12 | 26.01% | 1,632.76 | 71.66 |
| LinkedIn                                                        | 8.69% | 29,733.32 | 24.01% | 1,672.68 | 50.50 |
| Instagram                                                       | 8.67% | 33,847.82 | 22.82% | 1,602.15 | 48.06 |
| Facebook                                                        | 8.23% | 35,350.52 | 22.66% | 1,518.40 | 25.00 |

### Methodology Note

The composite score is an **analytical framework created for this project**.

It should not be interpreted as a universal measure of platform value because:

-  KPI weights are equal. 
-  Min-max normalisation is used. 
-  Different business objectives may require different weights. 

---

# 🔄 Platform Performance Summary

| MetricPlatform / Content                        |           |
| ----------------------------------------------- | --------- |
| Highest Average Engagement Rate                 | YouTube   |
| Highest Total Follower Growth                   | Instagram |
| Highest Average Reach                           | Facebook  |
| Highest CTR                                     | YouTube   |
| Highest Profile Visit Rate                      | YouTube   |
| Highest Total Likes                             | Instagram |
| Highest Total Shares                            | Instagram |
| Highest Average Likes/Post                      | LinkedIn  |
| Highest Average Comments/Post                   | LinkedIn  |
| Highest Average Shares/Post                     | YouTube   |
| Highest Content Engagement Rate                 | Article   |
| Highest Average Reach by Content Type           | Post      |
| Highest Average Follower Growth by Content Type | Story     |

---

# 💡 Key Business Insights

## 1. Platform performance depends on the KPI

No single platform leads every metric.

Different platforms show different strengths:

```
```

```
YouTube   → Engagement & CTR
Instagram → Follower Growth & Click Volume
Facebook  → Reach
LinkedIn  → Average Likes & Comments per Post
```

---

## 2. YouTube shows strong engagement efficiency

YouTube records:

- **8.97% average engagement rate** 
- **26.01% CTR** 
- **15.56% profile-visit rate** 

These are the highest values among the four platforms for the respective metrics.

---

## 3. Instagram leads audience growth

Instagram records:

**104,140 total follower growth**

and contains the highest number of posts:

**65 posts**

Instagram also contributes approximately:

**33.22% of total clicks**

---

## 4. Facebook leads reach

Facebook records the highest average daily reach:

**35,350.52**

This shows that high reach does not necessarily correspond to the highest engagement rate.

---

## 5. Articles show strong engagement

Articles have the highest average engagement rate:

**9.18%**

However, the highest-click format varies by platform.

This demonstrates why engagement rate and click performance should be analysed separately.

---

## 6. Content strategy should be platform-specific

The highest-engagement content differs across platforms:

```
```

```
Facebook  → Story
Instagram → Article
LinkedIn  → Article
YouTube   → Article
```

---

## 7. Engagement does not automatically indicate positive sentiment

The sentiment distribution is nearly balanced:

```
```

```
Positive → 50.5%
Negative → 49.5%
```

Negative-sentiment posts also show slightly higher average engagement.

Therefore, high engagement should not automatically be interpreted as positive audience reception.

---

## 8. Individual posts can outperform platform averages

The top 10 posts reach engagement rates above **12%**, while platform-level averages remain around **8–9%**.

This highlights the value of post-level analysis.

---

## 9. Composite scoring changes the perspective

The composite KPI framework demonstrates that combining multiple performance dimensions can produce a different interpretation from looking at a single KPI.

The result should be viewed as a project-specific analytical framework rather than a universal platform ranking.

---

# 📌 Business Recommendations

### 1. Monitor YouTube for engagement efficiency

YouTube's high engagement rate, CTR, and profile-visit rate make it useful for further controlled analysis of engagement efficiency.

### 2. Continue monitoring Instagram for growth and click volume

Instagram leads total follower growth and contributes the largest share of clicks.

### 3. Develop platform-specific content strategies

Content performance varies by platform.

Instead of applying the same content strategy across all platforms, performance should be evaluated separately for each platform.

### 4. Investigate sentiment drivers

Further analysis should examine sentiment by:

-  Platform 
-  Content Type 
-  Individual Post 

This could reveal where negative sentiment is concentrated.

### 5. Track CTR separately from engagement rate

Engagement rate and CTR measure different user behaviours.

Both should be included in performance reporting.

### 6. Revisit composite KPI weights

If the business objective prioritises:

-  Awareness 
-  Engagement 
-  Conversion 
-  Audience growth 

the KPI weights should be adjusted accordingly.

---

# 📊 Power BI Dashboard

The Power BI dashboard transforms the SQL analysis into a business-facing visual report.

## Dashboard Components

### KPI Cards

-  Engagement Rate 
-  Followers Growth 
-  Average Daily Reach 
-  Total Profile Visits 
-  Total Impressions 

### Visualisations

-  Platform KPI Scorecard 
-  Engagement Value by Stage 
-  Sentiment Distribution 
-  Platform × ContentType Table 
-  Sum of Likes by Platform / Content Type 
-  Sum of Clicks by Platform / Content Type 
-  Sum of Clicks by Platform 
-  Platform and Stage analysis 

---

# 🖥️ Dashboard Analysis

The dashboard provides a consolidated view of:

```
```

```
Platform Performance
        ↓
Engagement
        ↓
Reach
        ↓
Impressions
        ↓
Clicks
        ↓
Profile Visits
        ↓
Content Performance
        ↓
Sentiment
```

---

# 📁 Project Structure

```
```

```
Social-Media-Engagement-Analysis/
│
├── README.md
│
├── SQL/
│   └── Marketing.sql
│
├── Dashboard/
│   └── Social_Media_Engagement_Analysis_Dashboard.pdf
│
├── Report/
│   └── Social_Media_Engagement_Analysis.pdf
│
└── Dataset/
    └── Social_Media_Engagement_Dataset.xlsx
```

---

# 🧠 Skills Demonstrated

## SQL

-  SQL querying 
-  Aggregations 
- `GROUP BY` 
- `HAVING` 
- `ORDER BY` 
-  Subqueries 
-  CTEs 
-  Window Functions 
- `ROW_NUMBER()` 
- `DENSE_RANK()` 
-  KPI calculations 
-  Conditional analysis 
-  Ranking 
-  Comparative analysis 

## Data Analysis

-  Business question translation 
-  KPI development 
-  Performance analysis 
-  Engagement analysis 
-  Conversion analysis 
-  Sentiment analysis 
-  Content analysis 
-  Data storytelling 
-  Business insight generation 

## Power BI

-  Dashboard development 
-  KPI cards 
-  Tables 
-  Charts 
-  Donut charts 
-  Platform scorecards 
-  Engagement-stage analysis 
-  Sentiment visualisation 
-  Content-performance analysis 

## Excel

-  Dataset handling 
-  Data inspection 
-  Supporting analysis


The project follows an end-to-end analytics workflow:

```text
Raw Dataset
     ↓
Data Understanding
     ↓
SQL Analysis
     ↓
KPI & Metric Calculation
     ↓
Platform & Content Analysis
     ↓
Advanced Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights
     ↓
Recommendations
