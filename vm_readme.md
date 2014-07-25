
Virtual Machine Instructions
============================

This strategy will work on all platforms (including windows).

Get Virtual Box
==================

You may already have virtual box. If so, open it. 

If not, [download it](https://www.virtualbox.org/).

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

Import the VM into Virtual Box
===============================

To import the virtual machine image into virtual box, navigate to File->Import
Appliance. From there, select the .ova file that you have downloaded and follow 
the instructions.

You may notice that VirtualBox has a tiny screen. If this is the case, you 
should "Install Guest Additions." This is optional, but awesome. To do this: 

- Click on Devices->Insert Guest Additions CD Image
- Enter the password for the machine at the prompt (cyclus)
- The terminal will open and run the script. Press Enter if it asks you to.
- Restart the Guest OS (the virtual machine, not your Windows/whatever computer)
- You can now enlarge the screen.


What is this?
=============

- I have created it specifically for the use of cyclus. 
- All of the cyclus dependencies have been installed (CMake, hdf5, sqlite, xml, etc.)
- The cyclus and cycamore code repositories have been checked out (using git)
- Additionally, the Streamblender, Commodconverter, SeparationsMatrix, and DecommInst have also been checked out (using git)
- Then, these were all built and installed. (They are installed at ~/cyclus/install. )
- Finally, they were tested. You can try this yourself by executing the following on the command line "~/install/cyclus/bin/cyclus_unit_tests". That will run the cyclus unit tests. They should pass. Then, you can run the cycamore tests "~/install/cyclus/bin/cycamore_unit_tests", etc.

How was it done? 
================

You can see all the commands it took to create this virtual macine in the 
[commands.md]() file in this repository.


How do I use it?
================


Go back to the [main 
instructions](https://github.com/katyhuff/transition/blob/master/README.md) to 
find out.
