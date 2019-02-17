# SmartMouse

Say you have multiple monitors/displays/screens, and you use keyboard shortcut a lot. You arrange apps using something like [Spectacle](https://github.com/eczarny/spectacle) and you switch between apps using shortcut like `cmd + tab`. Then *you may want to have you mouse cursor follow your app switching, especially between different displays*, because:

1. Some apps simply cannot be fully controlled using keyboard, so you have to fall back to trackpad or mouse occasionally.
2. Your screens are huge!!! You don't want to move you mouse cursor little by little across several displays.

And you want it *automatically*!! Then [CatchMouse](https://github.com/round/CatchMouse) is not enough.

I looked around and found no existing good solutions, which is kinda surprising. This simple feature should have been proposed by someone a long time ago!


So I created my own solution using applescript. *When I switch between two windows in different displays, my mouse follows automatically, to the center of the new window.*

* It's not a universal solution; you have to adjust the code to your situation, especially the coordinates.

* Install [cliclick](https://github.com/BlueM/cliclick) for moving mouse cursor.

* Save your applescript as *Stay Open* application.

* Give the application *assitive access*, in the System Preference.


