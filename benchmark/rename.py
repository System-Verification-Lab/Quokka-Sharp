import os

filenames = next(os.walk(os.getcwd()), (None, None, []))[2]  # [] if no file
for filename in filenames:
    newfilename = filename + ".qasm"
    os.rename(filename, newfilename)
