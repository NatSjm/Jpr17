CREATE TABLE Homework
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255),
    description TEXT
);

CREATE TABLE Lesson
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255),
    updatedAt   TIMESTAMP,
    homework_id INT REFERENCES Homework (id) ON DELETE SET NULL
);


CREATE TABLE Schedule
(
    id        SERIAL PRIMARY KEY,
    name      VARCHAR(255),
    updatedAt TIMESTAMP
);

CREATE TABLE Schedule_Lesson
(
    schedule_id INT REFERENCES Schedule (id) ON DELETE CASCADE,
    lesson_id   INT REFERENCES Lesson (id) ON DELETE CASCADE,
    CONSTRAINT shedule_lesson_pk
        PRIMARY KEY (schedule_id, lesson_id)
);