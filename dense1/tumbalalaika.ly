\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Tumbalalaika dense v3"
	composer = "Jewish / Yiddish / Russian folk song"
	arranger = "arr. Andy Rosenbaum October 2017"
}


\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key d \minor
  \time 6/8
}

% ================= %
% chorus first part %
% ================= %

% new!!! %
% ====== %

mainChorusSop = \relative d' {
        | a'8 a a a a a | a g8. f16 e4 e8 | g8 g g g g g | g f8. e16 d4 d8 |
%        | a'8 a a a a a | a g8. f16 e4 e8 | g8 g g g g g | g f8. e16 f4 f8 |
}

mainChorusAlto = \relative d' {
        | d8 d d d d d | d d8. d16 cis4 cis8 | cis8 cis cis cis cis cis | cis cis8. cis16 a4 a8 |
%        | d8 d d d d d | d d8. d16 cis4 cis8 | cis8 cis cis cis cis cis | cis cis8. cis16 d4 d8 |
}

mainChorusTenor = \relative d {
        | f8 f f f f f | f f8. f16 g4 g8 | g8 g g bes bes bes | bes a8. g16 f4 f8 |
%        | f8 f f f f f | f f8. f16 g4 g8 | g8 g g bes bes bes | bes bes8. bes16 a4 a8 |
}

mainChorusBass = \relative d {
        | d4. a | d e | e a, | a8 b8. cis16 d4. |
}

% old!!! %
% ====== %

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

shpielWords = \lyricmode { | tum -- ba -- la -- lai -- ka | shpiel ba -- la -- lai -- ka | tum -- ba -- la -- lai -- ka | frey -- lach zol zayn | }

emptyWords = \lyricmode {}

% papa = \lyricmode { | pa pa pa pa | }

% ================== %
% chrous second part %
% ================== %

% new!!! %
% ====== %

% argh! I know the 'bes' is not needed here, 'b' should work, but LilyPond is making 'b' a b natural,
% even though there's clearly a b-flat in the key signature
% I think I'm doing something wrong with the complex music expression
% TODO: fix
% for now, I'll just use 'bes' (and also the once instance of 'b' in the bass!) to unblock

mainChorusTwoSop = \relative d' {
        | d8 f a d4 d8 | f8 e d c4 c8 | c8 bes g g4 g8 | bes8 a g f4. |
}

mainChorusTwoAlto = \relative d' {
        | d8 f a d4 d8 | d8 c bes a4 a8 | c8 bes g e4 e8 | g8 f e d4. |
}

mainChorusTwoTenor = \relative d {
        | f8 a d f4 f8 | f8 f f f4 f8 | c8 c c cis4 cis8 | cis8 cis cis a4. |
}

mainChorusTwoBass = \relative d {
        | d4. c | bes f' | e g | a,8 b8 cis d4. |
}

% old!!! %
% ====== %


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

% sopMusic = \transpose c c' { \offBeatChorusOneB }
% sopMusic = { \mainChorusSop \mainChorus2Sop }
% sopWords = \basicTum \shpielWords

sopMusic = { \mainChorusSop \mainChorusTwoSop }
sopWords = { \basicTum \shpielWords }

altoMusic = { \mainChorusAlto \mainChorusTwoAlto }
altoWords = { \basicTum \shpielWords }

tenorMusic = { \mainChorusTenor \mainChorusTwoTenor }
tenorWords = { \basicTum \shpielWords }

bassMusic = { \mainChorusBass \mainChorusTwoBass }

bassTum = \lyricmode {
  tum tum | tum tum | tum tum | tum ba la la
}

bassTwoTum = \lyricmode {
  tum lai | shpiel lai | tum lai | frey -- lach zol zyn |
}

bassWords = { \bassTum \bassTwoTum }


\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global { \sopMusic } >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global { \altoMusic } >>
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
        << \global { \tenorMusic } >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global { \bassMusic } >>
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
