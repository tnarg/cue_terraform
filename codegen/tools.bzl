load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_terraform_toolchains = {
    "1.0.2": [
        {
            "os": "darwin",
            "arch": "amd64",
            "sha256": "90e58796d84db0a16b5ad40140182061533c38210680980e099812c43b43ff7a",
        },
        {
            "os": "linux",
            "arch": "amd64",
            "sha256": "7329f887cc5a5bda4bedaec59c439a4af7ea0465f83e3c1b0f4d04951e1181f4",
        },
        {
            "os": "windows",
            "arch": "amd64",
            "sha256": "bb515146c49619f78cc141449765fe0290a9d5f955fef8ed59215e163495a3db",
        },
    ],
}

def terraform_toolchains(version = "1.0.2"):
    for platform in _terraform_toolchains[version]:
        http_archive(
            name = "terraform_toolchain_%s_%s" % (platform["os"].lower(), platform["arch"]),
            build_file_content = """exports_files(["terraform"], visibility = ["//visibility:public"])""",
            url = "https://releases.hashicorp.com/terraform/%s/terraform_%s_%s_%s.zip" % (version, version, platform["os"], platform["arch"]),
            sha256 = platform["sha256"],
        )
