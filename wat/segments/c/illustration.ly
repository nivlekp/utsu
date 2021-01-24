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
                        \times 8/11 {
                            \tempo 4=60
                            \time 4/4
                            g'''8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            bf'8
                            r8
                            r8
                            r8
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
                            d''''8
                            b'8
                            a'''4.
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
                            r8
                            r8
                            r8
                            r8
                            r8
                            fs''''8
                            r8
                            r8
                            d''''8
                            c''''4
                            cs'''8
                            b''''8
                        }
                    }
                    {
                        \times 8/11 {
                            r8
                            a''8
                            af'''8
                            r8
                            r8
                            r8
                            c'8
                            \grace {
                                a'16
                            }
                            fs''''4
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
                            r8
                            r8
                            r8
                            r8
                            r8
                            c'4
                            \grace {
                                af''''16
                            }
                            f'8
                            r8
                            r8
                        }
                    }
                    {
                        r2
                        \times 4/5 {
                            fs''''4
                            bf''4
                            d''8
                        }
                    }
                    {
                        \times 8/13 {
                            c''''8
                            r8
                            r8
                            r8
                            e''8
                            r8
                            r8
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
                            r8
                            r8
                            r8
                            d''8
                            r8
                            r8
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
                            c''''4
                            r8
                            r8
                            r8
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
                            af'''8
                            ef'2
                            \grace {
                                b''''16
                            }
                            af'''4
                            c'8
                            af'''8
                            \grace {
                                af''16
                            }
                            fs''''8
                            \grace {
                                g'''16
                            }
                            af''''8
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
                            g''''4
                            fs''''8
                            af''''8
                            r8
                            ef'''4.
                            \grace {
                                b''''16
                            }
                            g''''8
                            bf'8
                        }
                    }
                    {
                        \times 8/11 {
                            \grace {
                                b''''16
                            }
                            bf'8
                            bf''8
                            af''''8
                            a'8
                            r8
                            r8
                            r8
                            c''''2
                            ~
                        }
                    }
                    {
                        \times 2/3 {
                            \times 2/3 {
                                c''''2
                                a'''4
                            }
                            bf'4
                            r4
                            \times 2/3 {
                                d''4
                                a'''2
                            }
                        }
                    }
                    {
                        \times 8/11 {
                            a'8
                            \grace {
                                ef'''16
                            }
                            a'''4.
                            c'8
                            af'''8
                            \grace {
                                af'''16
                            }
                            af'''8
                            \grace {
                                g''''16
                            }
                            ef'4
                            r8
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
                            af''4
                            g''''4.
                        }
                    }
                }
            >>
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                    {
                        \times 2/3 {
                            \tempo 4=60
                            \time 4/4
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
                            b,2
                            ~
                            b,8
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
                            bf,,4
                            \grace {
                                g,,16
                            }
                            b,8
                            b,8
                            cs,,8
                            r8
                            r8
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
                            bf4.
                            e,4.
                            cs,,2
                            a,8
                            e8
                        }
                    }
                    {
                        \times 2/3 {
                            \times 2/3 {
                                b,,,4
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
                            bf,,4
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
                            f,,2.
                            b,,,8
                            r8
                            c,4
                            af8
                        }
                    }
                    {
                        \times 8/13 {
                            a,8
                            r8
                            f,,2..
                            bf8
                            e4
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
                            f4
                            \grace {
                                bf16
                            }
                            b,4
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
                            r8
                            r8
                            f,,8
                            b,8
                            c,8
                            f,,8
                            r8
                            fs,,4.
                        }
                    }
                    {
                        \times 4/7 {
                            \grace {
                                b,16
                            }
                            fs,,4
                            cs,,2.
                            fs,,2.
                            ~
                        }
                    }
                    {
                        fs,,4
                        cs,,4
                        ~
                        \times 4/5 {
                            cs,,4
                            fs,8
                            \grace {
                                ef16
                            }
                            b,,,8
                            r8
                        }
                    }
                    {
                        \times 8/13 {
                            ef8
                            ef8
                            fs,,4.
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
                            b,,,2
                            bf,,4
                            e8
                            r8
                            r8
                            f,4.
                            ef8
                        }
                    }
                    {
                        \times 8/13 {
                            r8
                            fs,4
                            r8
                            r8
                            b,,,8
                            e,8
                            r8
                            r8
                            r8
                            r8
                            g,,8
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
                            b,,,8
                            r8
                            r8
                            r8
                            f,,8
                            bf8
                            e,8
                        }
                    }
                    {
                        cs,,4
                        r4
                        r2
                    }
                }
            }
        >>
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()