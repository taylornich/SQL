CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

#task 1
INSERT into Members(id, name, age) VALUES
(1, 'Brianna Padilla', 23),
(2, 'Jane Doe', 21),
(3, 'Kenny McDonald', 31);

INSERT into workoutsessions(session_id, member_id, session_date, session_time, activity) VALUES
(101, 1, '2024-09-13', '6 AM', 'Strength Building'),
(102, 1, '2024-09-14', '7AM', 'Cardio'),
(103, 2, '2024-09-12', '4 PM', 'Pilates'),
(104, 2, '2024-09-16', '5 PM', 'Yoga Class'),
(105, 3, '2024-09-14', '11 AM', 'Weight Lifting'),
(106, 3, '2024-09-16', '1 PM', 'Weight Lifting'); 

#task 2
SELECT id from members WHERE name = "Jane Doe";
UPDATE workoutsessions
SET session_time = '2 PM'
WHERE session_id = 2 and session_time = '5 PM';

#task 3
DELETE from WorkoutSessions
WHERE member_id = 3;

select * from WorkoutSessions
