-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/pT4osH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Streaming" (
    "Title" VARCHAR   NOT NULL,
    "Year" date   NOT NULL,
    "Age" VARCHAR   NOT NULL,
    "IMDB_rating" float   NOT NULL,
    "Rotten_Tomatoes" VARCHAR   NOT NULL,
    "Netflix" int   NOT NULL,
    "Hulu" int   NOT NULL,
    "Prime_Video" int   NOT NULL,
    "Disney_Plus" int   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Language" VARCHAR   NOT NULL,
    "Runtime" int   NOT NULL
);

CREATE TABLE "IMDB" (
    "Title" VARCHAR   NOT NULL,
    "Year" date   NOT NULL,
    "Genre" VARCHAR   NOT NULL,
    "Duration" int   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Language" VARCHAR   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Writer" VARCHAR   NOT NULL,
    "Production_Company" VARCHAR   NOT NULL,
    "Actors" VARCHAR   NOT NULL,
    "Description" VARCHAR   NOT NULL,
    "Avg_votes" float   NOT NULL,
    "Votes" int   NOT NULL,
    CONSTRAINT "pk_IMDB" PRIMARY KEY (
        "Title"
     )
);

ALTER TABLE "Streaming" ADD CONSTRAINT "fk_Streaming_Title_Year_Runtime" FOREIGN KEY("Title", "Year", "Runtime")
REFERENCES "IMDB" ("Title", "Year", "Duration");

