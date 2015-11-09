#!/bin/bash
### IntelliJ Installation (Must come last, stalls script)
wget -P $HOME/Downloads https://download.jetbrains.com/idea/ideaIU-15.0.tar.gz
tar xzvf $HOME/Downloads/ideaIU-15.0.tar.gz
./$HOME/Downloads/ideaIU-15.0/bin/idea.sh
