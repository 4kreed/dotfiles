# dotfiles

`stow [-n] [-v] --dir=/home/akreed/Documents/dotfiles --target=/home/akreed .`

where
- `[-n]` option makes that changes don't get applied (simulation mode)
- `[-v]` increases the verbosity
- `--dir` specifies your git repository with your config
- `--target` specifies where to apply stow
- `.` current directory (from where packages will be read)

To remove symbolic links created (or already existing configuration files) just manually remove them from your filesystem.

## Icons

I'm using a specific theme for cursor icons. Depending on your file system you may not be able to extract the `.tar.gz` file correctly. Because of that it is recommended to manually copy the `.icons` folder into your home folder and manually extract it there. I have added this folder to `.stow-local-ignore` so that it doesn't get linked.