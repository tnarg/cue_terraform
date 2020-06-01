load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_terraform_toolchains = {
    "0.12.25": [
        {
            "os": "darwin",
            "arch": "amd64",
            "sha256": "179fc99ccea5ed3617e9e7026dcfa59a5916ea91162afd7a2acd8350906a0d68",
        },
        {
            "os": "linux",
            "arch": "amd64",
            "sha256": "e95daabd1985329f87e6d40ffe7b9b973ff0abc07a403f767e8658d64d733fb0",
        },
        {
            "os": "windows",
            "arch": "amd64",
            "sha256": "81356460648abc8e6b76974c518be7989c6fd6f497bb3c604988fd876b363321",
        },
    ],
}

def terraform_toolchains(version = "0.12.25"):
    for platform in _terraform_toolchains[version]:
        http_archive(
            name = "terraform_toolchain_%s_%s" % (platform["os"].lower(), platform["arch"]),
            build_file_content = """exports_files(["terraform"], visibility = ["//visibility:public"])""",
            url = "https://releases.hashicorp.com/terraform/%s/terraform_%s_%s_%s.zip" % (version, version, platform["os"], platform["arch"]),
            sha256 = platform["sha256"],
        )
