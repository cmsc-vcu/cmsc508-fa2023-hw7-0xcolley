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
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ...
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL. done
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!
CREATE TABLE skills (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(4096) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255),
    time_commitment varchar(255),
    PRIMARY KEY(id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

#Thank you to ChatGPT for generating these based on the table I provided.
INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
(1, 'Agile Project Management', 'Comprehensive understanding of Agile methodologies, including Scrum and Kanban. Ability to lead teams through iterative development cycles, with a focus on collaboration, flexibility, and continuous improvement.', 'Skill 1', 'https://asana.com/resources/agile-methodology', '1q'),
(2, 'Python Programming', 'Expertise in Python, a versatile programming language. Proficiency in writing clean, efficient code for a variety of applications, including data analysis, web development, and automation.', 'Skill 2', 'https://docs.python.org/3/tutorial/index.html', '2y'),
(3, 'Data Visualization', 'Skill in creating impactful data visualizations using tools like Tableau or PowerBI. Ability to transform complex data sets into clear, compelling visuals that aid in decision-making.', 'Skill 3', 'https://www.tableau.com/learn/articles/data-visualization', '1y'),
(4, 'Cloud Computing', 'In-depth knowledge of cloud services and architectures, including AWS, Azure, or Google Cloud. Skills in deploying and managing applications in the cloud.', 'Skill 4', 'https://kubernetes.io/', '5y'),
(5, 'Cybersecurity Fundamentals', 'Understanding of cybersecurity principles and best practices. Ability to implement security measures to protect systems and data against cyber threats.', 'Skill 5', 'https://tryhackme.com/', '6m'),
(6, 'Machine Learning Techniques', 'Proficiency in machine learning concepts and algorithms. Skills in building, training, and deploying machine learning models using frameworks like TensorFlow or PyTorch.', 'Skill 6', 'https://www.tensorflow.org/', '3w'),
(7, 'DevOps Practices', 'Expertise in DevOps methodologies, including continuous integration and continuous deployment (CI/CD). Familiarity with tools like Jenkins, Docker, and Kubernetes.', 'Skill 7', 'https://www.docker.com/', '10y'),
(8, 'UI/UX Design Principles', 'Strong foundation in UI/UX design, with skills in creating user-friendly and aesthetically pleasing interfaces. Understanding of user research, wireframing, and prototyping.', 'Skill 8', 'https://react.dev/', '12m');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int,
    people_last_name varchar(256) NOT NULL,
    PRIMARY KEY (people_id),
    people_first_name varchar(255),
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(4096),
    date_joined date NOT NULL
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_last_name, people_first_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES
(1, 'Person 1', 'John', 'john.person1@email.com', 'https://www.linkedin.com/in/johnperson1', 'https://www.example.com/headshots/john1.jpg', 'JohnP1#1234', 'Experienced software developer with a passion for innovative technologies and collaborative team environments.', '2022-01-15'),
(2, 'Person 2', 'Emily', 'emily.person2@email.com', 'https://www.linkedin.com/in/emilyperson2', 'https://www.example.com/headshots/emily2.jpg', 'EmilyP2#2345', 'Digital marketing specialist with a focus on SEO and content creation, dedicated to driving brand growth.', '2022-03-10'),
(3, 'Person 3', 'David', 'david.person3@email.com', 'https://www.linkedin.com/in/davidperson3', 'https://www.example.com/headshots/david3.jpg', 'DavidP3#3456', 'Project manager with a track record of successful project delivery in IT sectors, skilled in Agile methodologies.', '2022-05-20'),
(4, 'Person 4', 'Sophia', 'sophia.person4@email.com', 'https://www.linkedin.com/in/sophiaperson4', 'https://www.example.com/headshots/sophia4.jpg', 'SophiaP4#4567', 'User experience designer with a passion for creating intuitive and user-friendly digital experiences.', '2022-07-05'),
(5, 'Person 5', 'Michael', 'michael.person5@email.com', 'https://www.linkedin.com/in/michaelperson5', 'https://www.example.com/headshots/michael5.jpg', 'MichaelP5#5678', 'Data analyst skilled in data visualization and statistical analysis, with a strong background in finance.', '2022-09-15'),
(6, 'Person 6', 'Laura', 'laura.person6@email.com', 'https://www.linkedin.com/in/lauraperson6', 'https://www.example.com/headshots/laura6.jpg', 'LauraP6#6789', 'HR professional specializing in talent acquisition and employee engagement strategies.', '2022-11-01'),
(7, 'People 7', 'Samantha', 'samantha.people7@email.com', 'https://www.linkedin.com/in/samanthapeople7', 'https://www.example.com/headshots/samantha7.jpg', 'SamanthaP7#7890', 'Senior software engineer with a focus on AI and machine learning applications.', '2023-04-10'),
(8, 'People 8', 'Raj', 'raj.people8@email.com', 'https://www.linkedin.com/in/rajpeople8', 'https://www.example.com/headshots/raj8.jpg', 'RajP8#8901', 'Marketing strategist with a decade of experience in brand development and market analysis.', '2023-05-15'),
(9, 'People 9', 'Emily', 'emily.people9@email.com', 'https://www.linkedin.com/in/emilypeople9', 'https://www.example.com/headshots/emily9.jpg', 'EmilyP9#9012', 'HR consultant specializing in organizational culture and employee engagement.', '2023-06-20'),
(10, 'People 10', 'Carlos', 'carlos.people10@email.com', 'https://www.linkedin.com/in/carlospeople10', 'https://www.example.com/headshots/carlos10.jpg', 'CarlosP10#0123', 'Financial analyst with expertise in budgeting, forecasting, and financial planning.', '2023-07-05');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.
CREATE TABLE peopleskills (
    id int AUTO_INCREMENT NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (skills_id) REFERENCES skills(id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people(people_id) ON DELETE CASCADE
);

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
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1, 1, '2023-06-25'),
(3, 1, '2023-04-15'),
(6, 1, '2023-04-20'),
(3, 2, '2023-01-15'),
(4, 2, '2023-01-17'),
(5, 2, '2023-05-14'),
(1, 3, '2023-01-08'),
(5, 3, '2023-08-23'),
(3, 5, '2023-07-25'),
(6, 5, '2023-02-10'),
(2, 6, '2023-09-02'),
(3, 6, '2023-03-31'),
(4, 6, '2023-01-13'),
(3, 7, '2023-09-23'),
(5, 7, '2023-08-18'),
(6, 7, '2023-05-18'),
(1, 8, '2023-02-06'),
(3, 8, '2023-04-29'),
(5, 8, '2023-10-08'),
(6, 8, '2023-05-31'),
(2, 9, '2023-06-26'),
(5, 9, '2023-03-03'),
(6, 9, '2023-02-11'),
(1, 10, '2023-04-09'),
(4, 10, '2023-07-17'),
(5, 10, '2023-05-06');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles
CREATE TABLE roles (
  id int,
  name varchar(255),
  sort_priority int,
  PRIMARY KEY(id)
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)
INSERT INTO roles (id, name, sort_priority) VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment
CREATE TABLE peopleroles(
    id int AUTO_INCREMENT NOT NULL,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (people_id) REFERENCES people(people_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);


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
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
(1, 2, '2023-06-25'),
(2, 5, '2023-01-15'),
(2, 6, '2023-01-17'),
(3, 2, '2023-01-08'),
(3, 4, '2023-08-23'),
(4, 3, '2023-07-25'),
(5, 3, '2023-02-10'),
(6, 2, '2023-09-02'),
(6, 1, '2023-03-31'),
(7, 1, '2023-01-13'),
(8, 1, '2023-09-23'),
(8, 4, '2023-08-18'),
(9, 2, '2023-05-18'),
(10, 2, '2023-02-06'),
(10, 1, '2023-04-29');
