{ lib, mkDiscoursePlugin, fetchFromGitHub }:

mkDiscoursePlugin {
  name = "discourse-yearly-review";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-yearly-review";
    rev = "424a168cf398f99a48891e5714fb1ec9f445071b";
    sha256 = "sha256-i11iXwMebACCjzYzDPsBZTOj7HJ5cGunx144qq0B5pM=";
  };
  meta = with lib; {
    homepage = "https://github.com/discourse/discourse-yearly-review";
    maintainers = with maintainers; [ talyz ];
    license = licenses.mit;
    description = "Publishes an automated Year in Review topic";
  };
}
