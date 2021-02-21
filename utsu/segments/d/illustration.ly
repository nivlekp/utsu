\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Piano Score"
<<
    \context PianoStaff = "Piano Staff Group"
    <<
        \context Staff = "RH Staff"
        <<
            \context Voice = "Piano RH Voice1"
            {
                {
                    \times 4/7 {
                        \ottava 1
                        \voiceTwo
                        ef'''2.
                        r2
                        r4
                        ef'''4
                        ~
                    }
                }
                {
                    ef'''4
                    r4
                    \times 2/3 {
                        r4
                        ef'''2
                        ~
                    }
                }
                {
                    \times 8/13 {
                        ef'''8
                        r4
                        r2
                        ef'''2
                        ~
                        ef'''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        ef'''2
                        ~
                        ef'''8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        ef'''2
                        ~
                        ef'''8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r8
                        ef'''4
                        ~
                        ef'''4
                        ~
                        ef'''8
                        r8
                        r2
                        r8
                        ef'''8
                        ~
                    }
                }
                {
                    \times 2/3 {
                        ef'''2
                        r4
                    }
                    r4
                    ef'''4
                    ~
                }
                {
                    \times 4/7 {
                        ef'''4
                        r2
                        r4
                        ef'''4
                        ~
                        ef'''2
                    }
                }
                {
                    \times 4/7 {
                        r2.
                        ef'''2
                        ~
                        ef'''4
                        r4
                    }
                }
                {
                    r4
                    ef'''4
                    ~
                    \times 2/3 {
                        ef'''4
                        r2
                    }
                }
                {
                    \times 8/13 {
                        \grace {
                            s16 * 13/11
                        }
                        r8
                        ef'''4
                        ~
                        ef'''2
                        r2
                        r8
                        ef'''8
                        ~
                    }
                }
                {
                    \times 8/11 {
                        ef'''4.
                        ~
                        ef'''8
                        r8
                        r2
                        ef'''4
                        ~
                    }
                }
                {
                    \times 8/11 {
                        ef'''4
                        r8
                        r2
                        ef'''2
                        ~
                    }
                }
                {
                    \times 8/13 {
                        ef'''8
                        r4
                        r4
                        r8
                        ef'''8
                        ~
                        ef'''2
                        ~
                        ef'''8
                        r8
                    }
                }
                {
                    \times 2/3 {
                        r2
                        ef'''4
                        ~
                    }
                    ef'''4
                    r4
                }
                {
                    \times 4/7 {
                        r4
                        ef'''2
                        ~
                        ef'''4
                        r4
                        r2
                    }
                }
                r1
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \times 8/13 {
                        \ottava 1
                        \voiceOne
                        g''''2..
                        r8
                        c''''8
                        ~
                        c''''4
                        ~
                        c''''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        c''''4
                        r2.
                        c''''4
                        ~
                    }
                }
                {
                    \times 8/13 {
                        c''''2..
                        g''''2
                        r4
                    }
                }
                {
                    \times 8/13 {
                        r8
                        c''''8
                        r8
                        r2.
                        g''''2
                        ~
                    }
                }
                {
                    g''''1
                    ~
                }
                {
                    \times 8/11 {
                        g''''2..
                        \grace {
                            c''''16
                            c''''16
                        }
                        c''''4
                        r4
                    }
                }
                {
                    \times 8/13 {
                        r4
                        c''''8
                        ~
                        c''''4
                        ~
                        c''''8
                        r8
                        r4
                        r8
                        g''''8
                        ~
                        g''''4
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        b''''8
                        r8
                        r2.
                    }
                }
                {
                    \times 8/13 {
                        b''''2..
                        ~
                        b''''8
                        c''''8
                        ~
                        c''''2
                        ~
                    }
                }
                {
                    c''''1
                }
                {
                    \times 8/11 {
                        \grace {
                            c''''16
                        }
                        b''''4.
                        ~
                        b''''8
                        r8
                        c''''8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r8
                        c''''4
                        ~
                        c''''2
                        ~
                        c''''8
                        r8
                        g''''2
                        ~
                    }
                }
                {
                    \times 8/13 {
                        g''''8
                        r4
                        r8
                        g''''8
                        ~
                        g''''2.
                        ~
                        g''''8
                        b''''8
                        ~
                    }
                }
                {
                    \times 8/11 {
                        b''''4
                        r8
                        r4
                        r8
                        c''''8
                        ~
                        c''''8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        r4
                        g''''8
                        ~
                        g''''4
                        ~
                        g''''8
                        r8
                        r4
                        r8
                        c''''8
                        ~
                        c''''4
                        ~
                    }
                }
                {
                    \times 8/13 {
                        c''''2..
                        ~
                        c''''8
                        g''''8
                        ~
                        g''''8
                        r8
                        r4
                    }
                }
                r1
            }
        >>
        \context Dynamics = "Dynamics"
        {
            s1
            \mf
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
        }
        \context Staff = "LH Staff"
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 8/13 {
                        \oneVoice
                        af,4
                        af,8
                        fs4
                        f4
                        r4
                        d8
                        g8
                        ~
                        g8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        g8
                        r8
                        r8
                        af,8
                        ~
                        af,8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        g4
                        cs8
                        b4
                        cs4
                        a,8
                        c8
                        ~
                        c8
                        b8
                        ~
                        b8
                        g8
                    }
                }
                {
                    \times 8/13 {
                        g4
                        e,8
                        g,4
                        g4
                        e,8
                        d8
                        ~
                        d8
                        g,8
                        ~
                        g,8
                        a,8
                    }
                }
                {
                    \times 8/13 {
                        f4
                        g8
                        ~
                        g8
                        r8
                        r4
                        cs4
                        r2
                    }
                }
                {
                    \times 8/13 {
                        bf4
                        bf8
                        af,4
                        cs4
                        r8
                        d8
                        ~
                        d8
                        bf8
                        e,4
                    }
                }
                {
                    \times 8/11 {
                        bf8
                        af,4
                        cs8
                        r8
                        r4
                        a,4
                        cs8
                        g8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        g8
                        r8
                        b8
                        ~
                        b8
                        af,8
                        fs4
                        b4
                        af,8
                        b8
                        ~
                        b8
                        a,8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        bf8
                        r8
                        g4
                        g8
                        g,8
                        ~
                        g,8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        af,4
                        g,8
                        ~
                        g,8
                        r8
                        d8
                        cs8
                        ~
                        cs8
                        bf8
                        ~
                        bf8
                        bf8
                        f4
                    }
                }
                {
                    \times 8/13 {
                        \grace {
                            s16 * 13/11
                        }
                        e,4
                        f8
                        c4
                        e,4
                        r8
                        b8
                        fs4
                        g,8
                        fs8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        fs8
                        b4
                        af,8
                        g,8
                        ~
                        g,8
                        g8
                        ~
                        g8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r4
                        fs8
                        r8
                        d8
                        ~
                        d8
                        g,8
                        d4
                        cs8
                        d8
                        ~
                        d8
                        b8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        b8
                        bf8
                        a,8
                        ~
                        a,8
                        r8
                        r4
                        r8
                        g8
                        r8
                        e,8
                        ~
                        e,8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        fs8
                        d4
                        cs4
                        cs8
                        c8
                        ~
                        c8
                        f8
                        g,4
                        bf4
                    }
                }
                {
                    \times 8/13 {
                        fs8
                        r8
                        b8
                        g,4
                        c8
                        f8
                        ~
                        f8
                        e,8
                        ~
                        e,8
                        r8
                        r4
                    }
                }
                {
                    \times 8/11 {
                        e,8
                        r4
                        r1
                    }
                }
            }
        }
    >>
>>