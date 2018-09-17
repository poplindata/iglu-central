-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.4.1
-- Generated: 2018-09-17 23:49 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_getvero_opened_1 (
    "schema_vendor"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"            VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"         VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"                CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"            TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"               VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"               VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"             VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "campaign.id"            INT           ENCODE ZSTD,
    "campaign.name"          VARCHAR(255)  ENCODE ZSTD,
    "campaign.permalink"     VARCHAR(4096) ENCODE ZSTD,
    "campaign.subject"       VARCHAR(255)  ENCODE ZSTD,
    "campaign.tags"          VARCHAR(255)  ENCODE ZSTD,
    "campaign.trigger_event" VARCHAR(255)  ENCODE ZSTD,
    "campaign.type"          VARCHAR(255)  ENCODE ZSTD,
    "campaign.variation"     VARCHAR(255)  ENCODE ZSTD,
    "event.data"             VARCHAR(4096) ENCODE ZSTD,
    "event.name"             VARCHAR(255)  ENCODE ZSTD,
    "event.triggered_at"     TIMESTAMP     ENCODE ZSTD,
    "message_id"             VARCHAR(255)  ENCODE ZSTD,
    "opened_at"              TIMESTAMP     ENCODE ZSTD,
    "user.email"             VARCHAR(255)  ENCODE ZSTD,
    "user.id"                VARCHAR(255)  ENCODE ZSTD,
    "user_agent"             VARCHAR(255)  ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_getvero_opened_1 IS 'iglu:com.getvero/opened/jsonschema/1-0-0';