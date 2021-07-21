# Zoom Push to Talk
Do you not like how Zoom's push to talk feature works?
This Autoit script lets you push to talk like how it would work on Discord.

While your hotkey is pressed down, your Zoom would un-mute until the hotkey is no longer pressed.

Zoom only lets you do this with the Space bar button and I don't like using my Space bar that way.

**Make sure you don't use Scroll Lock for anything else since the script executes the Scroll Lock key with the hotkey that you set.**

## Dependencies
* [Autoit](https://www.autoitscript.com/site/autoit/downloads/)

## Instructions
1. Go to Zoom - Settings - Keyboard Shortcuts
2. Set the `Mute/Unmute My Audio` key as `Scroll Lock`.
3. Check `Enable Global Shortcut` for `Mute/Unmute My Audio`.
4. Install Autoit.
5. _\*Optional*_ Place your push to talk on & off audio file as `on.mp3` and `off.mp3` in the `rsc` folder.
6. Set your desired hotkey in the `script.au3` file by modifying the `$hotkey` variable.
   * The script includes a link where you can find the hexcodes you can use for your hotkey. (Default hotkey is ` Backtick.)
7. Execute the `script.au3`
8. Use your hotkey in your Zoom meetings :)

## Who to contact
D_Pain: dpainhahn@gmail.com