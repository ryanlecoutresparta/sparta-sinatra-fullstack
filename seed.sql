DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS sports;

CREATE TABLE sports (
	id_sports SERIAL PRIMARY KEY,
	sport_name VARCHAR(50),
	invented INTEGER,
	team_size INTEGER
);

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	ip_address VARCHAR(20),
	sport_id int REFERENCES sports(id_sports)
);

INSERT INTO sports (sport_name, invented, team_size) VALUES ('Football', 1280, 11);
INSERT INTO sports (sport_name, invented, team_size) VALUES ('Rugby', 1823, 15);
INSERT INTO sports (sport_name, invented, team_size) VALUES ('Hockey', 1875, 11);
INSERT INTO sports (sport_name, invented, team_size) VALUES ('Basketball', 1891, 5);
INSERT INTO sports (sport_name, invented, team_size) VALUES ('Baseball', 1839, 9);

INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Mikol', 'Stigers', 'mstigers0@nba.com', 'Male', '143.20.169.84', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Odele', 'Kitman', 'okitman1@shinystat.com', 'Female', '43.210.130.217', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Pier', 'Giffkins', 'pgiffkins2@cam.ac.uk', 'Female', '23.27.224.157', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Zola', 'MacTrustram', 'zmactrustram3@mayoclinic.com', 'Female', '249.231.195.233', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Roze', 'Spacy', 'rspacy4@globo.com', 'Female', '45.84.205.188', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Dwayne', 'Probet', 'dprobet5@amazon.co.uk', 'Male', '98.78.70.231', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Curr', 'Deetch', 'cdeetch6@godaddy.com', 'Male', '99.136.123.31', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Burnard', 'Kighly', 'bkighly7@sciencedaily.com', 'Male', '226.29.50.96', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Phedra', 'Wessel', 'pwessel8@moonfruit.com', 'Female', '81.59.182.22', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Erny', 'Karolovsky', 'ekarolovsky9@ebay.com', 'Male', '150.178.7.37', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Mia', 'Pimmocke', 'mpimmockea@sciencedaily.com', 'Female', '134.207.97.62', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Bartram', 'Zamora', 'bzamorab@google.it', 'Male', '24.17.3.164', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Reggie', 'Morit', 'rmoritc@vkontakte.ru', 'Female', '67.38.180.85', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Hube', 'Tully', 'htullyd@google.nl', 'Male', '193.36.81.222', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Petronilla', 'Malacr', 'pmalacr@time.com', 'Female', '53.32.15.211', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Faye', 'Trayford', 'ftrayfordf@unblog.fr', 'Female', '177.137.79.79', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Shelba', 'Bamlet', 'sbamletg@eventbrite.com', 'Female', '193.93.119.199', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Christie', 'Mulbry', 'cmulbryh@skyrock.com', 'Female', '23.12.231.48', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Sibylle', 'Bainton', 'sbaintoni@google.cn', 'Female', '204.98.104.104', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Dana', 'Paddingdon', 'dpaddingdonj@bacom', 'Male', '9.100.198.25', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Bradan', 'Screeton', 'bscreetonk@mail.ru', 'Male', '145.223.31.10', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Gradeigh', 'Thornewill', 'gthornewilll@ucoz.com', 'Male', '90.17.50.252', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Launce', 'Redfern', 'lredfernm@hugedomains.com', 'Male', '253.87.221.135', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Nikoletta', 'Blasing', 'nblasingn@tuttocitta.it', 'Female', '170.238.75.17', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Red', 'Souley', 'rsouleyo@va.gov', 'Male', '133.204.140.36', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Caesar', 'Wardrope', 'cwardropep@blog.com', 'Male', '251.90.116.147', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Josy', 'Hatton', 'jhattonq@howstuffworks.com', 'Female', '234.163.197.141', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Guillema', 'Laughlin', 'glaughlinr@networkadvertising.org', 'Female', '16.56.60.205', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Gordie', 'Waterhous', 'gwaterhouss@java.com', 'Male', '21.134.14.53', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Nickie', 'Turfrey', 'nturfreyt@facebook.com', 'Male', '52.229.132.122', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Judon', 'Leroux', 'jlerouxu@skype.com', 'Male', '126.30.82.89', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Brandtr', 'Comi', 'bcomiv@cbc.ca', 'Male', '64.100.53.139', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Elaina', 'Worsam', 'eworsamw@etsy.com', 'Female', '13.103.243.164', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Gabriella', 'Burnhill', 'gburnhillx@google.com.au', 'Female', '119.65.17.202', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Faun', 'Krzyzowski', 'fkrzyzowskiy@woothemes.com', 'Female', '11.240.99.228', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Ellwood', 'Rosenfield', 'erosenfieldz@wordpress.com', 'Male', '161.208.234.82', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Bettine', 'Larne', 'blarne10@godaddy.com', 'Female', '158.215.248.70', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Lisette', 'Ruppelin', 'lruppelin11@virginia.edu', 'Female', '185.181.69.126', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Aleece', 'Huckabe', 'ahuckabe12@flavors.me', 'Female', '211.69.17.11', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Pren', 'Tweede', 'ptweede13@sogou.com', 'Male', '146.103.171.108', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Nester', 'Monelli', 'nmonelli14@devhub.com', 'Male', '90.241.187.136', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Evita', 'Staniland', 'estaniland15@alexa.com', 'Female', '174.17.187.62', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Ruy', 'Bradbeer', 'rbradbeer16@studiopress.com', 'Male', '193.59.150.100', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Law', 'Dellenbach', 'ldellenbach17@aboutads.info', 'Male', '42.5.161.220', 1);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Marcelo', 'Cramond', 'mcramond18@salon.com', 'Male', '98.54.233.7', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Ransell', 'Blethyn', 'rblethyn19@flavors.me', 'Male', '155.230.234.147', 4);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Devi', 'De La Cote', 'ddelacote1a@flickr.com', 'Female', '65.120.224.92', 5);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Elyssa', 'Aldam', 'ealdam1b@wiley.com', 'Female', '10.107.197.196', 3);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Janek', 'Beaton', 'jbeaton1c@shinystat.com', 'Male', '176.226.206.146', 2);
INSERT INTO people (first_name, last_name, email, gender, ip_address, sport_id) VALUES ('Brnaby', 'Onele', 'bonele1d@goodreads.com', 'Male', '114.147.243.146', 4);
