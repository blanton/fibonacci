Fibonacci
=========

Various implementations of the Fibonacci sequence.

Each version supports one optional argument: the maximum value to calculate.

The provided algorithms use the modern approach, where the sequence starts with 0.

Checking times using the following zsh command...

    $ for x in *.rb~fibonacci-basic.rb; do eval time ./$x 1000 > /dev/null; done

I estimate the implementations sorted fasted to slowest are:

  - fibonacci-iterative-memo.rb
  - fibonacci-memo.rb (effectively tied with above)
  - fibonacci-iterative.rb
  - fibonacci-inject.rb
  - fibonacci-basic.rb
