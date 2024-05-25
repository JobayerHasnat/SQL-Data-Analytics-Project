-- this is a comment

select *
from job_postings_fact;

select
    job_title_short
from 
    job_postings_fact
where 
    job_id = 105;