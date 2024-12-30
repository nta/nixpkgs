{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-saved-searches";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-saved-searches";
    rev = "58aafe157ed4d2019f30b1bca0dc019e3e19b439";
    sha256 = "sha256-n/nJ0cW4O5IL8unfVbmrivy9hPx9kQmUanMxRZmuqj0=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-saved-searches";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Allow users to save searches and be notified of new results";
  };
}
