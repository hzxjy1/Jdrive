CREATE TABLE config(
                       ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                       REMARK VARVHAR(32),
                       VALUE VARCHAE(32)
);

CREATE TABLE files(
                      ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                      NAME VARCHAR(256),
                      SOURCE_NAME VARCHAR(256),
                      FILE_SIZE INT,
                      FOLDER_ID INT,
                      CREATED_AT DATE,
                      UPDATE_AT DATE

);

CREATE TABLE folders(
                        ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                        NAME VARCHAR(256) NOT NULL,
                        PARENT_ID INT,
                        OWNER_ID INT,
                        CREATED_AT DATETIME,
                        UPDATE_AT DATETIME
);

CREATE TABLE users(
                      ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                      NAME VARCHAR(256) NOT NULL,
                      PWSSWD VARCHAR(256) NOT NULL,
                      AUTHORITY INT NOT NULL,
                      EMAIL VARCHAR(256),
                      CREATED_AT DATETIME,
                      UPDATE_AT DATETIME
)
