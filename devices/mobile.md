---

# Mobile device setup

Model: Pixel 4a  
OS: GrapheneOS  

+ No Google Apps  
+ No Play Services    

## Apps

- [Aegis](https://getaegis.app/)  
  TOTP/2FA app.
- [AntennaPod](https://antennapod.org/)  
  Podcast app. Though, I don't listen to many podcasts anymore.
- [BinaryEye](https://github.com/markusfisch/BinaryEye)  
  For the off-chance I need to scan a barcode.
- [Bromite](https://www.bromite.org/)  
  Anti-fingerprinting, secure, web-browser.
- [Etar](https://github.com/Etar-Group/Etar-Calendar)  
  Basic calendar for event making.
- [Feeder](https://gitlab.com/spacecowboy/Feeder)  
  RSS feed reader. It works, has some great features, but I think it's UI could use a refresh.
- [Foxy Droid](https://github.com/kitsunyan/foxy-droid)  
  Alternative F-droid client. Small, fast, simple non-bloated.
- [Fritter](https://github.com/jonjomckay/fritter)  
  For Twitter browsing.
- [Simple Tools](https://www.simplemobiletools.com/gallery/)  
  Miles better than the stock gallery app.
- [Glider](https://github.com/Mosc/Glider)  
  HN client.
- **Music**   
  Music app based on Phonograph. Currently I'm testing out a different music app, Metro, but it looks like it's development has completely ceased, or at least become stale at this point.
- [neutriNote](https://github.com/appml/neutrinote)  
  I use this app for note taking. It features Markdown formatting plus LaTeX functionality.
- [NewPipe](https://github.com/TeamNewPipe/NewPipe)  
  For watching YouTube ad-free.
- [Productivity](https://github.com/adrcotfas/Goodtime)
  Formerly "Goodtime". A minimalist, easy to use Pomodoro timer app.  
- [Shelter](https://github.com/PeterCxy/Shelter/)  
  Work profile app isolation (more on this later).
- [Signal](https://www.signal.org/)  
  I use Signal as my main messenger.
- [SMS Messenger](https://f-droid.org/en/packages/com.simplemobiletools.smsmessenger/)  
  From "Simple Mobile Tools". For when I need to send an SMS (Why not use Signal as my SMS app? I like the compartmentalisation of using the different apps to comminicate different ways. I hate the idea of conflating two different platforms).
- [Termux](https://github.com/termux/termux-app)  
  Terminal emulator I use for compiling, testing and scripting on the go.
- [Geometric Weather](https://f-droid.org/en/packages/wangdaye.com.geometricweather/)  
  Weather app. I mainly have it installed it just for the nice widget.

## Work profile

I use _Shelter_ to "isolate" my other apps somewhat. Shelter creates a "Work Profile". Work profiles are a built-in Android feature that allow you to have a separate profile for work-related apps. This is usually managed by your work organisation but Shelter makes one and "manages" it for you. The work profile can be turned off - disabling all the work profile apps with it.  
The benefit of a work profile is that it is more accessible than traditional Android user accounts. However, to my knowledge it coexists on the Owner profile - so the encryption keys for the data are the same. This is where a separate user account would come in handy - the seperate user account's data is encrypted with a different key.

Work profile apps:

- Aurora Store  
  For downloading apps from the Play Store without Play Services.
- Bromite  
  Browser (used mostly for Uni-related work).
- MS Teams  
  For Uni classes that have a MS Teams rooom
- $GENERIC\_ROSTER\_APP  
  For checking my $WORK roster.
- $EMAIL\_APP  
  For emails emails.

## COVID-19

With the rise of the Coronavirus it's become essential to "check-in" to places. I have put this off for so long, but with an increase in cases of the Delta variant in my neighbourhood I think it's wise for me to be checking into places if I do ever leave the house.  
In my opinion, check-in _apps_ should not be a requirement to check in somewhere. Please, just let me check-in online, via a webpage (remember those?). I don't want to install some crappy software written by a technologically-inept and privacy ignorant government on my phone.

So, I install my check-in app in a dedicated user profile. No other apps are installed to this profile. When I need to check-in somewhere:

1. Switch to the "COVID19" user account from the phone lockscreen
2. Open the check-in app
3. Grant temporary camera access to the app
4. Scan the barcode
5. Switch back to Owner profile

When the profile is closed all the apps within it are stopped. This ensures the app isn't running in the background. 
