{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-chat-integration";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-chat-integration";
    rev = "5caeed647edd15c86ece876b573abbcda80771ac";
    sha256 = "sha256-acUb3eBjZip0kyCIfADKLb0fW+jtunODzIM2BAcM6mY=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-chat-integration";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "This plugin integrates Discourse with a number of external chatroom systems";
  };
}
