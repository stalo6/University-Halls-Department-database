CREATE DATABASE Halls_Department;

CREATE TABLE employees (employee_id VARCHAR(20) PRIMARY KEY,
						first_name VARCHAR(15) NOT NULL,
                        last_name VARCHAR(15) NOT NULL,
                        position VARCHAR(50),
                        department VARCHAR(30)
                        );

ALTER TABLE employees ADD(gender VARCHAR(15));                        
                        
CREATE TABLE hall (hall_id INT PRIMARY KEY,
                   hall_name VARCHAR(30) NOT NULL,
                   fee_rate DECIMAL(10, 2) NOT NULL,
                   halls_officer_id VARCHAR(20),
                   FOREIGN KEY (halls_officer_id) REFERENCES employees(employee_id)
                   );
                   
                        
                        
CREATE TABLE hostel (hostel_id VARCHAR(30) PRIMARY KEY,
                     hostel_name VARCHAR(30) NOT NULL,
                     hall_id INT,
                     custodian_id VARCHAR(20),
                     FOREIGN KEY (hall_id) REFERENCES hall(hall_id),
                     FOREIGN KEY (custodian_id) REFERENCES employees(employee_id)
                     );

ALTER TABLE hostel ADD(occupant_gender VARCHAR(10));


CREATE TABLE room (room_id VARCHAR(30) PRIMARY KEY,
                   room_number INT,
                   capacity INT,
                   hostel_id VARCHAR(30),
                   FOREIGN KEY (hostel_id) REFERENCES hostel(hostel_id)
                   );
                   
                        
                        
CREATE TABLE students (registration_number VARCHAR(30) PRIMARY KEY,
                       first_name VARCHAR(15),
                       last_name VARCHAR(15),
                       year_of_study INT,
                       room_id VARCHAR(30),
                       FOREIGN KEY (room_id) REFERENCES room(room_id)
                       );
                       
ALTER TABLE students ADD(gender VARCHAR(10));
                       
                       
INSERT INTO employees (employee_id, first_name, last_name, position, department, gender)
VALUES ("EUH001", "Grace", "Mobutu", "Chief Halls Officer", "Halls", "Female"),
	   ("EUH002", "Pixley", "Isaka", "Halls Officer", "Halls", "Male"),
       ("EUH003", "Jean", "Mateta", "Halls Officer", "Halls", "Male"),
       ("EUH015", "Kamene", "Mutisya", "Halls Officer", "Halls", "Female"),
       ("EUH004", "Max", "Eberechi", "Custodian", "Halls", "Male"),
       ("EUH005", "Faust", "Seseko", "Custodian", "Halls", "Male"),
       ("EUH009", "Billie", "Mugweru", "Custodian", "Halls", "Male"),
       ("EUH006", "Mwanakombo", "Shamsi", "Custodian", "Halls", "Female"),
       ("EUH022", "Sharon", "Wendo", "Custodian", "Halls", "Female"),
       ("EUH007", "Kasmuel", "Masinga", "Custodian", "Halls", "Male"),
       ("EUICT011", "Magnus", "Kwame", "Database Administrator", "ICT", "Male"),
       ("EUICT006", "Sean", "Kanka", "Software Engineer", "ICT", "Male"),
       ("EUC001", "Jane", "Mima", "Cleaner", "Cleaning and Sanitation", "Female"),
       ("EUC002", "James", "Mpuru", "Cleaner", "Cleaning and Sanitation", "Male"),
       ("EUS002", "Senior", "Ochuka", "Security Gaurd", "Security", "Male"),
       ("EUM001", "Kean", "Manka", "Maintenance officer", "Maintenance", "Male");
       
       
INSERT INTO hall (hall_id, hall_name, fee_rate, halls_officer_id)
VALUES (1, "CBD", 5500, "EUH003"),
	   (2, "Ruwenzori", 7500, "EUH002"),
       (3, "Tatton1", 3500, "EUH015"),
       (4, "Buru Buru", 3500, "EUH002"),
       (5, "Tatton2", 6500, "EUH015");
       
       
INSERT INTO hostel (hostel_id, hostel_name, hall_id, custodian_id, occupant_gender)
VALUES ("CBD001", "Amboseli", 1, "EUH004", "Male"),
	   ("CBD005", "Aberdares", 1, "EUH022", "Female"),
       ("CBD002", "Elementaita", 1, "EUH004", "Male"),
       ("CBD006", "Mau", 1, "EUH022", "Female"),
       ("Ruwe006", "Block 44", 2, "EUH009", "Female"),
       ("Ruwe001", "Block 39", 2, "EUH009", "Male"),
       ("Buru020", "Kirinyaga", 3, "EUH005", "Male"),
       ("Buru009", "Mombasa", 3, "EUH006", "Female"),
       ("Buru008", "Garissa", 3, "EUH006", "Female"),
       ("Tat015", "Argentina2", 5, "EUH007", "Female");
       
       
INSERT INTO room (room_id, room_number, capacity, hostel_id)
VALUES ("Ambo031", 31, 2, "CBD001"),
       ("Ambo013", 13, 3, "CBD001"),
       ("Aber005", 5, 2, "CBD005"),
       ("Ele050", 50, 4, "CBD002"),
       ("Arge002", 2, 1, "Tat015"),
       ("Mau005", 5, 4, "CBD006"),
       ("Kiri010", 10, 3, "Buru020"),
       ("B44007", 7, 2, "Ruwe006"),
       ("B39001", 1, 2, "Ruwe001"),
       ("Mom003", 3, 2, "Buru009");
       
       
INSERT INTO students (registration_number, first_name, last_name, year_of_study, room_id, gender)
VALUES ("S18/02036/23", "Samson", "Eze", 3, "Ambo031", "Male"),
	   ("S13/03033/22", "Musk", "Kibuchi", 4, "Ambo013", "Male"),
       ("E13/08095/25", "Hafsa", "Ali", 1, "Aber005", "Female"),
       ("A13/04036/23", "Kim", "Mamushka", 3, "Kiri010", "Male"),
       ("S11/01037/24", "Christine", "Ada", 2, "Mom003", "Female"),
       ("E14/09877/21", "Altman", "Mampi", 5, "B39001", "Male"),
       ("A18/05038/22", "Angela", "Buba", 4, "Arge002", "Female");
       
SELECT *
FROM employees;  

SELECT *
FROM students ;    
       
       
                         