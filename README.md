## Auto_Pychecker

📝 **Installation:**

To install and use Auto_Pychecker, follow these simple steps:

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/your-username/auto-pychecker.git
   ```

2. Navigate to the project directory:
   ```
   cd auto-pychecker
   ```

3. Install the required dependencies:
   ```
   pip3 install --user -r requirements.txt
   ```

4. Run the program:
   ```
   ./auto_pychecker.sh
   ```

5. Follow the on-screen prompts to select a Python file and perform code checks.

*Note: Make sure you have Python 3.x and pip installed on your system before proceeding with the installation.*

📋 **Usage:**

1. Upon running the program, you will be presented with a list of Python files in the current directory.
2. Use the file numbers to select a file you want to check and autocorrect.
3. The program will automatically analyze the code using various static analysis tools.
4. Any code violations or style issues will be displayed, including line numbers and descriptions.
5. Auto_Pychecker will attempt to automatically fix fixable violations.
6. If there are violations that cannot be fixed automatically, the program will provide information and suggestions for manual correction.
7. After the analysis, Auto_Pychecker will display a success message if no violations are found.

🚫 **Limitations:**

1. Auto_Pychecker relies on various static analysis tools for code analysis and style checks. Limitations or issues with these tools may impact the accuracy of the results.
2. While Auto_Pychecker covers a wide range of common code violations, it may not capture all possible issues or adhere to specific style guidelines.
3. Some issues may require manual correction, and Auto_Pychecker will provide information and suggestions to assist with the process.
4. Auto_Pychecker currently supports Python files within the current directory only. Support for file selection from any directory may be added in future updates.

Enjoy using Auto_Pychecker to improve the quality and style of your Python code effortlessly! 🚀🔍🔧