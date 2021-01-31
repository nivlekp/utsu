\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Piano Score"
<<
    \context StaffGroup = "Piano Staff Group"
    <<
        \context Staff = "RH Staff"
        \with
        {
            \remove Time_signature_engraver
        }
        <<
            \context Voice = "Piano RH Voice1"
            {
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \times 2/3 {
                        \time 4/4
                        r16
                        \ottava 1
                        ef''''4
                        \ottava 0
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
                        \ottava 0
                        b'16
                        ~
                    }
                    \ottava 0
                    b'4..
                    \ottava 0
                    cs'16
                    ~
                }
                {
                    \times 4/5 {
                        \ottava 0
                        cs'32
                        r32
                        r32
                        r32
                        \ottava 1
                        c''''32
                        ~
                    }
                    \ottava 1
                    c''''4.
                    ~
                    \times 2/3 {
                        \ottava 1
                        c''''4
                        \ottava 0
                        r8
                    }
                    \times 4/5 {
                        r32
                        \ottava 1
                        bf'''8..
                        \ottava 0
                        ef''16
                        ~
                    }
                }
                {
                    \times 2/3 {
                        \ottava 0
                        ef''4
                        ~
                        \ottava 0
                        ef''16
                        r16
                    }
                    \times 4/5 {
                        r32
                        \ottava 0
                        a''4
                        ~
                        \ottava 0
                        a''32
                        ~
                    }
                    \ottava 0
                    a''4
                    ~
                    \times 4/7 {
                        \ottava 0
                        a''16
                        \ottava 1
                        ef''''8
                        \ottava 0
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
                        \ottava 1
                        f''''16
                        \ottava 0
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
                        \ottava 0
                        d''32
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        d''4
                        ~
                        \ottava 0
                        d''32
                        r32
                    }
                    r4
                    \times 4/5 {
                        r16
                        r16
                        \ottava 1
                        f''''8.
                        ~
                    }
                }
                {
                    \ottava 1
                    f''''8
                    ~
                    \times 4/5 {
                        \ottava 1
                        f''''16
                        \ottava 0
                        r32
                        r32
                        \ottava 1
                        ef''''32
                        ~
                    }
                    \times 4/7 {
                        \ottava 1
                        ef''''4
                        \ottava 0
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
                        \ottava 0
                        b'32
                    }
                }
                {
                    r4
                    \ottava 0
                    ef''4
                    ~
                    \times 4/5 {
                        \ottava 0
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
                        \ottava 0
                        c'16
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        c'16
                        r16
                        r16
                        r16
                        r16
                    }
                    \times 2/3 {
                        \ottava 1
                        ef''''8
                        \ottava 0
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
                        \ottava 0
                        c'8.
                        ~
                    }
                    \ottava 0
                    c'4
                    r4
                    r4
                }
                {
                    \ottava 0
                    d''2
                    r4
                    r4
                }
                {
                    r4
                    \times 2/3 {
                        r8
                        r8
                        \ottava 1
                        ef''''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 1
                        ef''''8
                        \ottava 0
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
                        \ottava 1
                        bf'''8
                        ~
                    }
                    \ottava 1
                    bf'''4.
                    \times 4/5 {
                        \ottava 0
                        d'''32
                        r32
                        r32
                        r32
                        \ottava 1
                        e''''32
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 1
                        e''''4
                        ~
                        \ottava 1
                        e''''32
                        \ottava 0
                        c'32
                        ~
                    }
                    \ottava 0
                    c'4
                    ~
                    \times 4/7 {
                        \ottava 0
                        c'16
                        \ottava 0
                        bf'8.
                        \ottava 0
                        ef''8.
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        ef''16
                        \ottava 0
                        ef''4
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 0
                        ef''32
                        \ottava 0
                        c'4
                        ~
                        \ottava 0
                        c'32
                    }
                    \times 4/5 {
                        r16
                        r16
                        r16
                        r16
                        \ottava 0
                        e'16
                    }
                    \times 2/3 {
                        r8
                        \ottava 0
                        fs'''4
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        fs'''8
                        r16
                    }
                    \ottava 0
                    ef''8
                    ~
                }
                {
                    \ottava 0
                    ef''4
                    ~
                    \times 4/5 {
                        \ottava 0
                        ef''16
                        \ottava 0
                        a''16.
                        \ottava 1
                        c''''32
                        \ottava 0
                        r16
                        r16
                    }
                    r4
                    \times 4/5 {
                        r32
                        \ottava 0
                        ef''4
                        ~
                        \ottava 0
                        ef''32
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 0
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
                        \ottava 0
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
                        \ottava 0
                        d''16
                        \ottava 1
                        c''''16
                        \ottava 0
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
                        \ottava 0
                        c'''16
                        ~
                    }
                    \ottava 0
                    c'''8
                    \ottava 0
                    ef''8
                    ~
                    \times 4/7 {
                        \ottava 0
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
                        \ottava 1
                        ef''''4.
                        ~
                    }
                    \times 4/5 {
                        \ottava 1
                        ef''''32
                        \ottava 0
                        d''4
                        ~
                        \ottava 0
                        d''32
                        ~
                    }
                }
                {
                    \ottava 0
                    d''4
                    ~
                    \times 4/5 {
                        \ottava 0
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
        \with
        {
            \remove Time_signature_engraver
        }
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 4/7 {
                        \time 4/4
                        r4
                        \ottava 0
                        b4
                        \ottava -1
                        c,,2
                        \ottava 0
                        r4
                        r4
                        r4
                    }
                }
                {
                    \times 4/5 {
                        r4
                        r8
                        \ottava 0
                        b2
                        \ottava -1
                        g,,8
                        \ottava 0
                        r8
                        r8
                    }
                }
                {
                    \times 2/3 {
                        \ottava 0
                        af2
                        \grace {
                            \ottava -1
                            a,,,16
                        }
                        \ottava -1
                        c,,4
                        \ottava 0
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
                        \ottava -1
                        c,,8
                        \ottava 0
                        f,8
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 0
                        f,8
                        r8
                        r8
                        r8
                        r8
                    }
                    r4
                    \ottava -1
                    a,,,4
                    ~
                }
                {
                    \times 4/7 {
                        \ottava -1
                        a,,,4
                        \ottava 0
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
                        \ottava 0
                        b8
                        \ottava 0
                        bf,8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        bf,4
                        \ottava -1
                        c,,2
                    }
                }
                {
                    \times 2/3 {
                        \ottava -1
                        a,,,1
                        ~
                        \ottava -1
                        a,,,4
                        \ottava 0
                        af,4
                    }
                }
                {
                    \times 2/3 {
                        \ottava 0
                        b,,1
                        \ottava 0
                        d2
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 0
                        d4
                        \ottava 0
                        af,4.
                        ~
                    }
                    \ottava 0
                    af,4
                    \grace {
                        \ottava 0
                        af16
                    }
                    \ottava 0
                    f,4
                }
                {
                    \times 4/7 {
                        \ottava 0
                        d4
                        \ottava -1
                        c,,2
                        \ottava -1
                        c,,2
                        \ottava 0
                        f,2
                    }
                }
                {
                    \ottava 0
                    b,,2
                    \ottava 0
                    d2
                }
                {
                    \times 4/5 {
                        \ottava -1
                        fs,,4
                        \ottava 0
                        f,8
                        r8
                        \ottava -1
                        g,,8
                        ~
                    }
                    \ottava -1
                    g,,4
                    \ottava 0
                    f,4
                    ~
                }
                {
                    \ottava 0
                    f,2
                    \times 2/3 {
                        \ottava -1
                        fs,,2
                        \ottava 0
                        d4
                        ~
                    }
                }
                {
                    \ottava 0
                    d2
                    \ottava 0
                    bf,4
                    r4
                }
                {
                    \times 4/5 {
                        r4
                        \ottava -1
                        c,,4
                        \ottava 0
                        r4
                        r4
                        r4
                    }
                }
                {
                    \times 2/3 {
                        r4
                        \ottava 0
                        fs4
                        \ottava -1
                        fs,,4
                        ~
                    }
                    \times 4/5 {
                        \ottava -1
                        fs,,4.
                        \ottava 0
                        af4
                        ~
                    }
                }
                {
                    \ottava 0
                    af2
                    ~
                    \times 4/5 {
                        \ottava 0
                        af8
                        \ottava 0
                        af,4
                        r8
                        \ottava 0
                        b,,8
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 0
                        b,,4.
                        \ottava 0
                        af,4.
                        r8
                        r8
                        r4
                    }
                }
                r1
            }
        }
    >>
>>