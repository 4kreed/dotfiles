# dotfiles

`stow [-n] [-v] --dir=/home/akreed/Documents/dotfiles --target=/home/akreed .`

where
- `[-n]` option makes that changes don't get applied (simulation mode)
- `[-v]` increases the verbosity
- `--dir` specifies your git repository with your config
- `--target` specifies where to apply stow
- `.` current directory (from where packages will be read)

To remove symbolic links created (or already existing configuration files) just manually remove them from your filesystem.
