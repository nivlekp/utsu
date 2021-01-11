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
                        \times 4/5 {
                            r16
                            r16
                            r16
                            f''8
                            ~
                        }
                    }
                    {
                        f''1
                        ~
                    }
                    {
                        f''1
                        ~
                    }
                    {
                        f''1
                        ~
                    }
                    {
                        f''2.
                        ~
                        \times 4/5 {
                            f''16
                            \grace {
                                b'16
                                bf'16
                            }
                            r16
                            r16
                            r16
                            r16
                        }
                    }
                    {
                        e'4
                        ~
                        \times 2/3 {
                            e'16
                            r16
                            r16
                        }
                        r8
                        r4
                        r4
                    }
                    {
                        \times 4/7 {
                            r16
                            r16
                            b''4
                            ~
                            b''16
                            ~
                        }
                        b''4
                        ~
                        \times 2/3 {
                            b''4
                            cs''8
                            ~
                        }
                        cs''4
                        ~
                    }
                    {
                        cs''8
                        r8
                        r4
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
