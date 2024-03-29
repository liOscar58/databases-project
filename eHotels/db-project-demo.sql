-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id serial PRIMARY KEY,
  name varchar(45) NOT NULL,
  surname varchar(45) NOT NULL,
  email varchar(100) NOT NULL CHECK (email LIKE '_%@_%._%')
);

-- ----------------------------
-- Records of students
-- ----------------------------
-- INSERT INTO students VALUES ('1', 'Cristiano', 'Ronaldo', 'cr7@mail.com');
-- INSERT INTO students VALUES ('2', 'Lionel', 'Messi', 'lm10@mail.com');
-- INSERT INTO students VALUES ('3', 'Pedro', 'Wilkinson', 'Salma74@yahoo.com');
-- INSERT INTO students VALUES ('4', 'Lana', 'Larkin', 'Dale_Jast@yahoo.com');
-- INSERT INTO students VALUES ('5', 'Daniel', 'Kovacek', 'Janelle_Anderson@gmail.com');
-- INSERT INTO students VALUES ('6', 'Stewart', 'Botsford', 'Delaney4@yahoo.com');
-- INSERT INTO students VALUES ('7', 'Charlotte', 'Shanahan', 'Damon_Cremin@yahoo.com');
-- INSERT INTO students VALUES ('8', 'Pete', 'Bauch', 'Aisha55@yahoo.com');
-- INSERT INTO students VALUES ('9', 'Lori', 'Baumbach', 'Jude8@yahoo.com');
-- INSERT INTO students VALUES ('10', 'Ignacio', 'Kuhn', 'Shea_Hayes@hotmail.com');
-- INSERT INTO students VALUES ('11', 'Marsha', 'Kon', 'Brigitte.Macejkovic@gmail.com');
-- INSERT INTO students VALUES ('12', 'Lora', 'Mann', 'Orland_Welch@hotmail.com');

INSERT INTO students (name, surname, email) VALUES ('Cristiano', 'Ronaldo', 'cr7@mail.com');
INSERT INTO students (name, surname, email) VALUES ('Lionel', 'Messi', 'lm10@mail.com');
INSERT INTO students (name, surname, email) VALUES ('Pedro', 'Wilkinson', 'Salma74@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Lana', 'Larkin', 'Dale_Jast@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Daniel', 'Kovacek', 'Janelle_Anderson@gmail.com');
INSERT INTO students (name, surname, email) VALUES ('Stewart', 'Botsford', 'Delaney4@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Charlotte', 'Shanahan', 'Damon_Cremin@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Pete', 'Bauch', 'Aisha55@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Lori', 'Baumbach', 'Jude8@yahoo.com');
INSERT INTO students (name, surname, email) VALUES ('Ignacio', 'Kuhn', 'Shea_Hayes@hotmail.com');
INSERT INTO students (name, surname, email) VALUES ('Marsha', 'Kon', 'Brigitte.Macejkovic@gmail.com');
INSERT INTO students (name, surname, email) VALUES ('Lora', 'Mann', 'Orland_Welch@hotmail.com');
-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS grades;
CREATE TABLE IF NOT EXISTS grades (
  id int PRIMARY KEY,
  course_name varchar(45) NOT NULL,
  grade int NOT NULL CHECK (grade >= 0 AND grade <= 100),
  student_id int NOT NULL REFERENCES students(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO grades VALUES ('1', 'PAC', '87', '1');
INSERT INTO grades VALUES ('2', 'SHO', '93', '1');
INSERT INTO grades VALUES ('3', 'PAS', '82', '1');
INSERT INTO grades VALUES ('4', 'DRI', '88', '1');
INSERT INTO grades VALUES ('5', 'DEF', '34', '1');
INSERT INTO grades VALUES ('6', 'PHY', '75', '1');
INSERT INTO grades VALUES ('7', 'PAC', '85', '2');
INSERT INTO grades VALUES ('8', 'SHO', '92', '2');
INSERT INTO grades VALUES ('9', 'PAS', '91', '2');
INSERT INTO grades VALUES ('10', 'DRI', '95', '2');
INSERT INTO grades VALUES ('11', 'DEF', '34', '2');
INSERT INTO grades VALUES ('12', 'PHY', '65', '2');

select * from students