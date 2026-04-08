# Building/Installing SA2
This doc assumes you are somewhat familiar with using a terminal/command line. If not, you may find these instructions confusing and this project might not be for you at this stage. If you still want to continue, googling anything which you don't understand might be a first step and then asking in the discord would be a fallback option.

## Before building

This project is designed to be built on MacOS or Linux. 

### If you only have a windows computer

Install WSL (Ubuntu). Once installed, open this project in the WSL terminal and follow the linux instructions. There are tutorials online for setting up WSL. You may need to mount this project in your WSL environment.

### Install system requirements
 
#### On Linux (including WSL)
```bash
sudo apt update
sudo apt install build-essential binutils-arm-none-eabi gcc-arm-none-eabi libpng-dev xorg-dev libsdl2-dev g++-mingw-w64 gcc-mingw-w64 libarchive-tools

# Optional, if you want to compile for the PS2 you'll need
sudo apt install mkisofs
```
#### On MacOS

```bash
brew install libpng sdl2 mingw-w64 arm-none-eabi-gcc

# Optional, if you want to compile for the PS2 you'll need
brew install cdrtools
```

#### PS2DEV and PSPDEV

For compiling for the PSP or PS2, ensure that you install the required SDK

- [PS2DEV](https://github.com/ps2dev/ps2dev)
- [PSPDEV](https://github.com/pspdev/pspdev)

## Building

Clone/Download the repo

The repo targets multiple platforms. You don't need to build the GBA rom to build the port, so skip that step if you only want to run it on PC.

Run all commands in the same folder as this project. All outputs go into the same folder.

**NOTE**: You can significantly speed up initial build times by passing the number of processes you wish to use for the build. For example `make -j4` with 4 being the number of cores

### Ports

The codebase targets different platforms depending on where you are going to be playing it.

#### For Windows

1. Run `make SDL2.dll`
1. Run `make sdl_win32`
1. `sa2.sdl_win32.exe` will be created
1. Open the game in Windows by double clicking on it

Tip: On Linux and MacOS this can be opened with `wine sa2.sdl_win32.exe`

**NOTE**: If you get an error when running `make SDL2.dll`, you'll need to [download](https://github.com/libsdl-org/SDL/releases/download/release-2.30.3/SDL2-devel-2.30.3-mingw.zip) and extract SDL2 to an `ext` folder in the root of the repo before building. Afterwards you can re-run `make SDL2.dll`

#### For Linux/MacOS

1. Run `make sdl`
1. `sa2.sdl` will be created
1. Launch the game from the terminal with `./sa2.sdl`

#### For PSP

1. Run `make sdl_psp`
1. `EBOOT.PBP` will be created

#### For PS2

1. Run `make ps2`
1. `sa2.ps2.iso` will be created

### SA1 (Sonic Advance) SDL port for Linux

The repository includes a decompilation of Sonic Advance (SA1) under the `sa1/` directory, which can also be built as an x64 native SDL port on Ubuntu.

#### Install dependencies

```bash
sudo apt update
sudo apt install build-essential libpng-dev libsdl2-dev
```

These are a subset of the packages already listed in the [system requirements](#install-system-requirements) above, so if you've already installed those you should be good to go.

#### Provide assets

You must provide a copy of the [Sonic Advance (Europe)](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=0330) ROM (`sha1: eb00f101af23d728075ac2117e27ecd8a4b4c3e9`) named `baserom_sa1.gba` in the `sa1/` directory. The build extracts game assets from this file.

#### Build

1. Run `make -C sa1 sdl -j$(nproc)` from the root of the repo
1. `sa1/sa1.sdl` will be created
1. Launch the game from the terminal with `./sa1/sa1.sdl`

You can also build from inside the `sa1/` directory:

```bash
cd sa1
make sdl -j$(nproc)
./sa1.sdl
```

### SA1 (Sonic Advance) SDL port via CMake (Linux)

The SA1 port can alternatively be built with CMake instead of the Makefile.  This
uses the same source code and the same preproc pipeline, but a different build
driver — useful for testing whether a bug is build-system-specific.

#### Install dependencies

```bash
sudo apt update
sudo apt install build-essential cmake pkg-config libpng-dev libsdl2-dev
```

#### Provide assets

Same as the Makefile build: place a copy of the
[Sonic Advance (Europe)](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=0330)
ROM (`sha1: eb00f101af23d728075ac2117e27ecd8a4b4c3e9`) named `baserom_sa1.gba`
in the `sa1/` directory.

#### Build (Release, -O2)

```bash
cmake -S sa1 -B sa1/build -DCMAKE_BUILD_TYPE=Release
cmake --build sa1/build -j$(nproc)
```

The executable will be at `sa1/build/sa1_sdl`.  Launch it from the repo root so
it can find the asset files:

```bash
cd sa1 && ./build/sa1_sdl
```

#### Build (Debug, -O0)

```bash
cmake -S sa1 -B sa1/build-debug -DCMAKE_BUILD_TYPE=Debug
cmake --build sa1/build-debug -j$(nproc)
cd sa1 && ./build-debug/sa1_sdl
```

#### Switching compiler

To build with Clang instead of GCC (or vice-versa):

```bash
cmake -S sa1 -B sa1/build-clang -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake --build sa1/build-clang -j$(nproc)
```

#### Region

The default region is Europe.  To build the USA version:

```bash
cmake -S sa1 -B sa1/build -DCMAKE_BUILD_TYPE=Release -DSA1_GAME_REGION=USA
cmake --build sa1/build -j$(nproc)
```

### GBA rom

1. Clone [agbcc](https://github.com/SAT-R/agbcc) repo into another folder

1. Inside the `agbcc` folder, run `./build.sh` and then install the compiler in this repo `./install.sh path/to/sa2`
1. Run `make`
1. If the rom built successfully you will see this output: `sa2.gba: OK` (if you modify the source code this will no longer output `OK`)
1. `sa2.gba` will be output. 

You can execute the rom in an emulator

## Code formatting

All C code in this repo is formatted with `clang-format-13`. If using the Dev Container this is installed automatically. 

To format code run `make format`

