\version "2.22.0"

\header {
  title = "Exultate justi in Domino"
  composer = "Lodovico Grossi da Viadana"
  opus = "(Venetiis 1612)"
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
   \key a \major
   \time 3/2
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative c {
  a''1 a2 | a1 b2 | cis cis e | d1 d2 | cis \breathe e d | cis1 a2 | b1 cis2  |
  b1 b2 | \time 4/4 cis2 cis4 cis | d d8 d cis4 d | e2 e4 e | fis4 fis8 fis e4  b | b2 \breathe cis  |
  d8( cis d e fis e d cis | b4 cis b4.) b8 | cis2 \breathe e4 e | fis fis8 fis e4 dis | e1  |
  r4 fis4 fis8( e d cis | b4 a2) gis4 | a \breathe e'2 e4 | d d8 d cis4 cis8 cis  | b4 b \breathe e e  |
  d4 d8 d cis4 cis8 cis| b2 a | r cis~ | cis4 b8 a b4 e, | r1  |
  e'1~ | e2 d4 cis | b2 e, | r4 e' e e | d2 cis | r r4 e | e e d2  |
  cis2 r | r r4 b~ | b8 b b4 cis8( d e cis | d e fis b, cis d e cis | dis4 e2 dis4) | e1  |
  r2 e4 e | d d8 d cis2 | b4 b a a | gis cis2 a4 | gis2( fis) |
  gis2 r | r1 | r2 e'4 e | d d8 d cis2 | b r | cis2. cis4  |
  b4 b8 b a2 | gis r4 e' | cis4 cis8 cis cis4 b | a2 a4 e' | cis4 cis8 cis cis4 b | a8( b cis d e2) |
  e4 \breathe e e e8 d | cis2( b~ | b4) a a2(~ | a4 gis8 fis gis2) | a1 \breathe | \time 3/2 a1 a2 | a1 b2  |
  cis2 cis e | d1 d2 | cis2 \breathe e d | cis1 a2 | b1 cis2 | b1 b2 | \time 2/2 cis1 \breathe | d | cis | a2. a4 | a1 \bar ".|" |
}

alt = \relative c {
  e'1 e2 | fis1 gis2 | a a gis | b1 fis2 | a \breathe a fis | a( gis) fis | fis1 a2 |
  gis1 gis2 | a2 a4 a | a a8 a a4 a | gis2 a4 a | a a8 a a4 fis | gis2 \breathe a |
  fis8( e fis gis a4 fis | gis a2) gis4 | a2 \breathe a4 a | a a8 a a4 a | gis2 \breathe a |
  fis8( e fis gis a4 fis | gis e~ e4.) e8 | e1 | r2 e4 a | fis fis8 fis e4 a8 a |
  fis4 fis \breathe e a | fis fis8 fis e4 e8 e | fis2 a | r2 r4 a~ | a gis8 fis e2 |
  e2 r4 a~ | a gis8 fis gis4( a~ | a gis8 fis gis2) | a1 | r4 a a a | fis2 e | r r4 a |
  a4 a a2 | a gis~ | gis a | fis a(~ | a4 gis fis2) | gis gis4 gis |
  a4 a8 fis gis4 e | r2 a4 a | gis gis8 gis fis4 fis | e4 e8 e e4 fis~ | fis8 e e2( dis4) |
  e2 \breathe gis4 gis | a a8 fis gis4( a) | b2 r | r a4 a | gis gis8 gis fis2 | e4 \breathe a2 a4 |
  gis4 gis8 gis fis2 | e r | e1 | e2 e4 gis | e2 e | e e |
  r4 cis cis cis8 b | a4 a' fis2 | e4 \breathe e e e8 e | e4 e e2 | e1 \breathe | e e2 | fis1 gis2 |
  a a gis | a1 fis2 | a \breathe a fis | a( gis) fis | fis1 a2 | gis1 gis2 | a1 | a~ | a2 gis | fis2. fis4 | e1 |
}

tenor = \relative c {
  \clef "treble_8"
  cis'1 cis2 | cis1 e2 | e e e | fis1 d2 | e \breathe cis d | e1 fis2 | d1 e2 |
  e1 e2 | e \breathe e4 e | fis fis8 fis e4 fis | b,2 cis4 cis | d d8 d cis4 d | e2 \breathe a, |
  d1 | e | a,2 \breathe cis4 cis | d d8 d cis4 a | b2 cis |
  d8( cis d e d4 a | e' cis b4.) b8 | a2 r | r a4 a | b b8 b cis4 cis8 cis |
  d4 d \breathe a a | b b8 b cis4 cis8 cis | d2 e | e2. d8 cis | b4 b \breathe cis2~ |
  cis b4 a | b( cis) b e~ | e d8 cis b2 | cis1 | r4 fis e e | d2 cis | r r4 d |
  e4 e fis2 | e e~ | e4 e e2 | r1 | r2 b | b e4 e |
  d4 d8 d cis2 | b4 b a8( b cis d | e4) e, fis8( gis a b | cis2) a4 fis | gis4.( a8 b2) |
  e1 | r2 e4 4 | d d8 d cis2 | b r | r1 | r4 e2 e4 |
  e4 e8 e cis2~ | cis b | r2 r4 e, | a a8 a a4 b | cis2 a4 e | a a8 a a4 b |
  cis4.( d8 e2) | e \breathe d | cis cis4 cis | b cis b2 | a1 \breathe | cis cis2 | cis1 e2 |
  e2 e e | fis1 d2 | e \breathe cis d | e1 fis2 | d1 e2 | e1 e2 | e1 | \breathe fis~ | fis2 e | d2. d4 | cis1 |
}

bas = \relative c {
  \clef bass
  a'1 a2 | fis1 e2 | a a cis | b1 b2 | a \breathe a b | cis1 d2 | b1 a2 |
  e1 e2 | a, \breathe a'4 a | d, d8 d a'4 fis | e2 a4 a | d, d8 d a'4 b | e,2 r |
  r1 | r1 | r2 a4 a | d, d8 d a'4 fis | e2 a, |
  d1 | e | a,2 \breathe a'4 a | b b8 b cis4 cis8 cis | d4 d \breathe a a |
  b4 b8 b cis4 cis8 cis | d2 a | r a~ | a4 gis8 fis e2 | e \breathe a~ |
  a gis4 fis | e1~ | e | a, | r4 d a' a | d,2 a' | r2 r4 d, |
  a'4 a d2 | a e~ | e a | b a( | b1) | e, |
  r1 | r | r | r | r |
  r2 e'4 e | d d8 d cis2 | b r | r a4 a | e' e8 e d2 | a \breathe a4 a |
  e4 e8 e fis2 | cis e | a4 a8 a a4 b | cis2 a4 \breathe e | a a8 a a4 b | cis2 a4 e |
  cis4 cis8 b a2~ | a b | cis2.( d4 | e1) | a, \breathe | a' a2 | fis1 e2 |
  a2 a cis | b1 b2 | a \breathe a b | cis1 d2 | b1 a2 | e1 e2 | a,1 \breathe | d2.( e4 | fis2) cis | d2. d4 | a1 |
}

sopranText = \lyricmode {
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  re -- ctos de -- cet col -- lau -- da -- ti -- o.
  Con -- fi -- te -- mi -- ni Do -- mi -- no,
  Con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum,
  in psal -- te -- ri -- o de -- cem chor -- da --rum
  psal -- li -- te il -- li, psal -- li -- te il -- li.
  Can -- ta -- te e -- i, can -- ta -- te e -- i can -- ti -- cum no -- vum,
  be -- ne psal -- li -- te e -- i in vo -- ci -- fe -- ra -- ti -- o -- ne,
  be -- ne psal -- li -- te e -- i, be -- ne psa -- li -- te e -- i
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne.
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  rec -- tos de -- cet col -- lau -- da -- ti -- o, col -- lau -- da -- ti -- o.
}

altText = \lyricmode {
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  re -- ctos de -- cet col -- lau -- da -- ti -- o.
  Con -- fi -- te -- mi -- ni Do -- mi -- no,
  Con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum
  psal -- li -- te il -- li, psal -- li -- te il -- li.
  Can -- ta -- te e -- i, can -- ta -- te e -- i can -- ti -- cum no -- vum,
  be -- ne psal -- li -- te e -- i, be -- ne psal -- li -- te e -- i
  in vo -- ci -- fe -- ra -- ti -- o -- ne, be -- ne psal -- li -- te e -- i,
  be -- ne psal -- li -- te e -- i, be -- ne psal -- li -- te e -- i
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne.
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  rec -- tos de -- cet col -- lau -- da -- ti -- o, col -- lau -- da -- ti -- o.
}

tenorText = \lyricmode {
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  re -- ctos de -- cet col -- lau -- da -- ti -- o.
  Con -- fi -- te -- mi -- ni Do -- mi -- no,
  Con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum
  psal -- li -- te il -- li, psal -- li -- te il -- li, psal -- li -- te il -- li.
  Can -- ta -- te e -- i, can -- ta -- te e -- i can -- ti -- cum no -- vum,
  be -- ne psal -- li -- te e -- i in vo -- ci -- fe -- ra -- ti -- o -- ne,
  be -- ne psal -- li -- te e -- i, be -- ne psal -- li -- te e -- i
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne.
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  rec -- tos de -- cet col -- lau -- da -- ti -- o, col -- lau -- da -- ti -- o.
}

basText = \lyricmode {
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  re -- ctos de -- cet col -- lau -- da -- ti -- o.
  Con -- fi -- te -- mi -- ni Do -- mi -- no,
  Con -- fi -- te -- mi -- ni Do -- mi -- no,
  con -- fi -- te -- mi -- ni Do -- mi -- no in ci -- tha -- ra,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum,
  in psal -- te -- ri -- o de -- cem chor -- da -- rum
  psal -- li -- te il -- li, psal -- li -- te il -- li.
  Can -- ta -- te e -- i, can -- ta -- te e -- i can -- ti -- cum no -- vum,
  be -- ne psal -- li -- te e -- i, be -- ne psal -- li -- te e -- i,
  be -- ne psal -- li -- te e -- i in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne,
  in vo -- ci -- fe -- ra -- ti -- o -- ne.
  Ex -- ul -- ta -- te ju -- sti in Do -- mi -- no,
  rec -- tos de -- cet col -- lau -- da -- ti -- o, col -- lau -- da -- ti -- o.
}

\score {

\new ChoirStaff <<
  \new Staff = "sopran"
  \with { instrumentName =  "Cantus " }
  \with { shortInstrumentName = "C. " }
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
  \with { instrumentName =  "Altus " }
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
      \set Staff.midiMaximumVolume = #0.7
      \global
      \tenor
    }
    \new Lyrics \lyricsto "tenor" {
      \tenorText
    }
  >>
  \new Staff = "bas"
  \with { instrumentName =  "Bassus " }
  \with { shortInstrumentName = "B. " }
  <<
    \new Voice = "bas" {
      \set Staff.midiMinimumVolume = #0.6
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
  #(layout-set-staff-size 16)
}

\midi {
  \tempo 2 = 60
}

}