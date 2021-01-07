    \context Score = "Piano Score"
    <<
        \context StaffGroup = "Piano Staff Group"
        <<
            \context Staff = "RH Staff"
            {
                \context Voice = "Piano RH Voice"
                {
                    {
                        \tempo 4=60
                        \time 4/4
                        \clef "treble"
                        r4
                        r4
                        r4
                        r4
                    }
                    {
                        r4
                        r4
                        \times 8/11 {
                            r32
                            r32
                            r32
                            f''4
                            ~
                        }
                        \times 8/11 {
                            f''8
                            ~
                            f''32
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                        }
                    }
                    {
                        \times 8/11 {
                            r32
                            b'4
                            ~
                            b'16
                            ~
                        }
                        b'2.
                        ~
                    }
                    {
                        b'4
                        ~
                        \times 4/7 {
                            b'8.
                            r16
                            r16
                            r16
                            r16
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
                    {
                        \tempo 4=60
                        \time 4/4
                        \clef "bass"
                        r4
                        r4
                        r4
                        \times 4/5 {
                            r16
                            r16
                            \times 2/3 {
                                r32
                                fs16
                                ~
                            }
                            fs8
                            ~
                        }
                    }
                    {
                        fs4
                        ~
                        \times 8/11 {
                            fs8
                            ~
                            fs32
                            c8.
                            ~
                        }
                        \times 8/13 {
                            c8
                            ~
                            c32
                            f,4
                            ~
                        }
                        \times 2/3 {
                            f,4
                            r8
                        }
                    }
                    {
                        \times 8/13 {
                            r32
                            r32
                            r32
                            r32
                            r32
                            r32
                            e,,8..
                            ~
                        }
                        e,,2.
                        ~
                    }
                    {
                        e,,2
                        ~
                        \times 8/11 {
                            e,,8
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
                }
            }
        >>
    >>
