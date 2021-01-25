\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score { %! abjad.LilyPondFile._get_formatted_blocks()
    \context Score = "Piano Score"
    <<
        \context StaffGroup = "Piano Staff Group"
        <<
            \context Staff = "RH Staff"
            <<
                \context Voice = "Piano RH Voice1"
                {
                }
                \context Voice = "Piano RH Voice"
                {
                    {
                        \times 2/3 {
                            \tempo 4=60
                            \time 4/4
                            r16
                            ef''''4
                            r16
                        }
                        r4
                        r4
                        r4
                    }
                    {
                        r4
                        \times 2/3 {
                            r8
                            r8
                            r16
                            b'16
                            ~
                        }
                        b'4..
                        cs'16
                        ~
                    }
                    {
                        \times 4/5 {
                            cs'32
                            r32
                            r32
                            r32
                            c''''32
                            ~
                        }
                        c''''4.
                        ~
                        \times 2/3 {
                            c''''4
                            r8
                        }
                        \times 4/5 {
                            r32
                            bf'''8..
                            ef''16
                            ~
                        }
                    }
                    {
                        \times 2/3 {
                            ef''4
                            ~
                            ef''16
                            r16
                        }
                        \times 4/5 {
                            r32
                            a''4
                            ~
                            a''32
                            ~
                        }
                        a''4
                        ~
                        \times 4/7 {
                            a''16
                            ef''''8
                            r16
                            r16
                            r16
                            r16
                        }
                    }
                    {
                        r4
                        r4
                        r4
                        \times 2/3 {
                            r16
                            f''''16
                            r16
                        }
                        r8
                    }
                    {
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            r32
                            d''32
                            ~
                        }
                        \times 4/5 {
                            d''4
                            ~
                            d''32
                            r32
                        }
                        r4
                        \times 4/5 {
                            r16
                            r16
                            f''''8.
                            ~
                        }
                    }
                    {
                        f''''8
                        ~
                        \times 4/5 {
                            f''''16
                            r32
                            r32
                            ef''''32
                            ~
                        }
                        \times 4/7 {
                            ef''''4
                            r16
                            r16
                            r16
                        }
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            r32
                            b'32
                        }
                    }
                    {
                        r4
                        ef''4
                        ~
                        \times 4/5 {
                            ef''32
                            r32
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                    }
                    {
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                            c'16
                            ~
                        }
                        \times 4/5 {
                            c'16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 2/3 {
                            ef''''8
                            r8
                            r8
                        }
                    }
                    {
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            c'8.
                            ~
                        }
                        c'4
                        r4
                        r4
                    }
                    {
                        d''2
                        r4
                        r4
                    }
                    {
                        r4
                        \times 2/3 {
                            r8
                            r8
                            ef''''8
                            ~
                        }
                        \times 2/3 {
                            ef''''8
                            r8
                            r8
                        }
                        r4
                    }
                    {
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            bf'''8
                            ~
                        }
                        bf'''4.
                        \times 4/5 {
                            d'''32
                            r32
                            r32
                            r32
                            e''''32
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            e''''4
                            ~
                            e''''32
                            c'32
                            ~
                        }
                        c'4
                        ~
                        \times 4/7 {
                            c'16
                            bf'8.
                            ef''8.
                            ~
                        }
                        \times 4/5 {
                            ef''16
                            ef''4
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            ef''32
                            c'4
                            ~
                            c'32
                        }
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            e'16
                        }
                        \times 2/3 {
                            r8
                            fs'''4
                            ~
                        }
                        \times 2/3 {
                            fs'''8
                            r16
                        }
                        ef''8
                        ~
                    }
                    {
                        ef''4
                        ~
                        \times 4/5 {
                            ef''16
                            a''16.
                            c''''32
                            r16
                            r16
                        }
                        r4
                        \times 4/5 {
                            r32
                            ef''4
                            ~
                            ef''32
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            ef''32
                            r32
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        r8
                        \times 4/5 {
                            r32
                            r32
                            d''32
                            r32
                            r32
                        }
                        r4
                    }
                    {
                        r4
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            d''16
                            c''''16
                            r16
                        }
                        r4
                    }
                    {
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                            c'''16
                            ~
                        }
                        c'''8
                        ef''8
                        ~
                        \times 4/7 {
                            ef''4.
                            r16
                        }
                        r4
                    }
                    {
                        r4
                        r4
                        \times 4/7 {
                            r16
                            ef''''4.
                            ~
                        }
                        \times 4/5 {
                            ef''''32
                            d''4
                            ~
                            d''32
                            ~
                        }
                    }
                    {
                        d''4
                        ~
                        \times 4/5 {
                            d''32
                            r32
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                    }
                }
            >>
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                    {
                        \times 4/7 {
                            \tempo 4=60
                            \time 4/4
                            r4
                            b4
                            c,,2
                            r4
                            r4
                            r4
                        }
                    }
                    {
                        \times 4/5 {
                            r4
                            r8
                            b2
                            g,,8
                            r8
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            af2
                            \grace {
                                a,,,16
                            }
                            c,,4
                            r4
                            r2
                        }
                    }
                    {
                        r1
                    }
                    {
                        r2
                        \times 4/5 {
                            r8
                            r8
                            r8
                            c,,8
                            f,8
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            f,8
                            r8
                            r8
                            r8
                            r8
                        }
                        r4
                        a,,,4
                        ~
                    }
                    {
                        \times 4/7 {
                            a,,,4
                            r4
                            r4
                            r4
                            r4
                            r4
                            r4
                        }
                    }
                    {
                        \times 4/5 {
                            r8
                            r8
                            r8
                            b8
                            bf,8
                            ~
                        }
                        \times 2/3 {
                            bf,4
                            c,,2
                        }
                    }
                    {
                        \times 2/3 {
                            a,,,1
                            ~
                            a,,,4
                            af,4
                        }
                    }
                    {
                        \times 2/3 {
                            b,,1
                            d2
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            d4
                            af,4.
                            ~
                        }
                        af,4
                        \grace {
                            af16
                        }
                        f,4
                    }
                    {
                        \times 4/7 {
                            d4
                            c,,2
                            c,,2
                            f,2
                        }
                    }
                    {
                        b,,2
                        d2
                    }
                    {
                        \times 4/5 {
                            fs,,4
                            f,8
                            r8
                            g,,8
                            ~
                        }
                        g,,4
                        f,4
                        ~
                    }
                    {
                        f,2
                        \times 2/3 {
                            fs,,2
                            d4
                            ~
                        }
                    }
                    {
                        d2
                        bf,4
                        r4
                    }
                    {
                        \times 4/5 {
                            r4
                            c,,4
                            r4
                            r4
                            r4
                        }
                    }
                    {
                        \times 2/3 {
                            r4
                            fs4
                            fs,,4
                            ~
                        }
                        \times 4/5 {
                            fs,,4.
                            af4
                            ~
                        }
                    }
                    {
                        af2
                        ~
                        \times 4/5 {
                            af8
                            af,4
                            r8
                            b,,8
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            b,,4.
                            af,4.
                            r8
                            r8
                            r4
                        }
                    }
                }
            }
        >>
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()