# MOTOKO PLAYGROUND CLI

##  Why

juickly test simple Motoko programs, useful for CLI/Vim users.

##  How

Terminal 1 `dfx start`<br>
Terminal 2 `make install`<br>
Terminal 2 `make run-<motoko_src_file>`

Example:
```
    make run-hello
    make run-ciao
```

> The workflow is to create foo.mo in the src directory, open it and write a
> canister with some functions and a main function in which we can call, test and print out the output of the other functions.

***A MAIN FUNCTION IS REQUIRED BY MAKE RUN***

##  Troubleshooting

1. Terminal 2 output: "Canister...is out of cycles", Ctrl-C in Terminal 2 and
run `dfx start --clean`
