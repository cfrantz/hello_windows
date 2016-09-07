# Bazel builds targeting Win32 and Win64

This is an attempt at targeting win32 and win64 when building with bazel on
linux.

This is somewhat based off of the Bazel Wiki's
[Building with a custom toolchain](https://github.com/bazelbuild/bazel/wiki/Building-with-a-custom-toolchain).

## Get the compiler toolchain

```
tools/downloader.py compiler
```

Check what other libraries you can get:

```
tools/downloader.py --list
```

You only care about 64-bit windows:

```
tools/downloader.py --nowin32 compiler SDL2
```

You installed mxe in `home/user/mxe` and want to symlink it to your project:

```
tools/downloader.py --altdest /home/user/mxe compiler sqlite readline
```

## Build the program

1. Target 64-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain --cpu=win64 :hello
   ```

1. Target 32-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain --cpu=win64 :hello
   ```

## TODO

1. The resulting binary gets named `hello` instead of `hello.exe`.

1. Make sure other fancy libraries (like google-protobuf or gflags) work.
