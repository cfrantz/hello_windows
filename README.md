# Bazel builds targeting Win32 and Win64

This is an attempt at targeting win32 and win64 when building with bazel on
linux.

This is somewhat based off of the Bazel Wiki's
[Building with a custom toolchain](https://github.com/bazelbuild/bazel/wiki/Building-with-a-custom-toolchain).

## Documentation

See the [mxebzl](https://github.com/cfrantz/mxebzl) project for more detailed
documentation about the `WORKSPACE` configuration.

Note the targets in the `BUILD` file.

Build the binary:

```
$ bazel build \
    --crosstool_top=@mxebzl//tools/windows:toolchain \
    --cpu=win32 \
    :hello
```

Build a distributable package:

```
$ bazel build \
    --crosstool_top=@mxebzl//tools/windows:toolchain \
    --cpu=win32 \
    :hello-windows
```
