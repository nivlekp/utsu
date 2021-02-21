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
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \times 8/11 {
                        \oneVoice
                        g'''8
                        r4
                        r2
                        bf'8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        ef'4
                        ef'''8
                        cs'''4
                        d''8
                        \grace {
                            e''16
                        }
                        g'''8
                        a'''8
                        ^ \markup { a }
                        d''''8
                        ^ \markup { d }
                        b'8
                        a'''8
                        ^ \markup { a }
                        ~
                        a'''4
                        ~
                    }
                }
                {
                    \times 4/5 {
                        a'''4
                        g'''8
                        bf'8
                        \grace {
                            d''16
                        }
                        c'8
                        \grace {
                            g'''16
                        }
                        c'8
                        b'8
                        r8
                        g'''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        fs''''8
                        ^ \markup { f }
                        r8
                        r8
                        d''''8
                        ^ \markup { d }
                        c''''4
                        ^ \markup { c }
                        cs'''8
                        b''''8
                        ^ \markup { b }
                    }
                }
                {
                    \times 8/11 {
                        r8
                        a''8
                        af'''8
                        r4
                        r8
                        c'8
                        \grace {
                            a'16
                        }
                        fs''''4
                        ^ \markup { f }
                        r8
                        d''8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        d''8
                        d''8
                        r8
                        r2
                        r8
                        c'8
                        ~
                        c'8
                        \grace {
                            af''''16
                            ^ \markup { a }
                        }
                        f'8
                        r4
                    }
                }
                {
                    r2
                    \times 4/5 {
                        fs''''4
                        ^ \markup { f }
                        bf''8
                        ~
                        bf''8
                        d''8
                    }
                }
                {
                    \times 8/13 {
                        c''''8
                        ^ \markup { c }
                        r4
                        r8
                        e''8
                        r4
                        ef'''8
                        d''8
                        b'4
                        \grace {
                            b'16
                        }
                        ef'''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        af''8
                        r4
                        r8
                        d''8
                        r4
                        g'''8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r4
                        c''''8
                        ^ \markup { c }
                        ~
                        c''''8
                        r8
                        r4
                        b'8
                        g'''8
                        g'''8
                        r8
                        r8
                        af''8
                    }
                }
                {
                    \times 8/13 {
                        \grace {
                            s16 * 13/14
                        }
                        af'''8
                        ef'4
                        ~
                        ef'4
                        \grace {
                            b''''16
                            ^ \markup { b }
                        }
                        af'''4
                        c'8
                        af'''8
                        \grace {
                            af''16
                        }
                        fs''''8
                        ^ \markup { f }
                        \grace {
                            g'''16
                        }
                        af''''8
                        ^ \markup { a }
                        \grace {
                            ef'16
                        }
                        bf''8
                        d''8
                    }
                }
                {
                    \times 8/11 {
                        a'''8
                        ^ \markup { a }
                        g''''4
                        ^ \markup { g }
                        fs''''8
                        ^ \markup { f }
                        af''''8
                        ^ \markup { a }
                        r8
                        ef'''8
                        ~
                        ef'''4
                        \grace {
                            b''''16
                            ^ \markup { b }
                        }
                        g''''8
                        ^ \markup { g }
                        bf'8
                    }
                }
                {
                    \times 8/11 {
                        \grace {
                            b''''16
                            ^ \markup { b }
                        }
                        bf'8
                        bf''8
                        af''''8
                        ^ \markup { a }
                        a'8
                        r8
                        r4
                        c''''2
                        ^ \markup { c }
                        ~
                    }
                }
                {
                    \times 2/3 {
                        \times 2/3 {
                            c''''2
                            a'''4
                            ^ \markup { a }
                        }
                        bf'4
                        r4
                        \times 2/3 {
                            d''4
                            a'''2
                            ^ \markup { a }
                        }
                    }
                }
                {
                    \times 8/11 {
                        a'8
                        \grace {
                            ef'''16
                        }
                        a'''4
                        ^ \markup { a }
                        ~
                        a'''8
                        c'8
                        af'''8
                        \grace {
                            af'''16
                        }
                        af'''8
                        \grace {
                            g''''16
                            ^ \markup { g }
                        }
                        ef'4
                        r8
                        bf'8
                    }
                }
                {
                    \times 8/13 {
                        r2..
                        r8
                        af''8
                        ~
                        af''8
                        g''''8
                        ^ \markup { g }
                        ~
                        g''''4
                    }
                }
                r1
            }
        >>
        \context Dynamics = "Dynamics"
        {
            s1
            \ff
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
                    \times 2/3 {
                        \oneVoice
                        r4
                        f,4
                        \times 2/3 {
                            f4
                            b,2
                            ~
                        }
                        b,2
                        ~
                    }
                }
                {
                    \times 8/11 {
                        b,4.
                        ~
                        b,4
                        bf8
                        r8
                        \grace {
                            f,,16
                            b,16
                        }
                        ef4
                        fs,8
                        f,8
                    }
                }
                {
                    \times 8/13 {
                        ef8
                        f8
                        bf,,8
                        ~
                        bf,,8
                        \grace {
                            g,,16
                        }
                        b,8
                        b,8
                        cs,,8
                        _ \markup { c }
                        r4
                        r8
                        bf8
                        \grace {
                            g,,16
                        }
                        e8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        bf4
                        ~
                        bf8
                        e,8
                        ~
                        e,4
                        cs,,2
                        _ \markup { c }
                        a,8
                        e8
                    }
                }
                {
                    \times 2/3 {
                        \times 2/3 {
                            b,,,4
                            _ \markup { b }
                            r4
                            bf,,4
                            ~
                        }
                        \times 2/3 {
                            bf,,4
                            af4
                            r4
                        }
                        e4
                        fs,,4
                    }
                }
                {
                    \times 8/11 {
                        af8
                        g,,8
                        g,,8
                        g,,8
                        a,8
                        \grace {
                            f16
                        }
                        f8
                        bf,,8
                        ~
                        bf,,8
                        fs,8
                        \grace {
                            fs,16
                        }
                        e,4
                    }
                }
                {
                    \times 8/13 {
                        r8
                        g,,8
                        f,,8
                        ~
                        f,,2
                        ~
                        f,,8
                        b,,,8
                        _ \markup { b }
                        r8
                        c,8
                        ~
                        c,8
                        af8
                    }
                }
                {
                    \times 8/13 {
                        a,8
                        r8
                        f,,8
                        ~
                        f,,2.
                        bf8
                        e8
                        ~
                        e8
                        af8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        af4
                        \grace {
                            e16
                        }
                        f8
                        ~
                        f8
                        \grace {
                            bf16
                        }
                        b,8
                        ~
                        b,8
                        fs,,8
                        bf4
                        f2
                        ~
                    }
                }
                {
                    \times 8/13 {
                        f8
                        \grace {
                            e16
                        }
                        e,8
                        r8
                        r4
                        f,,8
                        b,8
                        c,8
                        f,,8
                        r8
                        fs,,8
                        ~
                        fs,,4
                    }
                }
                {
                    \times 4/7 {
                        \grace {
                            b,16
                        }
                        fs,,4
                        cs,,2
                        _ \markup { c }
                        ~
                        cs,,4
                        fs,,4
                        ~
                        fs,,2
                        ~
                    }
                }
                {
                    fs,,4
                    cs,,4
                    _ \markup { c }
                    ~
                    \times 4/5 {
                        cs,,4
                        fs,8
                        \grace {
                            ef16
                        }
                        b,,,8
                        _ \markup { b }
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \grace {
                            s16 * 13/11
                        }
                        ef8
                        ef8
                        fs,,8
                        ~
                        fs,,4
                        c,4
                        fs,,8
                        g,,8
                        ef8
                        fs,8
                        r8
                        ef8
                    }
                }
                {
                    \times 8/13 {
                        b,,,4.
                        _ \markup { b }
                        ~
                        b,,,8
                        bf,,8
                        ~
                        bf,,8
                        e8
                        r4
                        f,4
                        ~
                        f,8
                        ef8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        fs,4
                        r4
                        b,,,8
                        _ \markup { b }
                        e,8
                        r2
                        g,,8
                        f8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        r8
                        b,,,8
                        _ \markup { b }
                        r4
                        r8
                        f,,8
                        bf8
                        e,8
                    }
                }
                {
                    cs,,4
                    _ \markup { c }
                    r2.
                }
            }
        }
    >>
>>