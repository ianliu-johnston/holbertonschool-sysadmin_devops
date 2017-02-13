# SysAdmin/DevOps Exercises
Exercises to learn SysAdmin and Devops concepts at [Holberton School](https://holbertonschool.com). These exercises are designed to take the student from a complete novice to a fully capable SysAdmin or DevOps.

## Styling and Specifications
All programs were written from the Bash shell, with Vim.

### Compilation
All programs will be interpreted on Ubuntu 14.04, and must pass all style checks with [ShellCheck](https://github.com/koalaman/shellcheck). All scripts should end with a new line. Not allowed to use ``awk``.
The first line of every script should be:
```
#!/usr/bin/env bash
```
All scripts require execution permissions:
```
chmod u+x file
```
To Run the scripts:
```
./script.sh
```
To check the styling:
```
shellcheck script.py
```

### Directory Structure
Each directory is named according to the key concept shared by all exercises in the directory. They are numbered sequentially to provide a linear timeline, and build on the key concepts from all previous concepts. Each directory contains a README.md with a short description of the program or script, and some useful links to the material. The directory [extras][extras] contains solutions to problems that do not pertain directly to the material, but was used for extracurricular study.

### [setup.sh](setup.sh)
Also contained in the repository's root directory is setup.sh.

#### Description:
This file sets up a directory based on the raw html from the assignment page. First, it creates the directory, then it creates all necessary files with their exact file name. Each file is populated with a template. It creates a .gitignore and its own README.md with a list of all the assignment files.
#### Use:
1. Grab the raw HTML from the assignment page on the internet. ``CMD + u`` for mac will bring the HTML source up. ``CTL + u`` for Linux or Windows. Copy and paste it into a file with a name of your choosing.
2. Run with ``./setup.sh``, when prompted, enter in the name of the HTML page, and the name of the header.

### Tools
* [ShellCheck](https://github.com/koalaman/shellcheck) - Style checker for shell scripts
* [vim](http://www.vim.org/) - The CLI text editor

## Links
See [LINKS.MD](LINKS.MD) for a list of links that are supplimental to the material.
## Feedback
I welcome any feedback on the code, as they aid in the ability to understand core concepts for low level programming in C. However, because they are primarily for my personal education, this repository is not open to contribution.
## Author
**Ian Xaun Liu-Johnston**
I have coded all of these exercises during my studies. The exercises themselves are part of the low level programming curriculum at [Holberton School](https://holbertonschool.com)
* [Twitter](https://twitter.com/Concativerse) - @Concativerse
* [Medium](https://medium.com/@Concativerse) - Technical articles on C programming.
* [Linkedin](https://www.linkedin.com/in/ian-liu-johnston-32a40a115)
* [Personal Website](http://ianxaunliu-johnston.com)
