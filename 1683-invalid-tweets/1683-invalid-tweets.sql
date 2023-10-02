/* Write your T-SQL query statement below */
select tweet_id from
(
select tweet_id,content from Tweets
group by tweet_id,content 
having len(content) > 15
    ) a