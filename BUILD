package(default_visibility = ['//visibility:public'])
load("@mxebzl//tools:rules.bzl", "pkg_winzip")

cc_binary(
    name = 'hello',
    srcs = ['hello.c'],
)

pkg_winzip(
    name = "hello-windows",
    files = [":hello"],
)
