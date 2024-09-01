{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-calendar";
  bundlerEnvArgs.gemdir = ./.;
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-calendar";
    rev = "3020fa9f27778011c7e32c8d9a48e1024374c108";
    sha256 = "sha256-dDvR2wMw8JDFZ0IvAWdDW+URZXS+sVisnuz2wPXGguI=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-calendar";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "Adds the ability to create a dynamic calendar in the first post of a topic";
  };
}
