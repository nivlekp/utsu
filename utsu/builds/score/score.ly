\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score { %! abjad.LilyPondFile._get_formatted_blocks()
    {
        \include "_segments/a.ly"
        \include "_segments/b.ly"
        \include "_segments/c.ly"
        \include "_segments/d.ly"
        \include "_segments/e.ly"
        \bar "|."
    }
    \layout { }
    \midi { }
} %! abjad.LilyPondFile._get_formatted_blocks()
