*** Settings ***
Suite Setup       Connect To Database    pymysql    testdb    placeholder   localhost    3306
Suite Teardown    Disconnect From Database
Library           DatabaseLibrary
Library           OperatingSystem

*** Variables ***

# robot -d Results ConnectToMySQL.robot

*** Test Cases ***
Create person table
    # robot -d Results -i smoke ConnectToMySQL.robot
    [Tags]  DB
    Execute SQL String    CREATE TABLE person (id integer unique,first_name varchar(30),last_name varchar(30));


Insert person into table
    # robot -d Results -i insert ConnectToMySQL.robot
    [Tags]  DB
    Execute SQL String  INSERT INTO person (id, first_name, last_name) VALUES (1237, 'Homer', 'Simpson');


Delete Person row
    # robot -d Results -i delete ConnectToMySQL.robot
    [Tags]  DB
    Execute SQL String  DELETE FROM person WHERE id = 1237;


Update person name
    # robot -d Results -i update ConnectToMySQL.robot
    [Tags]  DB
    Execute SQL String  UPDATE person SET first_name = 'Homer Jay' WHERE id = 1237;

