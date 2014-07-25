Instructions
============

This is the main page for the instructions. It contains links to other pages within 
this repository that have additional information.

Installation
------------

There are three options for installation and instructions for each.

- [Virtual Machine]() (any platform)
- [Natively on MacOSX]() (macosx)
- [Natively on Linux]() (debian linux)


Checking
--------

Did the installation work? You can check in the terminal by running the tests. 
The tests are all in the bin directory. You can run each of them in turn. 
Execute the following lines one at a time: 

cd ~/cyclus/install/bin
./CommodConverter_unit_tests
./StubInst_unit_tests         
./cyclus_unit_tests
./MktDrivenInst_unit_tests    
./StubRegion_unit_tests       
./SeparationMatrix_unit_tests 
./cycamore_unit_tests         
./StreamBlender_unit_tests    


Running
-------

In the cyclus/install/bin directory, you will also find the cyclus executable. 
Most simply, if you have an input file that you'd like to run, you can run the 
cyclus executable from the install/bin directory thus :

./cyclus input.xml

If the input file is in another directory, just give it the path:

./cyclus ~/cyclus/transition/input/example.xml

If you want to run cyclus from a different directory, you can do that too:

~/cyclus/install/bin/cyclus ~/cyclus/transition/input/example.xml



Analysis
--------
After you run cyclus, a cyclus.sqlite file will appear in the directory where 
you ran cyclus.

To analyze that file, there is a set of postprocessing scripts called [cyan](www.github.com/rwcarlsen/cyan). If 
you have followed the installation instructions above or if you are working in 
the virtual machine, those scripts will be located in the postprocessing 
directory.

See the Cyan documentation as well as the README in that directory for help 
with Cyan.

Updating
--------

Since this is a work in progress, note that the code will change over time. You 
want to have the most up to date code, so I have included an update script for 
this purpose. When you want to update the repositories and reinstall cyclus, 
run update.sh. Please make sure the $TOP_DIR path is correct for your setup. If 
you have followed the instructions above exactly, or if you are on the virtual 
machine, it will be. 

If you do run this update script, it may be worth just reading over the output. 
Were there any fatal errors? If so, please email me the output and we'll make 
sure to get you on track.

