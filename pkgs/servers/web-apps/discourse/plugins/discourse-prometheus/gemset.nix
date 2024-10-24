{
  prometheus_exporter = {
    dependencies = [ "webrick" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0pb4k6px8b36bvnw3d14j31s33ns60dcwxixbcgvhpzavd7fparb";
      type = "gem";
    };
    version = "2.0.6";
  };
  webrick = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "089gy5494j560b242vi173wnbj2913hwlwnjkpzld58r96ilc5s3";
      type = "gem";
    };
    version = "1.8.2";
  };
}
