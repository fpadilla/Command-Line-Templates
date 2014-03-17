#!/bin/bash

# License

usage()
{
cat << EOF
usage: $0 options

Description of this command, try execute witout arguments

OPTIONS:
   -a           This is a flag argument
   -b VALUE     This option needs a value
EOF
}

A=0
B=""

# Execute getopt -o short options -l long options, : need an value
ARGS=`getopt -o "ab:" -l "ay,bee:" \
      -n "getopt.sh" -- "$@"`

# uncoment for BSD, OSX
#ARGS=`getopt ab:  "$@"`

# No arguments
if [ $? -ne 0 ]; then
  usage
  exit 1
fi

# A little magic
eval set -- "$ARGS"

# Now go through all the options
while true; do
  case "$1" in
    -a|--ay)
      echo "used -a or --ay";
      A=1;
      shift;;
    -b|--bee)
      # We need to take the option argument
      if [ -n "$2" ]; then
        B="$2";
        echo "used $1 with value $2";
        shift;
      fi
      shift;
      ;;
    \?)
        echo "Invalid option $1"
        exit 1;
        ;;
    --)
      shift;
      break;;
  esac
done

# validate arguments
if [[ -z $A ]] || [[ -z $B ]]
then
#     usage
     exit 1
fi

# positional arguments 
echo $@