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
                        \ottava 1
                        \time 4/4
                        r4
                        \ottava 1
                        b''''8
                        ~
                    }
                    \ottava 1
                    b''''2
                    ~
                    \times 4/7 {
                        \ottava 1
                        b''''8
                        \ottava 1
                        ef'''16
                        ~
                        \ottava 1
                        ef'''4
                        ~
                    }
                }
                {
                    \ottava 1
                    ef'''2.
                    ~
                    \times 4/7 {
                        \ottava 1
                        ef'''16
                        \ottava 1
                        bf'''8
                        ~
                        \ottava 1
                        bf'''4
                        ~
                    }
                }
                {
                    \ottava 1
                    bf'''2.
                    ~
                    \times 4/7 {
                        \ottava 1
                        bf'''8.
                        ~
                        \ottava 1
                        bf'''8
                        ~
                        \ottava 1
                        bf'''16
                        \ottava 1
                        a''''16
                        ~
                    }
                }
                {
                    \times 4/7 {
                        \ottava 1
                        a''''8.
                        ~
                        \ottava 1
                        a''''8
                        \ottava 1
                        ef''''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 1
                        ef''''4
                        ~
                        \ottava 1
                        ef''''16
                        \ottava 1
                        r16
                    }
                    \ottava 1
                    r4
                    \times 4/7 {
                        \ottava 1
                        r8.
                        \ottava 1
                        r16
                        \ottava 1
                        a''''16
                        ~
                        \ottava 1
                        a''''8
                        ~
                    }
                }
                {
                    \ottava 1
                    a''''2
                    ~
                    \ottava 1
                    a''''8
                    \ottava 1
                    b'''8
                    ~
                    \times 4/5 {
                        \ottava 1
                        b'''8
                        \ottava 1
                        bf'''16
                        ~
                        \ottava 1
                        bf'''8
                        ~
                    }
                }
                {
                    \ottava 1
                    bf'''4
                    ~
                    \times 4/7 {
                        \ottava 1
                        bf'''8.
                        ~
                        \ottava 1
                        bf'''8
                        ~
                        \ottava 1
                        bf'''16
                        \ottava 1
                        bf'''16
                        ~
                    }
                    \ottava 1
                    bf'''16
                    \ottava 1
                    c'''8.
                    ~
                    \ottava 1
                    c'''8
                    \ottava 1
                    g''''8
                    ~
                }
                {
                    \ottava 1
                    g''''2
                    \ottava 1
                    b'''8.
                    \ottava 1
                    c'''16
                    ~
                    \ottava 1
                    c'''8
                    \ottava 1
                    bf''''8
                    ~
                }
                {
                    \ottava 1
                    bf''''4
                    ~
                    \times 4/7 {
                        \ottava 1
                        bf''''8.
                        \ottava 1
                        f''''4
                        ~
                    }
                    \ottava 1
                    f''''2
                    ~
                }
                {
                    \ottava 1
                    f''''1
                    ~
                }
                {
                    \ottava 1
                    f''''1
                    ~
                }
                {
                    \ottava 1
                    f''''2.
                    ~
                    \times 4/5 {
                        \ottava 1
                        f''''8.
                        \ottava 1
                        f''''8
                        ~
                    }
                }
                {
                    \ottava 1
                    f''''8
                    \ottava 1
                    bf''''8
                    ~
                    \times 4/5 {
                        \ottava 1
                        bf''''8
                        \ottava 1
                        r16
                        \ottava 1
                        r8
                    }
                    \ottava 1
                    r2
                }
                {
                    \times 2/3 {
                        \ottava 1
                        r4
                        \ottava 1
                        f''''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 1
                        f''''4
                        \ottava 1
                        c''''8
                        ~
                    }
                    \times 4/7 {
                        \ottava 1
                        c''''16
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                    }
                    \ottava 1
                    r4
                }
                {
                    \ottava 1
                    r4
                    \times 4/5 {
                        \ottava 1
                        g'''16
                        \ottava 1
                        r8
                        \ottava 1
                        r8
                    }
                    \ottava 1
                    r2
                }
                {
                    \ottava 1
                    r2
                    \ottava 1
                    r8.
                    \ottava 1
                    a''''16
                    ~
                    \times 2/3 {
                        \ottava 1
                        a''''8
                        \ottava 1
                        r4
                    }
                }
                {
                    \times 4/5 {
                        \ottava 1
                        r8.
                        \ottava 1
                        r16
                        \ottava 1
                        ef'''16
                        ~
                    }
                    \times 4/5 {
                        \ottava 1
                        ef'''8.
                        \ottava 1
                        r16
                        \ottava 1
                        f''''16
                        ~
                    }
                    \times 4/7 {
                        \ottava 1
                        f''''16
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                    }
                    \times 2/3 {
                        \ottava 1
                        r8
                        \ottava 1
                        fs'''4
                        ~
                    }
                }
                {
                    \times 2/3 {
                        \ottava 1
                        fs'''4
                        \ottava 1
                        ef'''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 1
                        ef'''4
                        \ottava 1
                        b''''8
                        ~
                    }
                    \ottava 1
                    b''''2
                }
                {
                    \times 4/5 {
                        \ottava 1
                        a''''16
                        \ottava 1
                        r8
                        \ottava 1
                        r8
                    }
                    \ottava 1
                    r2.
                }
                {
                    \times 4/5 {
                        \ottava 1
                        r8
                        \ottava 1
                        c''''16
                        ~
                        \ottava 1
                        c''''8
                        ~
                    }
                    \ottava 1
                    c''''4
                    \ottava 1
                    f''''2
                }
                {
                    \times 4/7 {
                        \ottava 1
                        b''''8
                        \ottava 1
                        r16
                        \ottava 1
                        r4
                    }
                    \ottava 1
                    r4
                    \times 4/5 {
                        \ottava 1
                        r16
                        \ottava 1
                        f'''8
                        ~
                        \ottava 1
                        f'''8
                        ~
                    }
                    \ottava 1
                    f'''4
                    ~
                }
                {
                    \ottava 1
                    f'''4
                    ~
                    \times 2/3 {
                        \ottava 1
                        f'''4
                        ~
                        \ottava 1
                        f'''16
                        \ottava 1
                        af''''16
                        ~
                    }
                    \times 4/5 {
                        \ottava 1
                        af''''16
                        \ottava 1
                        r8
                        \ottava 1
                        r8
                    }
                    \ottava 1
                    r4
                }
            }
        >>
        \context Dynamics = "Dynamics"
        {
            s1
            \pp
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
                    \ottava 0
                    \time 4/4
                    \clef "treble"
                    fs'4
                    ~
                    \ottava 0
                    fs'16
                    r8.
                    r8
                    \ottava 0
                    g8
                    ~
                    \ottava 0
                    g8.
                    r16
                }
                {
                    r4
                    \ottava 0
                    a4
                    ~
                    \ottava 0
                    a16
                    r8.
                    r8
                    \ottava 0
                    b8
                    ~
                }
                {
                    \ottava 0
                    b8.
                    r16
                    r4
                    \ottava 0
                    f'4
                    ~
                    \ottava 0
                    f'16
                    r8.
                }
                {
                    r8
                    \ottava 0
                    fs8
                    ~
                    \ottava 0
                    fs8.
                    r16
                    r4
                    \ottava 0
                    f4
                    ~
                }
                {
                    \ottava 0
                    f16
                    r8.
                    r8
                    \ottava 0
                    fs'8
                    ~
                    \ottava 0
                    fs'8.
                    r16
                    r4
                }
                {
                    \ottava 0
                    cs'4
                    ~
                    \ottava 0
                    cs'16
                    r8.
                    r8
                    \ottava 0
                    d''8
                    ~
                    \ottava 0
                    d''8.
                    r16
                }
                {
                    r4
                    \ottava 0
                    c'4
                    ~
                    \ottava 0
                    c'16
                    r8.
                    r8
                    \ottava 0
                    a8
                    ~
                }
                {
                    \ottava 0
                    a8.
                    r16
                    r4
                    \ottava 0
                    a''4
                    ~
                    \ottava 0
                    a''16
                    r8.
                }
                {
                    r8
                    \ottava 0
                    g''8
                    ~
                    \ottava 0
                    g''8.
                    r16
                    r4
                    \ottava 0
                    a4
                    ~
                }
                {
                    \ottava 0
                    a16
                    r8.
                    r8
                    \ottava 0
                    a8
                    ~
                    \ottava 0
                    a8.
                    r16
                    r4
                }
                {
                    \ottava 0
                    f4
                    ~
                    \ottava 0
                    f16
                    r8.
                    r8
                    \ottava 0
                    f'8
                    ~
                    \ottava 0
                    f'8.
                    r16
                }
                {
                    r4
                    \ottava 0
                    f'4
                    ~
                    \ottava 0
                    f'16
                    r8.
                    r8
                    \ottava 0
                    e''8
                    ~
                }
                {
                    \ottava 0
                    e''8.
                    r16
                    r4
                    \ottava 0
                    bf'4
                    ~
                    \ottava 0
                    bf'16
                    r8.
                }
                {
                    r8
                    \ottava 0
                    fs'8
                    ~
                    \ottava 0
                    fs'8.
                    r16
                    r4
                    \ottava 0
                    e'4
                    ~
                }
                {
                    \ottava 0
                    e'16
                    r8.
                    r8
                    \ottava 0
                    f8
                    ~
                    \ottava 0
                    f8.
                    r16
                    r4
                }
                {
                    \ottava 0
                    c'4
                    ~
                    \ottava 0
                    c'16
                    r8.
                    r8
                    \ottava 0
                    b'8
                    ~
                    \ottava 0
                    b'8.
                    r16
                }
                {
                    r4
                    \ottava 0
                    d''4
                    ~
                    \ottava 0
                    d''16
                    r8.
                    r8
                    \ottava 0
                    fs8
                    ~
                }
                {
                    \ottava 0
                    fs8.
                    r16
                    r4
                    \ottava 0
                    e''4
                    ~
                    \ottava 0
                    e''16
                    r8.
                }
                {
                    r8
                    \ottava 0
                    ef''8
                    ~
                    \ottava 0
                    ef''8.
                    r16
                    r4
                    \ottava 0
                    b4
                    ~
                }
                {
                    \ottava 0
                    b16
                    r8.
                    r8
                    \ottava 0
                    b'8
                    ~
                    \ottava 0
                    b'8.
                    r16
                    r4
                }
                R1
            }
        }
    >>
>>