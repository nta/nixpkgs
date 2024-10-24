{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-docs";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-docs";
    rev = "722888237843972e7e15c38221eb7bd20744ada5";
    sha256 = "sha256-jTzOVHthHKEjvLemQsF5v0RpnP/bOCqmIYvzsbSUp6Q=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-docs";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Find and filter knowledge base topics";
  };
}
