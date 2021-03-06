# BrandNewSubway
A recreation of the online game Brand New Subway http://jpw.nyc/subway/

Features:
Click on a line button in the menu to select a station, click it again to unselect.
Connect stations by clicking the "Connect Stations" button and selected two stations.
Click on an existing station while having selected a line that's not at said station yet in order to add the current line to that station.
All the other basic features are implemented the same (or very similarly) as in the actual game (linked above).

Enjoy!

## Dev log

#### 20.05
- Julian: Began framework for the classes and wrote the basic methods. Also setup and draw.
- Maisha: Added some default buttons in the menu class. Only displays. Changed circles to ellipses.

#### 21.05
- Julian: Started writing the station and menu classes. Also started writing stuff in mouseClicked.
- Maisha: Minor aesthetic fixes, continued working on static button display for the menu.

#### 22.05 
- We both spent the entire period trying to fix merge conflicts. We needed Mr. K's help because we were getting lots of error messages.

#### 23.05 
- Julian: Started writing mouse commands and processing clicks. 
- Maisha: Finished working on displaying the buttons on the menu. Added a new constructor to the Menu class which takes an ArrayList of Lines. 

#### 24.05
- Julian: Restructured code that displays menu buttons, to make sure it works regardless of where the program is in the game. Eliminates redundancies in code.
- Maisha: Started writing code for mouseclicked. Needs to be tested. 

#### 26.05
- Julian: Tried troubleshooting the button displays because that wasn't working.
- Maisha: Tested to see if clicking on a button is stored as a variable. Tried to figure out other button functionality on paper. 

#### 27.05
- Julian: Restructured menu and button display code so that it only gets displayed if buttons was updated.
- Maisha: Worked on writing the display for when a station is clicked on. 

#### 28.05 
- Julian: Wrote some more mouseclicked code.
- Maisha: Wrote code to draw a line between stations and figured our how to place a station on the map.  

#### 29.05
- We worked on technical difficulties.

#### 30.05
- Julian: Fixed bugs involving wrong station placement (when user clicks on existing stn), station display bugs.
- Maisha: Made the size of the stations smaller and changed its colors.

#### 31.05
- Julian: Made sure station display disappeared when user does another action.
- Maisha: Fixed small bugs in the display. 

#### 01.06
- Julian: Took the SAT and had some family stuff (couldn't code really)
- Maisha: Wrote code that lets you edit the station name, which mostly works but sometimes it registers one letter twice. 

#### 02.06
- Julian: Made sure station only gets deleted when delete button is clicked on, enabled button untoggling. (forgot to commit last night)
- Maisha: Wrote code that lets the station display what borough a station is in. I also started working on how to delete a station. 

#### 03.06
- Julian: Changed display for toggled buttons and restructured placeStation() so that infill stations are placed appropriately in relation to the other stations on the line (work in progress).
-Maisha: Had to go to the hospital so I couldn't really work, but I did work on fixing our UML Diagram. 

#### 04.06 
- Julian: Fixed infill station placement, other formatting changes.
- Maisha: Worked on drawing transfers between stations. 
