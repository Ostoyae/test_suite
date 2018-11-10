# Cohort 7's Simple Shell Checker

Hah! As if anything about this project is "simple."

## Configuration

Four steps:
* Give your shell a clever name.
* Open the file `config` and update the variable `SHELL` with the name of your shell.
* Move the executable for your shell into your local copy of this repository.
* Does your shell have a clever name? No? Go back and repeat steps 1-3.

## Running the Checker

Usage `./check_simple_shell.bash`

After execution, the above script will run your shell executable on every test file in the repository. Successful tests will result in a green happy face, while failures will result in a red sad face.

## Adding Test Files

More than four steps:
* In a given directory, make a new copy of an existing file.
* Open the new file with your favorite text editor (*cough*vim*coughcough*)
* Make the following edits to the new file:
  * At the top, change the variable `command` to the new command you'd like to test.
  * In the `# check the result` section, change the number in the `if [ $nmatch...` conditional to the number of lines contained in your new test command.
    * ie. If you are defining a new command `echo 'hi'`, the corresponding conditional should be `if [ $nmatch -eq 1 ];`
* Add your name to the `AUTHORS` file!

*Note that the above strictly applies to simple shell tests. Scripts involving more complicated commands may require more changes. If you need help writing new test script, reach out for help!*
