# Laptop setup

Model: Lenovo X1 Carbon (5th generation)  
OS: Dualboot Windows/OpenBSD

## Windows

I'm using Windows mostly for when I need to use something like MS Office for a Uni class.  
It's multimedia performance is also better than OpenBSD's, so I use it for video calls and voice chats, as well as watching videos (though, 9/10 when I watch something it is on my smartphone).

Notable programs+applications:

- Windows Terminal + WSL2  
  Where most of my development and writing goes on.
- Firefox ESR  
  Main browser. I use Sideberry, and Multi-Account Containers. Also can't forget uBlock Origin.
- Firefox Nightly  
  For testing, and when I'm curious about the upcoming FF features.
- Chrome Dev  
  Testing stuff, using websites that don't work in Firefox.
- Android Studio  
  For the random Android development I sometimes attempt.
- Mark Text  
  Best open source Markdown editor for Windows in my opinion.
- WinSCP  
  My preferred (S)FTP and file transfer client.
- Windows PowerTools  
  Tools for power users. Enough said.

I make frequent use of Windows Sandbox. I sandbox applications that I'd rather not be running. For instance, Zoom, and Discord. Windows Sandbox allows audio+microphone passthrough, and it works great. I have had mixed results with video/webcam passthrough though. It seems to have stopped working recently.

## OpenBSD

I was drawn to OpenBSD because of it's good track record for security. However, I do think that is oversold.
OpenBSD's approach to security is well.. different to any other OS.  
What I'm getting at is that I am aware OpenBSD has security shortcomings, and that their approach to security can be considered odd at times. I use OpenBSD more for the excellent documentation, the simple, readable code, than for the security features.

I use Full-disk encryption via bioctl(8). Supposedly similar to Linux's DM-Crypt with LUKS, which is nice.

Notable programs+applications:

- cwm  
  Floating Window manager.
- uRXVT  
  Main terminal emulator. I almost prefer xterm but something drew me to urxvt (I don't recall what).
- Firefox ESR  
  Main browser. Sideberry, Multi-Account containers, etc. Also I make use of different Firefox profiles for different stuff - far easier to script and integrate with on a Unix-like OS than Windows IMO.
- Chromium  
  For testing. I also use it with `--app=` all the time.
