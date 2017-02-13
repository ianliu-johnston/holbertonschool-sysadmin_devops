#Holberton School - 0x04_loops_conditions_and_parsing
Brief into to loops, conditionals and parsing

## New commands / functions used:
* ``while ((1)); do echo infinity; done``
* ``for ((i=1; i<10; i++)); do echo $i; done``
* ``until ((i>10)); do echo $i; done``
* ``i=$((i+1))`` -- Increment i
* ``awk '/search_expression/ {some command;}'``
* ``if [[ -s "my_non_empty_file ]]; then echo It passed!; fi``
* `` case "$i" in 1) echo one ;; 2) echo two ;; *) echo you get the idea;; esac``

```
case "$1" in
1) echo one
   ;;
2) echo two
  ;;
*) echo all the rest
  ;;
esac
```

## Helpful Links
* [How For Loops work in Bash](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
* [How While Loops work in Bash](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_02.html)
* [How Until Loops work in Bash](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_03.html)
* [Examples of Bash Loops](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-7.html#ss7.1)
* [Variable Assignment and Arithmetic](http://tldp.org/LDP/abs/html/ops.html)
* [Comparison Operators](http://tldp.org/LDP/abs/html/comparison-ops.html)
* [Example Case Statements in Bash](http://www.thegeekstuff.com/2010/07/bash-case-statement/))
* [Test File Operators](http://tldp.org/LDP/abs/html/fto.html)
* [Script Portability](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)
* [Basic AWK usage](https://www.digitalocean.com/community/tutorials/how-to-use-the-awk-language-to-manipulate-text-in-linux)

## Description of Files
<h6>0-RSA_public_key.pub</h6>

<h6>1-for_holberton_school</h6>

<h6>2-while_holberton_school</h6>

<h6>3-until_holberton_school</h6>

<h6>4-if_9_say_hi</h6>

<h6>5-4_bad_luck_8_is_your_chance</h6>

<h6>6-superstitious_numbers</h6>

<h6>7-clock</h6>

<h6>8-for_ls</h6>

<h6>9-to_file_or_not_to_file</h6>

<h6>10-fizzbuzz</h6>
Fizz Buzz: Classic coding problem
