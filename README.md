# LuaOS
### powered by Arch-line and MAXAPPS
a command line that is simular to any other
<br>

## how does it work
it is simple Arch-Line is the handeler of our OS it runs apps and things like that, MAXAPPS allows you to write MAXAPP files the maxapp format is just .txt with no multi line support.
> [!TIP]
> while there is no multi line support for sudo commands for writing to MAXAPP files if you create an aplication and use maxapp.appwrite(filepath).
## MAXAPP policy(s)
while this is open source verifyed apps such as the ones installed on LuaOS by defult must abide by afew rules. as of Arch-Line V3 Nothing saves exept for MAXAPP files this is why we want to rule out crashing now before it can (maby later) harm you device.<br>

policys include, regular aduits, testing, good error handeling, and no cross file running (eg: running a c file from somewhere else on your pc from your lua)

# navigating the OS
this will cover most commands
### login
when you first use LuaOS the username will be admin and the password is ``admin``
### running apps
to run an app just type its name and hit enter lets try list
```
list
```
you should have seen your command/apps list blink as it cleared and showed it again.
these apps are not that usefull so if you want some more usefull commands just run ``sudo``
## Sudo menu
when you run ``sudo`` you will be dispayed with the sudo apps to exit sudomode just type ``sudo``.
after you type ``sudo`` lets try ``SIFR`` sifr is a way of reading MAXAPP files just use this command:
```
sifr
```
``sifr`` stands for Sudo Interactive File Reader we can use it futher by typeing in
```
24448
```
24448 is a test MAXAPP file installed by defult, wonder what it says?
the other commands are simple if you use them and use their corrosponding help commands for the SIF (Sudo Interactive File) commands this is ``???`` not ``?``, witch exits your SIF command