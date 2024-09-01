{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-github";
  bundlerEnvArgs.gemdir = ./.;
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-github";
    rev = "b3af042aac9b5e620dae20cf376a16e1eaf31e99";
    sha256 = "sha256-rZ0vFIQouwgZOFoH4VA7tc9jqlhHrDzles7JSwWPgeU=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-github";
    maintainers = with maintainers; [ talyz ];
    license = licenses.mit;
    description = "Adds GitHub badges and linkback functionality";
  };

}
