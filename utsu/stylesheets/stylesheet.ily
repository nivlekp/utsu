\version "2.20.0"
\language "english"

%#(set-default-paper-size "11x17landscape")
#(set-default-paper-size "a4landscape")
%#(set-default-paper-size "a4")
#(set-global-staff-size 16)

#(define flat-brackets
   (lambda (grob)
     (let* ((pos (ly:tuplet-bracket::calc-positions grob))
             (dir (ly:grob-property grob 'direction))
             (y (if (= UP dir)
                    (max (car pos) (cdr pos))
                    (min (car pos) (cdr pos)))))
       (cons y y))))

% #(define flat-beams
%    (lambda (grob)
%      (let* ((pos (ly:beam::calc-positions grob))
%              (dir (ly:grob-property grob 'direction))
%              (y (if (= UP dir)
%                     (max (car pos) (cdr pos))
%                     (min (car pos) (cdr pos)))))
%        (cons y y))))

\header {
  composer = \markup {
    \override #'(font-name . "CMU Serif")
    \fontsize #3 "Tsz Kiu Pang"
  }
  tagline = ##f
  title = "Utsu"
  instrument = "For solo piano"
}

\layout {
  indent = 0\cm
  ragged-last = ##t
  \accidentalStyle neo-modern
  \context {
    \Score
    %\override SpacingSpanner.strict-note-spacing = ##t
    %\override SpacingSpanner.strict-grace-spacing = ##t
    \override SpacingSpanner.uniform-stretching = ##t
    proportionalNotationDuration = #(ly:make-moment 1 24)
    \override StaffGrouper.staff-staff-spacing.padding = #8
    \override StaffGrouper.staff-staff-spacing.basic-distance = #8
  }
  \context {
    \Staff
    \override Beam.damping = #+inf.0
    \override Beam.details.damping-direction-penalty = #0
    \override Beam.details.round-to-zero-slope = #0
    \override Flag.stencil = #modern-straight-flag
    \override Stem.length = #10
    % \override Beam.positions = #flat-beams
    \override TupletBracket.positions = #flat-brackets
    tupletFullLength = ##t
    % \override TupletBracket.breakable = ##f
    % \override TupletBracket.full-length-to-extent = ##t
    % \override TupletBracket.X-positions = #(lambda (grob)
    %   (let ((xpos (ly:tuplet-bracket::calc-x-positions grob)))
    %     (if (> (car xpos) (cdr xpos))
    %       (let ((mid (/ (+ (car xpos) (cdr xpos)) 2)))
    %         (format #t "\nwarning: Fixing invalid X-positions ~a" xpos)
    %         (cons mid mid))
    %       xpos)))
    % tupletFullLengthNote = ##t
    %\override TupletBracket.break-overshoot = #'(-0.25 . 0)
    %\override TupletBracket.full-length-padding = #0.2
  }
  \context {
    \Dynamics
    % \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #0
    % \override VerticalAxisGroup.staff-staff-spacing.padding = #0
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #0
  }
}

\paper {
  % system-sytem-spacing.basic-distance = #8
  % score-system-spacing =
  %   #'((basic-distance . 100)
  %      (minimum-distance . 100)
  %      (padding . 100)
  %      (stretchability . 100))
  system-system-spacing.padding = #8
}
