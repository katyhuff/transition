# Instructions for Installing and Using the Virtual Machine

This strategy will work on all platforms (including windows).

## Get Virtual Box

You may already have virtual box. If so, open it. 

If not, download it: https://www.virtualbox.org/ .

## Get the Virtual Machine Image

You may already have an older version of the cyclus virtual machine. However,
you should get this new image if you want to run the code-to-code comparison. 
This environment includes installed code from additional repositories. 

The virtual machine file can be downloaded here:
http://cnergdata.engr.wisc.edu/cyclus/virtual-box/current/cyclus_user_environment.ova
.

It's very large (2.5 gigs). But, once it's downloaded, you should be able to
just open it up with ether Virtual Box or the VMWare manager, log in as
cyclus-user (password: cyclus) and have a fully installed cyclus in the
terminal. 

You may notice that VirtualBox has a tiny screen. If this is the case, you 
should "Install Guest Additions." This is optional, but awesome. 

- Click on Devices->Insert Guest Additions CD Image
- Enter the password for the machine at the prompt (cyclus)
- The terminal will open and run the script. Press Enter if it asks you to.
- Restart the Guest OS (the virtual machine, not your Windows/whatever computer)



## What is this?

It's a fully featured ubuntu linux virtual machine that you can run using
VirtualBox or VMWare. In VirtualBox, you'll open it from File->Import
Appliance.

- I have created it specifically for the use of cyclus. 
- All of the cyclus dependencies have been installed (CMake, hdf5, sqlite, xml, etc.)
- The cyclus and cycamore code repositories have been checked out (using git)
- Additionally, the Streamblender, Commodconverter, SeparationsMatrix, and DecommInst have also been checked out (using git)
- Then, these were all built and installed. (They are installed at ~/cyclus/install. )
- Finally, they were tested. You can try this yourself by executing the following on the command line "~/install/cyclus/bin/cyclus_unit_tests". That will run the cyclus unit tests. They should pass. Then, you can run the cycamore tests "~/install/cyclus/bin/cycamore_unit_tests", etc.

## How was it done? 

You can see all the commands it took to create this virtual macine in the text file on the desktop.


## How do I use it?


Now, you can browse the code and run some of the example input files that are
in the source code (the source is in ~/cyclus/cyclus ,  ~/cyclus/cycamore , 
etc.) . 


The main example file for the code-to-code comparison is at 
~/cyclus/decomm_inst/input/example.xml .

To run that input file, at the terminal, type : 


~/cyclus/install/cyclus ~/input.xml

## How do I update it?

People may update the various codebases over the course of the time that you 
use this machine. To update the code, first, save a snapshot of your virtual 
machine, in case something goes wrong. Additionally, consider committing and 
pushing any changes you've made locally to the various repositories. 

Now, try the update script that sits on the desktop. 

If anything goes wrong while using that script, please alert Katy immediately. 
She'll help you to debug it. 
