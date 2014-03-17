#!/bin/bash

usage()
{
cat << EOF
usage: $0 options

Description of this command, try execute witout arguments

OPTIONS:
   -a           This is a flag option
   -b VALUE     This option needs a value
EOF
}

# Default values
A=0
B=""

# only short options a,b last one receive a value
while getopts "ab:" OPTION
do
  case $OPTION in
    a)  A=1;
        echo "a" ;
        ;;
    b)  B=$OPTARG ;
        echo "b $OPTARG";
        ;;
    # Unknown option. No need for an error, getopts informs
    # the user itself.
    \?) exit 1;;
  esac
done

# positional argument management 
shift $(( OPTIND - 1 ));

# positional arguments 
echo $@

# validation
if [[ -z $A ]] || [[ -z $B ]] 
then
     usage
     exit 1
fi