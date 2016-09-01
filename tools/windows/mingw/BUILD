package(default_visibility = ['//tools/windows:__pkg__'])

filegroup(
  name = 'gcc',
  srcs = [
    '@mingw_compiler//:gcc',
    'i686-w64-mingw32.shared-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    '@mingw_compiler//:ar',
    'i686-w64-mingw32.shared-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    '@mingw_compiler//:ld',
    'i686-w64-mingw32.shared-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    '@mingw_compiler//:nm',
    'i686-w64-mingw32.shared-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    '@mingw_compiler//:objcopy',
    'i686-w64-mingw32.shared-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    '@mingw_compiler//:objdump',
    'i686-w64-mingw32.shared-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    '@mingw_compiler//:strip',
    'i686-w64-mingw32.shared-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    '@mingw_compiler//:as',
    'i686-w64-mingw32.shared-as',
  ],
)

filegroup(
  name = 'tool-wrappers',
  srcs = [
    ':gcc',
    ':ar',
    ':ld',
    ':nm',
    ':objcopy',
    ':objdump',
    ':strip',
    ':as',
  ],
)
