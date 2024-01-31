ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id)

--INSERT
INSERT INTO companies (name) VALUES ('BlastoisCorp');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

--UPDATE
UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;