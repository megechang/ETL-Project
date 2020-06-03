CREATE TABLE Streaming (
    Title VARCHAR   NOT NULL,
    Year_Released date   NOT NULL,
    Age VARCHAR   NOT NULL,
    IMDB_rating float   NOT NULL,
    Rotten_Tomatoes VARCHAR   NOT NULL,
    Netflix int   NOT NULL,
    Hulu int   NOT NULL,
    Prime_Video int   NOT NULL,
    Disney_Plus int   NOT NULL,
    Director VARCHAR   NOT NULL,
    Country VARCHAR   NOT NULL,
    Language_Spoken VARCHAR   NOT NULL,
    Runtime int   NOT NULL,
	CONSTRAINT pk_Streaming PRIMARY KEY (
		Title, Year_Released, Runtime)
);

CREATE TABLE IMDB (
    Title VARCHAR   NOT NULL,
    Year_Released date   NOT NULL,
    Genre VARCHAR   NOT NULL,
    Duration int   NOT NULL,
    Country VARCHAR   NOT NULL,
    Language_Spoken VARCHAR   NOT NULL,
    Director VARCHAR   NOT NULL,
    Writer VARCHAR   NOT NULL,
    Production_Company VARCHAR   NOT NULL,
    Actors VARCHAR   NOT NULL,
    Description VARCHAR   NOT NULL,
    Avg_votes float   NOT NULL,
    Votes int   NOT NULL
);

ALTER TABLE IMDB ADD CONSTRAINT fk_IMDB_Title_Year_Runtime FOREIGN KEY(Title, Year_Released, Duration)
REFERENCES Streaming (Title, Year_Released, Runtime);
