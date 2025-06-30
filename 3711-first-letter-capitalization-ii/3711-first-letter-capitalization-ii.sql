WITH Parse_data AS (
SELECT content_id,
    content_text,
     CONCAT(UPPER(LEFT(value,1)), LOWER(SUBSTRING(value, 2, LEN(value)))) words

FROM user_content
CROSS APPLY STRING_SPLIT(REPLACE(content_text, '-', ' - '), ' ')
)
SELECT content_id,
    content_text original_text,
  
    REPLACE(STRING_AGG(words, ' '), ' - ', '-') converted_text

FROM Parse_data
GROUP BY content_id, content_text
ORDER BY content_id