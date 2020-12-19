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
            {
                \context Voice = "Piano RH Voice"
                {
                    {
                        \times 2/3 {
                            \times 2/3 {
                                \tempo 4=60
                                \time 4/4
                                r16
                                a''8
                                ~
                            }
                            a''8
                            ~
                            \times 4/5 {
                                a''8
                                r32
                            }
                        }
                        r4
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r32
                            fs'8
                            ~
                            fs'32
                            ~
                        }
                    }
                    {
                        fs'4
                        ~
                        \times 8/11 {
                            fs'8
                            ~
                            fs'32
                            a16.
                            r32
                            r32
                            r32
                        }
                        \times 2/3 {
                            r8
                            r8
                            r16
                            r32
                            ef''32
                            ~
                        }
                        \times 4/5 {
                            ef''8
                            ~
                            \times 2/3 {
                                ef''32
                                r32
                                r32
                            }
                            r16
                            r16
                        }
                    }
                    {
                        \times 2/3 {
                            r16
                            bf''4
                            ~
                            bf''16
                            ~
                        }
                        \times 4/7 {
                            bf''16
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                    }
                    {
                        r4
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            a''8
                            ~
                        }
                        \times 8/11 {
                            a''4
                            ~
                            a''16
                            a''32
                            ~
                        }
                    }
                    {
                        \times 4/7 {
                            a''16.
                            r32
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 8/11 {
                            r32
                            r32
                            r32
                            r32
                            r32
                            fs32
                            r32
                            r32
                            r32
                            r32
                            r32
                        }
                        \times 2/3 {
                            \times 2/3 {
                                r16
                                f'8
                                ~
                            }
                            f'4
                            ~
                        }
                        \times 2/3 {
                            f'4
                            r8
                        }
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
                            e'16
                            ~
                        }
                        e'2
                        ~
                    }
                    {
                        e'4
                        ~
                        \times 4/5 {
                            e'4
                            ~
                            \times 2/3 {
                                e'16
                                g''32
                                ~
                            }
                        }
                        g''32
                        b8..
                        ~
                        \times 2/3 {
                            b8..
                            r32
                            r8
                        }
                    }
                    {
                        r4
                        r4
                        r4
                        r4
                    }
                    {
                        \times 4/5 {
                            r16
                            c'4
                            ~
                        }
                        \times 4/7 {
                            c'4
                            fs'16
                            g''8
                            ~
                        }
                        g''2
                        ~
                    }
                    {
                        g''32
                        ef''16.
                        ~
                        \times 4/7 {
                            ef''8
                            af'16.
                            ~
                        }
                        af'4
                        ~
                        \times 4/7 {
                            af'4
                            ~
                            af'16
                            bf'8
                        }
                        bf4
                        ~
                    }
                    {
                        bf4
                        ~
                        \times 2/3 {
                            \times 2/3 {
                                bf8
                                af'16
                                ~
                            }
                            af'8
                            ~
                            \times 4/5 {
                                af'8
                                fs'32
                                ~
                            }
                        }
                        fs'4
                        r4
                    }
                    {
                        \times 2/3 {
                            r32
                            fs''4
                            ~
                            fs''16.
                            ~
                        }
                        fs''4
                        ~
                        \times 2/3 {
                            fs''16
                            a''16.
                            a32
                            r32
                            r32
                            r8
                        }
                        r4
                    }
                    {
                        \times 2/3 {
                            r8
                            r8
                            r16
                            b16
                            ~
                        }
                        \times 8/11 {
                            b4
                            ~
                            b32
                            r32
                            r32
                        }
                        r4
                        r4
                    }
                }
            }
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                }
            }
        >>
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()