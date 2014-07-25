# Instructions for MacOSX

## Installation

Installing natively on a mac is easy enough. The virtual machine is still an 
option, but 

### Getting all the dependencies

### Installing all the dependencies

You are largely on your own on this one. 

The propoer way to do this will rely heavily on your system. I use MacPorts and 
conda to handle most of my dependencies. Boost, I installed from source () . 
The way you install all of these dependencies is really up to you. On a clean 
system with command line tools and the macports package manager, it should be 
ok to do this:

sudo port install -y cmake make boost libxml2 libxmlxx2 sqlite3 

Then, you'll probably need to install the following from source:  hdf5, libbz2, coinor

### Setting up your environment

If you have never used git, you should configure git. This way, if you ever 
contribute back to the code base, it will attribute your work properly.

   git config --global user.name "Lieutenant Commander Data"
   git config --global user.email "data@enterprise.gov"


Additionally, a few environment variables will improve your life. Add the following to your .bashrc file:

CYCLUS_INSTALL_DIR="~/cyclus/install/bin"
export CYCLUS_INSTALL_DIR

PATH="${CYCLUS_INSTALL_DIR}:${PATH}"
export PATH

### Getting all the code

There are 7 repositories that you will want to download with git. Consider 
forking them. They are:

- github.com/cyclus/cyclus
- github.com/cyclus/cycamore
- github.com/katyhuff/cycamore
- github.com/katyhuff/commodconverter
- github.com/katyhuff/streamblender
- github.com/katyhuff/sepmatrix
- github.com/katyhuff/marketdriveninst


To clone it all :

mkdir cyclus
cd cyclus
mkdir install
git clone https://github.com/cyclus/cyclus.git
git clone https://github.com/cyclus/cycamore.git
git clone https://github.com/cyclus/sepmatrix.git
git clone https://github.com/cyclus/commodconverter.git
git clone https://github.com/cyclus/decomminst.git
git clone https://github.com/cyclus/streamblender.git
git clone https://github.com/rwcarlsen/cyan.git 

## Installing the various pieces

cd cyclus
python install.py --prefix=../install
cd ../cycamore
python install.py --prefix=../install
cd ../sepmatrix
python install.py --prefix=../install
cd ../commodconverter
python install.py --prefix=../install
cd ../decomminst
python install.py --prefix=../install
cd ../streamblender
python install.py --prefix=../install


## Running the tests

install/bin/cyclus_unit_tests
install/bin/cycamore_unit_tests
install/bin/sepmatrix_unit_tests
install/bin/commodconverter_unit_tests
install/bin/decomminst_unit_tests
install/bin/streamblender_unit_tests

## Running the simulation

Now, you can run cyclus:

~/cyclus/install/bin/cyclus path/to/input.xml

For example, if you want to run the EG01 draft example:


~/cyclus/install/bin/cyclus ~/cyclus/decomminst/input/example.xml



