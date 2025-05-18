SELECT * FROM person2;

-- Add column
alter Table person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmil.com' NOT NULL;


-- Delete column
alter Table person2
    DROP COLUMN email;



-- Rename Column name
ALTER Table person2
    RENAME COLUMN age to user_age



-- Change type
ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50);




-- Add constraints
ALTER TABLE person2
    ALTER COLUMN user_age set NOT NULL;



-- Remove constraints
ALTER TABLE person2
    ALTER COLUMN user_age DROP NOT NULL;


-- Insert value
INSERT into person2 values(8, 'test2', 45, 'test@gmail.com')



-- Add uniqueness
ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);


-- Drop uniqueness
ALTER TABLE person2
    DROP constraint unique_person2_user_age;


-- drop full database table
DROP TABLE person2;


-- drop full table data
TRUNCATE Table person2;