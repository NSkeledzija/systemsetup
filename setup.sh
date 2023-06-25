#!/bin/bash

# Make a script directory for dmenu apps that need to be launched with arguments.
mkdir -p ~/.apps
echo -e '# Scripts for launching apps with args from dmenu\nPATH=$HOME/.apps:$PATH'>>~/.bash_profile

# Chrome needs to use the gnome password store for the password completion to work on i3
echo -e "#!/bin/bash\ngoogle-chrome --password-store=gnome" > ~/.apps/chrome
chmod +x ~/.apps/chrome

# Remove dmenu cache
rm -f ~/.dmenu_cache
rm -f ~/.cache/dmenu_run
