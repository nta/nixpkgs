{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-reactions";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-reactions";
    rev = "eea4c8b6dcb279e12e4c67a5539ba0111de00e40";
    sha256 = "sha256-0GyI5h4vCmCZ5z0wyPoNY2thsc59BqOFqkEysSDaba8=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-reactions";
    maintainers = with maintainers; [ bbenno ];
    license = licenses.mit;
    description = "Allows users to react to a post from a choice of emojis, rather than only the like heart";
  };
}
