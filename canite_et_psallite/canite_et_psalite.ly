\version "2.22.0"

\header {
  title = \markup \center-column { " " " " " " " " " " "CANITE ET PSALLITE" " " " " }
  composer = \markup \bold {"Ivan Lukačić"}
  arranger = "1574? - 1648"  
  tagline = ##t
}

\paper {
  two-sided = ##t
  inner-margin = 3\cm
  outer-margin = 2\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
}

global = {
  \key f \major \time 8/4 \autoBeamOff
    \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

piuF =
#(make-dynamic-script
  (markup #:line
          (#:normal-text
           #:italic "più"
           #:dynamic "f")))

pocoF =
#(make-dynamic-script
  (markup #:line
          (#:normal-text
           #:italic "poco"
           #:dynamic "f")))

sopran = \relative c' {
  r \breve | r \break |
  f8 ^\f g ^\markup {"TUTTI"} a c b4. b8 c4 bes8 c a4. a8 | g4 r4 f16([ e f g] a4.) a8 g2 g4 \pageBreak |
  f1 r | r \breve | r1 r2 ^\markup {"TUTTI"} r4 c'4 ^\f \break |
  d8 c d bes a a c c b4 c2. | r4 g8 a bes4 bes8 bes a4. a8 bes2 \break |
  g8 a bes2 f a4 g4. g8 | a1 r4 c ^\mf c8 ^\markup {"SOLO"} bes a f | g4 g8 d' es d c bes c4. c8 bes2 \break |
  r4 bes8 bes bes2. a8 g fis4 fis | r d'4. a8 c bes a4 g8 f g4 g | r8 g g a bes2. a8 a g4. g8 \break |
  f1 ^\markup {"TUTTI"} \breathe bes \f ^\< | bes4 \! d8 c c2 ^\> a r4 \! bes4 | bes d8 d c4 c8 a bes bes ^\markup {"poco rit. . . . ."} a2 a4 \break |
  \tempo "PIU ALLEGRETTO" 4 = 104
  \time 3/4 g \breathe bes ^\mp a | g es g | a8 a bes4 \breathe c | a4.( bes8 c4~ | c8[ bes g a] bes4~ \break |
  bes8[ a f g] a4~ | a8[ g] e4.) \breathe e8 | f2. | c'8[( ^\mp bes ^\markup {"SOLO"} a g]) a4 | g4. g8 f4 \break |
  R2. ^\markup {"TUTTI"} | d'8([ ^\piuF c bes a)] c4 | bes2 g4 | a2. \break |
  d8([ ^\mp c bes g)] a4 | bes8([ a g e)] f4 | g4. g8 bes4 | a4. a8 g4 \break |
  R2. ^\markup {"TUTTI"} | R2. | a4. ^\piuF bes8 g4 | g2 g4 \break |
  \tempo "ANIMATO" 4 = 116
  \time 8/4
  g1 r1 | r \breve | r \break |
  r1 ^\markup {"TUTTI"} bes4 ^\f bes8 bes a4 a8 a | g1 a | r \breve \break |
  r \breve | r \break |
  r4 g ^\pocoF bes4.( ^\markup {"TUTTI"} a16[ g] f8[ g a bes] c4. \tenuto \breathe bes16[ a] | g8[ ^\< a bes c] \! d4. c16[ bes] a8[ bes] c4. bes16[ a] g4~ \break |
  g8[ a] bes4. a16[ g] f4. g8 a2) a4 \breathe | g2. ^\markup {"poco rit . . ."} ^\< g4 \breathe a1 \! ^\f \break |
  \tempo "TEMPO PRIMO" 4 = 92 r \breve | r \breve \break |
  f8 ^\f g ^\markup {"TUTTI"} a c b4. b8 c4 bes8 c a4. a8 | g4 r f16([ e f g] a4.) a8 g2 g4 \break |
  f1 r1 | r \breve \break |
  r1 r2 ^\markup {"TUTTI"} r4 c' ^\f | d8 c d bes a a c c b4 c2. \break |
  r4 g8 a bes4 bes8 bes a4. a8 bes2 | g8 a bes2 ^\markup { \italic "cresc. e allarg. . . . . . . . . . . . ." } f a4 g4. g8 | a \breve ^\ff \fermata \bar "|." |
}

alt = \relative c' {
  r \breve | r |
  c8 ^\f e f g g4. g8 g4 es8 es d4. d8 | d2 \breathe d16([ c d e] f2) e8([ d)] e4. e8 |
  f1 r1 | r \breve | r1 r2 r4 f ^\f |
  f8 a f f f f a g g4 e c8 d es4~ | es bes8 g g'4 f f2 d8 e f4 |
  d4 g f2(~ f8[ d] f2) e4 | f1 r1 | r \breve |
  r \breve | r \breve | r \breve |
  r1 f1 ^\f ^\< | g4 \! f8 f e2 ^\> f \! r4 f | g f8 f f4 e8 d d d ^\markup {"poco rit. . . . ."} d2 d4 |
  d4 \breathe g ^\mp f | ees c d | f8 f g4. \breathe g8 f4.( ees8[ c d] | ees4. d8[ bes c] |
  d4. c8[a bes] | c2) c4 | c2. | R2. | R2. |
  f8([ ^\piuF e d c])  e4 | a8([ g f d]) e4 | d2 c4 | c2. |
  R2. | g'8([ ^\mp f e c]) d4 | e4. e8 g4 | g4. f8 g4 |
  f8[( ^\piuF e d c]) e4 |  f2 e4 | d4. f8 e4 | d2 e4 |
  e1 r | r \breve | r \breve |
  r1 f4 ^\f f8 f f4 f8 f | e4( ^\< f2 \! ^\> e4) \! f1 | r4 f2 ^\mf d4 ^\markup {"SOLO"} g e8 c d2 |
  d2 r2 r1 | r \breve |
  r2 r4 d ^\pocoF f4.( e16[ d] c8[ d e f] | g4. \tenuto f16[ e] d8[ ^\< e f g] \! a4. \tenuto g16[ f] e4. f8 |
  g4. f16[ e] d4. e8 f4. e16[ d] c4. d8 | e4) f ^\< ^\markup {"poco rit."} f e f1 \! ^\f |
  r \breve | r \breve |
  c8 ^\f e f g g4. g8 g4 ees8 ees d4. d8 | d2 d16([ c d e] f2) e8[( d]) e4. e8 |
  f1 r1 | r \breve |
  r1 r2 r4 f ^\f | f8 a f f f f a g g4 e c8 d ees4~ |
  ees bes8 g g'4 f f2 d8 e f4 | d4 g4 ^\markup { \italic "cresc. e allarg. . . . . . . . . . . . ." } f2(~ f8[ d] f2) e4 | f \breve \fermata ^\ff \bar "|." |
}

tenorOne = \relative c {
  \tempo "NOBILE, CON ANIMA" 4 = 92
  \clef "treble_8"
  f8 ^\mf g a c b4. b8 c4 bes8 c a4. a8 | g4 a16([ g a bes] c4.) f,8 g4. g8 f2 |
  a8 ^\f b d es d4. d8 c4 g8 g fis4. fis8 | g4 \breathe d16([ e f d] bes'4 ^\< c2) \! bes8[( a]) g4. g8 |
  a1 r4 c ^\mf bes8 ^\markup {"SOLO"} a d c | bes c a f g4 ^\> g \! r g8 a bes2~ \tenuto | bes4 a8 a g4. g8 f2 r4 a ^\f |
  a8 a bes d d c c( d) d4 c g2 | g8 a bes4. bes8 d4 c4. c8 bes2 |
  r2 bes8 c d4 d8 bes c2 c4 | a1 r | r \breve |
  r \breve | r \breve | r \breve |
  r1 d1 ^\f ^\< | bes4 \! f8 a c2 ^\> c \! d | bes4 f8 a a4 g8 f f g ^\markup {"poco rit. . . . ."} fis2 fis4 |
  g2 r4 | r r bes ^\mp | a g ees | f4.( g8 a4) | c4.( bes8[ g a] |
  bes4. a8[ f g] | a2) g4 | f2. | R2. | R2. |
  d'8([ ^\piuF c bes a)] c4 | a2 a4 | f2 e4 | f2. |
  R2. | R2. | R2. | R2. |
  c'2 ^\piuF c4 | a2 c4 | a4. d8 c4 | b2 b4 |
  c1 r | r \breve | r \breve |
  r1 d4 ^\f d8 d d4 d8 c | c1 a | r \breve |
  g4 ^\mf bes4.( ^\markup {"SOLO"} a16[ g] f8[ g a bes] c4. bes16[ a] g8[ a ^\< bes c] \! d2 \tenuto ) bes4 a2. a4 |
  g2 \breathe g4 ^\pocoF bes4.( a16[ g] f8[ g a bes] c4~ | c8[ bes16 a] g8[ ^\< a bes c] \! d4. \tenuto c16[ bes] a8[ bes] c4. bes16[ a] |
  g4. a8 bes4. a16[ g] f4. g8 a[ bes] c4~ | c) bes8[( ^\< ^\markup {"poco rit."} a]) g4. g8 f1 \! ^\f |
  f8 ^\mf g ^\markup {"SOLO"} a c b4. b8 c4 bes8 c a4. a8 | g4 a16([ g a bes] c4.) f,8 g4. g8 f2 |
  a8 ^\f b d ees d4. d8 c4 g8 g fis4. fis8 | g4 d16[( e f d] bes'4 ^\< c2) \! bes8[( a]) g4. g8 |
  a1 r4 c4 ^\mf bes8 ^\markup {"SOLO"} a d c | bes c a f g4 ^\< g \! r g8 a bes2~ |
  bes4 a8 a g4. g8 f2 r4 a ^\f | a8 a bes d d c c4 d c g2 |
  g8 a bes4. bes8 d4 c4. c8 bes2 | r bes8 ^\markup { \italic "cresc. e allarg. . . . . . . . . ." } c d4 d8 bes c2 c4 | a \breve ^\ff \fermata \bar "|." |
}

tenorTwo = \relative c' {
  \clef "treble_8"
  r \breve | r \break |
  c8 g f es g4. b8 g4 g8 g d'4. a8 | bes4 \breathe bes8[( c] d4) c c2. c4 |
  c1 r | r \breve | r1 r2 r4 f ^\f |
  f,8 f f f f a a e \breathe g2 g4 \breathe c | bes es bes f a4. a8 f4 \breathe d'4~ \accent |
  d8 c bes4 f2. c4 g'4. g8 | f1 r | r \breve |
  r \breve | r \breve | r \breve |
  r1 r2 bes ^\f ^\< | g4 \! a8 f g2 ^\> a \! r4 bes | g a8 f a4 c8 f, bes bes ^\markup {"poco rit. . . . ."} d([ d,] a'4.) a8 |
  bes2 r4 | r r bes ^\mp | c ees ees | d c f | g g4.( f8 |
  d,8[ e] f4. e8 | c[ d] e[ f g e]) | a4. a8 a4 | R2. | R2. |
  a8([ ^\piuF g] f4) g | f2 a4 | d8([ c bes f]) c'4 | a2 r4 | 
  R2. | R2. | R2. | R2. |
  a2 ^\piuF g4 | f2 g4 | f4. d8 g4 | g2 g4 |
  g1 r | r \breve | r \breve |
  r1 bes4 ^\f bes8 bes f4 f8 f | g1 f | r \breve |
  r \breve | r \breve |
  r1 r4 a ^\pocoF a8([ g16 f] g4 | c \tenuto bes4. a16[ g] a4) f r a c(~ |
  c4 bes4. c8 d2 \tenuto a8[ g] f4 e8[ d]) | c4 c'2 ^\< ^\markup {"poco rit."} c4 \! a1 ^\f |
  r \breve | r \breve |
  c8 ^\f g f ees g4. b8 g4 g8 g d'4. a8 | bes4 bes8([ c] d4) c c2. c4 |
  c1 r | r \breve |
  r1 r2 r4 f, ^\f | f8 f f f f a a e g2 a4 c |
  bes4 ees bes f a4. a8 f4 d'~ | d8 c bes4 ^\markup { \italic "cresc. e allarg. . . . . . . . . . . . ." } f2. c4 g'4. g8 | f \breve \fermata ^\ff \bar "|." |
}

bas = \relative c {
  \clef "bass"
  r \breve | r |
  f8 ^\f e d c g'4. g8 c,4 es8 c d4. d8 | g,4 \breathe bes2 a4 c2. c4 |
  f,1 r | r \breve | r1 r2 r4 f' ^\f |
  d8 f bes, bes d f a, c g4 c r c8 d | es2. d8 es f4. f8 bes,2 |
  r4 g8 a bes2. a8 bes c4. c8 | f,1 r | r \breve |
  r \breve | r \breve | r \breve |
  r1 bes'1 ^\f ^\< | ees,4 \! d8 f c2 ^\> f \! r4 bes4 | ees, d8 d f4 c8 d bes g ^\markup {"poco rit. . . . ."} d'2 d4 |
  g,2 r4 | r r g' ^\mp | f ees c d f4.( ees8 | c[ d] ees4. d8 |
  bes8[ c] d4. c8 | a[ bes] c4.) c8 | f,2. | R2. | R2. |
  f'2 ^\piuF c4 | d2 a4 | bes2 c4 | f2. |
  R2. | R2. | R2. | R2. |
  f2 ^\piuF c4 | d2 c4 | d4. bes8 c4 | g2 g4 |
  c1 r2 ^\markup {"SOLO"} f2 ^\f | bes2 g4 g c4.( bes8 g8[ a bes f] | g4. f8 d[ e f c] d[ c a bes] c2) |
  f1 bes,4 ^\f bes8 bes d4 d8 f | c1 f | r \breve |
  r \breve | r \breve |
  r1 d4 ^\pocoF f4.( e16[ d] c8[ d e f] g4. \tenuto f16[ e] d8[ e ^\< f g] \! a4. \tenuto g16[ f] e4~ |
  e8[ f] g4. f16[ e] d4. e8 f2) a,4 \breathe | c2. ^\< ^\markup {"poco rit."} c4 \! f,1 ^\f |
  r \breve | r \breve |
  f'8 ^\f e d c g'4. g8 c,4 ees8 c d4. d8 | g,4 bes2 a4 c2. c4 |
  f,1 r | r \breve |
  r1 r2 r4 f' ^\f | d8 f bes, bes d f a, c g4 c r c8 d |
  ees2. d8 ees f4. f8 bes,2 | r4 g8 ^\markup { \italic "cresc. e allarg. . . . . . . . . . . . ." } a bes2. a8 bes c4. c8 | f, \breve \fermata ^\ff \bar "|." |
}


sopranText = \lyricmode {
  Ca -- ni --te et psal -- li -- te, om -- nes po -- pu -- li,
  om -- nes po -- pu -- li. Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae, di -- em ple -- num lae -- ti -- ti -- ae.
  Cu -- ius so -- lem -- ni -- ta -- tem cum or -- ga -- nis et can -- ti -- cis
  tam su -- a -- vi con -- cen -- tu dul -- ci, dul -- ci -- que har -- mo -- ni -- a ce -- le -- brat
  i -- sta Ec -- cle -- si -- a. O di -- em so -- lem -- nem, o di -- em so -- lem -- nem,
  o di -- em ce -- le -- brem, di -- em ple -- num lae -- ti -- ti -- ae,
  lae -- ti -- ti -- ae. Gau -- dent an -- ge -- li, gau -- dent an -- ge -- li,
  gau -- dent, gau -- dent quo -- que arch -- an -- ge -- li, quo -- que arch -- an -- ge -- li.
  om -- ni -- a re -- gna coe -- lo -- rum. lae -- tan -- tes ca -- ni -- te.
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae, di -- em ple -- num lae -- ti -- ti -- ae.
}

altText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
  O di -- em so -- lem -- nem, o di -- em so -- lem -- nem,
  o di -- em ce -- le -- brem, di -- em ple -- num la -- ti -- ti -- ae,
  lae -- ti -- ti -- ae.
  Gau -- dent, gau -- dent an -- ge -- li,
  gau -- dent quo -- que arch -- an -- ge -- li,
  gau -- dent quo -- que, quo -- que arch -- an -- ge -- li
  om -- ni -- a re -- gna coe -- lo -- rum.
  Er -- go, er -- go vos om -- nes lae -- tan -- tes ca -- ni -- te.
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
}

tenorOneText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li,
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
  O di -- em so -- lem -- nem, o di -- em so -- lem -- nem,
  o di -- em ce -- le -- brem, di -- em ple -- num lae -- ti -- ti -- ae.
  Gau -- dent, gau -- dent an -- ge -- li,
  gau -- dent quo -- que, quo -- que arch -- an -- ge -- li
  om -- ni -- a re -- gna coe -- lo -- rum.
  lae -- tan -- tes ca -- ni -- te, lae -- tan -- tes __ ca -- ni -- te.
  Ca -- ni --te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
}

tenorTwoText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
  O di -- em so -- lem -- nem, o di -- em so -- lem -- nem,
  o di -- em ce -- le -- brem, di -- em ple -- num lae -- ti -- ti -- ae, lae -- ti -- ti -- ae.
  Gau -- dent, gau -- dent an -- ge -- li,
  gau -- dent quo -- que, quo -- que arch -- an -- ge -- li
  om -- ni -- a re -- gna coe -- lo -- rum
  lae -- tan -- tes, lae -- tan -- tes ca -- ni -- te.
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
}

basText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
  O di -- em so -- lem -- nem, o di -- em so -- lem -- nem,
  o di -- em ce -- le -- brem, di -- em ple -- num lae -- ti -- ti -- ae.
  Gau -- dent, gau -- dent an -- ge -- li,
  gau -- dent quo -- que, quo -- que arch -- an -- ge -- li
  Ex -- ul -- tant, ex -- ul -- tant om -- ni -- a re -- gna coe -- lo -- rum
  lae -- tan -- tes ca -- ni -- te.
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li.
  Et me -- cum a -- gi -- te so -- lem -- nem di -- em,
  di -- em ple -- num lae -- ti -- ti -- ae,
  di -- em ple -- num lae -- ti -- ti -- ae.
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopran"
    \with { instrumentName =  "Sopran " }
    \with { shortInstrumentName = "S " }
    <<
      \set Staff.midiMaximumVolume = #0.6
      \new Voice = "sopran" {
        \global
        \sopran
      }
      \new Lyrics \lyricsto "sopran" {
        \sopranText
      }
    >>
    \new Staff = "alt"
    \with { instrumentName =  "Alt " }
    \with { shortInstrumentName = "A " }
    <<
      \set Staff.midiMaximumVolume = #0.6
      \new Voice = "alt" {
        \global
        \alt
      }
      \new Lyrics \lyricsto "alt" {
        \altText
      }
    >>
    \new Staff = "tenor1"
    \with { instrumentName =  "Tenor I. " }
    \with { shortInstrumentName = "T1 " }
    <<
      \set Staff.midiMaximumVolume = #0.6
      \new Voice = "tenor1" {
        \global
        \tenorOne
      }
      \new Lyrics \lyricsto "tenor1" {
        \tenorOneText
      }
    >>
    \new Staff = "tenor2"
    \with { instrumentName =  "Tenor II. " }
    \with { shortInstrumentName = "T2 " }
    <<
      \set Staff.midiMaximumVolume = #0.6
      \new Voice = "tenor2" {
        \global
        \tenorTwo
      }
      \new Lyrics \lyricsto "tenor2" {
        \tenorTwoText
      }
    >>
    \new Staff = "bas"
    \with { instrumentName =  "Bas " }
    \with { shortInstrumentName = "B " }
    <<
      \set Staff.midiMinimumVolume = #0.8
      \new Voice = "bas" {
        \global
        \bas
      }
      \new Lyrics \lyricsto "bas" {
        \basText
      }
    >>
  >>

\layout {
  indent = 0 \cm
  #(layout-set-staff-size 16)
}

\midi {}
}
