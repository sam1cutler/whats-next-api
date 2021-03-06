DROP TABLE IF EXISTS whats_next_shows;

CREATE TABLE whats_next_shows (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    user_id INTEGER REFERENCES whats_next_users(id) ON DELETE CASCADE NOT NULL,
    title TEXT NOT NULL,
    service TEXT NOT NULL,
    genre TEXT,
    watched BOOLEAN NOT NULL,
    priority INTEGER,
    completed DATE,
    rating INTEGER
);