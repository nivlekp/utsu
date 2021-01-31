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
                    \times 4/7 {
                        \ottava 0
                        \time 4/4
                        \clef "treble"
                        cs'4
                        ~
                        \ottava 0
                        cs'16
                        r16
                        r16
                    }
                    r4
                    r4
                    \times 2/3 {
                        r8
                        \ottava 0
                        c'4
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
                        \ottava 0
                        c'4
                        ~
                        \ottava 0
                        c'16
                        r16
                        r16
                    }
                    r4
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        e'8
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        e'8
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
                    \ottava 0
                    c'4
                    ~
                    \times 4/7 {
                        \ottava 0
                        c'4.
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
                    \times 2/3 {
                        r8
                        \ottava 0
                        bf'4
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        bf'4
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
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        af'8
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        af'16
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
                {
                    \override Rest.direction = #down
                    \override Stem.direction = #down
                    \override Tie.direction = #down
                    \override TupletBracket.direction = #down
                    \ottava 0
                    af'4
                    ~
                    \times 4/5 {
                        \ottava 0
                        af'8.
                        r16
                        r16
                    }
                    r4
                    \times 2/3 {
                        r8
                        \ottava 0
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
                    \times 4/7 {
                        \ottava 0
                        e'4.
                        r16
                    }
                    r4
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        bf'8
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        bf'4
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
                    \ottava 0
                    e'2
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
                    \ottava 0
                    e'4
                    ~
                    \times 2/3 {
                        \ottava 0
                        e'16
                        r16
                        \ottava 0
                        bf'16
                        ~
                    }
                    \ottava 0
                    bf'8
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
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        d'8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        d'8
                        r8
                        r8
                    }
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
                    \ottava 0
                    d'4
                    ~
                    \times 4/7 {
                        \ottava 0
                        d'16
                        r16
                        r16
                        r16
                        r16
                        r16
                        r16
                    }
                    r4
                    \times 2/3 {
                        r8
                        \ottava 0
                        c'4
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
                    \ottava 0
                    c'1
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
                    \ottava 0
                    c'2.
                    ~
                    \ottava 0
                    c'16
                    \ottava 0
                    b'8.
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
                    \times 4/7 {
                        \ottava 0
                        b'16
                        \ottava 0
                        bf'4.
                    }
                    \times 2/3 {
                        r8
                        \ottava 0
                        af'4
                        ~
                    }
                    \ottava 0
                    af'4
                    ~
                    \times 4/7 {
                        \ottava 0
                        af'8.
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
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        c'8
                        ~
                    }
                    \ottava 0
                    c'2.
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
                    \times 2/3 {
                        \ottava 0
                        c'8
                        \ottava 0
                        bf'16
                    }
                    r8
                    r4
                    r4
                    \times 2/3 {
                        r8
                        \ottava 0
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
                    \ottava 0
                    e'2
                    ~
                    \ottava 0
                    e'8.
                    \ottava 0
                    b'4
                    ~
                    \ottava 0
                    b'16
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
                    \ottava 0
                    b'4
                    r4
                    \times 4/7 {
                        \ottava 0
                        cs'16
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
                    \override Rest.direction = #down
                    \override Stem.direction = #down
                    \override Tie.direction = #down
                    \override TupletBracket.direction = #down
                    r4
                    \times 2/3 {
                        r8
                        \ottava 0
                        bf'4
                        ~
                    }
                    \ottava 0
                    bf'8.
                    r16
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
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        cs'8
                    }
                    r4
                    r4
                    r4
                    \revert Rest.direction
                    \revert Stem.direction
                    \revert Tie.direction
                    \revert TupletBracket.direction
                }
                r1
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \override Rest.direction = #up
                    \override Stem.direction = #up
                    \override Tie.direction = #up
                    \override TupletBracket.direction = #up
                    \times 4/7 {
                        \time 4/4
                        \clef "treble"
                        r16
                        \ottava 0
                        ef''4
                        ~
                        \ottava 0
                        ef''16
                        \ottava 0
                        d''16
                        ~
                    }
                    \ottava 0
                    d''4
                    ~
                    \times 4/7 {
                        \ottava 0
                        d''16
                        \ottava 0
                        d''4.
                        ~
                    }
                    \ottava 0
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
                    \ottava 0
                    d''4
                    \times 4/5 {
                        \ottava 0
                        cs''8.
                        r16
                        r16
                    }
                    r4
                    \times 4/7 {
                        r16
                        r16
                        r16
                        \ottava 0
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
                        \ottava 0
                        f''8.
                        r16
                        r16
                        r16
                        r16
                    }
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        d''8
                        ~
                    }
                    \ottava 0
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
                    \ottava 0
                    d''4
                    ~
                    \times 2/3 {
                        \ottava 0
                        d''4
                        \ottava 0
                        f''8
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
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
                        \ottava 0
                        d''4
                        ~
                    }
                    \ottava 0
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
                    \ottava 0
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
                        \ottava 0
                        d''4.
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        d''16
                        \ottava 0
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
                    \ottava 0
                    cs''2.
                    \ottava 0
                    cs''8
                    ~
                    \times 2/3 {
                        \ottava 0
                        cs''8
                        \ottava 0
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
                        \ottava 0
                        b''16
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
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
                        \ottava 0
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
                        \ottava 0
                        cs''8.
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
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
                    \ottava 0
                    cs''8.
                    r16
                    \times 4/7 {
                        \ottava 0
                        b''4
                        ~
                        \ottava 0
                        b''16
                        \ottava 0
                        d''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        d''4
                        \ottava 0
                        cs''8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        cs''4
                        \ottava 0
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
                        \ottava 0
                        f''8
                        r8
                        r8
                    }
                    \times 4/7 {
                        r16
                        \ottava 0
                        ef''4.
                        ~
                    }
                    \ottava 0
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
                    \ottava 0
                    ef''16
                    \ottava 0
                    a''8.
                    ~
                    \times 4/7 {
                        \ottava 0
                        a''8
                        \ottava 0
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
                        \ottava 0
                        f''8.
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
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
                        \ottava 0
                        d''8
                    }
                    r4
                    \times 2/3 {
                        r8
                        r8
                        \ottava 0
                        f''8
                        ~
                    }
                    \ottava 0
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
                    \ottava 0
                    f''4
                    ~
                    \times 4/7 {
                        \ottava 0
                        f''4.
                        r16
                    }
                    \times 4/7 {
                        r16
                        r16
                        r16
                        r16
                        \ottava 0
                        cs''8.
                        ~
                    }
                    \ottava 0
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
                        \ottava 0
                        cs''8
                        r8
                        r8
                    }
                    r4
                    r8
                    \times 2/3 {
                        r16
                        r16
                        \ottava 0
                        b''16
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
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
                        \ottava 0
                        cs''8.
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        cs''8.
                        r16
                        r16
                    }
                    \times 4/5 {
                        r16
                        \ottava 0
                        d''8.
                        r16
                    }
                    \times 4/7 {
                        r16
                        \ottava 0
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
                        \ottava 0
                        f''16
                        \ottava 0
                        b''8
                        ~
                    }
                    \ottava 0
                    b''8
                    ~
                    \times 4/7 {
                        \ottava 0
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
                    \times 4/7 {
                        \time 4/4
                        \clef "bass"
                        r16
                        \ottava 0
                        fs16
                        r16
                        r16
                        r16
                        r16
                        r16
                    }
                    \times 4/7 {
                        \ottava 0
                        c4
                        ~
                        \ottava 0
                        c16
                        \ottava 0
                        f,8
                    }
                    \ottava -1
                    e,,4
                    ~
                    \times 2/3 {
                        \ottava -1
                        e,,8
                        \ottava -1
                        g,,16
                    }
                    \times 2/3 {
                        \ottava 0
                        c8
                        r16
                    }
                }
                {
                    r8
                    \ottava -2
                    a,,,8
                    \times 4/5 {
                        \ottava 0
                        a8.
                        \ottava -1
                        fs,,16
                        \ottava -2
                        a,,,16
                        ~
                    }
                    \times 4/7 {
                        \ottava -2
                        a,,,8
                        \ottava 0
                        cs,4
                        ~
                        \ottava 0
                        cs,16
                        ~
                    }
                    \ottava 0
                    cs,8
                    r8
                }
                {
                    r8
                    r16
                    \ottava -2
                    bf,,,16
                    \times 2/3 {
                        \ottava 0
                        r16
                        \ottava -2
                        bf,,,16
                        \ottava 0
                        b,,16
                        ~
                    }
                    \ottava 0
                    b,,8
                    ~
                    \times 4/5 {
                        \ottava 0
                        b,,16
                        \ottava -1
                        bf,,4
                        ~
                    }
                    \times 4/7 {
                        \ottava -1
                        bf,,4
                        \ottava 0
                        bf,8.
                        ~
                    }
                }
                {
                    \times 2/3 {
                        \ottava 0
                        bf,16
                        \ottava -2
                        a,,,8
                        ~
                    }
                    \times 2/3 {
                        \ottava -2
                        a,,,16
                        \ottava 0
                        cs,8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        cs,8
                        \ottava 0
                        b16
                        ~
                    }
                    \ottava 0
                    b16
                    \ottava 0
                    b16
                    ~
                    \times 4/7 {
                        \ottava 0
                        b16
                        \ottava 0
                        fs8
                        \ottava 0
                        b,8
                        \ottava 0
                        d8
                    }
                    \ottava -2
                    a,,,4
                }
                {
                    \times 4/7 {
                        \ottava 0
                        b,,4
                        \ottava 0
                        af8.
                    }
                    \times 4/7 {
                        r16
                        \ottava -1
                        bf,,16
                        \ottava 0
                        b,4
                        ~
                        \ottava 0
                        b,16
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        b,16
                        \ottava -1
                        c,,4.
                    }
                    \ottava -1
                    fs,,4
                }
                {
                    \times 2/3 {
                        \ottava -1
                        bf,,16
                        \ottava -2
                        a,,,8
                    }
                    \ottava -2
                    a,,,8
                    \times 4/7 {
                        \grace {
                            \ottava -2
                            a,,,16
                        }
                        \ottava -1
                        fs,,16
                        \ottava 0
                        g,4.
                    }
                    \ottava -1
                    fs,,16
                    \ottava 0
                    fs16
                    \ottava 0
                    fs8
                    ~
                    \times 4/5 {
                        \ottava 0
                        fs8
                        \ottava 0
                        fs16
                        \ottava 0
                        af8
                    }
                }
                {
                    \times 4/7 {
                        \grace {
                            \ottava 0
                            fs16
                        }
                        \ottava 0
                        d16
                        r16
                        r16
                        r16
                        r16
                        r16
                        r16
                    }
                    r4
                    \times 4/5 {
                        r16
                        r16
                        \ottava 0
                        bf,8.
                        ~
                    }
                    \ottava 0
                    bf,4
                    ~
                }
                {
                    \ottava 0
                    bf,16
                    \grace {
                        \ottava -1
                        bf,,16
                    }
                    \ottava 0
                    af,16
                    ~
                    \times 2/3 {
                        \ottava 0
                        af,16
                        \ottava 0
                        af,8
                        ~
                    }
                    \ottava 0
                    af,8
                    \ottava 0
                    af,8
                    ~
                    \times 4/7 {
                        \ottava 0
                        af,8
                        \ottava -1
                        g,,8.
                        \ottava 0
                        a8
                        ~
                    }
                    \times 2/3 {
                        \ottava 0
                        a16
                        \ottava 0
                        af16
                        \ottava 0
                        a16
                        ~
                    }
                    \ottava 0
                    a16
                    r16
                }
                {
                    \times 4/5 {
                        r16
                        \ottava -1
                        e,,16
                        \ottava 0
                        r16
                        r16
                        \ottava -1
                        fs,,16
                        ~
                    }
                    \ottava -1
                    fs,,8
                    \times 2/3 {
                        \ottava 0
                        r16
                        \ottava -1
                        c,,8
                        ~
                    }
                    \times 4/5 {
                        \ottava -1
                        c,,16
                        \ottava 0
                        cs,8.
                        r16
                    }
                    r4
                }
                {
                    \times 4/7 {
                        r16
                        r16
                        r16
                        r16
                        r16
                        \ottava 0
                        b,,8
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        b,,8.
                        \ottava -2
                        a,,,8
                    }
                    \ottava 0
                    d2
                }
                {
                    \times 4/7 {
                        \grace {
                            \ottava 0
                            f,16
                        }
                        \ottava 0
                        b8.
                        \ottava 0
                        af8
                        \ottava 0
                        cs,8
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        cs,4
                        \ottava 0
                        b,8.
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        b,8.
                        \ottava -1
                        a,,4
                    }
                    \times 4/5 {
                        \ottava 0
                        b16
                        \ottava -2
                        a,,,16
                        \ottava 0
                        d8.
                    }
                }
                {
                    \times 4/7 {
                        \ottava 0
                        bf,16
                        \ottava 0
                        b,,8.
                        \ottava -1
                        a,,8.
                    }
                    \times 2/3 {
                        \grace {
                            \ottava 0
                            b,16
                        }
                        \ottava 0
                        g,4
                        \ottava -1
                        c,,8
                        ~
                    }
                    \times 4/5 {
                        \ottava -1
                        c,,8
                        \ottava 0
                        r16
                        r16
                        r16
                    }
                    \times 2/3 {
                        \ottava 0
                        b,8
                        \ottava -1
                        g,,8
                        \ottava 0
                        r8
                    }
                }
                {
                    r8
                    r16
                    \ottava 0
                    a16
                    ~
                    \times 4/7 {
                        \ottava 0
                        a16
                        r16
                        r16
                        r16
                        r16
                        \ottava 0
                        b,,16
                        r16
                    }
                    \times 2/3 {
                        \ottava 0
                        af,4
                        \ottava 0
                        fs8
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        fs4
                        \ottava -2
                        a,,,16
                        ~
                    }
                }
                {
                    \ottava -2
                    a,,,4
                    \times 4/5 {
                        \ottava 0
                        cs,4
                        \ottava 0
                        b,16
                    }
                    \times 4/7 {
                        \ottava -1
                        g,,4.
                        \grace {
                            \ottava 0
                            af16
                        }
                        \ottava 0
                        a16
                        ~
                    }
                    \times 4/5 {
                        \ottava 0
                        a8
                        \ottava 0
                        d8
                        \ottava 0
                        b,,16
                        ~
                    }
                }
                {
                    \ottava 0
                    b,,4
                    ~
                    \times 4/5 {
                        \ottava 0
                        b,,8.
                        \ottava 0
                        c16
                        r16
                    }
                    \times 4/7 {
                        r16
                        r16
                        r16
                        r16
                        r16
                        \ottava 0
                        f,8
                    }
                    \times 4/7 {
                        r16
                        \ottava 0
                        b8
                        \ottava 0
                        b,,4
                        ~
                    }
                }
                {
                    \times 4/7 {
                        \ottava 0
                        b,,16
                        \ottava -2
                        bf,,,4.
                        ~
                    }
                    \ottava -2
                    bf,,,8
                    \times 2/3 {
                        \ottava 0
                        g,16
                        r16
                        r16
                    }
                    r4
                    r4
                }
                {
                    \times 4/7 {
                        r16
                        \ottava 0
                        cs,16
                        r16
                        r16
                        \ottava 0
                        f,8
                        \ottava 0
                        fs16
                    }
                    \times 4/7 {
                        \ottava -1
                        fs,,4
                        \ottava 0
                        r16
                        r16
                        r16
                    }
                    \times 4/7 {
                        r16
                        r16
                        r16
                        \ottava 0
                        a16
                        r16
                        \ottava 0
                        fs16
                        r16
                    }
                    \times 4/5 {
                        r16
                        r16
                        r16
                        \ottava 0
                        fs8
                        ~
                    }
                }
                {
                    \ottava 0
                    fs8
                    ~
                    \times 2/3 {
                        \ottava 0
                        fs16
                        \ottava -1
                        g,,16
                        \ottava 0
                        b16
                        ~
                    }
                    \times 4/7 {
                        \ottava 0
                        b4
                        \ottava -1
                        fs,,8.
                    }
                    \ottava -2
                    bf,,,4
                    \grace {
                        \ottava 0
                        bf,16
                    }
                    \ottava 0
                    fs4
                    ~
                }
                {
                    \times 4/7 {
                        \ottava 0
                        fs16
                        \ottava -1
                        c,,4.
                        ~
                    }
                    \times 4/7 {
                        \ottava -1
                        c,,8
                        \ottava -2
                        a,,,16
                        \ottava -1
                        a,,4
                        ~
                    }
                    \times 4/7 {
                        \ottava -1
                        a,,16
                        \grace {
                            \ottava 0
                            a16
                        }
                        \ottava 0
                        g,4
                        \ottava -1
                        c,,16
                        \ottava 0
                        r16
                    }
                    \times 4/7 {
                        r16
                        \ottava -2
                        a,,,4
                        ~
                        \ottava -2
                        a,,,16
                        \ottava 0
                        r16
                    }
                }
                {
                    \times 4/7 {
                        r16
                        \ottava -1
                        a,,4
                        ~
                        \ottava -1
                        a,,16
                        \ottava -1
                        fs,,16
                        ~
                    }
                    \times 2/3 {
                        \ottava -1
                        fs,,8
                        \ottava 0
                        af,4
                    }
                    \times 4/7 {
                        \ottava 0
                        af16
                        \ottava 0
                        c4.
                    }
                    \ottava -1
                    a,,4
                    ~
                }
                {
                    \times 2/3 {
                        \ottava -1
                        a,,4
                        \ottava 0
                        r8
                    }
                    r4
                    r4
                    r4
                }
            }
        }
    >>
>>