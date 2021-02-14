# Questions for Trevor

## Proportional duration
How to make the score layout truly proportional?
`stylesheets/stylesheet.ily`

X-extent #'(0 0)
extra-offset = #'(-1.25 . 0)

## Overriding stem/rest/tie/tuplet bracket direction
Is there a more elegant way to override them?
Currently overriding every container:
`segments/a/illustration.ly`
`tools/SegmentMaker.py`

## How to concat all the segments?
`tools/SegmentIllustrator.py`

## Cleaning up SegmentMaker?

## bash Cookbook
bash Cookbook

## materials directory is anti-pattern
put `_lib.py` in content directory
refactor contents in material to `_lib.py`
get rid of all the subpackage
ScoreTemplate into lib.py
`cloud.py` into `lib.py`
`noteserver.py` into `lib.py`
`sieves.py` into `lib.py`

## Get rid of the test directory
Only needs one `test_something.py` file

## Segments naming
a -> 01
b -> 02
turn segments directory back to vanilla directory (not package)

## Wrapper and contents

## Research if github.io gives a second page

## March 1st
## May 1st
## ...

## Follow the example docs in the main abjad repo
More on examples, less words


## Optimization
.optimization --> .timing

### Timing
Python
Abjad
Lilypond

Most recent run on the top of the log

implement probably in `definition.py`
or the pang repo


## Graceskip

## \oneVoice command
\voiceOne
\voiceTwo
lilypond manual
use lilypond literal in abjad

## Ottava
make it smarter (contour preserving)
or attach note name instead

## XeLaTeX
