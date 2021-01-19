    \context Score = "Piano Score"
    <<
        \context StaffGroup = "Piano Staff Group"
        <<
            \context Staff = "RH Staff"
            <<
                \context Voice = "Piano RH Voice1"
                {
                    {
                        \override Stem.direction = #down
                        \tempo 4=60
                        \time 4/4
                        \clef "treble"
                        r4
                        r4
                        r4
                        r4
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #down
                        r4
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            cs'8
                            ~
                        }
                        cs'4
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #down
                        cs'4
                        ~
                        \times 4/7 {
                            cs'16
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 2/3 {
                            r8
                            c'4
                            ~
                        }
                        c'4
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #down
                        \times 2/3 {
                            c'4
                            e'8
                            ~
                        }
                        e'4
                        r4
                        r4
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #down
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                            c'16
                            ~
                        }
                        c'2.
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #down
                        c'4
                        ~
                        \times 4/7 {
                            c'4
                            ~
                            c'16
                            bf'8
                            ~
                        }
                        \times 2/3 {
                            bf'4
                            af'8
                            ~
                        }
                        \times 2/3 {
                            af'4
                            r8
                        }
                        \revert Stem.direction
                    }
                }
                \context Voice = "Piano RH Voice"
                {
                    {
                        \override Stem.direction = #up
                        \tempo 4=60
                        \time 4/4
                        \clef "treble"
                        r4
                        r4
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            ef''8
                            ~
                        }
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        ef''1
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        ef''1
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        ef''1
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        ef''2.
                        ~
                        \times 4/5 {
                            ef''16
                            \grace {
                                d''16
                                d''16
                            }
                            r16
                            r16
                            r16
                            r16
                        }
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        cs''4
                        ~
                        \times 2/3 {
                            cs''16
                            r16
                            r16
                        }
                        r8
                        r4
                        r4
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        \times 4/7 {
                            r16
                            r16
                            f''4
                            ~
                            f''16
                            ~
                        }
                        f''4
                        ~
                        \times 2/3 {
                            f''4
                            d''8
                            ~
                        }
                        d''4
                        ~
                        \revert Stem.direction
                    }
                    {
                        \override Stem.direction = #up
                        d''8
                        r8
                        r4
                        r4
                        r4
                        \revert Stem.direction
                    }
                }
            >>
            \context Staff = "LH Staff"
            {
                \context Voice = "Piano LH Voice"
                {
                    {
                        \tempo 4=60
                        \time 4/4
                        \clef "bass"
                        r4
                        r4
                        r4
                        r8
                        \times 2/3 {
                            r16
                            r16
                            fs16
                            ~
                        }
                    }
                    {
                        fs4
                        ~
                        \times 2/3 {
                            fs4
                            c8
                            ~
                        }
                        \times 4/7 {
                            c16
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                    }
                    {
                        r4
                        r4
                        \times 4/5 {
                            r16
                            r16
                            f,8.
                        }
                        r4
                    }
                    {
                        e,,2.
                        ~
                        \times 2/3 {
                            e,,16
                            g,,8
                        }
                        \times 2/3 {
                            c8
                            a,,,16
                            ~
                        }
                    }
                    {
                        a,,,16
                        a2...
                        ~
                    }
                    {
                        \times 4/7 {
                            a4
                            ~
                            a16
                            r16
                            fs,,16
                            ~
                        }
                        \times 4/5 {
                            fs,,8
                            r16
                            r16
                            r16
                        }
                        \times 2/3 {
                            r8
                            a,,,4
                            ~
                        }
                        a,,,4
                    }
                    {
                        r4
                        \times 4/5 {
                            r16
                            r16
                            cs,8.
                            ~
                        }
                        cs,4
                        ~
                        \times 2/3 {
                            cs,8
                            r8
                            r8
                        }
                    }
                    {
                        r4
                        \times 4/7 {
                            r16
                            bf,,,4.
                            ~
                        }
                        \times 4/5 {
                            bf,,,4
                            r16
                        }
                        r4
                    }
                }
            }
        >>
    >>
