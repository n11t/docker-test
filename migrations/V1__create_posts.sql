CREATE TABLE IF NOT EXISTS posts (
  id    INTEGER UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128)     NOT NULL,
  body  TEXT
);

INSERT INTO posts (title, body)
VALUES
  ('Post #1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut'),
  ('Post #2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut'),
  ('Post #3', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut');
