{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  bundlerEnvArgs.gemdir = ./.;
  name = "discourse-prometheus";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-prometheus";
    rev = "93efb5f145b8e07badbb94beba66e9dc5b3a7a8f";
    sha256 = "sha256-5rF6jB0TmhNmAOTwNGJQQa9wvnVLav2dO2WMz/aL31Y=";
  };

  patches = [
    # The metrics collector tries to run git to get the commit id but fails
    # because we don't run Discourse from a Git repository.
    ./no-git-version.patch
    ./spec-import-fix-abi-version.patch
  ];

  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-prometheus";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Official Discourse Plugin for Prometheus Monitoring";
  };
}
