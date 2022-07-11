\version "2.22.0"

\header {
  title = \markup \center-column {" " "Blagoslovljen budi Bog Otac" " "}
  composer = \markup { \italic "Matija pl. Ivšić (1894. - 1963.)" }
  tagline = ##t
}

\paper {
  two-sided = ##t
  inner-margin = 1.5\cm
  outer-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
}

global = {
   \key f \major
   \time 4/4
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative c {
  r1 | r | r | r | c'' ^\mf ^\< | d2. \! d4 ^\>   |
  a2 \! \breathe c(~ | c4 bes) g4. g8 | a2 \breathe f4 ^\< \tempo "polaganije" g | a1 | g~ \! | g ^\> |
  \tempo "accel." g1  \! | r | c2 ^\f d4. c8 | bes4 a8 a g2~ | g fis  |
  \tempo "Tempo" g1 | r | a2 ^\< a4 a | bes2. \accent \! a4 | g2 \breathe a~ | a c(~ | c b) ^\>  |
  c1 | r \! | r2 d ^\< | d4 \! c bes4. bes8 | bes4 a2 ^\> g4 \! | \tempo "piu accel." f1  |
  r2 a~ ^\p ^\< | a4 \! gis a4. a8 | a2 ^\< c2~ \! | c4 \breathe c2 \marcato c4 \marcato | c c2 \marcato ^\> b4 \! | c2 \breathe a4 ^\pp f  |
  g2. fis8 ^\> fis | g1 \! | r | r | r2 c ^\f  |
  c4 c c b | c f4. \accent ( e8 d ^\> c | d4) d c2 \! | b2 ^\> \breathe \tempo "polaganije" d4. \! d8  |
  d4 c f, f | bes2. a4 | g1 | f2 ^\> \breathe f4 \! \accent f \accent | f2( ^\> e) | f1 \! \fermata \bar "|." |
}

alt = \relative c {
  g''1 ^\p ^\< | a2. \! \> a4 | e2 \! a2(~ | a4 g) f4. f8 | e2 \breathe f4( e | d) d2 e4 |
  f2 \breathe a | g4( f8 e d4) e | f2 \breathe f~ | f e | d1~ | d2 \breathe d |
  e r | g ^\f c4. bes8 | a( g f2) \breathe d4~ | d8 e f2 e4 | d1~ |
  d2 r | e2 e4 \accent e \accent | f2. \accent f4 | d( e) f2( | e) f | f \breathe f | g2.( f4) |
  e2 \breathe a2 ^\> | f4 g \! a2~ | a2. a4 | d,2 d4( e) f2( d4 e) | f2 \breathe f ^\p ^\< |
  e4 f4. \! e8 d4 | e1 \breathe | f | c4 \breathe f2 f4 | f2 g4 g | g2 \breathe f4. ^\pp c8 |
  d2 d4 c | b2 r4 g'~ ^\mf ^\< | g g a \! g | e2 d4 g~ | g e f2(~ ^\f |
  f4 e8 d e fis g4~ | g) f \breathe g2 | f4 g2( e8 fis) | g2 \breathe a4. a8 |
  g4 g a a | f( d8 e f2~ | f4) f e2 | f \breathe d4 d | c1 ^\> | c \! \fermata |
  
}

tenor = \relative c {
  \clef "treble_8"
  r1 | r | c' ^\p ^\< | d2. \! d4 ^\> | a2 \breathe f \! | bes bes |
  c \breathe f4( e) | d2 bes | d \breathe d4 d | c1~ | c2 b4( a | b1) |
  c | r2 f ^\f | f4. e8 d( c bes4~ | bes) c b c | a1 |
  b2 r | r c | c4 c d4. \accent d8 | bes2 \breathe c~ | c c | d \breathe c | d1 |
  c2 \breathe c | d4 d e2 | f2. d4 \breathe | g1 | c,2( a4 b8 cis) | d2 \breathe a2 |
  a4 a2 a4 | b4. b8 cis2 | d \breathe c | g4 \breathe c2 c4 | c2 d4 d | e2 \breathe c~ ^\pp |
  c4 b a a8 a | g2 \breathe c ^\mf | c4 c c b | c \breathe f4. \accent ( e8 d c | b4) c a2 ^\f |
  a4 r a g | a a bes bes | bes bes c2 | d \breathe a4( b |
  c) c c c | d bes \breathe c2 | d c4( bes) | a2 \breathe bes4 bes | g1 ^\> | a \! \fermata |
  
}

bas = \relative c {
  \clef bass
  r1 | r | r | r | r | r |
  f ^\mf ^\< | g2. \! g4 ^\> | d2 \breathe bes'4 \! bes | f1 | g~ | g | 
  c,2 \breathe c' ^\f | c4. bes8 a( g f4~ | f a) bes4. a8 | g4( f) g( c, | d1) |
  <g, g'>2 \breathe c' ^\mf | c4 c a2 | f \breathe d | g f | c'4 c f,( e | d2) \breathe a( | g) g' |
  a2 \breathe f | bes a4( g) | f( e d) f \breathe | bes,2. bes4 | f'2.( e4) | d2 \breathe d |
  cis4 d4. e8 f4 | e2 r | r a, | e'4 \breathe a2 a4 | a2 g4 g | c,2 \breathe f4 ^\pp a |
  g4. g8 d2 | e1 | r | r | r2. c'4~ ^\f |
  c c c d | c2 g4 bes~ \accent( | bes8 a g f) e4 a | g2 \breathe f |
  e2 f4 f | d g f2 | bes, c | d \breathe bes4 bes | c1 ^\> | f, \! \fermata |
}

sopranText = \lyricmode {
  Bla -- go -- slov -- ljen, bla -- go -- slov -- ljen
  bu -- di Bog O -- tac, bla -- go -- slov -- ljen
  bu -- di Bog __ O -- tac, je -- di -- no če -- di že
  Sin __ Bo -- žji,
  je -- di -- no če -- di že Sin Bo -- žji,
  Sve -- ti ta -- ko -- đe Duh __ Sve -- ti ta -- ko -- đe Duh,
  Sve -- ti ta -- ko -- đe Duh ja -- ko stvo -- ri
  s_na -- mi mi -- lost svo -- ju,
  ja -- ko stvo -- ri s_na -- mi mi -- lost svo -- ju,
  mi -- lost svo -- ju.
}

altText = \lyricmode {
  Bla -- go -- slov -- ljen, bla -- go -- slov -- ljen,
  bla -- go -- slov -- ljen, bla -- go -- slov -- ljen
  bu -- di Bog __ O -- tac, bla -- go -- slov -- ljen __
  bu -- di Bog O -- tac, __ je -- di -- no če -- di
  že __ Sin __ Bo -- žji, Sin Bo -- žji,
  je -- di -- no če -- di že Sin __ Bo -- žji.
  Sve -- ti ta -- ko -- đe Duh, Sve -- ti,
  Sve -- ti ta -- ko -- đe Duh, Sve -- ti
  ta -- ko -- đe Duh ja -- ko stvo -- ri s_na -- mi
  mi -- lost svo -- ju, mi -- lost svo -- ju ja -- ko
  stvo -- ri s_na -- mi mi -- lost svo -- ju, mi -- lost svo -- ju.
}

tenorText = \lyricmode {
  Bla -- go -- slov -- ljen, bla -- go -- slov -- ljen,
  bla -- go -- slov -- ljen bu -- di Bog __ O -- tac,
  bla -- go -- slov -- ljen __ bu -- di Bog O -- tac,
  je -- di -- no če -- di že Sin __ Bo -- žji, Sin Bo -- žji,
  je -- di -- no če -- di že Sin Bo -- žji, Sve -- ti,
  Sve -- ti ta -- ko -- dje Duh, Sve -- ti,
  Sve -- ti ta -- ko -- dje Duh, Sve -- ti
  ta -- ko -- đe Duh, ja -- ko stvo -- ri s_na -- mi
  mi -- lost svo -- ju, ja -- ko stvo -- ri s_na -- mi
  mi -- lost svo -- ju, ja -- ko stvo -- ri s_na -- mi
  mi -- lost svo -- ju, mi -- lost svo -- ju.
}

basText = \lyricmode {
  Bla -- go -- slov -- ljen bu -- di Bog O -- tac,
  bla -- go -- slov -- ljen __ bu -- di Bog __ O -- tac,
  je -- di -- no če -- di, je -- di -- no če -- di že __
  Sin __ Bo -- žji, je -- di -- no __ če -- di že
  Sin Bo -- žji, Sve -- ti ta -- ko -- đe Duh, Sve -- ti,
  Sve -- ti ta -- ko -- đe Duh, Sve -- ti ta -- ko -- đe Duh
  ja -- ko stvo -- ri s_na -- mi mi -- lost svo -- ju,
  ja -- ko stvo -- ri s_na -- mi mi -- lost svo -- ju,
  mi -- lost svo -- ju.
}

\score {

\new ChoirStaff <<
  \new Staff = "sopran"
  \with { instrumentName =  "Sopran " }
  \with { shortInstrumentName = "S. " }
  <<
    \new Voice = "sopran" {
      \set Staff.midiMaximumVolume = #0.7
      \global
      \sopran
    }
    \new Lyrics \lyricsto "sopran" {
      \sopranText
    }
  >>
  \new Staff = "alt"
  \with { instrumentName =  "Alt " }
  \with { shortInstrumentName = "A. " }
  <<
    \new Voice = "alt" {
      \set Staff.midiMaximumVolume = #0.7
      \global
      \alt
    }
    \new Lyrics \lyricsto "alt" {
      \altText
    }
  >>
  \new Staff = "tenor"
  \with { instrumentName =  "Tenor " }
  \with { shortInstrumentName = "T. " }
  <<
    \new Voice = "tenor" {
      \set Staff.midiMinimumVolume = #0.6
      \global
      \tenor
    }
    \new Lyrics \lyricsto "tenor" {
      \tenorText
    }
  >>
  \new Staff = "bas"
  \with { instrumentName =  "Bas " }
  \with { shortInstrumentName = "B. " }
  <<
    \new Voice = "bas" {
      \set Staff.midiMaximumVolume = #0.7
      \global
      \bas
    }
    \new Lyrics \lyricsto "bas" {
      \basText
    }
  >>
>>

\layout {
  indent = 1 \cm
  #(layout-set-staff-size 15)
}

\midi {
  \tempo 4 = 120
}

}