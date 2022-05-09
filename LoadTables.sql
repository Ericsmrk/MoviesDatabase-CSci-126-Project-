CREATE TABLE movies (
    MovieID  INT,
    RatingID INT,
    StarID   INT,
    Name     VARCHAR (255),
    Genre    VARCHAR (255),
    Year     INT,
    Director VARCHAR (255),
    Writer   VARCHAR (255),
    Runtime  INT,
    Company  VARCHAR (255),
    PRIMARY KEY (
        MovieId
    ),
    FOREIGN KEY (
        RatingID
    )
    REFERENCES ratings (ID) ON UPDATE CASCADE
                            ON DELETE CASCADE,
    FOREIGN KEY (
        StarID
    )
    REFERENCES stars (StarID) ON UPDATE CASCADE
                              ON DELETE SET NULL,
    FOREIGN KEY (
        MovieID
    )
    REFERENCES profits (MovieID) ON UPDATE SET NULL
                                 ON DELETE SET NULL
);

CREATE TABLE stars (
    StarID INT,
    Star   VARCHAR (255),
    PRIMARY KEY (
        StarID
    )
);

CREATE TABLE top100actors (
    Star                     VARCHAR (255),
    Oscars                   INT,
    Oscar_Nominations        INT,
    BAFTA                    INT,
    BAFTA_Nominations        INT,
    Golden_Globes            INT,
    Golden_Globe_Nominations INT,
    Top_Performances         VARCHAR (255),
    PRIMARY KEY (
        Star
    )
);

CREATE TABLE profits (
    MovieID INT,
    Budget  INT           NOT NULL
                          DEFAULT 0,
    Gross   INT           NOT NULL
                          DEFAULT 0,
    Company VARCHAR (255),
    PRIMARY KEY (
        MovieID
    )
);

CREATE TABLE ratings (
    ID     INT,
    Rating VARCHAR (10),
    Score  FLOAT,
    Votes  INT,
    PRIMARY KEY (
        ID
    )
);



select * from movies;
select * from profits;
select * from ratings;
select * from stars;
select * from top100actors;

drop table movies;
drop table profits;
drop table ratings;
drop table stars;
drop table top100actors;