# sleepAsAServie
Sleep As A Service - Automatically put your laptop back to sleep if the lid is closed.

# Use-case

Sleep has already been triggered and successful on your laptop. Soomething wakes it, like the laptop getting squashed a little causing a keypress. When you ome back to your bag, it's hot and the laptop's battering is flat.

# Using it

The best way is to install it using one of the methods below. But you can also start it manually like so

    ./bin/saas loop

# Installlation
## Crontab

This is currently the easiest method.

    mkdir -p ~/bin
    cp ../bin/saas ~/bin
    ( crontab -l ; echo "*/2 * * * * ~/bin/saas once" ) | crontab -

Note that the `*/2` is specifying that the check will be run every 2 minutes. You may want to choose a more appropriate time for your usecase. I chose 2 minutes, because you don't typically want your laptop to run for long when there's no cooling, but running it too often is wasting resources (not much, but it contributes) for when your laptop is doing legitimate work.

## Systemd

* TODO Write this.

## SysV

* TODO Make the code compatible.
* TODO Write this.


## KDE Specific

This doesn't exclude the above methods, but it is a KDE specific way you can do it.

    mkdir -p ~/bin
    cp ../bin/saas* ~/bin
    cd ~/.kde/Autostart
    ln -sf ~/bin/saasLoopWrapper .
    
Then log out and in.

## Starting it manually

Great for testing.

    ./bin/saas loop

