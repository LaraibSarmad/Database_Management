-- Using Database
use MLSsoccer;



CREATE TABLE Stadium( 
	StadiumID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Name VARCHAR(100) NOT NULL,
	City VARCHAR(100) NOT NULL,
	State VARCHAR(100) NOT NULL,
	Capacity INT NOT NULL,
	YearBuilt int,
	
);



CREATE TABLE Teams( 
	Name VARCHAR(100) NOT NULL PRIMARY KEY,
	Conference VARCHAR(20) NOT NULL,
	HeadCoach VARCHAR(100) NOT NULL,
	YearFounded INT,
	URL VARCHAR(2000),
	StadiumID INT FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID)

);





CREATE TABLE DesignatedPlayer( 
	PlayerID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Name VARCHAR(100) NOT NULL,
	Age Int,
	Nationality VARCHAR(100) NOT NULL,

	TeamID VARCHAR(100) FOREIGN KEY (TeamID) REFERENCES Teams(Name)
);




CREATE TABLE HighestEarners( 
	PlayerName varchar(100) NOT NULL Primary Key,
	Age int NOT NULL,
	Nationality VARCHAR(100) NOT NULL,
	YearlySalary Decimal(2,1),

	Team VARCHAR(100) FOREIGN KEY (Team) REFERENCES Teams(Name),
);

select * from Stadium;
select * from DesignatedPlayer;
select * from HighestEarners;
select * from Teams
select Top 100 * from Stadium;
select Top 100 * from HighestEarners;
select Top 100 * from DesignatedPlayer;
select Top 100 * from DesignatedPlayer where Nationality='United States';
select AVG(YearlySalary) as AverageYearlySalary from HighestEarners;
select SUM(Capacity) as Total_Capacity from Stadium where State= 'Texas'
select SUM(Capacity), State from Stadium Group by State;
select * from Stadium as S full outer join Teams as T on S.StadiumID=T.StadiumID

