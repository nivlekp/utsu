\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header {}

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
                        \times 8/13 {
                            \tempo 4=60
                            \time 4/4
                            a''4
                            ~
                            a''16.
                            fs'16
                            ~
                        }
                        fs'4
                        ~
                        \times 8/11 {
                            fs'8..
                            a16.
                            ef''32
                            ~
                        }
                        \times 4/5 {
                            ef''8
                            ~
                            \times 2/3 {
                                ef''32
                                bf''16
                                ~
                            }
                            bf''8
                            ~
                        }
                    }
                    {
                        bf''16..
                        a''8
                        ~
                        a''64
                        ~
                        \times 4/5 {
                            a''8.
                            ~
                            \times 2/3 {
                                a''16
                                a''32
                                ~
                            }
                            a''16
                            ~
                        }
                        \times 4/7 {
                            a''32
                            fs32
                            f'8
                            ~
                            f'32
                            ~
                        }
                        f'8
                        ~
                        \times 4/5 {
                            f'8..
                            e'16.
                            ~
                        }
                    }
                    {
                        e'2.
                        ~
                        \times 2/3 {
                            e'4
                            ~
                            \times 2/3 {
                                e'16
                                g''8
                            }
                        }
                    }
                    {
                        b4
                        ~
                        \times 4/7 {
                            b8.
                            c'4
                            ~
                        }
                        \times 2/3 {
                            c'4
                            ~
                            \times 4/5 {
                                c'16
                                fs'16
                                g''32
                                ~
                            }
                        }
                        g''4
                        ~
                    }
                    {
                        g''4
                        ~
                        \times 8/11 {
                            g''8
                            ef''8..
                        }
                        af'4....
                        bf'64
                        ~
                    }
                    {
                        \times 8/13 {
                            bf'16.
                            bf4
                            ~
                            bf16
                            ~
                        }
                        bf4
                        ~
                        \times 8/13 {
                            bf8.
                            af'8..
                            ~
                        }
                        \times 4/5 {
                            af'16
                            fs'4
                            ~
                        }
                    }
                    {
                        fs'16
                        fs''2
                        ~
                        fs''64
                        a''16
                        a32
                        b16
                        ~
                        b64
                        ~
                        \times 2/3 {
                            b4
                            r8
                        }
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