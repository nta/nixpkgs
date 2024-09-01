{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-solved";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-solved";
    rev = "0157a8ddca6c0a38210a0e5ce51dcea6d97a3e08";
    sha256 = "sha256-NQiLX1lfDNp3IRXtfRJRUI+frWOC/gVTWsmorzTwU0s=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-solved";
    maintainers = with maintainers; [ talyz ];
    license = licenses.mit;
    description = "Allow accepted answers on topics";
  };
}
