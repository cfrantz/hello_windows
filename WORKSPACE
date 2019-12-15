load("@bazel_tools//tools/build_defs/repo:git.bzl",
     "git_repository",
)
#local_repository(
#    name = "mxebzl",
#    path = "/home/cfrantz/src/mxebzl",
#)

git_repository(
    name = "mxebzl",
    remote = "https://github.com/cfrantz/mxebzl.git",
    tag = "20191215_RC01",
)

load("@mxebzl//compiler:repository.bzl", "mxe_compiler")
mxe_compiler(
    deps = [
        "compiler",
    ],
)
