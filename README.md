# MOTOKO PLAYGROUND CLI

##  Why

Quickly test your functions/programs. Useful for CLI/Vim users.

##  How

Terminal 1 `dfx start`<br>
Terminal 2 `make install`<br>
Terminal 2 `make run-<motoko_src_file>`

Example:
```
    make run-hello
    make run-ciao
```

> The workflow is to create foo.mo in the src directory, open it and write a canister with some functions and a main function in which we can call, test and print out the output of the other functions.

***A MAIN FUNCTION IS REQUIRED FOR MAKE RUN TO WORK***

##  Troubleshooting

- If Terminal 2 says that "Canister...is out of cycles". Press Ctrl-C in
  Terminal 2 and run `dfx start --clean` in Terminal 2.
