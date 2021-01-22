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
                        \times 8/13 {
                            \tempo 4=60
                            \time 4/4
                            r32
                            bf''''32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                        }
                        r4
                        \times 4/7 {
                            a''16.
                            r32
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 8/13 {
                            fs'8.
                            r32
                            r32
                            c''''8
                            bf''''32
                            ~
                        }
                    }
                    {
                        \times 2/3 {
                            bf''''8
                            ~
                            \times 4/5 {
                                bf''''8
                                bf''''32
                            }
                            cs'32
                            af''32
                            g''32
                            r32
                        }
                        \times 2/3 {
                            af''''16.
                        }
                        bf'32.
                        r64
                        r8
                        \times 2/3 {
                            r8
                            r8
                            r16
                            r32
                            b'32
                            ~
                        }
                        \times 2/3 {
                            \times 2/3 {
                                b'8
                                a''16
                                ~
                            }
                            a''4
                        }
                    }
                    {
                        \times 2/3 {
                            r16
                            af''''16
                            ~
                            \times 4/5 {
                                af''''16.
                                r32
                                r32
                            }
                            \times 4/5 {
                                c''''16.
                                r32
                                r32
                            }
                        }
                        r4
                        r4
                        r16
                        cs'''8.
                    }
                    {
                        \times 4/5 {
                            f'''8
                            ~
                            \times 2/3 {
                                f'''16
                                \grace {
                                    a'16
                                }
                                cs'''32
                            }
                            r32
                            r32
                            a''16
                            ~
                        }
                        \times 4/5 {
                            a''16
                            f''''4
                            ~
                        }
                        \times 4/5 {
                            f''''32
                            r32
                            r32
                            bf''''32
                            ~
                            \times 2/3 {
                                bf''''16
                                r32
                            }
                            fs'8
                            ~
                        }
                        \times 2/3 {
                            \times 4/5 {
                                fs'32
                                r32
                                r32
                                r32
                                r32
                            }
                            \times 2/3 {
                                r16
                                bf'16
                                c'16
                                ~
                            }
                            \times 4/5 {
                                c'32
                                r32
                                r32
                                r32
                                r32
                            }
                        }
                    }
                    {
                        r4
                        \times 2/3 {
                            r8
                            \times 2/3 {
                                r16
                                a''8
                                ~
                            }
                            a''8
                            ~
                        }
                        \times 2/3 {
                            \times 2/3 {
                                a''8
                                ef''''16
                                ~
                            }
                            ef''''32
                            c'8..
                            ~
                        }
                        c'4
                        ~
                    }
                    {
                        c'4
                        ~
                        \times 2/3 {
                            c'16
                            bf''''16
                            r16
                        }
                        \times 4/7 {
                            r32
                            r32
                            r32
                            r32
                            r32
                            af''''32
                            r32
                        }
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            \times 2/3 {
                                r32
                                a'16
                                ~
                            }
                        }
                        \times 2/3 {
                            \times 2/3 {
                                a'16
                                r16
                                r16
                            }
                            \times 4/5 {
                                r32
                                r32
                                r32
                                a''16
                                ~
                            }
                            a''32
                            r32
                            r16
                        }
                    }
                    {
                        r64
                        f''''8...
                        ~
                        \times 8/11 {
                            f''''4
                            ~
                            f''''32
                            c''''16
                        }
                        \times 2/3 {
                            c''''16.
                            ~
                        }
                        c''''64
                        a''''32
                        fs'''64
                        ~
                        \times 4/7 {
                            fs'''8
                            ~
                            fs'''32
                            r32
                            r32
                        }
                        r4
                    }
                    {
                        \times 8/11 {
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            f'''8
                            ~
                            f'''32
                            ~
                        }
                        \times 4/5 {
                            f'''4
                            ~
                            f'''32
                            d'''32
                        }
                        r64
                        a''''32.
                        ~
                        \times 2/3 {
                            a''''16
                            r32
                        }
                        r8
                        \times 2/3 {
                            g''8
                            ~
                            \times 2/3 {
                                g''16
                                ef''''8
                                ~
                            }
                            \times 4/5 {
                                ef''''32
                                b'''8
                                ~
                            }
                        }
                    }
                    {
                        \times 2/3 {
                            b'''16
                            ef''8
                            ~
                        }
                        ef''16
                        ~
                        ef''64
                        c'''32.
                        ~
                        \times 2/3 {
                            \times 4/5 {
                                c'''32
                                c'16
                                f'16
                            }
                            fs'''8
                            ~
                            \times 4/5 {
                                fs'''32
                                \grace {
                                    a''''16
                                }
                                bf'32
                                bf'16.
                                ~
                            }
                        }
                        \times 2/3 {
                            bf'8
                            ~
                            \times 2/3 {
                                bf'8
                                c'16
                                ~
                            }
                            c'8
                            ~
                        }
                        \times 4/5 {
                            \times 2/3 {
                                c'16
                                af''''32
                                ~
                            }
                            af''''16
                            ~
                            \times 2/3 {
                                af''''32
                                bf''''16
                                ~
                            }
                            bf''''8
                            ~
                        }
                    }
                    {
                        \times 8/13 {
                            bf''''16.
                            af''''32
                            bf'''32
                            e'32
                            fs'''8..
                            ~
                        }
                        \times 2/3 {
                            fs'''16
                            \grace {
                                e''16
                            }
                            bf'32
                            ~
                        }
                        bf'32
                        d'''32
                        ~
                        \times 4/5 {
                            d'''32
                            r32
                            r32
                            r32
                            r32
                        }
                        \times 2/3 {
                            r8
                            r32
                            b'16
                            r32
                            r8
                        }
                        r16
                        r32
                        r64
                        af''64
                        \times 2/3 {
                            r16
                            r16
                            r16
                        }
                    }
                    {
                        r4
                        \times 2/3 {
                            r16
                            r16
                            bf'16
                            ~
                        }
                        bf'32.
                        af''''64
                        ~
                        \times 2/3 {
                            af''''32
                            r32
                            r32
                        }
                        \times 8/13 {
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            a'8
                        }
                        \times 4/5 {
                            r32
                            r32
                            r16
                            r16
                            r32
                            a'16.
                            ~
                        }
                    }
                    {
                        a'64
                        af''16
                        ~
                        af''64
                        d''32.
                        bf'16..
                        ~
                        \times 2/3 {
                            \times 4/5 {
                                bf'16
                                a''16.
                                ~
                            }
                            \times 4/5 {
                                a''16
                                r32
                                d'''16
                                ~
                            }
                            \times 2/3 {
                                d'''16
                                e''''8
                                ~
                            }
                        }
                        \times 8/11 {
                            e''''32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                        }
                        r4
                    }
                    {
                        \times 2/3 {
                            r8
                            r8
                            r16
                            a'16
                        }
                        \times 4/7 {
                            r32
                            r32
                            a''16.
                            r32
                            r32
                        }
                        r8
                        r4
                        r4
                    }
                }
            >>
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                }
            }
        >>
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()