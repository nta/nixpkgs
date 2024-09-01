{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-bbcode-color";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-bbcode-color";
    rev = "10bdb76d104512f261ea87bc8d6968258723f982";
    sha256 = "sha256-wv9S6vziHiXh1a6drgx0SqqLrzr7rg1i6LYu/Dcoh00=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-bbcode-color";
    maintainers = with maintainers; [ ryantm ];
    license = licenses.mit;
    description = "Support BBCode color tags";
  };
}
