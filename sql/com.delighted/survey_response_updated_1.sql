-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2017-10-30 10:39

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_delighted_survey_response_updated_1 (
    "schema_vendor"                                 VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"                                   VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"                                 VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"                                VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"                                       CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"                                   TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"                                      VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"                                      VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"                                    VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "event_data.comment"                            VARCHAR(512)  ENCODE ZSTD,
    "event_data.created_at"                         INT           ENCODE ZSTD,
    "event_data.id"                                 VARCHAR(20)   ENCODE ZSTD,
    "event_data.notes"                              VARCHAR(1000) ENCODE ZSTD,
    "event_data.permalink"                          VARCHAR(255)  ENCODE ZSTD,
    "event_data.person.created_at"                  INT           ENCODE ZSTD,
    "event_data.person.email"                       VARCHAR(255)  ENCODE ZSTD,
    "event_data.person.id"                          VARCHAR(25)   ENCODE ZSTD,
    "event_data.person.name"                        VARCHAR(255)  ENCODE ZSTD,
    "event_data.person.phone_number"                VARCHAR(25)   ENCODE ZSTD,
    "event_data.person_properties.browser"          VARCHAR(100)  ENCODE ZSTD,
    "event_data.person_properties.country"          VARCHAR(100)  ENCODE ZSTD,
    "event_data.person_properties.device type"      VARCHAR(100)  ENCODE ZSTD,
    "event_data.person_properties.ip address"       VARCHAR(45)   ENCODE ZSTD,
    "event_data.person_properties.operating system" VARCHAR(100)  ENCODE ZSTD,
    "event_data.person_properties.page"             VARCHAR(255)  ENCODE ZSTD,
    "event_data.person_properties.page url"         VARCHAR(512)  ENCODE ZSTD,
    "event_data.person_properties.referrer url"     VARCHAR(512)  ENCODE ZSTD,
    "event_data.person_properties.user agent"       VARCHAR(256)  ENCODE ZSTD,
    "event_data.person_properties.delighted_source" VARCHAR(50)   ENCODE ZSTD,
    "event_data.person_properties.user_id"          VARCHAR(100)  ENCODE ZSTD,
    "event_data.score"                              SMALLINT      ENCODE ZSTD,
    "event_data.survey_type"                        CHAR(3)       ENCODE ZSTD,
    "event_data.tags"                               VARCHAR(1000) ENCODE ZSTD,
    "event_data.updated_at"                         INT           ENCODE ZSTD,
    "event_id"                                      VARCHAR(64)   ENCODE ZSTD,
    "event_type"                                    CHAR(23)      ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_delighted_survey_response_updated_1 IS 'iglu:com.delighted/survey_response_updated/jsonschema/1-0-0';
