# MOTOKO PLAYGROUND CLI

##  Why

Quickly test simple Motoko programs, useful for CLI/Vim users.

##  How

Terminal 1 `dfx start`
Terminal 2 `make install`
Terminal 2 `make run-<motoko_src_file>`

Example:
```
    make run-hello
    make run-ciao
```

> The workflow is to create foo.mo in the src directory, open it and write a canister with some functions and a main function **A MAIN FUNCTION IS MANDATORY FOR 'MAKE RUN-' TO WORK** in which we can call, test and print out the output of the other functions.

##  Troubleshooting

1. Terminal 2 output: "Canister...is out of cycles", Ctrl_c in Terminal 2 and
run `dfx start --clean`
