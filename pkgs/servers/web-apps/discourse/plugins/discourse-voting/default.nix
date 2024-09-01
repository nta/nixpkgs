{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-voting";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-voting";
    rev = "ef8e84e5894c5c39aa87cfbaa33619c33fb3bc35";
    sha256 = "sha256-hIOFFmFAPPWTmqXNC8v3/J4zf/jc6ROj6FDDQo9tfAg=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-voting";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.gpl2Only;
    description = "Adds the ability for voting on a topic within a specified category in Discourse";
  };
}
