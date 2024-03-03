load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_terraform_toolchains = {
    "1.7.4": [
        {
            "os": "darwin",
            "arch": "amd64",
            "sha256": "fcf35c8b1d3f46fb84f688312ef5f829081d2d56c10444b9f6e290e21e68871c",
        },
    ],
    "1.0.11": [
        {
            "os": "darwin",
            "arch": "amd64",
            "sha256": "551a16b612edaae1037925d0e2dba30d16504ff4bd66606955172c2ed8d76131",
        },
        {
            "os": "linux",
            "arch": "amd64",
            "sha256": "eeb46091a42dc303c3a3c300640c7774ab25cbee5083dafa5fd83b54c8aca664",
        },
    ],
}

def terraform_toolchains(version = "1.7.4"):
    for platform in _terraform_toolchains[version]:
        http_archive(
            name = "terraform_toolchain_%s_%s" % (platform["os"].lower(), platform["arch"]),
            build_file_content = """exports_files(["terraform"], visibility = ["//visibility:public"])""",
            url = "https://releases.hashicorp.com/terraform/%s/terraform_%s_%s_%s.zip" % (version, version, platform["os"], platform["arch"]),
            sha256 = platform["sha256"],
        )
