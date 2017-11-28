--Devices.sql
--Create and populate Devices Table
--Author: Daniel Gisolfi
--DB Management Final Project

CREATE TABLE Devices(
	dev_id		int				NOT NULL,
	staff_id	int				NOT NULL,
	dev_type	VARCHAR2(20)	NOT NUll,
	dev_serial	VARCHAR2(20)	NOT NUll);

ADD CONSTRAINT pk_dev_id PRIMARY KEY (dev_id);
ADD CONSTRAINT fk_staff_id_dev FOREIGN KEY (staff_id) REFERENCES Staff(staff_id);

INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (1, 1, 'Desktop', 'F3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (2, 2, 'Desktop', 'V6K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (3, 3, 'Laptop', 'J7K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (4, 4, 'Desktop', 'Q8K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (5, 5, 'Laptop', 'P3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (6, 6, 'Laptop', 'S3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (7, 7, 'Laptop', 'L3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (8, 8, 'Desktop', 'D3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (9, 9, 'Desktop', 'T3K8D7B5');
INSERT INTO shifts (dev_id, staff_id, dev_type, dev_serial)
	VALUES (10, 10, 'Laptop', 'R3K8D7B5');


