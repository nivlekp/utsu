\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Piano Score"
<<
    \context PianoStaff = "Piano Staff Group"
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
                        ef''''16
                        ^ \markup { e }
                        ~
                        ef''''8
                        ~
                        ef''''16
                        r16
                    }
                    r2.
                }
                {
                    r4
                    \times 2/3 {
                        r4
                        r16
                        b'16
                        ~
                    }
                    b'4
                    ~
                    b'8.
                    cs'16
                }
                {
                    \times 4/5 {
                        r8
                        c''''16
                        ^ \markup { c }
                        ~
                        c''''8
                        ~
                    }
                    c''''4
                    ~
                    \times 2/3 {
                        c''''4
                        r8
                    }
                    \times 4/5 {
                        bf'''8.
                        ^ \markup { b }
                        ~
                        bf'''16
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
                    \times 4/7 {
                        r16
                        a''8
                        ~
                        a''4
                        ~
                    }
                    a''4
                    ~
                    \times 4/7 {
                        a''16
                        ef''''8
                        ^ \markup { e }
                        r4
                    }
                }
                {
                    r2.
                    \times 2/3 {
                        r16
                        f''''16
                        ^ \markup { f }
                        r16
                    }
                    r8
                }
                {
                    \times 4/7 {
                        r8.
                        r8
                        r16
                        d''16
                        ~
                    }
                    \times 4/7 {
                        d''8.
                        ~
                        d''8
                        ~
                        d''16
                        r16
                    }
                    r4
                    \times 4/5 {
                        r8
                        f''''16
                        ^ \markup { f }
                        ~
                        f''''8
                        ~
                    }
                }
                {
                    f''''8
                    ~
                    \times 2/3 {
                        f''''16
                        r16
                        ef''''16
                        ^ \markup { e }
                        ~
                    }
                    \times 4/7 {
                        ef''''8.
                        ~
                        ef''''16
                        r16
                        r8
                    }
                    r4
                    \times 4/7 {
                        r8.
                        r8
                        r16
                        b'16
                    }
                }
                {
                    r4
                    ef''4
                    ~
                    \times 4/7 {
                        ef''16
                        r8
                        r4
                    }
                    r4
                }
                {
                    r4
                    \times 4/7 {
                        r8.
                        r8
                        r16
                        c'16
                        ~
                    }
                    \times 4/5 {
                        c'16
                        r8
                        r8
                    }
                    \times 2/3 {
                        ef''''8
                        ^ \markup { e }
                        r4
                    }
                }
                {
                    \times 4/7 {
                        r8.
                        r16
                        c'16
                        ~
                        c'8
                        ~
                    }
                    c'4
                    r2
                }
                {
                    d''2
                    r2
                }
                {
                    r4
                    \times 2/3 {
                        r4
                        ef''''8
                        ^ \markup { e }
                        ~
                    }
                    \times 2/3 {
                        ef''''8
                        r4
                    }
                    r4
                }
                {
                    r4
                    \times 4/5 {
                        r8.
                        bf'''8
                        ^ \markup { b }
                        ~
                    }
                    bf'''4
                    ~
                    \times 4/7 {
                        bf'''8.
                        ~
                        bf'''16
                        d'''16
                        ~
                        d'''16
                        e''''16
                        ^ \markup { e }
                        ~
                    }
                }
                {
                    \times 4/7 {
                        e''''8.
                        ~
                        e''''8
                        ~
                        e''''16
                        c'16
                        ~
                    }
                    c'4
                    ~
                    \times 4/7 {
                        c'16
                        bf'8
                        ~
                        bf'16
                        ef''16
                        ~
                        ef''8
                        ~
                    }
                    \times 4/5 {
                        ef''16
                        ef''8
                        ~
                        ef''8
                        ~
                    }
                }
                {
                    \times 4/7 {
                        ef''16
                        c'8
                        ~
                        c'4
                    }
                    \times 4/5 {
                        r8.
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
                    \times 4/7 {
                        ef''16
                        a''8
                        c''''16
                        ^ \markup { c }
                        r16
                        r8
                    }
                    r4
                    \times 4/7 {
                        r16
                        ef''8
                        ~
                        ef''4
                        ~
                    }
                }
                {
                    \times 4/7 {
                        ef''16
                        r8
                        r4
                    }
                    r4
                    \times 4/7 {
                        r8.
                        r8
                        d''16
                        r16
                    }
                    r4
                }
                {
                    r2
                    \times 4/7 {
                        r8.
                        r16
                        d''16
                        c''''16
                        ^ \markup { c }
                        r16
                    }
                    r4
                }
                {
                    \times 4/7 {
                        r8.
                        r8
                        r16
                        c'''16
                        ~
                    }
                    c'''8
                    ef''8
                    ~
                    \times 4/7 {
                        ef''8.
                        ~
                        ef''8
                        ~
                        ef''16
                        r16
                    }
                    r4
                }
                {
                    r2
                    \times 4/7 {
                        r16
                        ef''''8
                        ^ \markup { e }
                        ~
                        ef''''4
                        ~
                    }
                    \times 4/7 {
                        ef''''16
                        d''8
                        ~
                        d''4
                        ~
                    }
                }
                {
                    d''4
                    ~
                    \times 4/7 {
                        d''16
                        r8
                        r4
                    }
                    r2
                }
            }
        >>
        \context Dynamics = "Dynamics"
        {
            s1
            \mp
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
            s1
            s1
            s1
            s1
        }
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
                        b4
                        c,,4
                        _ \markup { c }
                        ~
                        c,,4
                        r4
                        r2
                    }
                }
                {
                    \times 4/5 {
                        r4.
                        b4.
                        ~
                        b8
                        g,,8
                        r4
                    }
                }
                {
                    \times 2/3 {
                        af2
                        \grace {
                            a,,,16
                            _ \markup { a }
                        }
                        c,,4
                        _ \markup { c }
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
                        r4.
                        c,,8
                        _ \markup { c }
                        f,8
                        ~
                    }
                }
                {
                    \times 4/5 {
                        f,8
                        r4
                        r4
                    }
                    r4
                    a,,,4
                    _ \markup { a }
                    ~
                }
                {
                    \times 4/7 {
                        a,,,4
                        r2
                        r1
                    }
                }
                {
                    \times 4/5 {
                        r4.
                        b8
                        bf,8
                        ~
                    }
                    \times 2/3 {
                        bf,4
                        c,,2
                        _ \markup { c }
                    }
                }
                {
                    \times 2/3 {
                        a,,,1
                        _ \markup { a }
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
                        af,8
                        ~
                        af,4
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
                        _ \markup { c }
                        c,,2
                        _ \markup { c }
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
                        _ \markup { c }
                        r4
                        r2
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
                        r2
                    }
                }
                R1
            }
        }
    >>
>>