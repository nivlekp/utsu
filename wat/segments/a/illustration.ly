\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header {}

\score { %! abjad.LilyPondFile._get_formatted_blocks()
    \context Score = "Piano Score"
    <<
        \context StaffGroup = "Piano Staff Group"
        <<
            \context Staff = "RH Staff"
            {
                \context Voice = "Piano RH Voice"
                {
                    {
                        \tempo 4=60
                        \time 4/4
                        ef'4
                        ~
                        \times 8/11 {
                            ef'16
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                        }
                        r4
                        r4
                    }
                    {
                        r4
                        r4
                        r4
                        r4
                    }
                    {
                        \times 8/11 {
                            r32
                            af''4
                            ~
                            af''16
                            ~
                        }
                        af''2.
                        ~
                    }
                    {
                        af''4
                        ~
                        \times 4/7 {
                            af''8.
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                    }
                }
            }
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                }
            }
        >>
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()