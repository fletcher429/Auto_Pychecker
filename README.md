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
1.   check.sh         2.   install.sh       3.   main.py                    
Enter the file number: 3
Success! No violations found.
```
The script will run `autopep8` to automatically correct the code style violations and then use `pycodestyle` to check the corrected code. If any violations are found, they will be displayed with the line numbers and a warning message.
## Features
1. `Indentation`: Fixes incorrect indentation.
2. `Whitespace`: Removes unnecessary whitespace and excessive empty lines.
3. `Import Formatting`: Organizes and formats import statements.
4. `Parentheses Formatting`: Corrects issues with parentheses placement.
5. `Operator Spacing`: Adjusts spacing around operators.
6. `Function and Class Formatting`: Maintains consistent formatting of functions and classes.
7. `Quotation Marks`: Converts quotation marks to follow a consistent style.
8. `Comma Placement`: Ensures proper comma placement.

## Limitations :exclamation:
- The Auto_Pychecker can't correct (line is over 95 > 85).But it will suggest where the the exact error are
```bash
Code violations found:
Warning: At line 5 ::Lines exceeds 95 > 85
```
- Auto_Pychecker currently supports checking and autocorrecting code style violations with `pycodestyle` and `autopep8`.
- The script assumes that you have Python 3 installed on your system.
- The script is designed to work on Debian-based Linux distributions. If you're using a different distribution, you may need to modify the package installation commands accordingly.