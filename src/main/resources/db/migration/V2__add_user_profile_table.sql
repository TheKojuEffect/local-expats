CREATE TABLE user_profile (
    user_id        uuid PRIMARY KEY references users(id),
    first_name     VARCHAR NOT NULL,
    last_name      VARCHAR NOT NULL,
    state          CHAR(2) NOT NULL
);