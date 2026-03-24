SET GLOBAL local_infile = 1;
Use tennis_matches;

-- Run this just once
CREATE TABLE tennis_matchData (
	Tourney_id varchar(64),
    Tourney_name varchar(256),
    Surface varchar(16),
    Draw_size int,
    Tourney_level varchar(2),
    Tourney_date date,
    Match_number int,
    Winner_id int,
    Winner_seed int,
    Winner_entry varchar(3),
    Winner_name varchar(32),
    Winner_hand varchar(2),
    Winner_ht decimal(5,2),
    Winner_ioc varchar(4),
    Winner_age decimal(5,3),
    Loser_id int,
    Loser_seed int,
    Loser_entry varchar(3),
    Loser_name varchar(32),
    Loser_hand varchar(2),
    Loser_ht decimal(5,2),
    Loser_ioc varchar(4),
    Loser_age decimal(5,3),
    Score varchar(32),
    Best_of int,
    Round varchar(6),
    Minutes int,
    W_ace int,
    W_df int,
    W_svpt int,
    W_1stln decimal(6,2),
    W_1stWon int,
    W_2ndWon int,
    W_SvGms decimal(6,2),
    W_bpSaved int,
    W_bpFaced int,
    L_ace int,
    L_df int,
    L_svpt int,
    L_1stIn decimal(6,2),
    L_1stWon int,
    L_2ndWon int,
    L_SvGms decimal(6,2),
    L_bpSaved int,
    L_bpFaced int,
    Winner_rank decimal(6,2),
    Winner_rank_points decimal(6,2),
    Loser_rank decimal(6,2),
    Loser_rank_points decimal(6,2)
);
LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2001.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
  @Tourney_id, @Tourney_name, @Surface, @Draw_size, @Tourney_level, @Tourney_date, @Match_number, 
  @Winner_id, @Winner_seed, @Winner_entry, 
  @Winner_name, @Winner_hand, @Winner_ht, @Winner_ioc, @Winner_age, 
  @Loser_id, @Loser_seed, @Loser_entry, 
  @Loser_name, @Loser_hand, @Loser_ht, @Loser_ioc, @Loser_age, 
  @Score, @Best_of, @Round, @Minutes, 
  @W_ace, @W_df, @W_svpt, @W_1stIn,
  @W_1stWon, @W_2ndWon, @W_SvGms, @W_bpSaved, @W_bpFaced,
  @L_ace, @L_df, @L_svpt, @L_1stIn, @L_1stWon,
  @L_2ndWon, @L_SvGms, @L_bpSaved, @L_bpFaced,
  @Winner_rank, @Winner_rank_points, @Loser_rank, @Loser_rank_points
)
SET
  Tourney_id         = NULLIF(@Tourney_id, ''),
  Tourney_name       = NULLIF(@Tourney_name, ''),
  Surface            = NULLIF(@Surface, ''),
  Draw_size          = NULLIF(@Draw_size, ''),
  Tourney_level      = NULLIF(@Tourney_level, ''),
  Tourney_date       = NULLIF(@Tourney_date, ''),
  Match_number       = NULLIF(@Match_number, ''),
  Winner_id          = NULLIF(@Winner_id, ''),
  Winner_seed        = NULLIF(@Winner_seed, ''),
  Winner_name        = NULLIF(@Winner_name, ''),
  Winner_hand        = NULLIF(@Winner_hand, ''),
  Winner_ht          = NULLIF(@Winner_ht, ''),
  Winner_ioc         = NULLIF(@Winner_ioc, ''),
  Winner_rank        = NULLIF(@Winner_rank, ''),
  Winner_rank_points = NULLIF(@Winner_rank_points, ''),
  Winner_age         = NULLIF(@Winner_age, ''),
  Winner_entry       = NULLIF(@Winner_entry, ''),
  Loser_id           = NULLIF(@Loser_id, ''),
  Loser_seed         = NULLIF(@Loser_seed, ''),
  Loser_name         = NULLIF(@Loser_name, ''),
  Loser_hand         = NULLIF(@Loser_hand, ''),
  Loser_ht           = NULLIF(@Loser_ht, ''),
  Loser_ioc          = NULLIF(@Loser_ioc, ''),
  Loser_rank         = NULLIF(@Loser_rank, ''),
  Loser_rank_points  = NULLIF(@Loser_rank_points, ''),
  Loser_age          = NULLIF(@Loser_age, ''),
  Loser_entry        = NULLIF(@Loser_entry, ''),
  Score              = NULLIF(@Score, ''),
  Best_of            = NULLIF(@Best_of, ''),
  Round              = NULLIF(@Round, ''),
  Minutes            = NULLIF(@Minutes, ''),
  W_ace              = NULLIF(@W_ace, ''),
  W_df               = NULLIF(@W_df, ''),
  W_svpt             = NULLIF(@W_svpt, ''),
  W_1stIn            = NULLIF(@W_1stIn, ''),
  W_1stWon           = NULLIF(@W_1stWon, ''),
  W_2ndWon           = NULLIF(@W_2ndWon, ''),
  W_SvGms            = NULLIF(@W_SvGms, ''),
  W_bpSaved          = NULLIF(@W_bpSaved, ''),
  W_bpFaced          = NULLIF(@W_bpFaced, ''),
  L_ace              = NULLIF(@L_ace, ''),
  L_df               = NULLIF(@L_df, ''),
  L_svpt             = NULLIF(@L_svpt, ''),
  L_1stIn            = NULLIF(@L_1stIn, ''),
  L_1stWon           = NULLIF(@L_1stWon, ''),
  L_2ndWon           = NULLIF(@L_2ndWon, ''),
  L_SvGms            = NULLIF(@L_SvGms, ''),
  L_bpSaved          = NULLIF(@L_bpSaved, ''),
  L_bpFaced          = NULLIF(@L_bpFaced, '');
  
LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2002.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2003.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2004.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2005.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2006.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2007.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2008.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2009.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2010.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2011.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2012.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2013.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2014.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2015.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2016.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2017.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2018.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2019.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:/Users/koolk/Downloads/archive (5)/atp_matches_2020.csv"
INTO TABLE tennis_matchData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ALTER TABLE tennis_matchData
-- RENAME COLUMN W_1stln to W_1stIn,
-- RENAME COLUMN L_1stln to L_1stIn;

-- TRUNCATE TABLE tennis_matchData;

Select count(*) from tennis_matchdata;