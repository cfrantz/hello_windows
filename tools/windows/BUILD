# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# 'cc-compiler-${CPU}' in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to,
# including the default_grte_top setting in the CROSSTOOL
# protobuf.
filegroup(
  name = 'toolchain',
  srcs = [
    ':cc-compiler-x64_windows',
    '@mingw_compiler//:compiler_components',
    ':windows_mingw_all_files',
  ],
)

filegroup(
  name = 'windows_mingw_all_files',
  srcs = [
    '//tools/windows/mingw:tool-wrappers',
    '@mingw_compiler//:compiler_pieces',
  ],
)

filegroup(
  name = 'windows_mingw_linker_files',
  srcs = [
    '//tools/windows/mingw:gcc',
    '//tools/windows/mingw:ld',
    '//tools/windows/mingw:ar',
    '@mingw_compiler//:compiler_pieces',
  ],
)

filegroup(
  name = 'windows_mingw_compiler_files',
  srcs = [
    '//tools/windows/mingw:gcc',
    '//tools/windows/mingw:ld',
    '//tools/windows/mingw:as',
  ],
)

cc_toolchain(
  name = 'cc-compiler-x64_windows',
  all_files = ':windows_mingw_all_files',
  compiler_files = ':windows_mingw_compiler_files',
  cpu = 'x64_windows',
  dwp_files = ':empty',
  dynamic_runtime_libs = [':empty'],
  linker_files = ':windows_mingw_linker_files',
  objcopy_files = '//tools/windows/mingw:objcopy',
  static_runtime_libs = [':empty'],
  strip_files = '//tools/windows/mingw:strip',
  supports_param_files = 1,
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)
