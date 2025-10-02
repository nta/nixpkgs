{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-bbcode-color";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-bbcode-color";
    rev = "be0d52ebe2e7fe3b5af9aba22b127f1f5e4247e3";
    sha256 = "sha256-80uDtyu1HpP1V7PF6Sb/inRibeXwexohv6uYcG/B0yc=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-bbcode-color";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "Support BBCode color tags";
  };
}
