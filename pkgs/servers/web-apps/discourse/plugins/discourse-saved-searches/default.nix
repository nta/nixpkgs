{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-saved-searches";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-saved-searches";
    rev = "35baa98317336542152d787c3692319158264c42";
    sha256 = "sha256-NrkgqhU7p8lEJYa/e57rzx39y28YG6a+nSdv/Zlv1a0=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-saved-searches";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Allow users to save searches and be notified of new results";
  };
}
