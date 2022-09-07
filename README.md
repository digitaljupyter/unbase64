# unbase64(1)

A quick utility to convert a string (or *strings*) to UTF-8 from base64.

## Developer Dependencies

unbase64 requires `meson` installed, if you don't have it, get it!

```sh
# for arch (using paru)
paru -S meson

# for openSUSE
opi meson
zypper in meson

# for Windows
pip install meson
#(download ninja.exe, add to your path, then install.)
```

If you'd like to contribute other distros, you are welcome to do so!

## Installation

```
git clone https://github.com/thekaigonzalez/unbase64.git
cd unbase64
meson build && cd build && ninja install
```

## Fish

If you're using the fish shell, then you are able to use the fish 
completions (installed by default, so even if you don't, 
whenever you install it you'll have them)
