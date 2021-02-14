\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Piano Score"
<<
    \context PianoStaff = "Piano Staff Group"
    <<
        \context Staff = "RH Staff"
        \with
        {
            \remove Time_signature_engraver
        }
        <<
            \context Voice = "Piano RH Voice1"
            {
                {
                    \override Rest.direction = #down
                    \override Stem.direction = #down
                    \override Tie.direction = #down
                    \override TupletBracket.direction = #down
                    \times 4/7 {
                        \ottava 1
                        \time 4/4
                        ef'''2.
                        \ottava 1
                        r2
                        \ottava 1
                        r4
                        \ottava 1
                        ef'''4
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
                    \ottava 1
                    ef'''4
                    \ottava 1
                    r4
                    \times 2/3 {
                        \ottava 1
                        r4
                        \ottava 1
                        ef'''2
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
                    \times 8/13 {
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r4
                        \ottava 1
                        r2
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
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
                    \times 8/13 {
                        \ottava 1
                        r4.
                        \ottava 1
                        r4
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
                        \ottava 1
                        r4
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
                    \times 8/13 {
                        \ottava 1
                        r4.
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2
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
                    \times 8/13 {
                        \ottava 1
                        r8
                        \ottava 1
                        ef'''4
                        ~
                        \ottava 1
                        ef'''4
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2
                        \ottava 1
                        r8
                        \ottava 1
                        ef'''8
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
                    \times 2/3 {
                        \ottava 1
                        ef'''2
                        \ottava 1
                        r4
                    }
                    \ottava 1
                    r4
                    \ottava 1
                    ef'''4
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
                        \ottava 1
                        ef'''4
                        \ottava 1
                        r2
                        \ottava 1
                        r4
                        \ottava 1
                        ef'''4
                        ~
                        \ottava 1
                        ef'''2
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
                        \ottava 1
                        r2.
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''4
                        \ottava 1
                        r4
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
                    \ottava 1
                    r4
                    \ottava 1
                    ef'''4
                    ~
                    \times 2/3 {
                        \ottava 1
                        ef'''4
                        \ottava 1
                        r2
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
                    \times 8/13 {
                        \grace {
                            s16 * 13/11
                        }
                        \ottava 1
                        r8
                        \ottava 1
                        ef'''4
                        ~
                        \ottava 1
                        ef'''2
                        \ottava 1
                        r2
                        \ottava 1
                        r8
                        \ottava 1
                        ef'''8
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
                    \times 8/11 {
                        \ottava 1
                        ef'''4.
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2
                        \ottava 1
                        ef'''4
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
                    \times 8/11 {
                        \ottava 1
                        ef'''4
                        \ottava 1
                        r8
                        \ottava 1
                        r2
                        \ottava 1
                        ef'''2
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
                    \times 8/13 {
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r4
                        \ottava 1
                        r4
                        \ottava 1
                        r8
                        \ottava 1
                        ef'''8
                        ~
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''8
                        \ottava 1
                        r8
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
                        \ottava 1
                        r2
                        \ottava 1
                        ef'''4
                        ~
                    }
                    \ottava 1
                    ef'''4
                    \ottava 1
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
                        \ottava 1
                        r4
                        \ottava 1
                        ef'''2
                        ~
                        \ottava 1
                        ef'''4
                        \ottava 1
                        r4
                        \ottava 1
                        r2
                    }
                    \revert Rest.direction
                    \revert Stem.direction
                    \revert Tie.direction
                    \revert TupletBracket.direction
                }
                R1
            }
            \context Voice = "Piano RH Voice"
            {
                {
                    \override Rest.direction = #up
                    \override Stem.direction = #up
                    \override Tie.direction = #up
                    \override TupletBracket.direction = #up
                    \times 8/13 {
                        \ottava 1
                        \time 4/4
                        g''''2..
                        \ottava 1
                        r8
                        \ottava 1
                        c''''8
                        ~
                        \ottava 1
                        c''''4
                        ~
                        \ottava 1
                        c''''8
                        \ottava 1
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
                    \times 8/13 {
                        \ottava 1
                        r4.
                        \ottava 1
                        c''''4
                        \ottava 1
                        r2.
                        \ottava 1
                        c''''4
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
                    \times 8/13 {
                        \ottava 1
                        c''''2..
                        \ottava 1
                        g''''2
                        \ottava 1
                        r4
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
                    \times 8/13 {
                        \ottava 1
                        r8
                        \ottava 1
                        c''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2.
                        \ottava 1
                        g''''2
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
                    \ottava 1
                    g''''1
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
                    \times 8/11 {
                        \ottava 1
                        g''''2..
                        \grace {
                            \ottava 1
                            c''''16
                            \ottava 1
                            c''''16
                        }
                        \ottava 1
                        c''''4
                        \ottava 1
                        r4
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
                    \times 8/13 {
                        \ottava 1
                        r4
                        \ottava 1
                        c''''8
                        ~
                        \ottava 1
                        c''''4
                        ~
                        \ottava 1
                        c''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                        \ottava 1
                        r8
                        \ottava 1
                        g''''8
                        ~
                        \ottava 1
                        g''''4
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
                    \times 8/13 {
                        \ottava 1
                        r4.
                        \ottava 1
                        r4
                        \ottava 1
                        b''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2.
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
                    \times 8/13 {
                        \ottava 1
                        b''''2..
                        ~
                        \ottava 1
                        b''''8
                        \ottava 1
                        c''''8
                        ~
                        \ottava 1
                        c''''2
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
                    \ottava 1
                    c''''1
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
                    \times 8/11 {
                        \grace {
                            \ottava 1
                            c''''16
                        }
                        \ottava 1
                        b''''4.
                        ~
                        \ottava 1
                        b''''8
                        \ottava 1
                        r8
                        \ottava 1
                        c''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r2
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
                    \times 8/13 {
                        \ottava 1
                        r8
                        \ottava 1
                        c''''4
                        ~
                        \ottava 1
                        c''''2
                        ~
                        \ottava 1
                        c''''8
                        \ottava 1
                        r8
                        \ottava 1
                        g''''2
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
                    \times 8/13 {
                        \ottava 1
                        g''''8
                        \ottava 1
                        r4
                        \ottava 1
                        r8
                        \ottava 1
                        g''''8
                        ~
                        \ottava 1
                        g''''2.
                        ~
                        \ottava 1
                        g''''8
                        \ottava 1
                        b''''8
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
                    \times 8/11 {
                        \ottava 1
                        b''''4
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                        \ottava 1
                        r8
                        \ottava 1
                        c''''8
                        ~
                        \ottava 1
                        c''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r4
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
                    \times 8/13 {
                        \ottava 1
                        r4
                        \ottava 1
                        g''''8
                        ~
                        \ottava 1
                        g''''4
                        ~
                        \ottava 1
                        g''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                        \ottava 1
                        r8
                        \ottava 1
                        c''''8
                        ~
                        \ottava 1
                        c''''4
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
                    \times 8/13 {
                        \ottava 1
                        c''''2..
                        ~
                        \ottava 1
                        c''''8
                        \ottava 1
                        g''''8
                        ~
                        \ottava 1
                        g''''8
                        \ottava 1
                        r8
                        \ottava 1
                        r4
                    }
                    \revert Rest.direction
                    \revert Stem.direction
                    \revert Tie.direction
                    \revert TupletBracket.direction
                }
                R1
            }
        >>
        \context Dynamics = "Dynamics"
        {
            s1
            \mf
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
            s1
        }
        \context Staff = "LH Staff"
        \with
        {
            \remove Time_signature_engraver
        }
        {
            \context Voice = "Piano LH Voice"
            {
                {
                    \times 8/13 {
                        \ottava 0
                        \time 4/4
                        af,4
                        \ottava 0
                        af,8
                        \ottava 0
                        fs4
                        \ottava 0
                        f4
                        r4
                        \ottava 0
                        d8
                        \ottava 0
                        g8
                        ~
                        \ottava 0
                        g8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        \ottava 0
                        g8
                        r8
                        r8
                        \ottava 0
                        af,8
                        ~
                        \ottava 0
                        af,8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        g4
                        \ottava 0
                        cs8
                        \ottava 0
                        b4
                        \ottava 0
                        cs4
                        \ottava 0
                        a,8
                        \ottava 0
                        c8
                        ~
                        \ottava 0
                        c8
                        \ottava 0
                        b8
                        ~
                        \ottava 0
                        b8
                        \ottava 0
                        g8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        g4
                        \ottava 0
                        e,8
                        \ottava 0
                        g,4
                        \ottava 0
                        g4
                        \ottava 0
                        e,8
                        \ottava 0
                        d8
                        ~
                        \ottava 0
                        d8
                        \ottava 0
                        g,8
                        ~
                        \ottava 0
                        g,8
                        \ottava 0
                        a,8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        f4
                        \ottava 0
                        g8
                        ~
                        \ottava 0
                        g8
                        r8
                        r4
                        \ottava 0
                        cs4
                        r2
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        bf4
                        \ottava 0
                        bf8
                        \ottava 0
                        af,4
                        \ottava 0
                        cs4
                        r8
                        \ottava 0
                        d8
                        ~
                        \ottava 0
                        d8
                        \ottava 0
                        bf8
                        \ottava 0
                        e,4
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        bf8
                        \ottava 0
                        af,4
                        \ottava 0
                        cs8
                        r8
                        r4
                        \ottava 0
                        a,4
                        \ottava 0
                        cs8
                        \ottava 0
                        g8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        g8
                        r8
                        \ottava 0
                        b8
                        ~
                        \ottava 0
                        b8
                        \ottava 0
                        af,8
                        \ottava 0
                        fs4
                        \ottava 0
                        b4
                        \ottava 0
                        af,8
                        \ottava 0
                        b8
                        ~
                        \ottava 0
                        b8
                        \ottava 0
                        a,8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        \ottava 0
                        bf8
                        r8
                        \ottava 0
                        g4
                        \ottava 0
                        g8
                        \ottava 0
                        g,8
                        ~
                        \ottava 0
                        g,8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        af,4
                        \ottava 0
                        g,8
                        ~
                        \ottava 0
                        g,8
                        r8
                        \ottava 0
                        d8
                        \ottava 0
                        cs8
                        ~
                        \ottava 0
                        cs8
                        \ottava 0
                        bf8
                        ~
                        \ottava 0
                        bf8
                        \ottava 0
                        bf8
                        \ottava 0
                        f4
                    }
                }
                {
                    \times 8/13 {
                        \grace {
                            s16 * 13/11
                        }
                        \ottava 0
                        e,4
                        \ottava 0
                        f8
                        \ottava 0
                        c4
                        \ottava 0
                        e,4
                        r8
                        \ottava 0
                        b8
                        \ottava 0
                        fs4
                        \ottava 0
                        g,8
                        \ottava 0
                        fs8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        fs8
                        \ottava 0
                        b4
                        \ottava 0
                        af,8
                        \ottava 0
                        g,8
                        ~
                        \ottava 0
                        g,8
                        \ottava 0
                        g8
                        ~
                        \ottava 0
                        g8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r4
                        \ottava 0
                        fs8
                        r8
                        \ottava 0
                        d8
                        ~
                        \ottava 0
                        d8
                        \ottava 0
                        g,8
                        \ottava 0
                        d4
                        \ottava 0
                        cs8
                        \ottava 0
                        d8
                        ~
                        \ottava 0
                        d8
                        \ottava 0
                        b8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        b8
                        \ottava 0
                        bf8
                        \ottava 0
                        a,8
                        ~
                        \ottava 0
                        a,8
                        r8
                        r4
                        r8
                        \ottava 0
                        g8
                        r8
                        \ottava 0
                        e,8
                        ~
                        \ottava 0
                        e,8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        fs8
                        \ottava 0
                        d4
                        \ottava 0
                        cs4
                        \ottava 0
                        cs8
                        \ottava 0
                        c8
                        ~
                        \ottava 0
                        c8
                        \ottava 0
                        f8
                        \ottava 0
                        g,4
                        \ottava 0
                        bf4
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        fs8
                        r8
                        \ottava 0
                        b8
                        \ottava 0
                        g,4
                        \ottava 0
                        c8
                        \ottava 0
                        f8
                        ~
                        \ottava 0
                        f8
                        \ottava 0
                        e,8
                        ~
                        \ottava 0
                        e,8
                        r8
                        r4
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        e,8
                        r4
                        r1
                    }
                }
            }
        }
    >>
>>