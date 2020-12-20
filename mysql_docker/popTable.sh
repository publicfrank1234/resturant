docker exec db mysql -uroot -ptest mydb -e "CREATE TABLE fogoDeChao (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(55) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL,
    type VARCHAR(15) NOT NULL,
    division VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    base DECIMAL(10 , 0) NOT NULL,
    bonus DECIMAL(10 , 0) NULL,
    equity DECIMAL(10 , 0) NULL,
    PRIMARY KEY (id)
)";

docker exec db mysql -uroot -ptest mydb -e "LOAD DATA LOCAL INFILE '/data/fogoDeChao.csv' into table fogoDeChao FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (email, first_name, last_name, hire_date, type, division, country, gender, base, bonus, equity);"


docker exec db mysql -uroot -ptest mydb -e "CREATE TABLE gamine (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(55) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL,
    type VARCHAR(15) NOT NULL,
    division VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    base DECIMAL(10 , 0) NOT NULL,
    bonus DECIMAL(10 , 0) NULL,
    equity DECIMAL(10 , 0) NULL,
    PRIMARY KEY (id)
)";

docker exec db mysql -uroot -ptest mydb -e "LOAD DATA LOCAL INFILE '/data/gamine.csv' into table gamine FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (@col1, @col2, @col3,  @col4, @col5, @col6, @col7, @col8, @col9, @col10, @col11, @col12, @col13) set email=@col1, first_name=@col2, last_name=@col3, division=@col7, base=@col12, bonus=@col13"



docker exec db mysql -uroot -ptest mydb -e "CREATE TABLE hookfish (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(55) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL,
    type VARCHAR(15) NOT NULL,
    division VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    base DECIMAL(10 , 0) NOT NULL,
    bonus DECIMAL(10 , 0) NULL,
    equity DECIMAL(10 , 0) NULL,
    PRIMARY KEY (id)
)";

docker exec db mysql -uroot -ptest mydb -e "LOAD DATA LOCAL INFILE '/data/hookfish.csv' into table hookfish FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (@col1, @col2, @col3,  @col4, @col5, @col6, @col7, @col8, @col9, @col10, @col11, @col12, @col13) set email=@col1, first_name=@col2, last_name=@col3, division=@col7, base=@col12, bonus=@col13"


docker exec db mysql -uroot -ptest mydb -e "CREATE TABLE zenYai (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(55) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL,
    type VARCHAR(15) NOT NULL,
    division VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    base DECIMAL(10 , 0) NOT NULL,
    bonus DECIMAL(10 , 0) NULL,
    equity DECIMAL(10 , 0) NULL,
    PRIMARY KEY (id)
)";

docker exec db mysql -uroot -ptest mydb -e "LOAD DATA LOCAL INFILE '/data/zenYai.csv' into table zenYai FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (@col1, @col2, @col3,  @col4, @col5, @col6, @col7, @col8, @col9, @col10, @col11, @col12, @col13) set email=@col1, first_name=@col2, last_name=@col3, division=@col7, base=@col12, bonus=@col13"


docker exec db mysql -uroot -ptest mydb -e "CREATE TABLE airTable (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(55) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL,
    type VARCHAR(15) NOT NULL,
    division VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    base DECIMAL(10 , 0) NOT NULL,
    bonus DECIMAL(10 , 0) NULL,
    equity DECIMAL(10 , 0) NULL,
    PRIMARY KEY (id)
)";


#docker exec db mysql -uroot -ptest mydb -e "Delete from gamine"
