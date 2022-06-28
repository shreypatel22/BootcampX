select count(*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name







-- SELECT count(teacher_id) as total_assistances, teachers.name
-- FROM assistance_requests
-- WHERE teacher_id IN (SELECT id 
--                      FROM teachers 
--                      WHERE name = 'Waylon Boehm');

-- first you want to do inner select
  -- get the teacher id from the teachers table using name 'waylon'
-- then you can count how many times that teacher id is in the assitance_request table
-- to get the total assitances


-- ^^but that way you cant get the teachers name so you need to use JOIN