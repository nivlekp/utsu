\version "2.20.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\context Score = "Piano Score"
<<
    \context PianoStaff = "Piano Staff Group"
    <<
        \context Staff = "RH Staff"
        <<
            \context Voice = "Piano RH Voice1"
            {
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \ottava 1
                    \oneVoice
                    r4
                    \grace {
                        c'''16
                    }
                    b''''16
                    r16
                    ef''''16
                    r16
                    r8
                    g''''16
                    g'''16
                    ~
                    g'''4
                    ~
                }
                {
                    \times 2/3 {
                        g'''8
                        ef''''16
                    }
                    r16
                    ef''''16
                    b''''16
                    e'''16
                    e'''8
                    ~
                    e'''4
                    ~
                    e'''16
                    g'''16
                    ~
                    \times 2/3 {
                        g'''8
                        \grace {
                            c'''16
                        }
                        c'''16
                    }
                }
                {
                    af''''8.
                    \grace {
                        ef'''16
                    }
                    d'''16
                    ~
                    \times 2/3 {
                        d'''8
                        c''''16
                        \grace {
                            c''''16
                        }
                        f''''16
                        ~
                        f''''16
                        d'''16
                        ~
                    }
                    \times 2/3 {
                        d'''16
                        r16
                        r8
                        r16
                        fs'''16
                    }
                    r4
                }
                {
                    \times 2/3 {
                        r4
                        b''''8
                    }
                    \times 2/3 {
                        d'''8
                        e'''16
                    }
                    bf'''16
                    cs'''16
                    ~
                    \times 2/3 {
                        cs'''16
                        f''''16
                        ~
                        f''''4
                        ~
                    }
                    f''''8
                    g'''16
                    c'''16
                }
                {
                    \times 2/3 {
                        bf'''8
                        cs''''8
                        ~
                        cs''''16
                        \grace {
                            af''''16
                        }
                        e'''16
                    }
                    c''''8
                    ~
                    \times 2/3 {
                        c''''16
                        c''''16
                        cs'''16
                    }
                    bf'''8
                    ~
                    \times 2/3 {
                        bf'''16
                        cs'''16
                        fs'''16
                        ~
                    }
                    \times 2/3 {
                        fs'''16
                        r16
                        r8
                        e'''8
                        ~
                    }
                }
                {
                    \times 2/3 {
                        e'''16
                        fs'''16
                        r4
                    }
                    \times 2/3 {
                        r16
                        \grace {
                            cs''''16
                        }
                        e''''16
                        ~
                        e''''16
                        e''''16
                        c''''16
                        r16
                    }
                    r8.
                    g''''16
                    \times 2/3 {
                        g''''16
                        r8
                    }
                    r16
                    b''''16
                    ~
                }
                {
                    b''''8.
                    r16
                    \times 2/3 {
                        r16
                        c'''16
                        r16
                        cs'''16
                        r16
                        g''''16
                        ~
                    }
                    g''''4
                    ~
                    g''''8
                    \times 2/3 {
                        c''''16
                        ef'''8
                    }
                }
                {
                    cs''''4
                    ~
                    \times 2/3 {
                        cs''''8
                        ef''''16
                        ~
                    }
                    ef''''16
                    cs'''16
                    ~
                    \times 2/3 {
                        cs'''8
                        \grace {
                            ef'''16
                        }
                        c''''16
                        r16
                        r16
                        b''''16
                    }
                    f''''8
                    \times 2/3 {
                        fs'''8
                        cs'''16
                        ~
                    }
                }
                {
                    cs'''16
                    \grace {
                        fs'''16
                    }
                    c''''16
                    ~
                    \times 2/3 {
                        c''''16
                        \grace {
                            f''''16
                        }
                        f''''16
                        ef'''16
                    }
                    \times 2/3 {
                        bf'''8
                        ef''''16
                        f''''16
                        ~
                        f''''8
                        ~
                    }
                    \times 2/3 {
                        f''''4
                        c'''16
                        r16
                    }
                    \times 2/3 {
                        r8
                        \grace {
                            af''''16
                        }
                        c''''4
                    }
                }
                {
                    \times 2/3 {
                        \grace {
                            e''''16
                        }
                        af''''16
                        r16
                        r4
                    }
                    r16
                    \grace {
                        d'''16
                    }
                    f''''16
                    r8
                    r16
                    c'''16
                    \times 2/3 {
                        af''''8
                        ef'''16
                        ~
                    }
                    ef'''8
                    \grace {
                        ef''''16
                    }
                    cs'''16
                    r16
                }
                {
                    e''''4
                    ~
                    e''''8
                    e''''8
                    \times 2/3 {
                        cs''''16
                        r8
                    }
                    r16
                    ef''''16
                    b''''16
                    r8.
                }
                {
                    \times 2/3 {
                        r4
                        cs''''8
                        ~
                    }
                    \times 2/3 {
                        cs''''8
                        r16
                        ef'''16
                        b''''16
                        r16
                    }
                    \times 2/3 {
                        r4
                        r16
                        fs'''16
                    }
                    g''''8
                    ef'''8
                    ~
                }
                {
                    ef'''4
                    \times 2/3 {
                        g''''8
                        c'''16
                        ef'''16
                        ef'''16
                        \grace {
                            c''''16
                        }
                        e''''16
                        ~
                    }
                    e''''8
                    \times 2/3 {
                        cs'''8
                        c''''16
                        ~
                    }
                    c''''8
                    \times 2/3 {
                        b''''16
                        af''''16
                        e''''16
                        ~
                    }
                }
                {
                    \times 2/3 {
                        e''''8
                        ef''''16
                        ~
                    }
                    ef''''16
                    bf'''16
                    ~
                    bf'''8
                    ef''''8
                    \times 2/3 {
                        c''''8
                        \grace {
                            d'''16
                        }
                        cs'''16
                    }
                    fs'''8
                    ~
                    fs'''16
                    c'''8.
                    ~
                }
                {
                    \times 2/3 {
                        c'''16
                        \grace {
                            cs''''16
                        }
                        ef''''16
                        r16
                    }
                    r8
                    \times 2/3 {
                        r16
                        e'''8
                    }
                    c'''16
                    d'''16
                    \times 2/3 {
                        r16
                        g'''8
                    }
                    r8
                    r16
                    cs'''16
                    ~
                    cs'''16
                    f''''16
                    ~
                }
                {
                    \times 2/3 {
                        f''''8
                        r4
                    }
                    r2.
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
        }
        \context Staff = "LH Staff"
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 2/3 {
                        \clef "treble"
                        \oneVoice
                        r16
                        b''16
                        d''16
                    }
                    af''16
                    a'16
                    ~
                    \times 2/3 {
                        a'16
                        r16
                        r16
                        g16
                        r8
                    }
                    \times 2/3 {
                        r8
                        r16
                        af''16
                        af8
                        ~
                    }
                    af8
                    f8
                    ~
                }
                {
                    \times 2/3 {
                        f8
                        g16
                        bf16
                        cs''8
                        ~
                    }
                    \times 2/3 {
                        cs''8
                        ~
                        cs''16
                        bf'16
                        d'16
                        b''16
                        ~
                    }
                    b''8
                    \grace {
                        af''16
                    }
                    d'8
                    ~
                    \times 2/3 {
                        d'8
                        \grace {
                            b''16
                            g16
                        }
                        f4
                    }
                }
                {
                    \times 2/3 {
                        a'4
                        ~
                        a'16
                        d'16
                    }
                    r8
                    \times 2/3 {
                        r16
                        af'16
                        b16
                    }
                    \grace {
                        cs'16
                    }
                    cs''16
                    fs16
                    bf8
                    ~
                    \times 2/3 {
                        bf4
                        ~
                        bf16
                        e'16
                    }
                }
                {
                    \times 2/3 {
                        ef''16
                        r16
                        r4
                    }
                    r16
                    bf'16
                    ~
                    \times 2/3 {
                        bf'16
                        d'16
                        d''16
                    }
                    \times 2/3 {
                        r4
                        af'8
                        ~
                    }
                    \times 2/3 {
                        af'8
                        ~
                        af'16
                        af16
                        ~
                        af16
                        f''16
                    }
                }
                {
                    \times 2/3 {
                        r16
                        e''16
                        b''16
                    }
                    e'8
                    \times 2/3 {
                        bf16
                        \grace {
                            cs'16
                        }
                        f16
                        ~
                        f16
                        af'16
                        ~
                        af'8
                        ~
                    }
                    af'16
                    d'8.
                    \times 2/3 {
                        \grace {
                            f''16
                        }
                        fs16
                        r16
                        r8
                        r16
                        \grace {
                            d'16
                        }
                        ef''16
                        ~
                    }
                }
                {
                    \times 2/3 {
                        ef''8
                        cs'4
                        ~
                    }
                    \times 2/3 {
                        cs'8
                        g16
                        f16
                        ~
                        f8
                        ~
                    }
                    f8
                    \times 2/3 {
                        fs8
                        e''16
                    }
                    d'8
                    \times 2/3 {
                        a'16
                        \grace {
                            f'16
                        }
                        a''16
                        \grace {
                            bf16
                        }
                        e'16
                    }
                }
                {
                    r2.
                    \times 2/3 {
                        r4
                        ef''8
                        ~
                    }
                }
                {
                    ef''4
                    ~
                    ef''16
                    bf16
                    fs8
                    ~
                    \times 2/3 {
                        fs16
                        \grace {
                            af16
                        }
                        c'16
                        ~
                        c'4
                        ~
                    }
                    \times 2/3 {
                        c'4
                        e''8
                    }
                }
                {
                    \times 2/3 {
                        f16
                        e'16
                        \grace {
                            d''16
                        }
                        e''16
                        ~
                    }
                    e''8
                    ~
                    \times 2/3 {
                        e''16
                        cs''8
                        ~
                    }
                    cs''16
                    e''16
                    \times 2/3 {
                        bf16
                        b'16
                        ~
                        b'8
                        r16
                        f''16
                        ~
                    }
                    f''4
                }
                {
                    \times 2/3 {
                        \grace {
                            s16
                        }
                        b'16
                        r8
                    }
                    cs''16
                    af'16
                    \times 2/3 {
                        r4
                        r16
                        af16
                        ~
                    }
                    \times 2/3 {
                        af8
                        r4
                    }
                    \times 2/3 {
                        fs16
                        r16
                        f''4
                        ~
                    }
                }
                {
                    \times 2/3 {
                        f''16
                        r16
                        r8
                        af'8
                    }
                    bf8
                    f8
                    ~
                    \times 2/3 {
                        f8
                        \grace {
                            b'16
                        }
                        bf'16
                    }
                    ef''16
                    r16
                    r8
                    af16
                    r16
                }
                {
                    cs'16
                    r16
                    \times 2/3 {
                        r8
                        a'16
                        ~
                    }
                    \times 2/3 {
                        a'4
                        r8
                    }
                    \times 2/3 {
                        r16
                        af''16
                        r16
                    }
                    r8
                    fs4
                    ~
                }
                {
                    fs4
                    \times 2/3 {
                        ef''8
                        c'8
                        ~
                        c'16
                        f''16
                    }
                    a'8
                    \times 2/3 {
                        af16
                        f''8
                    }
                    \times 2/3 {
                        r16
                        \grace {
                            f''16
                        }
                        cs'8
                    }
                    a'16
                    r16
                }
                {
                    \times 2/3 {
                        r8
                        r16
                        c'16
                        ~
                        c'16
                        r16
                    }
                    r8
                    bf'8
                    ~
                    \times 2/3 {
                        bf'16
                        e''16
                        ~
                        e''8
                        ~
                        e''16
                        af'16
                    }
                    \grace {
                        ef''16
                    }
                    e'16
                    b16
                    b8
                }
                {
                    \times 2/3 {
                        ef''8
                        af'16
                        ~
                    }
                    af'16
                    d'16
                    ~
                    \times 2/3 {
                        d'8
                        af4
                    }
                    b''8
                    \times 2/3 {
                        e'16
                        cs''8
                    }
                    \times 2/3 {
                        \grace {
                            g16
                        }
                        bf16
                        r16
                        bf16
                    }
                    d''16
                    af''16
                    ~
                }
                {
                    af''8.
                    bf16
                    ~
                    bf4
                    ~
                    \times 2/3 {
                        bf8
                        r4
                    }
                    r4
                    \pang-signature
                }
            }
        }
    >>
>>