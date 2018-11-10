#!/bin/bash
#
# Performing checks on the Holberton School "simple shell" project

#######################################
# Prints a red unhappy face, followed by a new line
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################
function print_unhappy()
{
    echo -e "\033[31m:(\033[37m"
}

#######################################
# Prints a green happy face, followed by a new line
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################
function print_happy()
{
    echo -e "\033[32m:)\033[37m"
}

#######################################
# Kill the shell in a clean way and remove temporary files
# Globals:
#   SHELL
#   OUTPUTFILE
#   ERROROUTPUTFILE
#   LTRACEOUTPUTFILE
# Arguments:
#   None
# Returns:
#   None
#######################################
function stop_shell()
{
    if [ `pidof $SHELL | wc -l` -ne 0 ]; then
	   killall -9 $SHELL 2>&1 > /dev/null
    fi
    rm -f $OUTPUTFILE $ERROROUTPUTFILE $LTRACEOUTPUTFILE
}

# Load configuration
source config

# Cleanup
echo -ne "\033[37m"
rm -f $OUTPUTFILE $LTRACEOUTPUTFILE

# Locates all tests and launch them
for dir in `ls -d "$TESTDIR"/*/`
do
    echo "> $dir"
    for testname in `ls "$dir" | grep -v "~$"`
    do
	   echo -n "   $ $testname: "
	   source "$dir$testname"
	   echo "     thank u, next"
    done
done

# Cleanup
rm -f $OUTPUTFILE $LTRACEOUTPUTFILE $ERROROUTPUTFILE
rm -f checker_output_*
rm -f checker_tmp_file_*
rm -f /tmp/.checker_tmp_file_*
echo -ne "\033[37m"
