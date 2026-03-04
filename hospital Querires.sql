-- QE 1  - Show first name, last name, and gender of patients whose gender is 'M'.
-- QE 2  - Show first name and last name of patients who does not have allergies. (null).
-- QE 3  - Show first name of patients that start with the letter 'C'.
-- QE 4  - Show first name and last name of patients that weight within the range of 100 to 120 (inclusive).
-- QE 5  - Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'.
-- QE 6  - Show first name and last name concatinated into one column to show their full name.
-- QE 7  - Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'.
-- QE 8  - Show how many patients have a birth_date with 2010 as the birth year.
-- QE 9  - Show the first_name, last_name, and height of the patient with the greatest height.
-- QE 10 - Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000.
-- QE 11 - Show the total number of admissions.
-- QE 12 - Show all the columns from admissions where the patient was admitted and discharged on the same day.
-- QE 13 - Show the patient id and the total number of admissions for patient_id 579.
-- QE 14 - Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.
-- QE 15 - Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70
-- QE 16 - Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'

-- QM 1  - Show unique birth years from patients and order them by ascending.
-- QM 2  - Show unique first names from the patients table which only occurs once in the list.
		 -- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. 
         -- If only 1 person is named 'Leo' then include them in the output.
-- QM 3  - Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
-- QM 4  - Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.
-- QM 5  - Display every patient's first_name. Order the list by the length of each name and then by alphabetically.
-- QM 6  - Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
-- QM 7  - Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. 
		 -- Show results ordered ascending by allergies then by first_name then by last_name.
-- QM 8  - Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
-- QM 9  - Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.
-- QM 10 - Show first name, last name and role of every person that is either patient or doctor. The roles are either "Patient" or "Doctor".
-- QM 11 - Show all allergies ordered by popularity. Remove NULL values from query.
-- QM 12 - Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.
-- QM 13 - We want to display each patient's full name in a single column. Their last_name in all upper letters must appear first, then first_name in all lower case letters. 
         -- Separate the last_name and first_name with a comma. Order the list by the first_name in decending order EX: SMITH,jane
-- QM 14 - Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.
-- QM 15 - Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'
-- QM 16 - Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
-- QM 17 - Show all columns for patient_id 542's most recent admission_date.
-- QM 18 - Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
        -- 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
        -- 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.
-- QM 19 - Show first_name, last_name, and the total number of admissions attended for each doctor. Every admission has been attended by a doctor.
-- QM 20 - For each doctor, display their id, full name, and the first and last admission date they attended.
-- QM 21 - Display the total amount of patients for each province. Order by descending.
-- QM 22 - For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
-- QM 23 - Display the first name, last name and number of duplicate patients based on their first name and last name.
-- QM 24 - Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated.
-- QM 25 - Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated.
-- QM 26 - Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table.
-- QM 27 - Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

-- QH 1 - Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group. Order the list by the weight group decending.
        -- For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.
-- QH 2 - Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1. Obese is defined as weight(kg)/(height(m)2) >= 30.
-- QH 3 - Show patient_id, first_name, last_name, and attending doctor's specialty. Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
-- QH 4 - All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission.
	    -- Show the patient_id and temp_password. The password must be the following, in order:
        -- 1. patient_id
		-- 2. the numerical length of patient's last_name
        -- 3. year of patient's birth_date
-- QH 5 - Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance. 
	    -- Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.
-- QH 6 - Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
-- QH 7 - We are looking for a specific patient. Pull all columns for the patient who matches the following criteria:
        -- First_name contains an 'r' after the first two letters.
		-- Identifies their gender as 'F'
		-- Born in February, May, or December
        -- Their weight would be between 60kg and 80kg
		-- Their patient_id is an odd number
        -- They are from the city 'Kingston'
-- QH 8 - Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form.
-- QH 10 - Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.
-- QH 11 - We need a breakdown for the total amount of admissions each doctor has started each year. 
         -- Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.



# QE 1  - Show first name, last name, and gender of patients whose gender is 'M'.

SELECT first_name,last_name,gender from patients
where gender = 'M';


# QE 2  - Show first name and last name of patients who does not have allergies. (null)

SELECT first_name,last_name from patients
where allergies is null;


# QE 3  - Show first name of patients that start with the letter 'C'.

SELECT first_name from patients
where first_name like "C%";


# QE 4  - Show first name and last name of patients that weight within the range of 100 to 120 (inclusive).

SELECT first_name,last_name from patients
where weight between 100 and 120;


# QE 5  - Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'.

update patients
set allergies = 'NKA'
WHERE allergies is null;


# QE 6  - Show first name and last name concatinated into one column to show their full name.

select concat(first_name,' ',last_name) as full_name from patients;


# QE 7  - Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'.

select p.first_name, p.last_name, pn.province_name
from patients p 
left join province_names pn
on p.province_id=pn.province_id;

# QE 8  - Show how many patients have a birth_date with 2010 as the birth year.

select count(*) from patients
where year(birth_date) = 2010;


# QE 9  - Show the first_name, last_name, and height of the patient with the greatest height.

select first_name,last_name,height from patients
order by height desc
limit 1;


# QE 10 - Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000.

select * from patients
where patient_id in(1,45,534,879,1000);


# QE 11 - Show the total number of admissions.

select count(*) as total_admissions from admissions;


# QE 12 - Show all the columns from admissions where the patient was admitted and discharged on the same day.

select * from admissions
where date(admission_date) = date(discharge_date)
order by patient_id desc;


# QE 13 - Show the patient id and the total number of admissions for patient_id 579.

select patient_id,count(admission_date) from admissions
where patient_id = 579
group by patient_id;


# QE 14 - Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.

select distinct city as unique_cities 
from patients
where province_id = "NS";


# QE 15 - Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70

select first_name,last_name,birth_date from patients
where height > 160 and weight > 70;


# QE 16 - Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'

select first_name,last_name,allergies from patients
where allergies not null and city = "Hamilton";


# QM 1  - Show unique birth years from patients and order them by ascending.

select distinct year(birth_date) as birth_year from patients
order by birth_year asc;


# QM 2  - Show unique first names from the patients table which only occurs once in the list.
		-- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. 
        -- If only 1 person is named 'Leo' then include them in the output.

select first_name from patients
  group by first_name
  having count(first_name) = 1;
  

# QM 3  -- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.

select patient_id, first_name from patients
  where first_name like "s%s" and len(first_name) >= 6;


# QM 4  -- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.

select p.patient_id,p.first_name,p.last_name
from patients p 
left join admissions a 
on p.patient_id=a.patient_id
where a.diagnosis = "Dementia";


# QM 5  -- Display every patient's first_name. Order the list by the length of each name and then by alphabetically.

select first_name from patients
order by len(first_name), first_name;


# QM 6  -- Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.

select count(case when gender = "M" then 1 end) as male_count,
count(case when gender = "F" then 1 end) as female_count
from patients;


# QM 7  - Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. 
		-- Show results ordered ascending by allergies then by first_name then by last_name.

select first_name,last_name,allergies from patients
where allergies = "Penicillin" OR  allergies = "Morphine"
order by allergies asc, first_name,last_name;


# QM 8  - Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.

select patient_id, diagnosis from admissions
group by patient_id, diagnosis
having count(*) > 1
order by 1;


# QM 9  - Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.

select city, count(*) as num_patients from patients
group by city
order by 2 desc, 1;


# QM 10 - Show first name, last name and role of every person that is either patient or doctor. The roles are either "Patient" or "Doctor"

select first_name,last_name,"Patient" as role
from patients
union all
select first_name,last_name, "Doctor" as role
from doctors;


# QM 11 - Show all allergies ordered by popularity. Remove NULL values from query.

select allergies, count(*) as total_diagnosis from patients
where allergies is not null
group by allergies
order by 2 desc;


# QM 12 - Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.

select first_name,last_name,birth_date from patients
where year(birth_date) > 1969 and year(birth_date) < 1980
order by birth_date asc;


# QM 13 - We want to display each patient's full name in a single column. Their last_name in all upper letters must appear first, then first_name in all lower case letters.
        -- Separate the last_name and first_name with a comma. Order the list by the first_name in decending order EX: SMITH,jane

select concat(upper(last_name),',',lower(first_name)) as new_name_format
from patients
order by first_name desc;


# QM 14 - Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

select province_id,sum(height) as sum_height from patients
group by province_id
having sum_height >= 7000;


# QM 15 - Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'

select (max(weight)-min(weight)) as weight_delta from patients
where last_name = "Maroni";


# QM 16 - Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.

select day(admission_date) as day_number, count(*) as number_of_admissions
from admissions
group by day_number
order by 2 desc;


# QM 17 - Show all columns for patient_id 542's most recent admission_date.

select * from admissions
where patient_id = 542
order by admission_date desc
limit 1;


# QM 18 - Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
        -- 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
        -- 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.

select patient_id, attending_doctor_id,diagnosis from admissions
where patient_id % 2 = 1 and attending_doctor_id in(1,5,19)

union all

select patient_id,attending_doctor_id, diagnosis from admissions
where (attending_doctor_id like "2%" or attending_doctor_id like "2" or attending_doctor_id like "%2")
and len(patient_id) = 3;


# QM 19 - Show first_name, last_name, and the total number of admissions attended for each doctor. Every admission has been attended by a doctor.

select 	d.first_name,d.last_name,count(a.patient_id) as admission_total
from doctors d
left join admissions a 
on d.doctor_id=a.attending_doctor_id
group by d.first_name,d.last_name;


# QM 20 - For each doctor, display their id, full name, and the first and last admission date they attended.

select d.doctor_id,concat(d.first_name,' ',d.last_name) as full_name, min(a.admission_date) as first_admission_date, max(a.admission_date) as last_admission_date
from doctors d 
left join admissions a 
on d.doctor_id=a.attending_doctor_id
group by d.doctor_id;


# QM 21 - Display the total amount of patients for each province. Order by descending.

select pr.province_name, count(p.patient_id) as patient_count
from province_names pr
join patients p 
on pr.province_id=p.province_id
group by pr.province_name
order by 2 desc;


# QM 22 - For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

select concat(p.first_name,' ',p.last_name) as patient_name,a.diagnosis,concat(d.first_name,' ',d.last_name) as doctor_name
from admissions a 
left join patients p 
on a.patient_id=p.patient_id
left join doctors d
on a.attending_doctor_id=d.doctor_id;


# QM 23 - Display the first name, last name and number of duplicate patients based on their first name and last name.

SELECT first_name,last_name,count(*) AS num_of_duplicates
from patients
group by first_name,last_name
having count(*)>1;


# QM 24 - Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated.

select 
	concat(first_name,' ',last_name) as patient_name,
	round((height/30.48),1) as height,
    round((weight*2.205),0) as weight,
    birth_date,
    case
    	when gender='M' then 'MALE'
        else 'FEMALE'
    END as gender
from patients;


# QM 25 - Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

select 
	max(daily_count) as max_visits,
    min(daily_count) as min_visits,
    round(avg(daily_count),2) as average_visits
    from
		(select admission_date, count(1) as daily_count
		from admissions
		group by admission_date)
    as daily_admissions;


# QM 26 - Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table.

SELECT p.patient_id, p.first_name, p.last_name
FROM patients p
LEFT JOIN admissions a 
ON p.patient_id = a.patient_id
WHERE a.patient_id IS NULL
ORDER BY p.patient_id;


# QM 27 - Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

SELECT 
    concat(p.first_name,' ',p.last_name) AS patient_name,
    a.admission_date,
    d.first_name || ' ' || d.last_name AS doctor_name
FROM patients p
JOIN admissions a ON p.patient_id = a.patient_id
JOIN doctors d ON a.attending_doctor_id = d.doctor_id
WHERE a.admission_date = (
    SELECT MAX(a2.admission_date)
    FROM admissions a2
    WHERE a2.patient_id = p.patient_id);
    

# QH 1 - Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group. Order the list by the weight group decending.
#        For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.

select
	count(1) as patients_in_group,
    floor(weight / 10) * 10 as weight_group
from patients
group by 2 
order by 2 desc;

# QH 2 - Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1. Obese is defined as weight(kg)/(height(m)2) >= 30.

SELECT 
    patient_id,
    weight,
    height,
    CASE 
        WHEN (weight/(POWER(height / 100.0, 2))) >= 30 THEN 1
        ELSE 0
    END AS isObese
FROM patients
ORDER BY patient_id;


# QH 3 - Show patient_id, first_name, last_name, and attending doctor's specialty. Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

select 
	a.patient_id,
    p.first_name as patient_first_name,
    p.last_name as patient_last_name,
    d.specialty as attending_doctor_speciality
from admissions a
join patients p 
on a.patient_id=p.patient_id
join doctors d
on a.attending_doctor_id = d.doctor_id
where a.diagnosis = 'Epilepsy' and d.first_name = 'Lisa';


# QH 4 - All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission.
#          Show the patient_id and temp_password. The password must be the following, in order:
#   1. patient_id
#   2. the numerical length of patient's last_name
#   3. year of patient's birth_date

SELECT
	distinct a.patient_id,
    concat(a.patient_id,len(p.last_name),year(p.birth_date)) as temp_password
from admissions a
left join patients p 
on a.patient_id = p.patient_id;


# QH 5 - Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance. 
#        Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

SELECT 
    CASE 
        WHEN patient_id % 2 = 0 THEN 'Yes'
        ELSE 'No'
    END AS has_insurance,
    SUM(CASE WHEN patient_id % 2 = 0 THEN 10 ELSE 50 END) AS admission_total_cost
FROM admissions
GROUP BY 1
ORDER BY has_insurance;


# QH 6 - Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name

select pr.province_name 
from province_names pr 
join patients p 
on p.province_id = pr.province_id
group by pr.province_name
having 
	count(case when p.gender = 'M' then 1 end) > count(case when p.gender = 'F' then 1 end)
order by pr.province_name;

# QH 7 - We are looking for a specific patient. Pull all columns for the patient who matches the following criteria:
#        First_name contains an 'r' after the first two letters.
#        Identifies their gender as 'F'
#        Born in February, May, or December
#        Their weight would be between 60kg and 80kg
#        Their patient_id is an odd number
#        They are from the city 'Kingston'

select * from patients
where 
	first_name like '__r%' and
    gender = 'F' and
    month(birth_date) in (2,5,12) and
    (weight between 60 and 80) and 
    patient_id % 2 = 1 and
    city = 'Kingston';


# QH 8 - Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form.

SELECT 
    CONCAT(
        ROUND(
            (COUNT(CASE WHEN gender = 'M' THEN 1 END) * 100.0) / 
            COUNT(*),
            2
        ),
        '%'
    ) AS percent_of_male_patients
FROM patients;

# QH 10 - Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.

select province_name from province_names
order by 
	(case when province_name = 'Ontario' then 0 else 1 end),
province_name; 


# QH 11 - We need a breakdown for the total amount of admissions each doctor has started each year. 
#         Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.

SELECT d.doctor_id, concat(d.first_name, ' ',d.last_name) as doctor_name,
d.specialty,
year(a.admission_date) as selected_year,
count(*) as total_admissions
from doctors d 
join admissions a 
on a.attending_doctor_id = d.doctor_id
group by 1,2,3,4
order by 1,2,3,4;