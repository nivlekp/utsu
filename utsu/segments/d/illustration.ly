\version "2.20.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Piano Score"
<<
    \context StaffGroup = "Piano Staff Group"
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
                        \ottava 0
                        \time 4/4
                        ef'2.
                        r2
                        r4
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
                    c'4
                    r4
                    \times 2/3 {
                        r4
                        \ottava 0
                        a'2
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
                        \ottava 0
                        a'8
                        r4
                        r2
                        \ottava 0
                        c'2
                        ~
                        \ottava 0
                        c'8
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
                        r4.
                        r4
                        \ottava 0
                        b'2
                        ~
                        \ottava 0
                        b'8
                        r8
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
                        r4.
                        \ottava 0
                        bf'2
                        ~
                        \ottava 0
                        bf'8
                        r8
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
                        r8
                        \ottava 0
                        bf'4
                        ~
                        \ottava 0
                        bf'4
                        ~
                        \ottava 0
                        bf'8
                        r8
                        r2
                        r8
                        \ottava 0
                        a'8
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
                        \ottava 0
                        a'2
                        r4
                    }
                    r4
                    \ottava 0
                    b'4
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
                        b'4
                        r2
                        r4
                        \ottava 0
                        a'4
                        ~
                        \ottava 0
                        a'2
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
                        r2.
                        \ottava 0
                        b'2
                        ~
                        \ottava 0
                        b'4
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
                    r4
                    \ottava 0
                    f'4
                    ~
                    \times 2/3 {
                        \ottava 0
                        f'4
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
                        r8
                        \ottava 0
                        f'4
                        ~
                        \ottava 0
                        f'2
                        r2
                        r8
                        \ottava 0
                        c'8
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
                        \ottava 0
                        c'4.
                        ~
                        \ottava 0
                        c'8
                        r8
                        r2
                        \ottava 0
                        b'4
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
                        \ottava 0
                        b'4
                        r8
                        r2
                        \ottava 0
                        bf'2
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
                        \ottava 0
                        bf'8
                        r4
                        r4
                        r8
                        \ottava 0
                        c'8
                        ~
                        \ottava 0
                        c'2
                        ~
                        \ottava 0
                        c'8
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
                        r2
                        \ottava 0
                        b'4
                        ~
                    }
                    \ottava 0
                    b'4
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
                        r4
                        \ottava 0
                        a'2
                        ~
                        \ottava 0
                        a'4
                        r4
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
                        \ottava 0
                        \time 4/4
                        af''2..
                        r8
                        \ottava 0
                        e''8
                        ~
                        \ottava 0
                        e''4
                        ~
                        \ottava 0
                        e''8
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
                        r4.
                        \ottava 0
                        e''4
                        r2.
                        \ottava 0
                        d''4
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
                        \ottava 0
                        d''2..
                        \ottava 0
                        a''2
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
                        r8
                        \ottava 0
                        e''8
                        r8
                        r2.
                        \ottava 0
                        a''2
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
                    a''1
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
                        \ottava 0
                        a''2..
                        \grace {
                            \ottava 0
                            e''16
                            \ottava 0
                            e''16
                        }
                        \ottava 0
                        d''4
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
                        r4
                        \ottava 0
                        d''8
                        ~
                        \ottava 0
                        d''4
                        ~
                        \ottava 0
                        d''8
                        r8
                        r4
                        r8
                        \ottava 0
                        af''8
                        ~
                        \ottava 0
                        af''4
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
                        r4.
                        r4
                        \ottava 0
                        bf''8
                        r8
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
                        \ottava 0
                        d''2..
                        ~
                        \ottava 0
                        d''8
                        \ottava 0
                        d''8
                        ~
                        \ottava 0
                        d''2
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
                    d''1
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
                            \ottava 0
                            e''16
                        }
                        \ottava 0
                        d''4.
                        ~
                        \ottava 0
                        d''8
                        r8
                        \ottava 0
                        a''8
                        r8
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
                        r8
                        \ottava 0
                        af''4
                        ~
                        \ottava 0
                        af''2
                        ~
                        \ottava 0
                        af''8
                        r8
                        \ottava 0
                        bf''2
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
                        \ottava 0
                        bf''8
                        r4
                        r8
                        \ottava 0
                        e''8
                        ~
                        \ottava 0
                        e''2.
                        ~
                        \ottava 0
                        e''8
                        \ottava 0
                        a''8
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
                        \ottava 0
                        a''4
                        r8
                        r4
                        r8
                        \ottava 0
                        e''8
                        ~
                        \ottava 0
                        e''8
                        r8
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
                        r4
                        \ottava 0
                        a''8
                        ~
                        \ottava 0
                        a''4
                        ~
                        \ottava 0
                        a''8
                        r8
                        r4
                        r8
                        \ottava 0
                        d''8
                        ~
                        \ottava 0
                        d''4
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
                        \ottava 0
                        d''2..
                        ~
                        \ottava 0
                        d''8
                        \ottava 0
                        d''8
                        ~
                        \ottava 0
                        d''8
                        r8
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
                        \ottava -1
                        \time 4/4
                        bf,,4
                        \ottava -1
                        bf,,8
                        \ottava 0
                        bf4
                        \ottava 0
                        f4
                        r4
                        \ottava 0
                        ef8
                        \ottava -1
                        bf,,8
                        ~
                        \ottava -1
                        bf,,8
                        \ottava 0
                        r8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        \ottava 0
                        a,8
                        r8
                        r8
                        \ottava 0
                        a,8
                        ~
                        \ottava 0
                        a,8
                        r8
                        r4
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        e,4
                        \ottava 0
                        f,8
                        \ottava -1
                        b,,,4
                        \ottava -1
                        fs,,4
                        \ottava -1
                        b,,,8
                        \ottava 0
                        e8
                        ~
                        \ottava 0
                        e8
                        \ottava -1
                        fs,,8
                        ~
                        \ottava -1
                        fs,,8
                        \ottava 0
                        e,8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        af4
                        \ottava 0
                        a,8
                        \ottava -1
                        g,,4
                        \ottava 0
                        b,4
                        \ottava 0
                        ef8
                        \ottava -1
                        cs,,8
                        ~
                        \ottava -1
                        cs,,8
                        \ottava -1
                        bf,,8
                        ~
                        \ottava -1
                        bf,,8
                        \ottava 0
                        a,8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        c,4
                        \ottava 0
                        a,8
                        ~
                        \ottava 0
                        a,8
                        r8
                        r4
                        \ottava -1
                        bf,,4
                        \ottava 0
                        r2
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        bf4
                        \ottava -1
                        bf,,8
                        \ottava 0
                        e,4
                        \ottava -1
                        fs,,4
                        \ottava 0
                        r8
                        \ottava -1
                        bf,,8
                        ~
                        \ottava -1
                        bf,,8
                        \ottava -1
                        fs,,8
                        \ottava 0
                        ef4
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        a,8
                        \ottava 0
                        f4
                        \ottava -1
                        cs,,8
                        \ottava 0
                        r8
                        r4
                        \ottava 0
                        af4
                        \ottava 0
                        f,8
                        \ottava -1
                        cs,,8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava -1
                        cs,,8
                        \ottava 0
                        r8
                        \ottava 0
                        bf8
                        ~
                        \ottava 0
                        bf8
                        \ottava -1
                        f,,8
                        \ottava 0
                        bf4
                        \ottava -1
                        bf,,4
                        \ottava -1
                        f,,8
                        \ottava 0
                        bf8
                        ~
                        \ottava 0
                        bf8
                        \ottava 0
                        e8
                    }
                }
                {
                    \times 8/13 {
                        r4.
                        r4
                        \ottava -1
                        f,,8
                        \ottava 0
                        r8
                        \ottava 0
                        e4
                        \ottava 0
                        a,8
                        \ottava 0
                        ef8
                        ~
                        \ottava 0
                        ef8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        e,4
                        \ottava -1
                        b,,,8
                        ~
                        \ottava -1
                        b,,,8
                        \ottava 0
                        r8
                        \ottava 0
                        ef8
                        \ottava 0
                        b,8
                        ~
                        \ottava 0
                        b,8
                        \ottava 0
                        b,8
                        ~
                        \ottava 0
                        b,8
                        \ottava 0
                        fs,8
                        \ottava 0
                        af4
                    }
                }
                {
                    \times 8/13 {
                        \ottava -1
                        f,,4
                        \ottava -1
                        f,,8
                        \ottava 0
                        fs,4
                        \ottava 0
                        f4
                        r8
                        \ottava -1
                        cs,,8
                        \ottava -1
                        b,,,4
                        \ottava 0
                        f8
                        \ottava 0
                        e8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        e8
                        \ottava 0
                        e4
                        \ottava 0
                        ef8
                        \ottava -1
                        cs,,8
                        ~
                        \ottava -1
                        cs,,8
                        \ottava 0
                        ef8
                        ~
                        \ottava 0
                        ef8
                        r8
                        r2
                    }
                }
                {
                    \times 8/13 {
                        r4
                        \ottava -1
                        g,,8
                        \ottava 0
                        r8
                        \ottava 0
                        bf8
                        ~
                        \ottava 0
                        bf8
                        \ottava -1
                        f,,8
                        \ottava 0
                        ef4
                        \ottava -1
                        cs,,8
                        \ottava 0
                        f,8
                        ~
                        \ottava 0
                        f,8
                        \ottava 0
                        e,8
                        ~
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        e,8
                        \ottava 0
                        f,8
                        \ottava -1
                        bf,,8
                        ~
                        \ottava -1
                        bf,,8
                        \ottava 0
                        r8
                        r4
                        r8
                        \ottava 0
                        b,8
                        r8
                        \ottava 0
                        ef8
                        ~
                        \ottava 0
                        ef8
                        r8
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        af8
                        \ottava 0
                        af4
                        \ottava -1
                        fs,,4
                        \ottava 0
                        af8
                        \ottava -1
                        b,,,8
                        ~
                        \ottava -1
                        b,,,8
                        \ottava 0
                        e8
                        \ottava 0
                        f4
                        \ottava -1
                        b,,,4
                    }
                }
                {
                    \times 8/13 {
                        \ottava 0
                        fs,8
                        r8
                        \ottava -1
                        fs,,8
                        \ottava 0
                        bf4
                        \ottava 0
                        e8
                        \ottava 0
                        a,8
                        ~
                        \ottava 0
                        a,8
                        \ottava 0
                        ef8
                        ~
                        \ottava 0
                        ef8
                        r8
                        r4
                    }
                }
                {
                    \times 8/11 {
                        \ottava 0
                        f,8
                        r4
                        r1
                    }
                }
            }
        }
    >>
>>