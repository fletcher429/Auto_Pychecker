## Stylistic

📝 **Installation:**

To install and use Stylistic, follow these simple steps:

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/fletcher429/Auto_Pychecker.git
   ```

2. Navigate to the project directory:
   ```
   cd stylistic
   ```

3. Install the required dependencies:
   ```
   pip3 install --user -r requirements.txt
   ```

4. Run the program:
   ```
   ./stylistic.sh
   ```

5. Follow the on-screen prompts to select a Python file and perform code style checks.

*Note: Make sure you have Python 3.x and pip installed on your system before proceeding with the installation.*

📋 **Usage:**

1. Upon running the program, you will be presented with a list of Python files in the current directory.
2. Use the file numbers to select a file you want to check and autocorrect.
3. The program will automatically apply code formatting using autopep8 and perform static code analysis using pycodestyle.
4. Any code style violations will be displayed, including line numbers and descriptions.
5. If fixable violations are found, Stylistic will attempt to correct them and provide feedback.
6. If there are violations that cannot be fixed automatically (e.g., lines longer than 85 characters), Stylistic will highlight them for your attention.
7. After the analysis, Stylistic will display a success message if no violations are found.

🚫 **Limitations:**

1. Stylistic relies on autopep8 and pycodestyle for code formatting and style analysis, respectively. Any limitations or issues with these tools may impact the accuracy of the results.
2. While Stylistic can handle most common code style violations, it is not a comprehensive solution for all possible style guidelines.
3. In cases where lines exceed 85 characters and cannot be automatically fixed, Stylistic will point out the violations but cannot correct them directly.
4. Stylistic currently supports Python files within the current directory only. Support for file selection from any directory may be added in future updates.

Enjoy using Stylistic to maintain clean, consistent, and visually pleasing Python code! 🌟✨🎨