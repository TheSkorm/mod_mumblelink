ReadMe for mod_MumbleLink v2.0
by zsawyer, 2011-03-25



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
     (Configure -> Settings -> Tick "Advanced" -> "Plugins" 
        -> Tick "Link to Game and Transmit Position")


        
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
--- .minecraft/bin/natives/mumbleLink/mod_MumbleLink.dll
--- .minecraft/bin/natives/mumbleLink/mod_MumbleLink_x64.dll
--- .minecraft/bin/natives/mumbleLink/libmod_MumbleLink.so
--- .minecraft/bin/natives/mumbleLink/libmod_MumbleLink_x64.so
-- placing the Libs from "bin/natives/mumbleLink" into the execution directory 
    of your Minecraft executable will work as well



Troubleshooting:

- Please check the ModLoader.txt in your .minecraft-folder for an error message.
-- messages from this mod will be indicated by "[mod_MumbleLink]" infront 
    of the message

- Errors will occur as Minecraft stalling on a Black Screen after login 
    followed by crashing/disappearing
-- This either indicates installation errors where libraries were placed into 
    a wrong location 
-- or incompatibility to your operating system 
-- check ModLoader.txt for details



FAQ:

- Mumble does not Link:
    - in "ModLoader.txt" search for: 
        "Mod Loaded: "mod_MumbleLink 1.2" from mod_MumbleLink.class" 
        - If this is missing the .class was either not copied to the 
            minecraft.jar or your do not have ModLoader installed. 

- the ModLoader.txt sais something about "ODSHook"-something 
    - Your version of ModLoader is not compatible with this mod. You will need 
    to upgrade to ModLoaderV5 for this mod to work (After upgrading to 
    ModLoaderV5 your other mods will most-likely not work anymore and need to 
    be updated as well). 

- the ModLoader.txt sais:
    "SEVERE: [mod_MumbleLink][ERROR] Library files not found!"    
        Libraries were not found in the expected locations. 
        these should be at: 
            - .minecraft/bin/natives/mumbleLink/mod_MumbleLink.dll
            - .minecraft/bin/natives/mumbleLink/mod_MumbleLink_x64.dll
            - .minecraft/bin/natives/mumbleLink/libmod_MumbleLink.so
            - .minecraft/bin/natives/mumbleLink/libmod_MumbleLink_x64.so
            
    "SEVERE: [mod_MumbleLink][ERROR] Required library could not be loaded, 
                                     available libraries are incompatible!"
        None of the found libraries can be loaded on your system. Your operating
        system is not supported by this mod. Sorry. 
            Please try to compile the required libraries yourself or submit a 
            request. 

- Mumble sais "Minecraft linked" but I still don't hear people positionally. 
    Multiple possibilities: 
        1. Mumble is not setup correctly: 
            Make sure "Link to Game and Transmit Position" is checked 
                (Configure -> Settings -> Tick "Advanced" -> "Plugins" 
                    -> Tick "Link to Game and Transmit Position")
                    
        2. The others are using an older version of this mod
            mod_MumbleLink v1.0 and 1.1 will not link to 1.2 or above. 
            (This is due to an error in the data conversion algorithm that was 
                used in v1.0 and v1.1)
                
            
- Minecraft has no sound/it is really low now
    this is probably due to Mumble itself, it will lower other applications' 
    volumes on default
    In Mumble advanced settings, within "Audio Output" untick both: 
        "Attenuate applications by..." "while other users talk" 
        and "while you talk"



Tested Platforms:
- Windows XP 64-bit SP2
- Windows 7 Home Premium 64-bit 
- Ubuntu 10.10 32-bit



Known Issues:

- Does (probably) not work under MacOSX (due to missing libraries) 
- Does not work with PRMumble(0.5Beta) even after copying the link.dll (1.2.0) 
    into PRMumble's plugin folder - it will say "linked" but the audio 
    will not be positional
    
    
    
Change Log:

v2.0
- fixed internal data corruption
- added support for Ubuntu 10.10 32-bit (and possibly other distros)

v1.1
- added 64-Bit Java support (new x64-bit DLL)
- optimized DLLs
    - now there is no need for the msvcr100.dll -> removed    
- sources ready for release

v1.0 
- initial release (no sources)

    
  

    
Acknowledgements:

Mumble Project  : Thanks for Mumble!
Mojang          : Thanks for Minecraft!
Risugami        : Thanks for ModLoader!

SilentWalker    : Thanks for testing on XP64, Ubuntu32 and other invaluable support.
talkingBEERmug  : Thanks for testing and decompiling the 128-bit encryption
Steeve          : Thanks for providing the Mumble-Server we tested on
xDownSetx       : Thanks for helping with testing
dalawrence      : Thanks for providing the source code of a similar project 
                    (http://www.minecraftforum.net/viewtopic.php?f=1&t=41506) 
                    which helped in optimizing the DLLs and compiling for 
                    multiple platforms
