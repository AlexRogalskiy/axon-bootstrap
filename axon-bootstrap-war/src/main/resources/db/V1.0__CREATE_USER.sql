CREATE SEQUENCE HIBERNATE_SEQUENCE;

CREATE TABLE DOMAIN_EVENT_ENTRY (
  GLOBAL_INDEX         NUMBER(19)         NOT NULL,
  EVENT_IDENTIFIER     VARCHAR2(255 CHAR) NOT NULL,
  META_DATA            BLOB,
  PAYLOAD              BLOB               NOT NULL,
  PAYLOAD_REVISION     VARCHAR2(255 CHAR),
  PAYLOAD_TYPE         VARCHAR2(255 CHAR) NOT NULL,
  TIME_STAMP           VARCHAR2(255 CHAR) NOT NULL,
  AGGREGATE_IDENTIFIER VARCHAR2(255 CHAR) NOT NULL,
  SEQUENCE_NUMBER      NUMBER(19)         NOT NULL,
  TYPE                 VARCHAR2(255 CHAR),

  CONSTRAINT DOMEVNTENTR_PK PRIMARY KEY (GLOBAL_INDEX),
  CONSTRAINT DOMEVNTENTR_EVNTID_UNQ UNIQUE (EVENT_IDENTIFIER),
  CONSTRAINT DOMEVNTENTR_AGRIDSQNN_UNQ UNIQUE (AGGREGATE_IDENTIFIER, SEQUENCE_NUMBER)
);

CREATE TABLE USER_ENTRY
(
  ID           RAW(255)     NOT NULL,
  FIRST_NAME   VARCHAR(255) NOT NULL,
  LAST_NAME    VARCHAR(255) NOT NULL,

  CONSTRAINT USER_ENTRY_PK PRIMARY KEY (ID)
);