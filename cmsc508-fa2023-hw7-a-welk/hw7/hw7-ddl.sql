# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

drop table if exists skills;
CREATE TABLE skills (
    skills_id int not null,
    skills_name varchar(255) not null,
    skills_description varchar(255) not null,
    skills_tag varchar(255) not null,
    skills_url varchar(255),
    skills_time_commitment int,
    PRIMARY KEY (skills_id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills(skills_id, skills_name, skills_description, skills_tag) values
(1, 'skiing', 'quickly sliding down a slope', 'Skill 1'),
(2, 'swimming', 'moving quickly through water without drowning', 'Skill 2'),
(3, 'programming', 'writing code for programs that works', 'Skill 3'),
(4, 'videogaming', 'good at playing videogames, dominates even', 'Skill 4'),
(5, 'socializing', 'converses well with others', 'Skill 5'),
(6, 'driving', 'drives to and from a destination without crashing', 'Skill 6'),
(7, 'running', 'runs long distances', 'Skill 7'),
(8, 'bowling', 'knocks down many pins efficiently when bowling', 'Skill 8');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

drop table if exists people;
CREATE TABLE people (
    people_id int not null,
    people_first_name varchar(255),
    people_last_name varchar(255) NOT NULL,
    people_email varchar(255),
    people_linkin_url varchar(255),
    people_headshot_url varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(255),
    people_date_joined date not null,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with ten people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id, people_first_name, people_last_name, people_email, people_linkin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) values 
(1, 'Humphrey', 'Person 1', 'person1@email.com', 'linkedin.com/person1', 'person1.headshot.com', 'octopus134', 'good employee', '2023-11-07'),
(2, 'Vanessa', 'Person 2', 'person2@email.com', 'linkedin.com/person2', 'person2.headshot.com', 'leopard33', 'bad employee', '2023-11-01'),
(3, 'Rebecca', 'Person 3', 'person3@email.com', 'linkedin.com/person3', 'person3.headshot.com', 'gamerman99', 'games too much on company time!!', '2022-10-07'),
(4, 'Joe', 'Person 4', 'person4@email.com', 'linkedin.com/person4', 'person4.headshot.com', 'hehehe69', 'haha funny number in discord', '2021-08-03'),
(5, 'Jill', 'Person 5', 'person5@email.com', 'linkedin.com/person5', 'person5.headshot.com', 'jumpingman11', 'why does he hop everywhere?', '2022-03-24'),
(6, 'Harry', 'Person 6', 'person6@email.com', 'linkedin.com/person6', 'person6.headshot.com', 'spaghettieater9', 'filled the entire break room fridge with spaghetti', '2020-06-16'),
(7, 'Andrew', 'Person 7', 'person7@email.com', 'linkedin.com/person7', 'person7.headshot.com', 'computerguy2828', 'mediocre employee, gets the job done', '2021-12-09'),
(8, 'Alex', 'Person 8', 'person8@email.com', 'linkedin.com/person8', 'person8.headshot.com', 'oldman99', 'ancient', '1999-04-25'),
(9, 'Daniel', 'Person 9', 'person9@email.com', 'linkedin.com/person9', 'person9.headshot.com', 'keyboardgal32', 'always bringing in that annoying mechanical keyboard', '2021-09-22'),
(10, 'Lenny', 'Person 10', 'person10@email.com', 'linkedin.com/person10', 'person10.headshot.com', 'bigpimpin967', 'pimps? weird', '2014-03-18');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

drop table if exists peopleskills;
CREATE TABLE peopleskills(
    peopleskills_id int not null auto_increment,
    peopleskills_skills_id int not null,
    peopleskills_people_id int not null,
    peopleskills_date_aquired date not null,
    PRIMARY KEY (peopleskills_id)
)


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.


insert into peopleskills(peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_aquired) values
(1, 1, 1, '2022-09-22'),
(2, 3, 1, '2022-09-23'),
(3, 6, 1, '2022-09-24'),
(4, 3, 2, '2019-03-23'),
(5, 4, 2, '2017-05-09'),
(6, 5, 2, '2016-10-19'),
(7, 1, 3, '2012-09-09'),
(8, 5, 3, '2013-11-27'),
(9, 3, 5, '2011-04-01'),
(10, 6, 5, '2009-12-15'),
(11, 2, 6, '2009-12-18'),
(12, 3, 6, '2020-05-08'),
(13, 4, 6, '2017-10-11'),
(14, 3, 7, '1999-11-28'),
(15, 5, 7, '2013-05-22'),
(16, 6, 7, '2011-11-11'),
(17, 1, 8, '2008-09-22'),
(18, 3, 8, '2001-08-21'),
(19, 5, 8, '2000-09-27'),
(20, 6, 8, '2004-02-01'),
(21, 2, 9, '2009-06-12'),
(22, 5, 9, '2011-12-18'),
(23, 6, 9, '2023-11-14'),
(24, 1, 10, '2020-03-24'),
(25, 4, 10, '2018-09-28'),
(26, 5, 10, '2015-03-15');


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

drop table if exists roles;
CREATE TABLE roles(
    roles_id int not null,
    roles_name varchar(255) not null,
    roles_sort_priority int
)



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles (roles_id, roles_name, roles_sort_priority) values
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);



# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

drop table if exists peopleroles;
CREATE TABLE peopleroles (
    peopleroles_id int not null auto_increment,
    peopleroles_people_id int not null,
    peopleroles_role_id int not null,
    peopleroles_date_assigned date not null,
    PRIMARY KEY(peopleroles_id)
)



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles(peopleroles_id, peopleroles_role_id, peopleroles_people_id, peopleroles_date_assigned) values 
(1, 2, 1, '2023-09-01'),
(2, 5, 2, '2021-03-05'),
(3, 6, 2, '2022-11-12'),
(4, 2, 3, '2011-12-11'),
(5, 4, 3, '2012-07-22'),
(6, 3, 4, '2013-07-29'),
(7, 3, 5, '2018-06-22'),
(8, 2, 6, '2000-09-19'),
(9, 1, 6, '2004-10-14'),
(10, 1, 7, '2008-09-04'),
(11, 1, 8, '2020-01-14'),
(12, 4, 8, '2023-11-09'),
(13, 2, 9, '2022-05-25'),
(14, 2, 10, '1995-11-02'),
(15, 1, 10, '1995-11-03');

