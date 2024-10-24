{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-data-explorer";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-data-explorer";
    rev = "e1db1b0fe2ed59d18d995712b1006c8aca072c1a";
    sha256 = "sha256-NTwqTiQjVGyeTl6GVuT2qvKlLqYq9ZbU7uBpbV5Fkoo=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-data-explorer";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "SQL Queries for admins in Discourse";
  };
}
