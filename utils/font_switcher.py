import os
import sys

# terminal_font = "ShureTechMono Nerd Font"
# terminal_font_size = "14.0"
# editor_font = "Iosevka Nerd Font"
# editor_font_size = "12.0"

def toogle_terminal_font(new_font, new_size):

    config_file_path = "~/.config/kitty/kitty.conf"
    config_file_path = os.path.expanduser(config_file_path)

    with open(config_file_path, 'r') as config_file:
        lines = config_file.readlines()

    for line_number, line in enumerate(lines):
        if line.startswith("#"):
            continue
        if line.startswith("font_family"):
            lines[line_number] = f"font_family {new_font}\n"
            break
        if line.startswith("font_size"):
            lines[line_number] = f"font_size {new_size}\n"

    with open(config_file_path, "w") as config_file:
        config_file.writelines(lines)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: font_switcher.py <font_name> <font_size>")
        sys.exit(1)

    new_font = sys.argv[1]
    new_size = sys.argv[2]
    toogle_terminal_font(new_font, new_size)
