sudo apt-get update
sudo apt-get install -y cmake make libboost-all-dev libxml2-dev libxml++2.6-dev libsqlite3-dev libhdf5-serial-dev libbz2-dev coinor-libcbc-dev coinor-libcoinutils-dev coinor-libosi-dev coinor-libclp-dev coinor-libcgl-dev libblas-dev liblapack-dev g++ doxygen
cd ~
mkdir cyclus
cd cyclus
mkdir install
sudo apt-get install git
git clone https://github.com/cyclus/cyclus.git
git clone https://github.com/cyclus/cycamore.git
git clone https://github.com/katyhuff/sepmatrix.git
git clone https://github.com/katyhuff/commodconverter.git
git clone https://github.com/katyhuff/decomminst.git
git clone https://github.com/katyhuff/streamblender.git
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
install/bin/cyclus_unit_tests 
install/bin/cycamore_unit_tests 
install/bin/sepmatrix_unit_tests 
install/bin/commodconverter_unit_tests 
install/bin/decomminst_unit_tests 
install/bin/streamblender_unit_tests 
cd ~
mkdir postprocessing
mkdir postprocessing/bin
go get github.com/rwcarlsen/cyan ...

