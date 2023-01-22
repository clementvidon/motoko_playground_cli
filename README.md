# MOTOKO PLAYGROUND CLI

Minimalistic and lightweight playground to quickly test Motoko programs and
canisters without the need for a [mouse](https://m7sm4-2iaaa-aaaab-qabra-cai.raw.ic0.app/).

***Requires [dfx](https://github.com/dfinity/sdk)***

##  Programs

###  How

`cd program`
`make`

Example:
```
    make
```

> The workflow is create a directory with a copy of the Makefile and your .mo
> files, write code and say `make` to compile it and run.

*As it is not a canister do not use actor, public, query, async...*

##  Canisters

###  How

1. Terminal 1 `cd canister`
2. Terminal 1 `dfx start`<br>
3. Terminal 2 `make install`<br>
4. Terminal 2 `make run-<canister_name>`

Example:
```
    make run-hello
    make run-ciao
```

> The workflow is to create <canister_name>/main.mo in the src/ directory, write
> the canister make of functions and a function called main() in which we will
> call the other functions with various test input.  Run `make-<canister_name>`
> to execute it and print those tests outputs in the terminal.

***A MAIN FUNCTION IS REQUIRED FOR MAKE RUN TO WORK***

###  Troubleshooting

- First of all make sure that in src/ there is a directory with the name of your
  canister which contains at least one file named main.mo which contains at
- If Terminal says "...cannot create regular file '.tmp/'..." run `mkdir .tmp`

  least one function named main() which does not take any arguments.

- If Terminal 2 says "...the canister is not empty..." run `make run`

- If Terminal 2 says that "Canister...is out of cycles". Press Ctrl-C in
  Terminal 1 and run `dfx start --clean` in Terminal 1.

- If Terminal 2 says "...cannot create regular file '.tmp/'..." run `mkdir .tmp`


# Contact

```
clemedon icloud
clem9nt  twitter
```

<sub><i>Copyright 2023 Clément Vidon.  All Rights Reserved.</i></sub>
