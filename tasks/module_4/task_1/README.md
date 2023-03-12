# Task 1: Strengthen your shell scripting skills on [real-world tasks](https://www.linode.com/docs/guides/solving-real-world-problems-with-bash-scripts-a-tutorial/)

### Note:
> - Personal GitHub repository (public or private) should be used for storing and sharing scripts, created during the execution of tasks.
> - If necessary, share access to your repo with a mentor, an expert, or another person who will evaluate your work or help to solve issues.

1. **Create** a new directory named **task_1** in the project’s **module_4** directory.
2. **Create** a shell script that will watch free disk space. The bash script should follow watch the free space of your hard disks and warns you when that free space drops below a given threshold.
   The value of the threshold is given by the user as a command line argument. Notice that if the program gets no command line argument, a default value is used as the threshold.
3. **Create** a shell script, which will count the number of files that exist in each given directory and its subdirectories.
   
**[HERE YOU CAN FIND SOME IMPORTANT ORGANISATIONAL NOTES](../../../ORG-NOTES.md)**

### Task 2 explained commands and algorithms:

> - The THRESHOLD variable is set to the first command line argument ($1), or to the default value of 10 if no argument is given (${1:-10}).
> - The script enters an infinite loop using the while true statement.
> - The df -h / command is used to get the disk usage information for the root partition (/), and the awk '{print $4}' command is used to extract the free space value from the output. The tail -n 1 command is used to get the last line (which contains the free space value), and the sed 's/G//' command is used to remove the "G" character at the end of the value (which represents gigabytes).
> - The bc -l command is used to perform a floating point comparison between the free space value and the threshold value. If the free space is below the threshold, the comparison will return a value of 1 (true).
> - If the free space is below the threshold, a warning message is printed to the console.
> - The script waits for 5 minutes using the sleep 300 command before checking the free space again.

### Task 3 explained commands and algorithms:

> - Get the list of directories to count files in - directories="$@"
> -  Loop through each directory - for directory in $directories; do
> - Count the number of files in the current directory and its subdirectories - num_files=$(find "$directory" -type f | wc -l)
> - Print the directory name and number of files - echo "$directory: $num_files" - done
