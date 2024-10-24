{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-bbcode-color";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-bbcode-color";
    rev = "b60ce8ee8aafd59e241339018307dd08b901411b";
    sha256 = "sha256-NzfLi3lcP7qcMfmPR0Ajrlw8FIYmcpi/pBh0XMCxjas=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-bbcode-color";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "Support BBCode color tags";
  };
}
