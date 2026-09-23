

CREATE TABLE SocialMediaEngagement
(
    Platform            VARCHAR(50),
    EngagementRate      DECIMAL(10,2),
    FollowersGrowth     INT,
    AvgDailyReach       INT,
    Impressions         INT,
    Clicks              INT,
    ProfileVisits       INT,
    Followers           INT,
    ContentType         VARCHAR(50),
    Likes               INT,
    Comments            INT,
    Shares              INT,
    Sentiment            VARCHAR(20)
);

-- Q1. Total posts/records for each platform
SELECT
    Platform,
    COUNT(*) AS Total_Posts
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Total_Posts DESC;

--Q2. Average engagement rate for each platform
SELECT
    Platform,
    ROUND(AVG(EngagementRate), 2) AS Avg_Engagement_Rate
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Avg_Engagement_Rate DESC;

--Q3. Total follower growth by platform
SELECT
    Platform,
    SUM(FollowersGrowth) AS Total_Follower_Growth
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Total_Follower_Growth DESC;

--Q4. Average reach, impressions, clicks and profile visits by platform
SELECT
    Platform,
    ROUND(AVG(AvgDailyReach), 2) AS Avg_Reach,
    ROUND(AVG(Impressions), 2) AS Avg_Impressions,
    ROUND(AVG(Clicks), 2) AS Avg_Clicks,
    ROUND(AVG(ProfileVisits), 2) AS Avg_Profile_Visits
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Avg_Reach DESC;

--Q5. Platform with the highest average engagement rate
SELECT 
    Platform,
	ROUND(AVG(EngagementRate) ,2) AS AVG_ENGAGEMENT_RATE
FROM SOCIALMEDIAENGAGEMENT
GROUP BY PLATFORM 
ORDER BY AVG_ENGAGEMENT_RATE DESC
LIMIT 1;

--Q6. Platform with the highest average follower growth
SELECT 
    Platform,
	ROUND(AVG(FOLLOWERSGROWTH) ,2) AS AVG_FOLLOWERS_GROWTH
FROM SOCIALMEDIAENGAGEMENT
GROUP BY Platform
ORDER BY AVG_FOLLOWERS_GROWTH DESC
LIMIT 1;

--Q7. Total likes, comments and shares
SELECT
    SUM(Likes) AS Total_Likes,
    SUM(Comments) AS Total_Comments,
    SUM(Shares) AS Total_Shares
FROM SocialMediaEngagement;

--Q8. Average likes, comments and shares per post by platform
SELECT
    PLATFORM,
    ROUND(AVG(Likes) ,2) AS Avg_Likes,
    ROUND(AVG(Comments) ,2) AS Avg_Comments,
    ROUND(AVG(Shares) ,2) AS Avg_Shares
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Avg_Likes DESC;

--Q9. Platform with the highest total likes
SELECT 
    Platform,
	SUM(LIKES) AS TOTAL_LIKES
FROM SOCIALMEDIAENGAGEMENT
GROUP BY PLATFORM 
ORDER BY TOTAL_LIKES DESC;

-- Q10. Platform with the highest total shares
SELECT 
    Platform,
	SUM(SHARES) AS TOTAL_SHARES
FROM SOCIALMEDIAENGAGEMENT
GROUP BY PLATFORM 
ORDER BY TOTAL_SHARES DESC;

--Q11. Average engagement rate by content type
SELECT 
    CONTENTTYPE,
	ROUND(AVG(ENGAGEMENTRATE) ,2) AS AVG_ENGAGEMENT_RATE
FROM SOCIALMEDIAENGAGEMENT
GROUP BY CONTENTTYPE 
ORDER BY AVG_ENGAGEMENT_RATE DESC;

--Q12. Content type with the highest average engagement rate
SELECT 
    ContentType,
    ROUND(AVG(EngagementRate), 2) AS Avg_Engagement_Rate
FROM SocialMediaEngagement
GROUP BY ContentType
ORDER BY Avg_Engagement_Rate DESC;

--Q13. Content type with the highest average reach
SELECT 
    ContentType,
    ROUND(AVG(AVGDAILYREACH), 2) AS Avg_Reach
FROM SocialMediaEngagement
GROUP BY ContentType
ORDER BY Avg_Reach DESC;

--Q14. Content type with the highest average follower growth
SELECT 
    ContentType,
    ROUND(AVG(FollowersGrowth), 2) AS Avg_Follower_Growth
FROM SocialMediaEngagement
GROUP BY ContentType
ORDER BY Avg_Follower_Growth DESC;

--Q15. Click-Through Rate (CTR) by platform
SELECT
    Platform,
    SUM(Clicks) AS Total_Clicks,
    SUM(Impressions) AS Total_Impressions,
    ROUND(
        CAST(SUM(Clicks) AS DECIMAL(18,2))
        / NULLIF(SUM(Impressions), 0) * 100, 2
    ) AS CTR_Percent
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY CTR_Percent DESC;

--Q16. Platform with the highest CTR
SELECT
    Platform,
    SUM(Clicks) AS Total_Clicks,
    SUM(Impressions) AS Total_Impressions,
    ROUND(
        CAST(SUM(Clicks) AS DECIMAL(18,2))
        / NULLIF(SUM(Impressions), 0) * 100, 2
    ) AS CTR_Percent
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY CTR_Percent DESC
LIMIT 1;

--Q17. Profile Visit Rate by platform
SELECT
    Platform,
    SUM(ProfileVisits) AS Total_Profile_Visits,
    SUM(Impressions) AS Total_Impressions,
    ROUND(
        CAST(SUM(ProfileVisits) AS DECIMAL(18,2))
        / NULLIF(SUM(Impressions), 0) * 100, 2
    ) AS Profile_Visit_Rate_Percent
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Profile_Visit_Rate_Percent DESC;

--Q18. Platform converting impressions into profile visits most effectively
SELECT 
    Platform,
    ROUND(
        CAST(SUM(ProfileVisits) AS DECIMAL(18,2))
        / NULLIF(SUM(Impressions), 0) * 100, 2
    ) AS Profile_Visit_Rate_Percent
FROM SocialMediaEngagement
GROUP BY Platform
ORDER BY Profile_Visit_Rate_Percent DESC;

--Q19. Platform(s) with high reach but below-average engagement
SELECT    
	Platform,
    ROUND(AVG(AvgDailyReach), 2) AS Avg_Reach,
    ROUND(AVG(EngagementRate), 2) AS Avg_Engagement_Rate
FROM SocialMediaEngagement
GROUP BY Platform
HAVING AVG(AvgDailyReach) > (SELECT AVG(AvgDailyReach) FROM SocialMediaEngagement)
   AND AVG(EngagementRate) < (SELECT AVG(EngagementRate) FROM SocialMediaEngagement)
ORDER BY Avg_Reach DESC;

--Q20. Platform(s) with high engagement but below-average follower growth
SELECT
    Platform,
    ROUND(AVG(EngagementRate), 2) AS Avg_Engagement_Rate,
    ROUND(AVG(FollowersGrowth), 2) AS Avg_Follower_Growth
FROM SocialMediaEngagement
GROUP BY Platform
HAVING AVG(EngagementRate) > (SELECT AVG(EngagementRate) FROM SocialMediaEngagement)
   AND AVG(FollowersGrowth) < (SELECT AVG(FollowersGrowth) FROM SocialMediaEngagement)
ORDER BY Avg_Engagement_Rate DESC;

--Q21. Platform + content type performance by average engagement rate
SELECT
    Platform,
    ContentType,
    ROUND(AVG(EngagementRate), 2) AS Avg_Engagement_Rate,
    COUNT(*) AS Total_Posts
FROM SocialMediaEngagement
GROUP BY Platform, ContentType
ORDER BY Avg_Engagement_Rate DESC;

--Q22. Best-performing content type for each platform
WITH ContentPerformance AS (
    SELECT
        Platform,
        ContentType,
        AVG(EngagementRate) AS Avg_Engagement_Rate,
        ROW_NUMBER() OVER (
            PARTITION BY Platform
            ORDER BY AVG(EngagementRate) DESC
        ) AS rn
    FROM SocialMediaEngagement
    GROUP BY Platform, ContentType
)
SELECT
    Platform,
    ContentType,
    ROUND(Avg_Engagement_Rate, 2) AS Avg_Engagement_Rate
FROM ContentPerformance
WHERE rn = 1
ORDER BY Platform;

--Q23. Top 3 content types for each platform by engagement rate
WITH ContentRanking AS (
    SELECT
        Platform,
        ContentType,
        AVG(EngagementRate) AS Avg_Engagement_Rate,
        DENSE_RANK() OVER (
            PARTITION BY Platform
            ORDER BY AVG(EngagementRate) DESC
        ) AS Content_Rank
    FROM SocialMediaEngagement
    GROUP BY Platform, ContentType
)
SELECT
    Platform,
    ContentType,
    ROUND(Avg_Engagement_Rate, 2) AS Avg_Engagement_Rate,
    Content_Rank
FROM ContentRanking
WHERE Content_Rank <= 3
ORDER BY Platform, Content_Rank;

--Q24. Platform-content combination with the highest follower growth
SELECT 
    Platform,
    ContentType,
    ROUND(AVG(FollowersGrowth), 2) AS Avg_Follower_Growth
FROM SocialMediaEngagement
GROUP BY Platform, ContentType
ORDER BY Avg_Follower_Growth DESC;

--Q25. Highest-click content type on each platform
WITH ClickRanking AS (
    SELECT
        Platform,
        ContentType,
        AVG(Clicks) AS Avg_Clicks,
        ROW_NUMBER() OVER (
            PARTITION BY Platform
            ORDER BY AVG(Clicks) DESC
        ) AS rn
    FROM SocialMediaEngagement
    GROUP BY Platform, ContentType
)
SELECT
    Platform,
    ContentType,
    ROUND(Avg_Clicks, 2) AS Avg_Clicks
FROM ClickRanking
WHERE rn = 1
ORDER BY Platform;