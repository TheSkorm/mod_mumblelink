ReadMe for mod_MumbleLink v1.1a (alpha)
by zsawyer, 2011-03-22



About:

This is a minecraft mod based on ModLoaderV5. It's purpose is to be able to use 
Minecraft in conjunction with Mumble's positional audio feature. 
(http://mumble.sourceforge.net/)
It uses the Mumble Link Plugin v1.2.0 and adds native mumble support. 
Tested with Mumble 1.2.2 and 1.2.3 .



Prerequisites:

- Minecraft 1.3 (beta)
- ModLoaderV5 installed (http://www.minecraftforum.net/viewtopic.php?t=80246)
- Mumble + advanced option "Link to Game and Transmit Position" activated 



Installing the Mod:

1. copy "bin" folder and its contents into your .minecraft-folder 
    - Windows: %Appdata%\.minecraft
    - Linux: ~/.minecraft/
2. insert "mod_MumbleLink.class" into your minecraft.jar 
    (using 7zip [http://www.7-zip.org], WinRar or similar)



Notes: 

- suggested Mumble settings (differing from defaults): 
-- advanced option "Link to Game and Transmit Position" activated 
    (restart after setting this option)
-- Maximum Distance: 60m 
-- Minimum Volume: 0%
-- untick "Attenuate applications by..." "while other users talk" and "while you talk"

- link delay: 10 seconds - normal link delay appears to be about 10 seconds after 
    joining a minecraft server. This may vary depending on the PC. 

- starting order: it appears that starting Mumble before Minecraft yields the 
    most stable results
    
- Library locations:
-- Libs should be located in 
--- C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\mod_MumbleLink.dll
--- C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\mod_MumbleLink_x64.dll
--- C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\libmod_MumbleLink.so
-- placing the Libs from "bin/natives/mumbleLink" into the execution directory 
    of your Minecraft executable will work as well



Troubleshooting:

- Please check the ModLoader.txt in your .minecraft-folder for an error message.
-- Error messages from this mod will be indicated by "[mod_MumbleLink]" infront 
    of the message

- Errors will occur as Minecraft stalling on a Black Screen after login 
    followed by crashing/disappearing
-- This usually indicates installation errors, check ModLoader.txt for details



FAQ:

- Mumble does not Link:
    - in "ModLoader.txt" search for: 
        "Mod Loaded: "mod_MumbleLink 1.0" from mod_MumbleLink.class" 
        - If this is missing the .class was either not copied to the 
            minecraft.jar or your do not have ModLoader installed. 

- the ModLoader.txt sais something about "ODSHook"-something 
    - Your version of ModLoader is not compatible with this mod. You will need 
    to upgrade to ModloaderV5 for this mod to work (After upgrading to 
    ModLoaderV5 your other mods will most-likely not work anymore and need to 
    be updated as well). 

- the ModLoader.txt sais:
    "SEVERE: [mod_MumbleLink] could not load required libraries!"
    followed by 
    "java.lang.UnsatisfiedLinkError: no mod_MumbleLink_x64 in java.library.path"
    
    Libraries could not be loaded. This usually is because the DLLs are not in 
        the correct locations. Double check that the 3 Files are in the 
        correct location:        
        - C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\mod_MumbleLink.dll
        - C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\mod_MumbleLink_x64.dll
        - C:\Users\<username>\AppData\Roaming\.minecraft\bin\natives\mumbleLink\msvcr100.dll

    Note: Even if you are running 32-bit java it will always attempt to load 
          the x64-bit DLL last, as a fallback when it could not load the 
          32-bit version
    
- Minecraft has no sound/it is really low now
    this is probably due to Mumble itself, it will lower other applications' 
    volumes on default
    In Mumble advanced settings, within "Audio Output" untick both: 
        "Attenuate applications by..." "while other users talk" 
        and "while you talk"

        
        
Known Issues:

- Does (probably) not work under MacOSX (due to missing libraries) 
- Does not work with PRMumble(0.5Beta) even after copying the link.dll (1.2.0) 
    into PRMumble's plugin folder - it will say "linked" but the audio 
    will not be positional


    
Change Log:

v1.1a (alpha)
- added support for Linux 32-bit

v1.1
- added 64-Bit Java support (new x64-bit DLL)
- optimized DLLs
    - now there is no need for the msvcr100.dll -> removed    
- sources ready for release

v1.0 
- initial release (no sources)

    
    
Alpha Notes:

- has not been tested on Linux please provide feedback


    
Acknowledgements:

Risugami        : Thanks for providing ModLoader!
talkingBEERmug  : Thanks for testing and decompiling the 128-bit encryption
Steeve          : Thanks for providing the Mumble-Server we tested on
xDownSetx       : Thanks for helping with testing
dalawrence      : Thanks for providing the source code of a similar project 
                    (http://www.minecraftforum.net/viewtopic.php?f=1&t=41506) 
                    which helped in optimizing the DLLs and compiling for 
                    multiple platforms
