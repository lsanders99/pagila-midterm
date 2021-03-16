/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

CREATE TABLE project (
    created_at TIMESTAMPTZ, -- 8, d
    updated_at TIMESTAMPTZ, -- 8, d
    author_id BIGINT NOT NULL -- 8, d
    id SERIAL PRIMARY KEY, -- 4, i
    target_id INTEGER NOT NULL, -- 4, i
    project_id INTEGER NOT NULL UNIQUE, -- 4, i
    action SMALLINT NOT NULL, -- 2, s
    target_type VARCHAR(2) NOT NULL, -- -1
    title VARCHAR(256), -- -1
    data TEXT, -- -1
);
