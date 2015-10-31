#!/bin/bash
### IntelliJ Installation (Must come last, stalls script)
wget -P $HOME/Downloads https://download.jetbrains.com/idea/ideaIU-14.1.5.tar.gz
tar xzvf $HOME/Downloads/ideaIU-14.1.5.tar.gz
./$HOME/Downloads/ideaIU-14.1.5/bin/idea.sh
