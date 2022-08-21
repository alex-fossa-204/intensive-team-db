BEGIN TRANSACTION;
	INSERT INTO privilege (privilege_name) 
	VALUES 
	('user:read'), 
	('user:add'), 
	('user:update'), 
	('user:delete');

	INSERT INTO system_role (role_name) 
	VALUES 
	('TRAINER-ADMIN'), 
	('TRAINEE-USER');
	
	INSERT INTO technology (technology_name)
	VALUES
	('JAVA'),
	('ANGULAR');
	
COMMIT TRANSACTION;

BEGIN TRANSACTION;
	INSERT INTO roles_privileges (role_id, privilege_id) 
	VALUES 
	(1,1), 
	(1,2), 
	(1,3), 
	(1,4),
	(2,1),
	(2,2),
	(2,3);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
	INSERT INTO contact (phone_number, skype_login, email, telegram_login, github_profile) 
	VALUES 
	('375331001001', 'skype01', 'email01@gmail.com', '@telegram01', 'github-profile01'),
	('375331001002', 'skype02', 'email02@gmail.com', '@telegram02', 'github-profile02'), 
	('375331001003', 'skype03', 'email03@gmail.com', '@telegram03', 'github-profile03'), 
	('375331001004', 'skype04', 'email04@gmail.com', '@telegram04', 'github-profile04'), 
	('375331001005', 'skype05', 'email05@gmail.com', '@telegram05', 'github-profile05'), 
	('375331001006', 'skype06', 'email06@gmail.com', '@telegram06', 'github-profile06'), 
	('375331001007', 'skype07', 'email07@gmail.com', '@telegram07', 'github-profile07'), 
	('375331001008', 'skype08', 'email08@gmail.com', '@telegram08', 'github-profile08'), 
	('375331001009', 'skype09', 'email09@gmail.com', '@telegram09', 'github-profile09'), 
	('375331001010', 'skype10', 'email10@gmail.com', '@telegram10', 'github-profile10'), 
	('375331001011', 'skype11', 'email11@gmail.com', '@telegram11', 'github-profile11'), 
	('375331001012', 'skype12', 'email12@gmail.com', '@telegram12', 'github-profile12'), 
	('375331001013', 'skype13', 'email13@gmail.com', '@telegram13', 'github-profile13'), 
	('375331001014', 'skype14', 'email14@gmail.com', '@telegram14', 'github-profile14'), 
	('375331001015', 'skype15', 'email15@gmail.com', '@telegram15', 'github-profile15'), 
	('375331001016', 'skype16', 'email16@gmail.com', '@telegram16', 'github-profile16'), 
	('375331001017', 'skype17', 'email17@gmail.com', '@telegram17', 'github-profile17'), 
	('375331001018', 'skype18', 'email18@gmail.com', '@telegram18', 'github-profile18'), 
	('375331001019', 'skype19', 'email19@gmail.com', '@telegram19', 'github-profile19'), 
	('375331001020', 'skype20', 'email20@gmail.com', '@telegram20', 'github-profile20'), 
	('375331001021', 'skype21', 'email21@gmail.com', '@telegram21', 'github-profile21'), 
	('375331001022', 'skype22', 'email22@gmail.com', '@telegram22', 'github-profile22');

COMMIT TRANSACTION;


BEGIN TRANSACTION;

	INSERT INTO intensive_user (firstname, lastname, surname, date_of_birth, location, contact_id, user_uuid)
	VALUES
	('Alexey', 'Privalov', 'Ivanovich', '1998-09-15 00:00:00','Minsk', 1, 'e202368f-6786-4f63-804e-aa7f537aef01'),
	('Mark', 'Bontsevich', 'Arnoldovich', '1996-05-25 00:00:00', 'Krakow', 2, 'e202368f-6786-4f63-804e-aa7f537aef02'),
	('Svetlana', 'Pavlova', 'Anrdeevna', '1991-10-20 00:00:00', 'Irkutsk', 3, 'e202368f-6786-4f63-804e-aa7f537aef03'),
	('Rolandas', 'Kilkaliene', 'Vitautas', '1994-11-10 00:00:00', 'Trakai', 4, 'e202368f-6786-4f63-804e-aa7f537aef04'),
	('Julia', 'Frolova', 'Anreevna', '1999-11-21 00:00:00', 'Moskow', 5, 'e202368f-6786-4f63-804e-aa7f537aef05'),
	('Andrei', 'Krylov', 'Victorovich', '1998-09-12 00:00:00', 'Saint-Petersburg', 6, 'e202368f-6786-4f63-804e-aa7f537aef06'),
	('Greta', 'Kairus', 'Kazimiras', '1996-05-11 00:00:00', 'Vilnus', 7, 'e202368f-6786-4f63-804e-aa7f537aef07'),
	('Ann', 'Zavadskaya', 'Anreevna', '1998-08-11 00:00:00', 'Minsk', 8, 'e202368f-6786-4f63-804e-aa7f537aef08'),
	('Peter', 'Borovskiy', 'Ivanovich', '1994-10-14 00:00:00', 'Minsk', 9, 'e202368f-6786-4f63-804e-aa7f537aef09'),
	('Alexander', 'Frolovich', 'Stepanovich', '1989-04-16 00:00:00', 'Minsk', 10, 'e202368f-6786-4f63-804e-aa7f537aef10'),
	('Vasilij', 'Lomonosov', 'Petrovich', '1999-10-17 00:00:00', 'Minsk', 11, 'e202368f-6786-4f63-804e-aa7f537aef11'),
	('Konstantin', 'Ivanov', 'Ivanovich', '1996-11-12 00:00:00', 'Minsk', 12, 'e202368f-6786-4f63-804e-aa7f537aef12'),
	('Inna', 'Zastavskaya', 'Petrovna', '1999-10-11 00:00:00', 'Minsk', 13, 'e202368f-6786-4f63-804e-aa7f537aef13'),
	('Peter', 'Smirnov', 'Alexanrovich', '1996-10-12 00:00:00', 'Minsk', 14, 'e202368f-6786-4f63-804e-aa7f537aef14'),
	('Anastasia', 'Lomonosova', 'Alexandrovna', '1995-10-11 00:00:00', 'Minsk', 15, 'e202368f-6786-4f63-804e-aa7f537aef15'),
	('Bronislaw', 'Pozdnovich', 'Kazimirovich', '1997-07-24 00:00:00', 'Warshaw', 16, 'e202368f-6786-4f63-804e-aa7f537aef16'),
	('Daria', 'Lepnitskaya', 'Dmitrievna', '1999-11-14 00:00:00', 'Krakow', 17, 'e202368f-6786-4f63-804e-aa7f537aef17'),
	('Ruslan', 'Marchenko', 'Ivanovich', '1997-06-21 00:00:00', 'Kiev', 18, 'e202368f-6786-4f63-804e-aa7f537aef18'),
	('Evgeniy', 'Prochorenko', 'Stepanowich', '1999-12-25 00:00:00', 'Lvow', 19, 'e202368f-6786-4f63-804e-aa7f537aef19'),
	('Svetlana', 'Panasenko', 'Sigizmundovna', '1996-09-25 00:00:00', 'Warshaw', 20, 'e202368f-6786-4f63-804e-aa7f537aef20'),
	('Lukas', 'Tomkus', 'Mark', '1999-02-10 00:00:00', 'Vilnus', 21, 'e202368f-6786-4f63-804e-aa7f537aef21'),
	('Valeria', 'Prokchorova', 'Dmitrievna', '1998-10-21 00:00:00', 'Vitebsk', 22, 'e202368f-6786-4f63-804e-aa7f537aef22');

COMMIT TRANSACTION;

BEGIN TRANSACTION;

	INSERT INTO credential (username, password, registration_date, last_login_date, is_non_locked, is_active, user_id, is_credential_non_expired)
	VALUES
	('a.privalov01', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('m.bontsevich02', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('s.pavlova34', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('r.kilkaliene16', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('j.frolova33', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('a.krylov', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('g.kairus09', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('a.zavadskaya54', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('p.borovskiy44', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('a.frolovich33', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('v.lomonosov45', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('k.invanov33', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('i.zastavskaya76', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('p.smirnov45', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('a.lomonosova54', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('b.pozdnovich09', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('d.lepnitskaya34', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('r.marchenko21', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('e.prochorenko65', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('s.panasenko34', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('l.tomkus34', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true),
	('v.prochorova78', '', '2022-06-15 00:00:00', '2022-06-15 00:00:00', true, true, 1, true);
	
	INSERT INTO user_technologies (user_id, technology_id, technology_aprovement_date, technology_level)
	VALUES
	(1, 1, '2022-06-15 00:00:00', 'M1'),
	(1, 2, '2022-06-15 00:00:00', 'J3'),
	(2, 1, '2022-06-15 00:00:00', 'M1'),
	(3, 1, '2022-06-15 00:00:00', 'Trainee'),
	(4, 1, '2022-06-15 00:00:00', 'Trainee'),
	(5, 1, '2022-06-15 00:00:00', 'Trainee'),
	(6, 1, '2022-06-15 00:00:00', 'Trainee'),
	(7, 1, '2022-06-15 00:00:00', 'Trainee'),
	(8, 1, '2022-06-15 00:00:00', 'Trainee'),
	(9, 1, '2022-06-15 00:00:00', 'Trainee'),
	(10, 1, '2022-06-15 00:00:00', 'Trainee'),
	(11, 1, '2022-06-15 00:00:00', 'Trainee'),
	(12, 1, '2022-06-15 00:00:00', 'Trainee'),
	(13, 1, '2022-06-15 00:00:00', 'Trainee'),
	(14, 1, '2022-06-15 00:00:00', 'Trainee'),
	(15, 1, '2022-06-15 00:00:00', 'Trainee'),
	(16, 1, '2022-06-15 00:00:00', 'Trainee'),
	(17, 1, '2022-06-15 00:00:00', 'Trainee'),
	(18, 1, '2022-06-15 00:00:00', 'Trainee'),
	(19, 1, '2022-06-15 00:00:00', 'Trainee'),
	(20, 1, '2022-06-15 00:00:00', 'Trainee'),
	(21, 1, '2022-06-15 00:00:00', 'Trainee'),
	(22, 1, '2022-06-15 00:00:00', 'Trainee');

COMMIT TRANSACTION;

BEGIN TRANSACTION;
	INSERT INTO users_roles (credential_id, role_id)
	VALUES
	(1,1),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2),
	(11,2),
	(12,2),
	(13,2),
	(14,2),
	(15,2),
	(16,2),
	(17,2),
	(18,2),
	(19,2),
	(20,2),
	(21,2),
	(22,2);
COMMIT TRANSACTION;

