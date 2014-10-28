OOP1.3 Lab
====================

Overview
--------------------

The goal of this lab is to use the `delegate` pattern to implement a table showing all valid three letter Scrabble words, which you can find [here](http://www.scrabblefinder.com/3-letter-words/)

Goals
--------------------
Your code should provide the following features:

- A scrollable list of every letter of the alphabet.

Required Understanding
--------------------
UITableView, UITableViewDataSource, UITableViewCell.

Hints
--------------------
- You will need to read the documentation for `UITableView`, `UITableViewDataSource`, and `UITableViewCell`.
- You can store the alphabet in an `NSArray`.
- Your `ViewController` subclass should implement the `UITableViewDataSource` protocol.
- Remember to set the `delegate` property of your `UITableView`.
- You can use Interface Builder to create a `UITablView` instance. Remember to hook it up to an `IBOutlet`.

Bonus
--------------------
- Implement multiple sections in your `UITableView` that show the words in alphabetical groups (eg: A,B,C,D).

Submission
--------------------
Please create a [GitHub](https://github.com/) account and `push` your code to a repository named `OOP1` under a folder called `Lab3`. Send me the URL for this repository. (email: `zac@getdrop.com`) Please include your real name with the URL if it is not already displayed on [GitHub](https://github.com/).

