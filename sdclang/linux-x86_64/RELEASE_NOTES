The following are the changes in the 8.0.6 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0.5 release.

1. Add support for Android Debugging with LTO
2. Add support for ARMv8.2-A ISA extensions
3. Fix clang --version output
4. Disable NEON vectorizer warning on AArch64
5. Windows ARM64 Structured Exception Handling (SEH) fixes
6. Clang driver fixes for Windows ARM64

The following are the changes in the 8.0.5 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0.4 release.

1. Fix corner case where an incorrect ARM symbol table entry is generated

The following are the changes in the 8.0.4 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0.3 release.

1. Add support for AArch64 "-execute-only" flag

The following are the changes in the 8.0.3 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0.2 release.

1. Fix infinite compile time corner case
2. Update COFF support for Windows ARM64
3. Remove LLVM's addr2line utility from distribution.  The Android prebuilt
   version of addr2line should be used for Android debugging.

The following are the changes in the 8.0.2 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0.1 release.

1. Bring in Google fixes for sanitize flags
2. Bring in Google fixes for Implicit Integer Conversion Sanitizer

The following are the changes in the 8.0.1 release of the Snapdragon LLVM
ARM C/C++ Toolchain over the 8.0 release.

1. Disable value profiling by default to match community org behavior
2. Support for __builtin_constant_p intrinsic
3. Disable vectorization of half float type
4. Fix load time failure in Android libraries enabled with profile generation

This is the release of Snapdragon LLVM ARM C/C++ Compiler toolchain version
8.0. This is a cross toolchain built to run on x86 64-bit Ubuntu Linux
(versions 14.04 and later) and Windows platform (Windows 7 64-bit and later).
The Snapdragon LLVM ARM Compiler will only generate code for ARM targets and
will not generate code for any of the other targets supported by the AOSP LLVM
compiler.

Version 8.0 of the Snapdragon LLVM ARM toolchain includes all changes in the
llvm.org 8.0 mainline and additionally includes patches that are post-7.0
llvm.org release. The Snapdragon LLVM ARM toolchain 8.0 release includes
proprietary features and optimizations that are not available in the llvm.org
8.0 mainline or in the AOSP LLVM compiler.

The Snapdragon LLVM ARM Compiler uses the integrated assembler for assembling
and includes a full featured proprietary linker (QC Linker) for linking.

The following link contains all the new features in the llvm.org 7.0 release.
http://releases.llvm.org/7.0.0/tools/clang/docs/ReleaseNotes.html

The Snapdragon LLVM ARM 8.0 toolchain contains all the above features, and
additionally contains the following key features compared to the Snapdragon
LLVM ARM 6.0 toolchain:

1. Code size optimizations
   - Tuning of optimizations such as inlining, unrolling, etc., for better
     code size
   - Thumb-1 specific size optimizations
   - Tuning of auto-vectorizer for improved code size

2. Performance optimizations
   - Optimizations to improve the performance of Baremetal kernels and code
     patterns for Thumb-1
   - Improved ThinLTO optimizations
   - Auto-vectorization optimization for certain camera kernels

3. New linker support
   - Support for the LLD linker that is enabled for Android

4. Support for Windows ARM64
   - Full support for code generation for Windows ARM64 target
   - Full support for C++ exception handling and structured exception handling
   - Full support for Microsoft ABI for Windows ARM64
   - Support for commonly used Microsoft intrinsics for ARM64

This version of the Snapdragon LLVM ARM toolchain may generate additional
front-end warnings compared to the SDLLVM 6.0 version.  However, we expect
it to perform better than the 6.0 release.  We recommend using this
version for performance critical components (where possible).

The complete Compiler User Guide for this release of the Snapdragon LLVM ARM
Compiler is available as part of your download package under
llvm-Snapdragon_LLVM_for_Android_8.0/prebuilt/<platform>/Snapdragon
_LLVM_ARM_80_Compiler_User_Guide.pdf.

Please post all questions about this release to
http://developer.qualcomm.com/llvm-forum.

Basic Usage & Examples:

clang and clang++ are the C and C++ drivers respectively of Snapdragon
LLVM ARM Compiler. They require users to specify the assembler and linker
explicitly.

For Windows:

In order to use the drivers you need to specify a Windows version of the GCC
cross toolchain as the sysroot.

To invoke the compiler from a Windows command prompt:

set PATH=<path-to-compiler-bin>;<path-to-sysroot-bin>;%PATH%

clang.exe -mfloat-abi=softfp --sysroot=<path/to/sysroot> foo.c

NOTE:
On Windows, the LTO feature can only be used with the QC linker (ld.qcld).
It cannot be used with the gold linker plugin since the plugin is not
available for Windows platform.

For Linux:

Note that the Linux version of clang is built with support for using GCC 4.9.0
sysroot by default. Users can use a different sysroot (such as GCC-4.8 
sysroot) by using the --sysroot option as described in section 4.5 of the 
Snapdragon LLVM ARM Compiler User Guide.

Examples of clang driver usage on Linux:
clang -march=armv7-a -mfloat-abi=softfp -mfpu=neon -O3 -o foo foo.c
clang++ -mcpu=krait -mfloat-abi=softfp -mfpu=neon -Os -mthumb -o bar bar.cpp
clang++ -mcpu=krait -mfloat-abi=softfp -mfpu=neon \
--sysroot=</path/to/another-gcc-sysroot> -Ofast -c test.cpp

For Android:

For generating executables that can be executed on ARM Linux and Android
environment, we recommend using -static linker flag to enable generation of
static executables which do not have dependence on runtime OS libraries.

Options:

To find out the most common options, please pass the -help flag to the clang
driver. This will report the Snapdragon LLVM ARM specific options and
general ARM options first, before listing target independent options
available in the Snapdragon LLVM ARM Compiler.

Compiler options for best performance:

For 64-bit applications, we recommend using "-Ofast -mcpu=cortex-a57" options
for best performance on Kryo and Cortex-a57 cores, and "-Ofast
-mcpu=cortex-a53" for best performance on Cortex-a53 cores.

For 32-bit, we recommend using the "-Ofast -mcpu=krait" options for best
performance of your application on Krait cores. For non-Krait 32-bit cores, we
recommend using the "-Ofast" option. If you would like to avoid the generation
of Krait specific instructions (hardware divide, fused-mac) to enable running
on a variety of ARMv7 cores, but still optimize for best performance on Krait
cores, we recommend the "-Ofast -march=armv7-a -mfpu=neon" options.

The -Ofast option enables several high performance optimizations such as
Auto-vectorizer. Please refer to section 4.3.19 of the Snapdragon LLVM ARM
Compiler User Guide for more details.

Compiler options for smallest code-size:

We recommending using the "-Osize -mthumb" options to generate the most
compact code with the Snapdragon LLVM ARM 8.0 compiler. Please refer to
section 4.3.19 of the Snapdragon LLVM ARM Compiler User Guide for more details
on the -Osize optimization level.

Compiling for AArch64:
To compile for AArch64 (ARMv8 64-bit mode), please pass the following option
to clang:
 -target aarch64-linux-gnu

Compiling for AArch32:
To compile for AArch32, please pass the following option to clang:
 -target armv8-linux-gnueabi

Note that even though AArch32 ISA is fully backward compatible with ARMv7 ISA,
there are newer instructions in AArch32 ISA compared to ARMv7 ISA.
This means that AArch32 executables cannot be executed on ARMv7 cores such
as Krait.

Please refer to section 4.3.19 of the Snapdragon LLVM ARM Compiler User Guide
to learn about various optimization flags.

LLVM's Support for GCC command line options:

Most of the commonly used GCC options are supported by LLVM as well. A
detailed list of options supported is listed in section 4 of the Snapdragon
LLVM ARM Compiler User Guide.