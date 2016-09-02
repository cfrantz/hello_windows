# Bazel builds targeting Win32 and Win64

This is an attempt at targeting win32 and win64 when building with bazel on
linux.

This is somewhat based off of the Bazel Wiki's
[Building with a custom toolchain](https://github.com/bazelbuild/bazel/wiki/Building-with-a-custom-toolchain).

## Get the compiler toolchain

```
wget http://pkg.mxe.cc/repos/tar/mxe-x86-64-w64-mingw32.shared/mxe-i686-w64-mingw32.shared-gcc_4.9.3.tar.xz
wget http://pkg.mxe.cc/repos/tar/mxe-x86-64-w64-mingw32.shared/mxe-i686-w64-mingw32.shared-binutils_2.25.1.tar.xz
wget http://pkg.mxe.cc/repos/tar/mxe-x86-64-w64-mingw32.shared/mxe-x86-64-w64-mingw32.shared-gcc_4.9.3.tar.xz
wget http://pkg.mxe.cc/repos/tar/mxe-x86-64-w64-mingw32.shared/mxe-x86-64-w64-mingw32.shared-binutils_2.25.1.tar.xz
```

Pick a location and untar the files.  Mine are in `${HOME}/mxe`.


## Build the program

1. Target 64-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain --cpu=win64 :hello
   ```

1. Target 32-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain --cpu=win64 :hello
   ```

1. Download only the 32-bit compiler and target 32-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain32 --cpu=win32 :hello
   ```

1. Download only the 64-bit compiler and target 64-bit windows:

   ```
   bazel build --crosstool_top=//tools/windows:toolchain64 --cpu=win64 :hello
   ```

## TODO

1. The resulting binary gets named `hello` instead of `hello.exe`.

1. A bunch of stuff gets printed out during linking.  It shouldn't do that.

1. Lots of cleanup needed in the CROSSTOOL file.
