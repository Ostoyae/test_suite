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

After execution, the above script will run your shell executable on every test file in the repository. Successful tests will result in a green happy face, while failures will result in a red sad face (or an error).

## Adding Test Files

More than four steps:
* In a given directory, make a new copy of an existing file.
  * Make sure to give your copy a new name.
* Open the new file with your favorite text editor (*cough*MS-DOS Editor*coughcough*)
  * You play a dangerous game playing favorites on Open Source
  * You play a dangerous game using MS-DOS Editor!
* Make the following edits to the new file:
  * At the top, change the variable `command` to the new command you'd like to test.
  * Make necessary changes to the `# check the result` and/or `# send commands` sections. This is where it gets a little tricky, but let me try to help you out:
    * Think about the best way to compare output with the `/bin/sh` shell. Most often you will want to use either `grep` or `diff`.
    * Trying to compare output character for character? Pipe the command into two separate files and `diff` the result. See [01_simple_shell_0.1/bin_hostname](https://github.com/stefansilverio/test_suite/blob/master/01_simple_shell_0.1/bin_hostname) for reference.
    * Trying to test a command where output might not match character for character 100%? Use `grep` to match a smaller commanility between the two. See [01_simple_shell_0.1/bin_ls](https://github.com/stefansilverio/test_suite/blob/master/01_simple_shell_0.1/bin_ls) for reference.
    * Still not sure what to do? Ask for help!
  * Update the documentation with a brief description of your new test.
* Add your name to the `AUTHORS` file!

*Note that scripts involving more complicated commands may require more changes than described above. If you need help writing a new test script, reach out for help!*

## Style Guide

[Follow me!](https://google.github.io/styleguide/shell.xml)

## :mag: License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

<p align="center">
  <img src="http://www.holbertonschool.com/holberton-logo.png">
</p>
