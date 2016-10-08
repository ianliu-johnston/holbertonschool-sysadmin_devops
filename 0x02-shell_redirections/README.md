# Holberton School Day 004: Shell Redirections #

Commands used: echo, cat, head, tail, find, wc, sort, uniq, grep, tr, rev, cut

0-hello_world
	Prints “Hello, World”, followed by a new line to the standard output. Utilizes the redirect symbol: >

1-confused_smiley
	Write a script that displays a confused smiley "(Ôo)'
	Utilizes the escape character (\) or single quotes (')
	EX1: '"(Ôo)'\'
	EX2: \"\(Ôo\)\'
	
2-hellofile
	Display the content of the /etc/passwd file.

3-twofiles
	Display the content of /etc/passwd and /etc/hosts
	Specify both folders after the command, separated by a space with no other flags.

4-lastlines
	Display the last 10 lines of /etc/passwd

5-firstlines
	Display the first 10 lines of /etc/passwd
	
6-third_line
	Write a script that displays the third line of the file iacta. The file iacta will be in the working directory. You're not allowed to use sed

7-file
	Write a shell script that creates a file named exactly \*\\'"Holberton School"\'\\*$\?\*\*\*\*\*:) containing the text Holberton School ending by a new line.
	Uses a lot of escape characters (\) and double quotes (")
8-cwd_state
	Write a script that writes into the file ls_cwd_content the result of the command ls -la. If the file ls_cwd_content already exists, it should be overwritten. If the file ls_cwd_content does not exist, create it.
	Uses the redirect -truncate symbol (>).

9-duplicate_last_line
	Write a script that duplicates the last line of the file iacta.
	Utilizes the pipe symbol (|) and the redirect -append symbol (>>)

10-no_more_js
	Write a script that deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders.
	The format of the file command is as follows: 
	    file sourceDirectory options
	    The type also needs to be declared explicitly with the -type flag. (File types are d for directory, f for file, b for block special, c for character special, d for directory, f for regular file, l for symbolic link, p for FIFO, s for socket
	    file sourceDirectory -type typeOfFile
	    The name to be declared explicitly with the -name flag.
	    file sourceDirectory -type typeOfFile -name theName

11-directories
	Write a script that counts the number of directories and sub-directories in the current directory. The current and parent directories should not be taken into account. Hidden directories should be counted.
	The command uses the pipe symbol (|) and counts the line numbers with another command.

12-newest_files
	Create a script that displays the 10 newest files in the current directory.
	List everything in the present working directory, organizing by time. Pipe the output through another command that lists only the top 10 lines then display to the standard output.

13-unique
	Create a scripts that takes a list of words as input and prints only words that appear exactly once. Input format: One line, one word. Output format: One line, one word. Words should be sorted.
	From whatever is in the standard input, sort the list and pipe the sorted list into a command that displays only the unique lines, and not the duplicate lines, to the standard output.

14-findthatword
	Display lines containing the pattern "root" from the file /etc/passwd.
	The command requires a pattern to match (in this case "root") and also requires a file to look through.

15-countthatword
	Display the number of lines that contain the pattern "bin" in the file /etc/passwd.
	The command needs to be told how to display the results. In this case, by counting, not displaying, the matching patterns. Then it needs a pattern to match, then a place to look.
	
16-whatsnext
	Display lines containing the pattern "root" and 3 lines after them in the file.
	The command needs to be told what to look for and how far to look past the result. Then the pattern to match, then a place to look.

17-hidethisword
	Display all the lines in the file /etc/passwd that do not contain the pattern "bin".
	The command needs to be told to invert the pattern to look for, and a place to look.

18-letteronly
	Display all lines of the file /etc/ssh/sshd_config starting with a letter, include capital letters as well
	The command needs to be told where to look in the line for the targeted type of character. Syntax matters. 'firstCharacterSelector[:AlphabeticalSelection:]'	

19-AZ
	Replace all characters A and c from input to Z and e respectively.
	Requires a specific syntax. tr zX fD fileName

20-hiago
	Create a script that removes all letters c and C from input.
	tr has a delete flag.

21-reverse
	Write a script that reverse its input.
	Very simple.

22-users_and_homes
	Write a script that displays all users and their home directories, sorted by users.
	cut has a delimiter flag. You need to specify the field that you want. 
