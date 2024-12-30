{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-chat-integration";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-chat-integration";
    rev = "52461548fb78e71eada97a83aaf5e998cc6da58b";
    sha256 = "sha256-WYuzoAsjPJ9EDL+RKSRDJ6ulPLOvLo0MBLuODy1Vt+4=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-chat-integration";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "This plugin integrates Discourse with a number of external chatroom systems";
  };
}
