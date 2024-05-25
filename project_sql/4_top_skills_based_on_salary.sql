/*Query 4
Scenario:
Answer: What are the top skills based on salary?
• Look at the average salary associated with each skill for Data Analyst positions
• Focuses on roles with specified salaries, regardless of location
• Why? It reveals how different skills impact salary levels for Data Analysts and helps identify
the most financially rewarding skills to acquire or improve
*/


SELECT 
    skills,
    round(AVG(salary_year_avg)) as avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg is not NULL and
    job_work_from_home is TRUE
GROUP BY
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25;

/*
Big Data and Machine Learning: High-paying skills like PySpark, DataRobot, 
and Databricks reflect the demand for expertise in processing large datasets 
and developing machine learning models.

Version Control and Collaboration: Tools such as Bitbucket, GitLab, and
 Atlassian highlight the importance of collaboration and version control in
  managing data projects effectively.

Cloud and DevOps: Proficiency in cloud platforms (GCP) and DevOps tools
 (Kubernetes, Jenkins) is essential for deploying and maintaining 
 scalable data analytics solutions.
 */