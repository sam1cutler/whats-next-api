CREATE TABLE whats_next_shows (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    user_id INTEGER REFERENCES whats_next_users(id) ON DELETE CASCADE NOT NULL,
    title TEXT NOT NULL,
    service TEXT NOT NULL,
    watched BOOLEAN NOT NULL,
    priority INTEGER NOT NULL,
    completed DATE,
    rating INTEGER
);