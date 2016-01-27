#!/usr/bin/env python
import random
import tkMessageBox as tkm
import os
import sys

if len(sys.argv) > 1:
    VID_DIR = sys.argv[1]
    if VID_DIR in ["-h", "--help", "help"]:
        print """Usage: {0} [path/to/videos]
              path default to ~/movies
              assumes vlc is in $PATH"""
else:
    VID_DIR = os.path.expanduser("~") + os.sep + "movies"


is_playable = lambda x: x[-3:].lower() in ["mkv","mp4","avi","flv"]
file_list = os.listdir(VID_DIR)
files = [ file for file in file_list if is_playable(file) ]

random.shuffle(files)

while 1:
    r = tkm.askyesnocancel("Movie Chooser", files[0])
    if r == None:
        sys.exit(0)
    elif r == True:
        try:
            os.execlp("vlc" ,"vlc", "{0}/{1}".format(VID_DIR, files[0]))
        except:
            pass
        sys.exit(0) # I dont know if this is needed but it works
    elif r == False:
        files = files[1:]

    if files == []:
        sys.exit(1)


