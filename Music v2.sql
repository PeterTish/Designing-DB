create table if not exists musician (
	ID serial primary key,
	Nickname varchar(20) unique not null
);

create table if not exists Genre (
	ID serial primary key,
	Name varchar(20) unique not null
);

create table if not exists Musician_Genre (
	ID serial primary key,
	ID_musician integer references Musician(ID),
	ID_genre integer references Genre(ID)
);

create table if not exists Album (
	ID serial primary key,
	Name varchar(20) unique not null,
	Release_year integer not null
);

create table if not exists Musician_Album (
	ID serial primary key,
	ID_musician integer references Musician(ID),
	ID_album integer references Album(ID)
);

create table if not exists Track(
	ID serial primary key,
	ID_album integer references Album(ID),
	Name varchar(20) unique not null,
	Duration numeric unique not null
);

create table if not exists Collection (
	ID serial primary key,
	Name varchar(20) not null,
	Release_year integer not null
);

create table if not exists Collection_Track (
	ID serial primary key,
	ID_collection integer references Collection(ID),
	ID_track integer references Track(ID)
);


alter table public.collection drop column id_album;
alter table public.collection rename column Year_of_release to "Release_year";
alter table public.album rename column Year_of_release to "Release_year";
alter table public.collection drop column id_track;














	
	

	