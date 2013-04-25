## Qargs, the missing quickfix to arg solution.

`Qargs` will turn a quickfix list into a list of arguments, which you can then use
with `argdo` to perform several actions on the given files.

A good use of this would be using `Ack.vim` to find for a string you want to search
and then perform a multiple-file search and replace.

#### Example:

    :Ack! 'some-world'
    :Qargs | Argdo %s/some/hello/g


##### Based on: 

[Search & replace using quickfix list in Vim](http://stackoverflow.com/a/5686810/128850).

Follow me at [Twitter](http://twitter.com/mario_ricalde) or at [mario.ricalde.mx](http://mario.ricalde.mx).
