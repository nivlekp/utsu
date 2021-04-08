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
                {
                    \times 4/7
                    {
                        \time 4/4
                        \clef "treble"
                        \voiceTwo
                        cs'8.
                        ~
                        cs'8
                        r8
                    }
                    r2
                    \times 2/3
                    {
                        r8
                        c'4
                        ~
                    }
                }
                {
                    \times 4/7
                    {
                        c'8.
                        ~
                        c'8
                        r8
                    }
                    r4
                    \times 2/3
                    {
                        r4
                        e'8
                        ~
                    }
                    \times 4/5
                    {
                        e'8
                        r16
                        r8
                    }
                }
                {
                    r2
                    c'4
                    ~
                    \times 4/7
                    {
                        c'8.
                        ~
                        c'8
                        ~
                        c'16
                        r16
                    }
                }
                {
                    r4
                    \times 2/3
                    {
                        r8
                        bf'4
                        ~
                    }
                    \times 4/5
                    {
                        bf'8.
                        ~
                        bf'16
                        r16
                    }
                    r4
                }
                {
                    \times 2/3
                    {
                        r4
                        af'8
                        ~
                    }
                    \times 4/7
                    {
                        af'16
                        r8
                        r4
                    }
                    r2
                }
                {
                    af'4
                    ~
                    \times 4/5
                    {
                        af'8.
                        r8
                    }
                    r4
                    \times 2/3
                    {
                        r8
                        e'4
                        ~
                    }
                }
                {
                    \times 4/7
                    {
                        \grace {
                            s16
                        }
                        e'8.
                        ~
                        e'8
                        ~
                        e'16
                        r16
                    }
                    r4
                    \times 2/3
                    {
                        r4
                        bf'8
                        ~
                    }
                    \times 4/7
                    {
                        bf'8.
                        ~
                        bf'16
                        r16
                        r8
                    }
                }
                {
                    r2
                    e'2
                    ~
                }
                {
                    e'4
                    ~
                    \times 2/3
                    {
                        e'16
                        r16
                        bf'16
                        ~
                    }
                    bf'8
                    r2
                }
                {
                    \times 2/3
                    {
                        r4
                        d'8
                        ~
                    }
                    \times 2/3
                    {
                        d'8
                        r4
                    }
                    r2
                }
                {
                    \grace {
                        s16 * 4/7
                    }
                    d'4
                    ~
                    \times 4/7
                    {
                        d'16
                        r8
                        r4
                    }
                    r4
                    \times 2/3
                    {
                        r8
                        c'4
                        ~
                    }
                }
                {
                    c'1
                    ~
                }
                {
                    c'2.
                    ~
                    c'16
                    b'8.
                    ~
                }
                {
                    \times 4/7
                    {
                        b'16
                        bf'8
                        ~
                        bf'4
                    }
                    \times 2/3
                    {
                        r8
                        af'4
                        ~
                    }
                    af'4
                    ~
                    \times 4/7
                    {
                        af'8.
                        r4
                    }
                }
                {
                    \times 2/3
                    {
                        r4
                        c'8
                        ~
                    }
                    c'2.
                    ~
                }
                {
                    \times 2/3
                    {
                        c'8
                        bf'16
                    }
                    r8
                    r2
                    \times 2/3
                    {
                        r8
                        e'4
                        ~
                    }
                }
                {
                    e'2
                    ~
                    e'8.
                    b'16
                    ~
                    b'4
                    ~
                }
                {
                    b'4
                    r4
                    \times 4/7
                    {
                        cs'16
                        r8
                        r4
                    }
                    r4
                }
                {
                    r4
                    \times 2/3
                    {
                        r8
                        bf'4
                        ~
                    }
                    bf'8.
                    r16
                    r4
                }
                {
                    \times 2/3
                    {
                        r4
                        cs'8
                    }
                    r2.
                }
                r1
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \times 4/7
                    {
                        \time 4/4
                        \clef "treble"
                        \voiceOne
                        r16
                        ef''8
                        ~
                        ef''8
                        ~
                        ef''16
                        d''16
                        ~
                    }
                    d''4
                    ~
                    \times 4/7
                    {
                        d''16
                        d''8
                        ~
                        d''4
                        ~
                    }
                    d''4
                    ~
                }
                {
                    d''4
                    \times 4/5
                    {
                        cs''8.
                        r8
                    }
                    r4
                    \times 4/7
                    {
                        r8.
                        f''4
                        ~
                    }
                }
                {
                    \times 4/7
                    {
                        f''8.
                        r4
                    }
                    \times 2/3
                    {
                        r4
                        d''8
                        ~
                    }
                    d''2
                    ~
                }
                {
                    d''4
                    ~
                    \times 2/3
                    {
                        d''4
                        f''8
                        ~
                    }
                    \times 4/7
                    {
                        f''16
                        r8
                        r4
                    }
                    r4
                }
                {
                    r1
                }
                {
                    \times 2/3
                    {
                        r8
                        d''4
                        ~
                    }
                    d''2.
                    ~
                }
                {
                    \grace {
                        s16 * 4/7
                    }
                    d''16
                    r8.
                    r2.
                }
                {
                    r2
                    \times 4/7
                    {
                        r16
                        d''8
                        ~
                        d''4
                        ~
                    }
                    \times 4/5
                    {
                        d''16
                        cs''8
                        ~
                        cs''8
                        ~
                    }
                }
                {
                    cs''2.
                    cs''8
                    ~
                    \times 2/3
                    {
                        cs''8
                        ef''16
                    }
                }
                {
                    r4
                    \times 4/5
                    {
                        r8.
                        r16
                        b''16
                        ~
                    }
                    \times 4/7
                    {
                        b''8.
                        ~
                        b''8
                        ~
                        b''16
                        r16
                    }
                    r4
                }
                {
                    \grace {
                        s16 * 4/7
                    }
                    r2
                    \times 4/7
                    {
                        r16
                        a''8
                        ~
                        a''4
                    }
                    r4
                }
                {
                    \times 4/7
                    {
                        r8.
                        r16
                        cs''16
                        ~
                        cs''8
                        ~
                    }
                    \times 4/7
                    {
                        cs''8.
                        ~
                        cs''16
                        r16
                        r8
                    }
                    r2
                }
                {
                    cs''8.
                    r16
                    \times 4/7
                    {
                        b''8.
                        ~
                        b''8
                        d''8
                        ~
                    }
                    \times 2/3
                    {
                        d''4
                        cs''8
                        ~
                    }
                    \times 2/3
                    {
                        cs''4
                        f''8
                        ~
                    }
                }
                {
                    \times 2/3
                    {
                        f''8
                        r4
                    }
                    \times 4/7
                    {
                        r16
                        ef''8
                        ~
                        ef''4
                        ~
                    }
                    ef''2
                    ~
                }
                {
                    ef''16
                    a''8.
                    ~
                    \times 4/7
                    {
                        a''8
                        d''16
                        ~
                        d''16
                        r16
                        r8
                    }
                    \times 4/7
                    {
                        r8.
                        r16
                        f''16
                        ~
                        f''8
                        ~
                    }
                    \times 4/7
                    {
                        f''8.
                        r4
                    }
                }
                {
                    r1
                }
                {
                    \times 4/7
                    {
                        r8.
                        r8
                        d''8
                    }
                    r4
                    \times 2/3
                    {
                        r4
                        f''8
                        ~
                    }
                    f''4
                    ~
                }
                {
                    f''4
                    ~
                    \times 4/7
                    {
                        f''8.
                        ~
                        f''8
                        ~
                        f''16
                        r16
                    }
                    \times 4/7
                    {
                        r8.
                        r16
                        cs''16
                        ~
                        cs''8
                        ~
                    }
                    cs''4
                    ~
                }
                {
                    \times 2/3
                    {
                        cs''8
                        r4
                    }
                    r4
                    r8
                    \times 2/3
                    {
                        r8
                        b''16
                        ~
                    }
                    \times 2/3
                    {
                        b''8
                        r4
                    }
                }
                {
                    \times 4/7
                    {
                        r8.
                        r16
                        cs''16
                        ~
                        cs''8
                        ~
                    }
                    \times 4/5
                    {
                        cs''8.
                        r8
                    }
                    \times 4/5
                    {
                        r16
                        d''8
                        ~
                        d''16
                        r16
                    }
                    \times 4/7
                    {
                        r16
                        f''8
                        ~
                        f''4
                        ~
                    }
                }
                {
                    \times 2/3
                    {
                        f''16
                        b''8
                        ~
                    }
                    b''8
                    ~
                    \times 4/7
                    {
                        b''16
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
            \f
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
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 4/7
                    {
                        \time 4/4
                        \clef "bass"
                        \oneVoice
                        r16
                        fs16
                        r16
                        r4
                    }
                    \times 4/7
                    {
                        c8.
                        ~
                        c8
                        f,8
                    }
                    e,,4
                    _ \markup { e }
                    ~
                    \times 2/3
                    {
                        e,,8
                        g,,16
                    }
                    \times 2/3
                    {
                        c8
                        r16
                    }
                }
                {
                    r8
                    a,,,8
                    _ \markup { a }
                    \times 4/5
                    {
                        a8.
                        fs,,16
                        a,,,16
                        _ \markup { a }
                        ~
                    }
                    \times 4/7
                    {
                        a,,,8
                        cs,16
                        ~
                        cs,4
                        ~
                    }
                    cs,8
                    r8
                }
                {
                    r8.
                    bf,,,16
                    _ \markup { b }
                    \times 2/3
                    {
                        r16
                        bf,,,16
                        _ \markup { b }
                        b,,16
                        ~
                    }
                    b,,8
                    ~
                    \times 4/5
                    {
                        b,,16
                        bf,,8
                        ~
                        bf,,8
                        ~
                    }
                    \times 4/7
                    {
                        bf,,8.
                        ~
                        bf,,16
                        bf,16
                        ~
                        bf,8
                        ~
                    }
                }
                {
                    \times 2/3
                    {
                        bf,16
                        a,,,8
                        _ \markup { a }
                        ~
                    }
                    \times 2/3
                    {
                        a,,,16
                        cs,8
                        ~
                    }
                    \times 2/3
                    {
                        cs,8
                        b16
                        ~
                    }
                    b16
                    b16
                    ~
                    \times 4/7
                    {
                        b16
                        fs8
                        b,8
                        d8
                    }
                    a,,,4
                    _ \markup { a }
                }
                {
                    \times 4/7
                    {
                        b,,8.
                        ~
                        b,,16
                        af16
                        ~
                        af8
                    }
                    \times 4/7
                    {
                        r16
                        bf,,16
                        b,16
                        ~
                        b,4
                        ~
                    }
                    \times 4/7
                    {
                        b,16
                        c,,8
                        _ \markup { c }
                        ~
                        c,,4
                    }
                    fs,,4
                }
                {
                    \times 2/3
                    {
                        bf,,16
                        a,,,8
                        _ \markup { a }
                    }
                    a,,,8
                    _ \markup { a }
                    \times 4/7
                    {
                        \grace {
                            a,,,16
                            _ \markup { a }
                        }
                        fs,,16
                        g,8
                        ~
                        g,4
                    }
                    fs,,16
                    fs16
                    fs8
                    ~
                    \times 4/5
                    {
                        fs8
                        fs16
                        af8
                    }
                }
                {
                    \times 4/7
                    {
                        \grace {
                            fs16
                        }
                        d16
                        r8
                        r4
                    }
                    r4
                    \times 4/5
                    {
                        r8
                        bf,16
                        ~
                        bf,8
                        ~
                    }
                    bf,4
                    ~
                }
                {
                    bf,16
                    \grace {
                        bf,,16
                    }
                    af,16
                    ~
                    \times 2/3
                    {
                        af,16
                        af,8
                        ~
                    }
                    af,8
                    af,8
                    ~
                    \times 4/7
                    {
                        af,8
                        g,,16
                        ~
                        g,,8
                        a8
                        ~
                    }
                    \times 2/3
                    {
                        a16
                        af16
                        a16
                        ~
                    }
                    a16
                    r16
                }
                {
                    \times 4/5
                    {
                        r16
                        e,,16
                        _ \markup { e }
                        r16
                        r16
                        fs,,16
                        ~
                    }
                    fs,,8
                    \times 2/3
                    {
                        r16
                        c,,8
                        _ \markup { c }
                        ~
                    }
                    \times 4/5
                    {
                        c,,16
                        cs,8
                        ~
                        cs,16
                        r16
                    }
                    r4
                }
                {
                    \times 4/7
                    {
                        r8.
                        r8
                        b,,8
                        ~
                    }
                    \times 4/5
                    {
                        b,,8.
                        a,,,8
                        _ \markup { a }
                    }
                    d2
                }
                {
                    \times 4/7
                    {
                        \grace {
                            f,16
                        }
                        b8.
                        af8
                        cs,8
                        ~
                    }
                    \times 4/7
                    {
                        cs,8.
                        ~
                        cs,16
                        b,16
                        ~
                        b,8
                        ~
                    }
                    \times 4/7
                    {
                        b,8.
                        a,,4
                    }
                    \times 4/5
                    {
                        b16
                        a,,,16
                        _ \markup { a }
                        d16
                        ~
                        d8
                    }
                }
                {
                    \times 4/7
                    {
                        bf,16
                        b,,8
                        ~
                        b,,16
                        a,,16
                        ~
                        a,,8
                    }
                    \times 2/3
                    {
                        \grace {
                            b,16
                        }
                        g,4
                        c,,8
                        _ \markup { c }
                        ~
                    }
                    \times 4/5
                    {
                        c,,8
                        r16
                        r8
                    }
                    \times 2/3
                    {
                        b,8
                        g,,8
                        r8
                    }
                }
                {
                    r8.
                    a16
                    ~
                    \times 4/7
                    {
                        a16
                        r8
                        r8
                        b,,16
                        r16
                    }
                    \times 2/3
                    {
                        af,4
                        fs8
                        ~
                    }
                    \times 4/5
                    {
                        fs8.
                        ~
                        fs16
                        a,,,16
                        _ \markup { a }
                        ~
                    }
                }
                {
                    a,,,4
                    \times 4/5
                    {
                        cs,8.
                        ~
                        cs,16
                        b,16
                    }
                    \times 4/7
                    {
                        g,,8.
                        ~
                        g,,8
                        ~
                        g,,16
                        \grace {
                            af16
                        }
                        a16
                        ~
                    }
                    \times 4/5
                    {
                        a8
                        d16
                        ~
                        d16
                        b,,16
                        ~
                    }
                }
                {
                    b,,4
                    ~
                    \times 4/5
                    {
                        b,,8.
                        c16
                        r16
                    }
                    \times 4/7
                    {
                        r8.
                        r8
                        f,8
                    }
                    \times 4/7
                    {
                        r16
                        b8
                        b,,4
                        ~
                    }
                }
                {
                    \times 4/7
                    {
                        b,,16
                        bf,,,8
                        _ \markup { b }
                        ~
                        bf,,,4
                        ~
                    }
                    bf,,,8
                    \times 2/3
                    {
                        g,16
                        r8
                    }
                    r2
                }
                {
                    \times 4/7
                    {
                        r16
                        cs,16
                        r16
                        r16
                        f,16
                        ~
                        f,16
                        fs16
                    }
                    \times 4/7
                    {
                        fs,,8.
                        ~
                        fs,,16
                        r16
                        r8
                    }
                    \times 4/7
                    {
                        r8.
                        a16
                        r16
                        fs16
                        r16
                    }
                    \times 4/5
                    {
                        r8.
                        fs8
                        ~
                    }
                }
                {
                    fs8
                    ~
                    \times 2/3
                    {
                        fs16
                        g,,16
                        b16
                        ~
                    }
                    \times 4/7
                    {
                        b8.
                        ~
                        b16
                        fs,,16
                        ~
                        fs,,8
                    }
                    bf,,,4
                    _ \markup { b }
                    \grace {
                        bf,16
                    }
                    fs4
                    ~
                }
                {
                    \times 4/7
                    {
                        fs16
                        c,,8
                        _ \markup { c }
                        ~
                        c,,4
                        ~
                    }
                    \times 4/7
                    {
                        c,,8
                        a,,,16
                        _ \markup { a }
                        a,,4
                        ~
                    }
                    \times 4/7
                    {
                        a,,16
                        \grace {
                            a16
                        }
                        g,8
                        ~
                        g,8
                        c,,16
                        _ \markup { c }
                        r16
                    }
                    \times 4/7
                    {
                        r16
                        a,,,8
                        _ \markup { a }
                        ~
                        a,,,8
                        ~
                        a,,,16
                        r16
                    }
                }
                {
                    \times 4/7
                    {
                        r16
                        a,,8
                        ~
                        a,,8
                        ~
                        a,,16
                        fs,,16
                        ~
                    }
                    \times 2/3
                    {
                        fs,,8
                        af,4
                    }
                    \times 4/7
                    {
                        af16
                        c8
                        ~
                        c4
                    }
                    a,,4
                    ~
                }
                {
                    \times 2/3
                    {
                        a,,4
                        r8
                    }
                    r2.
                }
            }
        }
    >>
>>