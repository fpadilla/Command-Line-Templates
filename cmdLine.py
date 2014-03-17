#!/usr/bin/python

# license
import sys, argparse



if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    
    # add_argument small reference: 
    #
    # required=True
    # type=int|float|file|argparse.FileType('w')
    # choices=['rock', 'paper', 'scissors']
    # choices=xrange(5, 10)
    # nargs='+' number of arguments
    # complete reference at: http://docs.python.org/2/library/argparse.html
    parser.add_argument('-a', '--ay', help='flag option', dest='ay', action='store_true') 
    parser.add_argument('-b', '--bee', help='option with value', dest='beee' , default="")
    
    parser.add_argument('-v', '--version', action='version', version='%(prog)s 2.0')    
    parser.add_argument('arg', help='positional argument')

    args = parser.parse_args()
    # ... do something with args.verbose ..
    print args
    
