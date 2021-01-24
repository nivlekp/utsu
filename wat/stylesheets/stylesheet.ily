\version "2.20.0"
\language "english"

%#(set-default-paper-size "11x17landscape")
#(set-default-paper-size "a4landscape")
%#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\header {
  composer = \markup {
    \override #'(font-name . "CMU Serif")
    \fontsize #3 "Tsz Kiu Pang"
  }
  tagline = ##f
  title = "Wat"
  instrument = "For solo piano"
}

\layout {
  indent = 0\cm
  ragged-last = ##t
  ragged-right = ##t
  \accidentalStyle neo-modern
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1 30)
  }
}

\paper {
  system-sytem-spacing.basic-distance = #8
  score-system-spacing =
    #'((basic-distance . 100)
       (minimum-distance . 100)
       (padding . 100)
       (stretchability . 100))
}
