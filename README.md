# What is this?

Sometimes people would like to know why it is not possible to use e.g. `macvlan`
on macOS with Docker Desktop. This tiny repository provides you some evidence,
by just showing the visible network environment from within Docker Desktop.

# Usage

Just clone this repository through `git`, and of course ensure you have a working
Docker environment available (e.g. Docker Desktop, OrbStack, ...)/

```shell
./run.sh
```

# Bugs

This tool is free of any bugs, however: It has been made for non-Linux environments,
it has no useful function on Linux.
