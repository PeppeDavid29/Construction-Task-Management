CREATE TABLE dbo.New_users (
    User_id INT IDENTITY(1,1),
    Task_name VARCHAR(255) NOT NULL,
    Project_id INT,
    Description TEXT,
    Start_date DATE,
    End_date DATE,
    Status VARCHAR(255) NOT NULL,
    Location VARCHAR(255),
    Materials VARCHAR(255),
    Progress INT,
    PRIMARY KEY (User_id), -- Primary key on task_id
    CONSTRAINT UQ_User_id UNIQUE (User_id) -- Unique constraint on user_id
);

DROP TABLE dbo.New_users;

CREATE TABLE dbo.AnotherNewTable (
    User_id INT IDENTITY(1,1),
    Task_name VARCHAR(255) NOT NULL,
    Project_id INT,
    Description TEXT,
    Start_date DATE,
    End_date DATE,
    Status VARCHAR(255) NOT NULL,
    Location VARCHAR(255),
    Materials VARCHAR(255),
    Progress INT,
    PRIMARY KEY (User_id),
    CONSTRAINT UQ_User_id UNIQUE (User_id)
);

Select *
From [AnotherNewTable]

--Create a Task


INSERT INTO dbo.AnotherNewTable (Task_name, Project_id, Description, Start_date, End_date, Status, Location, Materials, Progress)
VALUES ('Task 1', 1, 'Description of Task 1', '2023-09-10', '2023-09-20', 'In Progress', 'Location A', 'Materials A', 50);


Select *
From [AnotherNewTable]

--Tasks assigned to a specific user

SELECT *
FROM [AnotherNewTable] WHERE user_id = 1;

--Update a Task

UPDATE [AnotherNewTable]
SET Task_name = 'Updated Task Name'
WHERE User_id = 1;

SELECT *
FROM [AnotherNewTable] WHERE user_id = 1;

--Delete a Task

DELETE FROM [AnotherNewTable]
WHERE user_id = 1;

