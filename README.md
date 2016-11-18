# _Word Count_

#### _Web application will count the number of times a target word appears in a phrase. 11.18.16_

#### By _**Jonathan Thom**_

## Description

_User inputs a target word and a phrase to search through. They can choose to recognize matches only on full words (e.g. "hello" is recognized once in "hello world") or parts of words (e.g. "hello" is recognized in "helloworld"). The program returns a count for the number of times the target word appeared._

## Setup/Installation Requirements

* _View here:
* _Works in any modern web browser._

## Specifications
1. User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word.
  * Input example:
    <b>Target word:</b> "peck"
    <b>String:</b> "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?"
    <b>Option:</b> "Full"
  * Output: 2

2. User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word OR part of a word.
  * Input example:
    <b>Target word:</b> "cat"
    <b>String:</b> "I'm taking my cat on a walk through the catacombs"
    <b>Option:</b> "Partial"
  * Output: 2

3. User can input a target word and a string in either upper or lowercase (or a mix) and and will be returned how many times the target word appears in the string as a full word or part of a word (depending on option chosen).
  * Input example:
    <b>Target word:</b> "CaT"
    <b>String:</b> "I'm taking my cAt on a walk through the cATAcombs"
    <b>Option:</b> "Partial"
  * Output: 2

4. User can input multiple sentences as their string and will be returned how many times the target word appears in the string.
  * Input example:
    <b>Target word:</b> "Dog"
    <b>String:</b> "I love my dog. Doggy Dog Dog."
    <b>Option:</b> "Full"
  * Output: 2

5. For partial option, user can input words that include the target word twice and be returned the correct number of matches.
  * Input example:
    <b>Target word:</b> "Hello"
    <b>String:</b> "helloworldhello"
    <b>Option:</b> "partial"
  * Output: 2

## Support and contact details

_Contact Jonathan at: jonathan.thom1990@gmail.com_

## Technologies Used

_Written in Ruby, with the help from HTML, CSS, and Sinatra_

### License

*MIT*

Copyright (c) 2016 **_Jonathan Thom_**
