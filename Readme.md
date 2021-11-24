# PennySwift

The simplest version of Penny built on Swift.
Models the Penny application shown in COS333 lecture.

## Demo
![](https://i.imgur.com/uRzRKlo.gif)

## Important Files
### PennyViewController
All of the logic on the main screen lives here.

**Properties**
There are "outlets" to Main, which essentially
connect UI components like text fields and labels
to code.
The outlets include:
- authorTextField: the text field users edit to search 
  for an author
- resultsLabel: the label that displays the results of
  the search

**viewDidLoad()** is the first function that is called when
the view controller (the "screen") is loaded (like "main").
Not much code is here for Penny, but typically, code for
styling and other setup goes here.

**textDidChange** is a function that is connected with the
"Editing Changed" action on authorTextField. This means that
every time we edit the texxt in authorTextField, the function
is called. Here we
- get the text inside of authorTextField and URL-encode it
- make a HTTP request for the specified author
- set the text in resultsLabel to the results of the HTTP request

### Main
The user interface is built here. Can be viewed as Storyboard
or as a XML file. Note that much of the code is auto-generated
in the XML file.
Key parts of XML file are under subviews
- "PennySwift" label
- "Enter an author" textField
    - there is a connection with the action being textDidChange
- "The results go here" label

## Notes
The server is identical to the PennyAndroidServer.
I used pennyandroidserver.herokuapp.com
