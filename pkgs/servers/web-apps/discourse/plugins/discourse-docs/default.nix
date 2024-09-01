{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-docs";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-docs";
    rev = "dc70b637c43c44350b5c7b240d6b38a05acd6782";
    sha256 = "sha256-eZcTObflNdIJlr7VkOFF70q3vXWOjHk0yr279hNoqmI=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-docs";
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
    description = "Find and filter knowledge base topics";
  };
}
