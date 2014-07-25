#!/bin/bash
# This bash script updates all of the repositories
# Then, it reinstalls cyclus and all modules

# Before running this script, commit any changes you have made
# All changes will be stashed

# This is where I want my script to start.
TOP_DIR=~/cyclus/
REPOS="cyclus
       cycamore
       streamblender
       commodconverter
       separationmatrix
       mktdriveninst"

INSTALL="python install.py --build_type=debug --prefix=../install"


cd $TOP_DIR

# Let the person running the script know what's going on.
echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"

# Find all directories here - that are at least 1 level down, but don't go any 
# further than 1 directory.
# Go into those directories and pull the repository.
for i in $REPOS; do
    echo -e "\033[1mUpdating $i \033[0m"; cd $i; git stash; git checkout develop; git pull origin develop;
      cd $TOP_DIR
    done

    echo -e "\n\033[1mRepositories Updated!\033[0m\n"

cd $TOP_DIR

# Now, install cyclus
for i in $REPOS; do
    echo -e "\033[1mReinstalling $i \033[0m"; cd $i; $INSTALL;
      cd $TOP_DIR
    done

    echo -e "\n\033[1mCyclus and modules installed!!\033[0m\n"


