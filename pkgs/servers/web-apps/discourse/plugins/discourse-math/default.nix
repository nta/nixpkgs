{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-math";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-math";
    rev = "6a8005d2154ad7c862380ef03ae63814ab1fb6f6";
    sha256 = "sha256-wIu2vOdft90EknHbbfXPLYXjgKOoXmTERjWaMMr7Aks=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-math";
    maintainers = with maintainers; [ talyz ];
    license = licenses.mit;
    description = "Official MathJax support for Discourse";
  };
}
