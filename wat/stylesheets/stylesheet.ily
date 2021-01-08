\version "2.20.0"
\language "english"

#(set-default-paper-size "11x17landscape")

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
  \accidentalStyle neo-modern
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/40)
  }
}

\paper {
}
