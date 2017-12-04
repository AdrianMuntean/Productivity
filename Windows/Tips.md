# SWITCHING BETWEEN INSTANCES OF THE SAME APP

I worked for a while in Ubuntu and the Linux-based OS had a cool feature that I used a lot: The key combination <code>Alt</code> + <code>`</code> changes betweeen two open apps of the same type. For example, if I have two open instance of an IDE , then I want to go through them only. If I use <code>Alt</code> + <code>Tab</code> this would iterate through all of my open apps. When I moved to Windows this feature was missing. 

One workaround for this would be to use <code>WinButton</code> + <code>n</code> (where <code>n</code> represents the index of the app in the taskbar)
###### Solution
 - Use third party apps for this. I found [EasySwitch](https://neosmart.net/EasySwitch/) which does this exact thing. It works as expected.

# ADD STARTUP APPS

 It's really useful to have some apps to start when the PC is started. This way you can have a complete setup with the Windows start.
For this, you need to add the shortcut of the wanted app to one specific path. 

For this, open the _Run_ app (by pressing <code>WinButton</code> + <code>R</code>) and type **_shell:startup_** . This will open the explorer in some specific path (something like *C:\Users\username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup*). More details [here](https://support.microsoft.com/en-us/help/4026268/windows-change-startup-apps-in-windows-10).
