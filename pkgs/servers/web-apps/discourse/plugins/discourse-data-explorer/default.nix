{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-data-explorer";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-data-explorer";
    rev = "978431da02e3ee418efa8a8ef11645c6abaac730";
    sha256 = "sha256-RWFU9tz1GuHYm1TUDYQ8+dQFWA9WV8/N6IPUTKELIhU=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-data-explorer";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "SQL Queries for admins in Discourse";
  };
}
