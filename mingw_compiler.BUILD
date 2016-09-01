package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/i686-w64-mingw32.shared-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/i686-w64-mingw32.shared-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/i686-w64-mingw32.shared-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/i686-w64-mingw32.shared-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/i686-w64-mingw32.shared-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/i686-w64-mingw32.shared-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/i686-w64-mingw32.shared-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/i686-w64-mingw32.shared-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    'i686-w64-mingw32.shared/**',
    'libexec/**',
    'lib/gcc/i686-w64-mingw32.shared/**',
    'include/**',
  ]),
)

filegroup(
  name = 'compiler_components',
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
