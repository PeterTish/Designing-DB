create table if not exists Department(
	ID serial primary key,
	Name varchar(5) unique
);

create table if not exists Employee(
	ID serial primary key,
	Name varchar(20) unique,
	ID_chief INT references Employee(ID)
);

create table if not exists Departament_Employee(
	ID serial primary key,
	ID_departament integer references Department(ID),
	ID_employee integer references Employee(ID)
);