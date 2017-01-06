# Pre-work - Tippy

Tippy is a tip calculator application for iOS.

Submitted by: Vivian Pham

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [y] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

* Added an image view to allow for a background with an image in the folder (added a second image for background but didn't have time to implement it; will do so later')
* Added a settings view controller to configure the default tip and have the new value reflected in the view controller
* Accessed UserDefaults to save data
* Did make bill amount the first responder but didn't have time to make keyboard always visible'
* Will be adding animations and other optional features when I have more time

## Video Walkthrough 

Here's a video walkthrough:

<img src='http://i.imgur.com/ZAWLP42.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

Initially had some trouble implementing the Settings View Controller because whenever I was always getting a compiler error that listed exit code 1 as the problem. I managed to figure out it was because I had accidentally made duplicate SettingsViewControllers that were conflicting with each other (though only after a long time googling it and staring at my code for a long time). 

Something also seemed wrong with the keypad, but I'm not sure what. Often, when I built the code and checked the simulation, the decimal keypad will appear when you click on the Bill Field as it's supposed to. There are a few times where it won't pop up though and I can't figure out why.

I didn't have trouble with much else though I didn't have the time to continue developping this calculator as I would've liked. I will know later as I continue to improve upon it, whether or not I get in the course.

## License

Copyright 2017 Vivian Pham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
