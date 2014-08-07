explains.sh
===============

explain shell commands using http://www.explainshell.com/ from the command line.

Install
-------
``` sh
# install (or update to) last version
curl -s https://benjamine.github.io/explain.sh/install.sh | sh
```
Usage
-----
``` sh
# explain a command
explain.sh git log --graph --abbrev-commit --pretty=oneline origin..mybranch
```
