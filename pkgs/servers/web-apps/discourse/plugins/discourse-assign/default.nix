{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-assign";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-assign";
    rev = "541ee41315cfe264a45fd7f08c7ded4b7d257bea";
    sha256 = "sha256-NpFKFnVjhIsWZJStIzau6DTX5sSraBrsmDYvgGHsqgI=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-docs";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Discourse Plugin for assigning users to a topic";
  };
}
