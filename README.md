# junctions
Created this programme thing to make the junctioning process faster for me.

The .bat takes one argument: the directory being junctioned.
If a directory is supplied, then it will ask for the target root folder of the new junction.
If a directory with the same name already exists in the target root folder, then it will be replaced.
This will continue until either the command prompt is closed or the ENTER button is pressed without an input.

A shortcut can be created for this .bat file with the target:
      
    C:\Windows\System32\cmd.exe /c start /b <PATH_TO_BAT_FILE> 2>&1
