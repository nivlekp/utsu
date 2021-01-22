    \context Score = "Piano Score"
    <<
        \context StaffGroup = "Piano Staff Group"
        <<
            \context Staff = "RH Staff"
            <<
                \context Voice = "Piano RH Voice1"
                {
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        \tempo 4=60
                        \time 4/4
                        \clef "treble"
                        r4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        \times 4/7 {
                            r16
                            cs'4.
                            ~
                        }
                        cs'8.
                        c'4
                        ~
                        c'16
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        c'4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            e'4
                            ~
                        }
                        e'4
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        e'2
                        ~
                        \times 4/7 {
                            e'16
                            c'4.
                            ~
                        }
                        \times 4/5 {
                            c'16
                            r16
                            r16
                            r16
                            r16
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                            bf'16
                            ~
                        }
                        \times 4/5 {
                            bf'4
                            r16
                        }
                        r8
                        \times 2/3 {
                            r16
                            r16
                            af'16
                            ~
                        }
                        \times 4/7 {
                            af'16
                            r16
                            r16
                            r16
                            af'8.
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        af'4
                        ~
                        \times 4/5 {
                            af'8.
                            e'8
                            ~
                        }
                        e'8
                        r8
                        \times 2/3 {
                            r16
                            bf'8
                            ~
                        }
                        bf'8
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        bf'4
                        e'4
                        bf'4.
                        r8
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            d'8
                            ~
                        }
                        d'4
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        d'1
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        d'4
                        ~
                        \times 4/7 {
                            d'16
                            d'4.
                            ~
                        }
                        d'4
                        ~
                        \times 4/5 {
                            d'8
                            c'8.
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        c'4
                        ~
                        \times 4/7 {
                            c'4
                            b'8.
                            ~
                        }
                        \times 4/7 {
                            b'4
                            bf'8.
                            ~
                        }
                        \times 4/7 {
                            bf'4.
                            af'16
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        af'2
                        ~
                        \times 4/7 {
                            af'16
                            c'8.
                            r16
                            r16
                            r16
                        }
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        \times 2/3 {
                            r8
                            bf'4
                            ~
                        }
                        \times 2/3 {
                            bf'16
                            r16
                            r16
                        }
                        r8
                        \times 2/3 {
                            r8
                            e'4
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        \times 4/5 {
                            e'8.
                            r16
                            r16
                        }
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r16
                        b'2
                        ~
                        b'8.
                        ~
                        \times 4/5 {
                            b'8
                            cs'8
                            bf'16
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        \times 4/7 {
                            bf'4
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
                        r4
                        r4
                        r4
                        \times 4/7 {
                            r16
                            r16
                            cs'4
                            ~
                            cs'16
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #down
                        \override Stem.direction = #down
                        \override Tie.direction = #down
                        \override TupletBracket.direction = #down
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
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                }
                \context Voice = "Piano RH Voice"
                {
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 4/7 {
                            \tempo 4=60
                            \time 4/4
                            \clef "treble"
                            r16
                            ef''4
                            ~
                            ef''16
                            d''16
                            ~
                        }
                        d''4
                        ~
                        \times 4/7 {
                            d''16
                            d''4.
                            ~
                        }
                        d''4
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        d''4
                        \times 4/5 {
                            cs''8.
                            r16
                            r16
                        }
                        r4
                        \times 4/7 {
                            r16
                            r16
                            r16
                            f''4
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 4/7 {
                            f''8.
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 2/3 {
                            r8
                            r8
                            d''8
                            ~
                        }
                        d''2
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        d''4
                        ~
                        \times 2/3 {
                            d''4
                            f''8
                            ~
                        }
                        \times 4/7 {
                            f''16
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        r4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 2/3 {
                            r8
                            d''4
                            ~
                        }
                        d''2.
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        d''16
                        r16
                        r8
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        r4
                        r4
                        \times 4/7 {
                            r16
                            d''4.
                            ~
                        }
                        \times 4/5 {
                            d''16
                            cs''4
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        cs''2.
                        cs''8
                        ~
                        \times 2/3 {
                            cs''8
                            ef''16
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            b''16
                            ~
                        }
                        \times 4/7 {
                            b''4.
                            r16
                        }
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        r4
                        r4
                        \times 4/7 {
                            r16
                            a''4.
                        }
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            cs''8.
                            ~
                        }
                        \times 4/7 {
                            cs''4
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        cs''8.
                        r16
                        \times 4/7 {
                            b''4
                            ~
                            b''16
                            d''8
                            ~
                        }
                        \times 2/3 {
                            d''4
                            cs''8
                            ~
                        }
                        \times 2/3 {
                            cs''4
                            f''8
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 2/3 {
                            f''8
                            r8
                            r8
                        }
                        \times 4/7 {
                            r16
                            ef''4.
                            ~
                        }
                        ef''2
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        ef''16
                        a''8.
                        ~
                        \times 4/7 {
                            a''8
                            d''8
                            r16
                            r16
                            r16
                        }
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            f''8.
                            ~
                        }
                        \times 4/7 {
                            f''8.
                            r16
                            r16
                            r16
                            r16
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        r4
                        r4
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            d''8
                        }
                        r4
                        \times 2/3 {
                            r8
                            r8
                            f''8
                            ~
                        }
                        f''4
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        f''4
                        ~
                        \times 4/7 {
                            f''4.
                            r16
                        }
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            cs''8.
                            ~
                        }
                        cs''4
                        ~
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 2/3 {
                            cs''8
                            r8
                            r8
                        }
                        r4
                        r8
                        \times 2/3 {
                            r16
                            r16
                            b''16
                            ~
                        }
                        \times 2/3 {
                            b''8
                            r8
                            r8
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            cs''8.
                            ~
                        }
                        \times 4/5 {
                            cs''8.
                            r16
                            r16
                        }
                        \times 4/5 {
                            r16
                            d''8.
                            r16
                        }
                        \times 4/7 {
                            r16
                            f''4.
                            ~
                        }
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
                    }
                    {
                        \override Rest.direction = #up
                        \override Stem.direction = #up
                        \override Tie.direction = #up
                        \override TupletBracket.direction = #up
                        \times 2/3 {
                            f''16
                            b''8
                            ~
                        }
                        b''8
                        ~
                        \times 4/7 {
                            b''16
                            r16
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                        r4
                        \revert Rest.direction
                        \revert Stem.direction
                        \revert Tie.direction
                        \revert TupletBracket.direction
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
                        fs4
                        ~
                        \times 4/7 {
                            fs4
                            r16
                            r16
                            r16
                        }
                        r4
                    }
                    {
                        r4
                        r4
                        r4
                        r4
                    }
                    {
                        r4
                        r4
                        r16
                        c8.
                        ~
                        \times 2/3 {
                            c8
                            r8
                            f,8
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            f,16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 4/5 {
                            r16
                            r16
                            r16
                            r16
                            e,,16
                            ~
                        }
                        e,,2
                    }
                    {
                        g,,1
                        ~
                    }
                    {
                        g,,4
                        ~
                        \times 4/7 {
                            g,,16
                            \grace {
                                c16
                            }
                            a,,,4.
                        }
                        a2
                        ~
                    }
                    {
                        a2.
                        ~
                        \times 4/7 {
                            a16
                            fs,,4
                            ~
                            fs,,16
                            \grace {
                                a,,,16
                            }
                            cs,16
                            ~
                        }
                    }
                    {
                        cs,4
                        ~
                        cs,16
                        r16
                        r8
                        \times 4/7 {
                            r16
                            r16
                            bf,,,16
                            r16
                            r16
                            r16
                            r16
                        }
                        r4
                    }
                    {
                        \times 4/5 {
                            r16
                            bf,,,8
                            r16
                            b,,16
                            ~
                        }
                        \times 4/7 {
                            b,,8
                            r16
                            r16
                            r16
                            r16
                            r16
                        }
                        \times 2/3 {
                            r16
                            bf,,16
                            r16
                        }
                        r8
                        r4
                    }
                    {
                        \times 4/7 {
                            r16
                            r16
                            r16
                            r16
                            r16
                            bf,16
                            r16
                        }
                        r8
                        a,,,2
                        ~
                        a,,,8
                        ~
                    }
                    {
                        a,,,8
                        r8
                        r4
                        \times 4/7 {
                            r16
                            cs,4.
                            ~
                        }
                        cs,4
                        ~
                    }
                    {
                        \times 4/7 {
                            cs,4.
                            b16
                            ~
                        }
                        \times 4/7 {
                            b8.
                            b4
                        }
                        r4
                        r4
                    }
                    {
                        r4
                        r4
                        fs4
                        ~
                        \times 4/5 {
                            fs8
                            b,8.
                            ~
                        }
                    }
                    {
                        b,2
                        ~
                        \times 2/3 {
                            b,16
                            d8
                            ~
                        }
                        d4.
                        ~
                    }
                    {
                        d2.
                        ~
                        d16
                        a,,,16
                        ~
                        \times 2/3 {
                            a,,,8
                            b,,16
                            ~
                        }
                    }
                    {
                        \times 4/5 {
                            b,,16
                            af4
                            ~
                        }
                        \times 4/7 {
                            af4
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
                        r4
                        \times 4/5 {
                            r16
                            r16
                            r16
                            bf,,8
                            ~
                        }
                    }
                    {
                        bf,,2
                        b,2
                        ~
                    }
                    {
                        \times 2/3 {
                            b,16
                            r16
                            c,,16
                            ~
                        }
                        c,,4.
                        r8
                        fs,,8
                        r4
                    }
                    {
                        r4
                        \times 2/3 {
                            r8
                            r8
                            bf,,8
                            ~
                        }
                        bf,,4
                        a,,,4
                        ~
                    }
                    {
                        a,,,2
                        ~
                        a,,,16
                        r16
                        r8
                        r4
                    }
                }
            }
        >>
    >>
