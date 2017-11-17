set sql_safe_updates=0;

Create table pracownicy (
 nr_prac INT primary key,
 imie  VARCHAR (30),
 nazwisko VARCHAR (40) not null
 );
 
 Create table stanowiska (
 nr_prac INT primary key,
 stanowisko VARCHAR(40),
 opis varchar(200),
 wyplata decimal (20,2)
 );
 
Create table adres (
 nr_prac INT primary key,
 miasto VARCHAR(40),
 ulica varchar(40),
 kod varchar(40)
 );
 
    
Insert into pracownicy values
	(101,'Marek','Tworek'), 
	(102,'Mirosław','Hod'), 
    (103,'Tomasz','Olejniczak'), 
    (104, 'Maria','Awaraia');
    
Insert into stanowiska values
	(101,'manager','Project manager',12830), 
	(102,'admin','Windows',9500), 
    (103,'analityk','controlling',6700), 
    (104,'developer','androiod',12000);
    
Insert into adres values
	(101,'Wrocław','Podwale 34/2','50-345'), 
	(102,'Wrocław','Pl.Grunwaldzki 24/23','50-343'),
    (103,'Wrocław','Opolska 1/2','50-202'),
    (104, 'Wrocław','Pomorska 3','50-201');
    
select imie, nazwisko, stanowisko, miasto, kod, ulica from pracownicy p JOIN stanowiska s ON p.nr_prac=s.nr_prac JOIN adres a ON p.nr_prac=a.nr_prac;
select sum(wyplata) as LacznaKwotaWynagrodzen from stanowiska;
select imie, nazwisko, miasto, kod, ulica from pracownicy p JOIN adres a ON p.nr_prac=a.nr_prac where kod = '50-202';