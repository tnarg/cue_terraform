load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_terraform_toolchains = {
    "1.0.11": [
        {
            "os": "linux",
            "arch": "amd64",
            "sha256": "eeb46091a42dc303c3a3c300640c7774ab25cbee5083dafa5fd83b54c8aca664",
        },
    ],
}


def terraform_toolchains(version = "1.0.11"):
    for platform in _terraform_toolchains[version]:
        http_archive(
            name = "terraform_toolchain_%s_%s" % (platform["os"].lower(), platform["arch"]),
            build_file_content = """exports_files(["terraform"], visibility = ["//visibility:public"])""",
            url = "https://releases.hashicorp.com/terraform/%s/terraform_%s_%s_%s.zip" % (version, version, platform["os"], platform["arch"]),
            sha256 = platform["sha256"],
        )
