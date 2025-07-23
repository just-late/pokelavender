# Install Guide

If you just want to play Pokemon Lavender, use one of the .ips patches as described in [README.md](README.md#download-and-play). To build a ROM yourself from the source code, follow these instructions.

## Windows

If you're using WSL, go to [INSTALL.md](INSTALL.md#linux)

To build on Windows, install [**Cygwin**](http://cygwin.com/install.html) with the default settings.

In the installer, select the following packages: `git`, `make`, and `gcc-core`.

In the **Cygwin terminal**:

```bash
git clone https://github.com/Rangi42/polishedcrystal.git
cd polishedcrystal
mkdir rgbds
```

Then download [**rgbds**](https://rgbds.gbdev.io/). If you're building the newest version, you'll need version **0.8.0** Extract the archive and put all the .exe and .dll files in pokelavender/rgbds.

To build **pokelav-in-progress.gbc**:

```bash
make
```


## Linux

```bash
sudo apt-get install make gcc git bison

git clone https://github.com/gbdev/rgbds.git
cd rgbds
sudo make install
cd ..

git clone https://github.com/Rangi42/polishedcrystal.git
cd polishedcrystal
```

To build **pokelav-in-progress.gbc**:

```bash
make
```
