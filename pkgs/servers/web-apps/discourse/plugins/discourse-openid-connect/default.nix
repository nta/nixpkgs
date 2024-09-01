{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-openid-connect";
  bundlerEnvArgs.gemdir = ./.;
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-openid-connect";
    rev = "a441566604a1ce2ea1b84f899b73f9edd604372d";
    sha256 = "sha256-cOr8u57P8xbvqCqyHRz/DpXdshFT/a6pzITa1pKsVM0=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-openid-connect";
    maintainers = with maintainers; [ mkg20001 ];
    license = licenses.mit;
    description = "Discourse plugin to integrate Discourse with an openid-connect login provider";
  };
}

