{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-assign";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-assign";
    rev = "471cfdff63a400cda5318508b912980992218d9f";
    sha256 = "sha256-kPnOyO6uHUNrVrHNC2kFnCMpooBFKZIpww7jWqCybk8=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-docs";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Discourse Plugin for assigning users to a topic";
  };
}
