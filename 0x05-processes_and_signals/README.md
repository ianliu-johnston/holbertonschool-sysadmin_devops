#Holberton School - 0x05-processes_and_signals
Exercises to manage processes and signals in Bash.

## New commands / functions used:
* ``echo $$`` - Prints the PID of the currently running process (Bash)
* ``ps -aux --forest`` - Prints all the currently running processes from all users in their heirarchy
* ``pgrep -l bash`` - Prints the PID of all processes matching <pattern>
* ``:`` - Function that always returns true
* ``sleep 2`` - The current process waits for 2 seconds
* ``pkill -f <pattern>`` - Kills all processes whose name contains <pattern>
* ``trap "echo ITS A TRAP" SIGTERM`` - Traps the signal ^C (interrupt)
* ``kill -9 <PID>`` - Kills a process immediately with SIGQUIT.

## Helpful Links
* [linfo on PID](http://www.linfo.org/pid.html)
* [Linux Processes and Environment](http://www.thegeekstuff.com/2012/03/linux-processes-environment/)
* [Linux Signals Fundamentals](http://www.thegeekstuff.com/2012/03/linux-signals-fundamentals/)
* [About Signals](http://www.computerhope.com/unix/signals.htm)
* [Zombie Processes](https://zombieprocess.wordpress.com/what-is-a-zombie-process/)
* [Putting a process to the background with &](http://bashitout.com/2013/05/18/Ampersands-on-the-command-line.html)
* [What is /etc/init.d?](http://www.ghacks.net/2009/04/04/get-to-know-linux-the-etcinitd-directory/)
* [Wikipedia on Daemons](https://en.wikipedia.org/wiki/Daemon_(computing))
* [Positional Parameters Bash-hackers Wiki](http://wiki.bash-hackers.org/scripting/posparams)

## Description of Files
<h6>0-what-is-my-pid</h6>

<h6>1-list_your_processes</h6>

<h6>2-show_your_bash_pid</h6>

<h6>3-show_your_bash_pid_made_easy</h6>

<h6>4-to_infinity_and_beyond</h6>

<h6>5-kill_me_now</h6>

<h6>6-kill_me_now_made_easy</h6>

<h6>7-highlander</h6>

<h6>8-beheaded_process</h6>

<h6>9-process_and_pid_file</h6>

<h6>10-manage_my_process</h6>

<h6>11-zombie.c</h6>

<h6>12-screencast_unix_signal</h6>

