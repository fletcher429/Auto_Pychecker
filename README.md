# Auto_Pychecker :mag_right:

Auto_Pychecker is a script that automates the checking and autocorrection of Python code style using `pycodestyle` and `autopep8`. It provides a convenient way to identify and fix common style violations in Python scripts. :rocket:

## Installation :computer:

To use Auto_Pychecker, follow these steps:

1. Clone the repo `git clone https://github.com/fletcher429/Auto_Pychecker.git`
2. cd to `Auto_Pychecker`

```bash
cd Auto_Pychecker
```

3. Run the `install.sh` and make sure it is executable

```bash
sudo chmod +x install.sh
sudo ./install.sh
```

The `install.sh` script will take care of installing `pip3`, moving the `check.sh` script to `/usr/local/bin`, renaming it to `check`, and making it executable.

## Usage :memo:

To use Auto_Pychecker, simply open a terminal and type `check`. The script will prompt you to select a file to check and autocorrect with `pycodestyle`.
```bash
check
```
```bash
Select a file to check and autocorrect with pycodestyle:
1.   check.sh                      2.   install.sh                    3.   README.md                     
Enter the file number: 
```
The script will run `autopep8` to automatically correct the code style violations and then use `pycodestyle` to check the corrected code. If any violations are found, they will be displayed with the line numbers and a warning message.

## Limitations :exclamation:

- Auto_Pychecker currently supports checking and autocorrecting code style violations with `pycodestyle` and `autopep8`.
- The script assumes that you have Python 3 installed on your system.
- The script is designed to work on Debian-based Linux distributions. If you're using a different distribution, you may need to modify the package installation commands accordingly.

## License :scroll:

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

The added emojis are marked with colons (:emoji_name:) for easier identification. Feel free to modify or adjust them as per your preference.