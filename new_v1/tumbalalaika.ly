\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Tumbalalaika"
	composer = "Traditional"
	arranger = "arr. Andy Rosenbaum July 2017"
}


\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key a \minor
  \time 6/8
}

% ================= %
% chorus first part %
% ================= %

mainChorusOne = \relative c' {
	| e8 e e e e e | e d8. c16 b4 b8 | d8 d d d d d | d c8. b16 a4 a8 |
}

mainChorusOneLow = \relative c {
	| e8 e e e e e | e d8. c16 b4 b8 | d8 d d d d d | d c8. b16 a4 a8 |
}

% above chorus options

aboveChorusOneA = \relative c'' {
	| a8 a a a a a | a g8. f16 e4 e8 | f8 f f e e e | e fis8. gis16 a4 a8 |
}

aboveChorusOneB = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | f8 f f e e e | e fis8. gis16 a4 a8 |
}

aboveChorusOneC = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | f8 f f e e e | f e8. d16 c4 c8 |
}

aboveChorusOneD = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | gis8 gis gis f f f | f e8. d16 c4 c8 |
}

% below chorus options

belowChorusOneA = \relative c' {
	| c8 c c c c c | c b8. a16 b4 b8 | b8 b b b b b | b a8. gis16 a4 a8 |
}

belowChorusOneB = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f d d d | d e8. f16 e4 e8 |
}

belowChorusOneC = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f gis gis gis | f gis8. f16 e4 e8 |
}

belowChorusOneD = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f gis gis gis | a gis8. f16 e4 e8 |
}



% bass options

baseChorusOneA = \relative c {
%   | a4. | a4. | b4. | e,4. | b'4. | e,4. | b'4 e,8 | a4. |
%     | a4. | a4. | b4. | e,4. | b'4. | e,4. | e8 fis gis | a4. |
    | a4. a | b e, | b' e, | e a |
}

% offbeat options

offBeatChorusOneA = \relative c' {
% 	| r8 c c r8 c c | r8 c r r8 b b | r8 b b r8 b b | r8 b r r8 c c |
	| r8 c c r8 c c | r8 d4 r8 b b | r8 b b r8 b b | r8 d4 r8 c c |
}

offBeatChorusOneB = \relative c' {
% 	| r8 a a r8 a a | r8 a r r8 gis gis | r8 gis gis r8 gis gis | r8 gis r r8 a a |
	| r8 a a r8 a a | r8 a4 r8 gis gis | r8 gis gis r8 gis gis | r8 gis4 r8 a a |
}

offBeatChorusOneC = \relative c' {
% 	| r8 e e r8 e e | r8 e r r8 d d | r8 d d r8 d d | r8 f r r8 e e |
	| r8 e e r8 e e | r8 e4 r8 d d | r8 d d r8 d d | r8 f4 r8 e e |
}

% offBeatBa = \lyricmode { | ba ba ba ba | ba ba ba ba | ba ba ba ba | ba ba ba ba | }
offBeatBa = \lyricmode { | ba ba ba ba | ba ba ba | ba ba ba ba | ba ba ba | }

% other

restNotes = { | r4. r | r r | }

basicTum = \lyricmode { | tum -- ba -- la tum -- ba -- la | tum -- ba -- la -- lai -- ka | tum -- ba -- la tum -- ba -- la | tum -- ba -- la -- lai -- ka | }

emptyWords = \lyricmode {}

% papa = \lyricmode { | pa pa pa pa | }

% ================== %
% chrous second part %
% ================== %

mainChorusTwo = \relative c' {
	| a8 c e a4 a8 | c8 b a e4 e8 | g8 f d b4 b8 | d8 c b a4 a8 |
}

aboveChorusTwoA = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 d c b4 e,8 | f8 e d c4 c8 |
}

aboveChorusTwoB = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 a gis e4 e8 | f8 e d c4 c8 |
}

aboveChorusTwoC = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 b b b4 e,8 | f8 e d c4 c8 |
}

aboveChorusTwoD = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 a g f4 f8 | e8 e e e4 e8 |
}

% DENSE

%{ DENSE
sopMusic = { \aboveChorusOneD }
sopWords = \basicTum

altoMusic = { \mainChorusOne \mainChorusTwo }
altoWords = \basicTum

tenorMusic = \belowChorusOneC
tenorWords = \basicTum

bassMusic = \baseChorusOneA
%}

% OPEN

sopMusic = \transpose c c' { \offBeatChorusOneB }
sopWords = \offBeatBa

altoMusic = \mainChorusOne
altoWords = \basicTum

tenorMusic = \transpose c c, { \offBeatChorusOneA }
tenorWords = \offBeatBa

bassMusic = \baseChorusOneA

bassWords = \lyricmode {
  doom doom | doom doom | doom doom | doom doom
}


\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
\layout{}
\midi{ \tempo 4 = 90 }
}
