ALTER TABLE persons8
ADD surname varchar(150)

ALTER TABLE persons8
CHANGE surname description varchar(255);

ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

ALTER TABLE persons8
DROP COLUMN description;
