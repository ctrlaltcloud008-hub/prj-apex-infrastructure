CREATE TABLE video_pipeline_stages (
    video_id     STRING(36) NOT NULL,
    stage_name   STRING(64) NOT NULL,
    required     BOOL       NOT NULL DEFAULT (true),
    status       STRING(20) NOT NULL,
    created_at   TIMESTAMP  NOT NULL OPTIONS (allow_commit_timestamp=true),
    completed_at TIMESTAMP           OPTIONS (allow_commit_timestamp=true),
) PRIMARY KEY (video_id, stage_name),
  INTERLEAVE IN PARENT videos ON DELETE CASCADE;

CREATE INDEX idx_pipeline_stages_status
    ON video_pipeline_stages(video_id, required, status);
