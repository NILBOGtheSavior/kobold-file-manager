# Kobold File Manager

Kobold is a Qt based file manager with the goal of being a simple and customizable alternative to Thunar and Dolphin.

## Building from source

### Prerequisites

- `qt6-base`
- `qt6-declarative`
- `cmake`
- `extra-cmake-modules`
- `gcc`/`clang`

### Build instructions

1. **Generate the build system**

```
cmake -B build
```

2. **Compile the binaries**

```
cmake --build build
```

3. **Run Kobold**

```
./build/kobold
```

## Configuration

*Not yet implemented*

Edit the configuration file in `~/.config/kobold/config.json`

## Planned Features

### Layout

- [ ] Tabs
- [ ] Windows
- [ ] List View
- [ ] Grid View
- [ ] Tree View

### Navigation

- [ ] Forward
- [ ] Backward
- [ ] Parent
- [ ] Go To
- [ ] Network Browser
- [ ] Open Location
- [ ] Mounting and unmounting drives
- [ ] Search
- [ ] Mime-Type Handling

### Edit

- [ ] New
- [ ] Undo
- [ ] Redo
- [ ] Cut
- [ ] Copy
- [ ] Paste
- [ ] Delete (move to trash)
- [ ] Rename
- [ ] Preferences

### View

- [ ] Properties
- [ ] Reload
- [ ] Show hidden files
- [ ] Arrange
- [ ] Zoom
- [ ] Order
- [ ] Filter
- [ ] Preview
- [ ] Bookmarks
