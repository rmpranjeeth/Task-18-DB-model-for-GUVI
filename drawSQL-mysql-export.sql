CREATE TABLE `Sign Up`(
    `First name` VARCHAR(255) NOT NULL,
    `Last name` VARCHAR(255) NOT NULL,
    `Email Id` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL,
    `Mobile Number` INT NOT NULL
);
ALTER TABLE
    `Sign Up` ADD PRIMARY KEY `sign up_first name_primary`(`First name`);
CREATE TABLE `Log in`(
    `Email Id` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Log in` ADD PRIMARY KEY `log in_email id_primary`(`Email Id`);
CREATE TABLE `Zen Class`(
    `Student` VARCHAR(255) NOT NULL,
    `Admin` VARCHAR(255) NOT NULL,
    `Mendor` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Zen Class` ADD PRIMARY KEY `zen class_student_primary`(`Student`);
CREATE TABLE `Student`(
    `Class` VARCHAR(255) NOT NULL,
    `Dashboard` VARCHAR(255) NOT NULL,
    `Tasks` VARCHAR(255) NOT NULL,
    `Web Code` VARCHAR(255) NOT NULL,
    `Capstone` VARCHAR(255) NOT NULL,
    `Queries` VARCHAR(255) NOT NULL,
    `Requirements` VARCHAR(255) NOT NULL,
    `Applications` VARCHAR(255) NOT NULL,
    `Interview Tasks` VARCHAR(255) NOT NULL,
    `Leave-Aplications` VARCHAR(255) NOT NULL,
    `Mock-Interview` VARCHAR(255) NOT NULL,
    `Certificate` VARCHAR(255) NOT NULL,
    `Testimonial` VARCHAR(255) NOT NULL,
    `Leaderboard` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Student` ADD PRIMARY KEY `student_class_primary`(`Class`);
CREATE TABLE `Class`(
    `Session Roadmap` VARCHAR(255) NOT NULL,
    `Additional Sessions` VARCHAR(255) NOT NULL,
    `Session Joining Link` VARCHAR(255) NOT NULL,
    `Play Recording` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Class` ADD PRIMARY KEY `class_session roadmap_primary`(`Session Roadmap`);
CREATE TABLE `Dashboard`(
    `Attendance` VARCHAR(255) NOT NULL,
    `Overview` VARCHAR(255) NOT NULL,
    `Codekata` VARCHAR(255) NOT NULL,
    `Webkata` VARCHAR(255) NOT NULL,
    `Tasks` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Dashboard` ADD PRIMARY KEY `dashboard_attendance_primary`(`Attendance`);
CREATE TABLE `Queries`(
    `Create Query` VARCHAR(255) NOT NULL,
    `Query List` VARCHAR(255) NOT NULL,
    `Recent Query` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Queries` ADD PRIMARY KEY `queries_create query_primary`(`Create Query`);
CREATE TABLE `Create Query`(
    `Instant Solution` VARCHAR(255) NOT NULL,
    `Mentor Assistance` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Create Query` ADD PRIMARY KEY `create query_instant solution_primary`(`Instant Solution`);
CREATE TABLE `Requirements`(
    `Portfolio` VARCHAR(255) NOT NULL,
    `Portfolio Review` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Requirements` ADD PRIMARY KEY `requirements_portfolio_primary`(`Portfolio`);
CREATE TABLE `Leave-Aplications`(
    `Add Leave` VARCHAR(255) NOT NULL,
    `Leave List` INT NOT NULL
);
ALTER TABLE
    `Leave-Aplications` ADD PRIMARY KEY `leave_aplications_add leave_primary`(`Add Leave`);
CREATE TABLE `Mock-Interview`(
    `Interview Details` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Mock-Interview` ADD PRIMARY KEY `mock_interview_interview details_primary`(`Interview Details`);
CREATE TABLE `Leaderboard`(`List` VARCHAR(255) NOT NULL);
ALTER TABLE
    `Leaderboard` ADD PRIMARY KEY `leaderboard_list_primary`(`List`);
ALTER TABLE
    `Zen Class` ADD CONSTRAINT `zen class_admin_foreign` FOREIGN KEY(`Admin`) REFERENCES `Log in`(`Email Id`);
ALTER TABLE
    `Sign Up` ADD CONSTRAINT `sign up_email id_foreign` FOREIGN KEY(`Email Id`) REFERENCES `Zen Class`(`Student`);
ALTER TABLE
    `Student` ADD CONSTRAINT `student_dashboard_foreign` FOREIGN KEY(`Dashboard`) REFERENCES `Dashboard`(`Attendance`);
ALTER TABLE
    `Student` ADD CONSTRAINT `student_requirements_foreign` FOREIGN KEY(`Requirements`) REFERENCES `Requirements`(`Portfolio`);
ALTER TABLE
    `Student` ADD CONSTRAINT `student_leave_aplications_foreign` FOREIGN KEY(`Leave-Aplications`) REFERENCES `Leave-Aplications`(`Add Leave`);
ALTER TABLE
    `Student` ADD CONSTRAINT `student_mock_interview_foreign` FOREIGN KEY(`Mock-Interview`) REFERENCES `Mock-Interview`(`Interview Details`);
ALTER TABLE
    `Student` ADD CONSTRAINT `student_leaderboard_foreign` FOREIGN KEY(`Leaderboard`) REFERENCES `Leaderboard`(`List`);