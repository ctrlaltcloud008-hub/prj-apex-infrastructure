CREATE TABLE transcode_jobs (
    video_id          STRING(36)  NOT NULL,
    rendition_name    STRING(64)  NOT NULL,
    attempt           INT64       NOT NULL DEFAULT (1),
    status            STRING(20)  NOT NULL,
    worker_id         STRING(256),
    started_at        TIMESTAMP   OPTIONS (allow_commit_timestamp=true),
    completed_at      TIMESTAMP   OPTIONS (allow_commit_timestamp=true),
    last_heartbeat_at TIMESTAMP,
    output_gcs_prefix STRING(512),
    error_details     JSON,
    created_at        TIMESTAMP   NOT NULL OPTIONS (allow_commit_timestamp=true),
    updated_at        TIMESTAMP   NOT NULL OPTIONS (allow_commit_timestamp=true),
) PRIMARY KEY (video_id, rendition_name),
  INTERLEAVE IN PARENT videos ON DELETE CASCADE;

CREATE INDEX idx_transcode_jobs_stalled
    ON transcode_jobs(status, last_heartbeat_at);
