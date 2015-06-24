#! /bin/bash

TARGETDIR=$1
BR_ROOT=$PWD
CUST_SCRIPT=$BR_ROOT/postimgscripts/BR_postbuild_scripts
CUST_FILES=$CUST_SCRIPT/customfiles
OUTPUT=$BR_ROOT/output/target

echo $CUST_FILES

# copy profile
echo "Copying /etc/profile"
cp $CUST_FILES/profile $OUTPUT/etc/

# copy bash.bashrc
#echo "Copying bash.bashrc"
#cp $CUST_FILES/bash.bashrc $OUTPUT/etc/

# copy .bashrc
#echo "Copying .bashrc"
#cp $CUST_FILES/.bashrc $OUTPUT/root/

# copy /etc/network/interfaces
echo "Copying /etc/network/interfaces"
cp $CUST_FILES/interfaces $OUTPUT/etc/network/
