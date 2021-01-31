\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

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
                    \times 8/11 {
                        \ottava 0
                        \time 4/4
                        g'''8
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        \ottava 0
                        bf'8
                        r8
                        r8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        ef'4
                        \ottava 0
                        ef'''8
                        \ottava 0
                        cs'''4
                        \ottava 0
                        d''8
                        \grace {
                            \ottava 0
                            e''16
                        }
                        \ottava 0
                        g'''8
                        \ottava 1
                        a'''8
                        \ottava 1
                        d''''8
                        \ottava 0
                        b'8
                        \ottava 1
                        a'''4.
                        ~
                    }
                }
                {
                    \times 4/5 {
                        \ottava 1
                        a'''4
                        \ottava 0
                        g'''8
                        \ottava 0
                        bf'8
                        \grace {
                            \ottava 0
                            d''16
                        }
                        \ottava 0
                        c'8
                        \grace {
                            \ottava 0
                            g'''16
                        }
                        \ottava 0
                        c'8
                        \ottava 0
                        b'8
                        r8
                        \ottava 0
                        g'''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        r8
                        r8
                        r8
                        r8
                        \ottava 1
                        fs''''8
                        \ottava 0
                        r8
                        r8
                        \ottava 1
                        d''''8
                        \ottava 1
                        c''''4
                        \ottava 0
                        cs'''8
                        \ottava 1
                        b''''8
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        r8
                        \ottava 0
                        a''8
                        \ottava 1
                        af'''8
                        \ottava 0
                        r8
                        r8
                        r8
                        \ottava 0
                        c'8
                        \grace {
                            \ottava 0
                            a'16
                        }
                        \ottava 1
                        fs''''4
                        \ottava 0
                        r8
                        \ottava 0
                        d''8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        d''8
                        \ottava 0
                        d''8
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        \ottava 0
                        c'4
                        \grace {
                            \ottava 1
                            af''''16
                        }
                        \ottava 0
                        f'8
                        r8
                        r8
                    }
                }
                {
                    r2
                    \times 4/5 {
                        \ottava 1
                        fs''''4
                        \ottava 0
                        bf''4
                        \ottava 0
                        d''8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 1
                        c''''8
                        \ottava 0
                        r8
                        r8
                        r8
                        \ottava 0
                        e''8
                        r8
                        r8
                        \ottava 0
                        ef'''8
                        \ottava 0
                        d''8
                        \ottava 0
                        b'4
                        \grace {
                            \ottava 0
                            b'16
                        }
                        \ottava 0
                        ef'''8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        af''8
                        r8
                        r8
                        r8
                        \ottava 0
                        d''8
                        r8
                        r8
                        \ottava 0
                        g'''8
                        r8
                        r8
                        r8
                        r8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        r8
                        \ottava 1
                        c''''4
                        \ottava 0
                        r8
                        r8
                        r8
                        \ottava 0
                        b'8
                        \ottava 0
                        g'''8
                        \ottava 0
                        g'''8
                        r8
                        r8
                        \ottava 0
                        af''8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 1
                        af'''8
                        \ottava 0
                        ef'2
                        \grace {
                            \ottava 1
                            b''''16
                        }
                        \ottava 1
                        af'''4
                        \ottava 0
                        c'8
                        \ottava 1
                        af'''8
                        \grace {
                            \ottava 0
                            af''16
                        }
                        \ottava 1
                        fs''''8
                        \grace {
                            \ottava 0
                            g'''16
                        }
                        \ottava 1
                        af''''8
                        \grace {
                            \ottava 0
                            ef'16
                        }
                        \ottava 0
                        bf''8
                        \ottava 0
                        d''8
                    }
                }
                {
                    \times 8/11 {
                        \ottava 1
                        a'''8
                        \ottava 1
                        g''''4
                        \ottava 1
                        fs''''8
                        \ottava 1
                        af''''8
                        \ottava 0
                        r8
                        \ottava 0
                        ef'''4.
                        \grace {
                            \ottava 1
                            b''''16
                        }
                        \ottava 1
                        g''''8
                        \ottava 0
                        bf'8
                    }
                }
                {
                    \times 8/11 {
                        \grace {
                            \ottava 1
                            b''''16
                        }
                        \ottava 0
                        bf'8
                        \ottava 0
                        bf''8
                        \ottava 1
                        af''''8
                        \ottava 0
                        a'8
                        r8
                        r8
                        r8
                        \ottava 1
                        c''''2
                        ~
                    }
                }
                {
                    \times 2/3 {
                        \times 2/3 {
                            \ottava 1
                            c''''2
                            \ottava 1
                            a'''4
                        }
                        \ottava 0
                        bf'4
                        r4
                        \times 2/3 {
                            \ottava 0
                            d''4
                            \ottava 1
                            a'''2
                        }
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        a'8
                        \grace {
                            \ottava 0
                            ef'''16
                        }
                        \ottava 1
                        a'''4.
                        \ottava 0
                        c'8
                        \ottava 1
                        af'''8
                        \grace {
                            \ottava 1
                            af'''16
                        }
                        \ottava 1
                        af'''8
                        \grace {
                            \ottava 1
                            g''''16
                        }
                        \ottava 0
                        ef'4
                        r8
                        \ottava 0
                        bf'8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        \ottava 0
                        af''4
                        \ottava 1
                        g''''4.
                    }
                }
                r1
            }
        >>
        \context Staff = "LH Staff"
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 2/3 {
                        \time 4/4
                        r4
                        \ottava 0
                        f,4
                        \times 2/3 {
                            \ottava 0
                            f4
                            \ottava 0
                            b,2
                            ~
                        }
                        \ottava 0
                        b,2
                        ~
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        b,2
                        ~
                        \ottava 0
                        b,8
                        \ottava 0
                        bf8
                        r8
                        \grace {
                            \ottava -1
                            f,,16
                            \ottava 0
                            b,16
                        }
                        \ottava 0
                        ef4
                        \ottava 0
                        fs,8
                        \ottava 0
                        f,8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        ef8
                        \ottava 0
                        f8
                        \ottava -1
                        bf,,4
                        \grace {
                            \ottava -1
                            g,,16
                        }
                        \ottava 0
                        b,8
                        \ottava 0
                        b,8
                        \ottava -1
                        cs,,8
                        \ottava 0
                        r8
                        r8
                        r8
                        \ottava 0
                        bf8
                        \grace {
                            \ottava -1
                            g,,16
                        }
                        \ottava 0
                        e8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        \ottava 0
                        bf4.
                        \ottava 0
                        e,4.
                        \ottava -1
                        cs,,2
                        \ottava 0
                        a,8
                        \ottava 0
                        e8
                    }
                }
                {
                    \times 2/3 {
                        \times 2/3 {
                            \ottava -1
                            b,,,4
                            \ottava 0
                            r4
                            \ottava -1
                            bf,,4
                            ~
                        }
                        \times 2/3 {
                            \ottava -1
                            bf,,4
                            \ottava 0
                            af4
                            r4
                        }
                        \ottava 0
                        e4
                        \ottava -1
                        fs,,4
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        af8
                        \ottava -1
                        g,,8
                        \ottava -1
                        g,,8
                        \ottava -1
                        g,,8
                        \ottava 0
                        a,8
                        \grace {
                            \ottava 0
                            f16
                        }
                        \ottava 0
                        f8
                        \ottava -1
                        bf,,4
                        \ottava 0
                        fs,8
                        \grace {
                            \ottava 0
                            fs,16
                        }
                        \ottava 0
                        e,4
                    }
                }
                {
                    \times 8/13 {
                        r8
                        \ottava -1
                        g,,8
                        \ottava -1
                        f,,2.
                        \ottava -1
                        b,,,8
                        \ottava 0
                        r8
                        \ottava 0
                        c,4
                        \ottava 0
                        af8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        a,8
                        r8
                        \ottava -1
                        f,,2..
                        \ottava 0
                        bf8
                        \ottava 0
                        e4
                        \ottava 0
                        af8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        af4
                        \grace {
                            \ottava 0
                            e16
                        }
                        \ottava 0
                        f4
                        \grace {
                            \ottava 0
                            bf16
                        }
                        \ottava 0
                        b,4
                        \ottava -1
                        fs,,8
                        \ottava 0
                        bf4
                        \ottava 0
                        f2
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        f8
                        \grace {
                            \ottava 0
                            e16
                        }
                        \ottava 0
                        e,8
                        r8
                        r8
                        r8
                        \ottava -1
                        f,,8
                        \ottava 0
                        b,8
                        \ottava 0
                        c,8
                        \ottava -1
                        f,,8
                        \ottava 0
                        r8
                        \ottava -1
                        fs,,4.
                    }
                }
                {
                    \times 4/7 {
                        \grace {
                            \ottava 0
                            b,16
                        }
                        \ottava -1
                        fs,,4
                        \ottava -1
                        cs,,2.
                        \ottava -1
                        fs,,2.
                        ~
                    }
                }
                {
                    \ottava -1
                    fs,,4
                    \ottava -1
                    cs,,4
                    ~
                    \times 4/5 {
                        \ottava -1
                        cs,,4
                        \ottava 0
                        fs,8
                        \grace {
                            \ottava 0
                            ef16
                        }
                        \ottava -1
                        b,,,8
                        \ottava 0
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        ef8
                        \ottava 0
                        ef8
                        \ottava -1
                        fs,,4.
                        \ottava 0
                        c,4
                        \ottava -1
                        fs,,8
                        \ottava -1
                        g,,8
                        \ottava 0
                        ef8
                        \ottava 0
                        fs,8
                        r8
                        \ottava 0
                        ef8
                    }
                }
                {
                    \times 8/13 {
                        \ottava -1
                        b,,,2
                        \ottava -1
                        bf,,4
                        \ottava 0
                        e8
                        r8
                        r8
                        \ottava 0
                        f,4.
                        \ottava 0
                        ef8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        \ottava 0
                        fs,4
                        r8
                        r8
                        \ottava -1
                        b,,,8
                        \ottava 0
                        e,8
                        r8
                        r8
                        r8
                        r8
                        \ottava -1
                        g,,8
                        \ottava 0
                        f8
                    }
                }
                {
                    \times 8/13 {
                        r8
                        r8
                        r8
                        r8
                        r8
                        r8
                        \ottava -1
                        b,,,8
                        \ottava 0
                        r8
                        r8
                        r8
                        \ottava -1
                        f,,8
                        \ottava 0
                        bf8
                        \ottava 0
                        e,8
                    }
                }
                {
                    \ottava -1
                    cs,,4
                    \ottava 0
                    r4
                    r2
                }
            }
        }
    >>
>>