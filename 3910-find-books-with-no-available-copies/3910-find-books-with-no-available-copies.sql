/* Write your T-SQL query statement below */
with CTE as
(
select lb.book_id as book_id ,title,author,genre,publication_year ,SUM(case when return_date is null then 1 else 0 end) as current_borrowers,total_copies   
 from library_books lb inner join borrowing_records br 
on br.book_id = lb.book_id
group by lb.book_id,title,title,author,genre,publication_year,total_copies 
)
select book_id,title,author,genre,publication_year,current_borrowers from CTE where current_borrowers  = total_copies
order by current_borrowers desc,title asc