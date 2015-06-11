#! /bin/bash

TARGETDIR=$1
BR_ROOT=$PWD
CUST_SCRIPT=$BR_ROOT/postimgscripts
CUST_FILES=$CUST_SCRIPT/customfiles
OUTPUT=$BR_ROOT/output/target

# copy profile
echo $CUST_FILES
cp $CUST_FILES/profile $OUTPUT/etc/

# copy bash.bashrc
echo "Copying bash.bashrc"
cp $CUST_FILES/bash.bashrc $OUTPUT/etc/

# copy .bashrc
echo "Copying .bashrc"
cp $CUST_FILES/.bashrc $OUTPUT/root/
