\version "2.22.0"

\header {
  title = "Velum templi"
  subtitle = "a 4 voix mixtes"
  composer = "L.G. da VIADANA"
  tagline = ##t
}

\paper {
  two-sided = ##t
  inner-margin = 2.5\cm
  outer-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
}

global = {
   \key d \major
   \time 4/4
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}


sempreF =
#(make-dynamic-script
  (markup #:line
          (#:normal-text
           #:italic "sempre"
           #:dynamic "f")))

sopran = \relative c {
  \tempo "Moderato"
  r1 | r | r | r2 fis'~ ^\mf \break |
  fis4 fis fis2 | fis2. \breathe fis4(~ | fis e8 d e4) e | e1 \bar "||" | r4 \segno \tempo "Piu animato" fis ^\f fis fis \break |
  g2 ^\marcato fis | r a ^\sempreF | a4 a g2 | g \breathe fis~ | fis4 fis fis2 \fermata \breathe \break |
  \tempo "Tempo primo"
  gis2 ^\mf gis4 gis | a2 ^\marcato a~ | a4 a g fis | fis2 fis | r4 fis ^\p fis4. fis8 \break |
  fis4 fis fis fis | gis gis ^\sfz a4. a8 | a2 \breathe gis ^\mf | g4 g e2(~ ^\> | e4 dis8 cis) \! ^\markup \fontsize #-2 { \bold "FIN" } dis2 \fermata \bar "|." |
}

alt = \relative c {
  fis'2. ^\mf fis4 | fis2 b,4 fis'(~ | fis e8 d cis4. b8 | cis4) d cis2 \breathe |
  d2.( cis8 b | cis4) cis b2 | d \breathe b( | cis4) d cis2 | r4 dis ^\f dis dis |
  e2 ^\marcato d | fis2.( ^\sempreF e8 d | e2. d8 cis | d2. cis8 b | cis4) cis dis2 \fermata \breathe |
  e2 ^\mf e4 e | fis2 ^\marcato e2 | fis2 e4 cis | d2 cis | r4 d ^\p d4. d8 |
}

tenor = \relative c {
  \clef tenorG
  r2 b'~ ^\mf | b4 b b2 | fis4 b2( ais8 gis | ais4) b ais2 \breathe |
  b2 fis~ | fis d' | b1 \breathe | ais4 b ais2 | r4 b ^\f b b |
  b2 ^\marcato b4 \breathe d(~ \accent ^\sempreF | d cis8 b cis2~ | cis4 b8 a b2~ | b4 a8 g a4 b~ | b) ais4 b2 \fermata \breathe |
  b2 ^\mf b4 b | d2 ^\marcato cis4 a | d4.( cis8 b4) ais | b2 ais | r4 b ^\p b4. b8 |
}

bas = \relative c {
  \clef bass
  r1 | r | r2 fis2~ ^\mf | fis4 fis fis2 |
  b,4 b'2( ais8 gis | ais4) ais b2 \breathe | g2. g4 | fis1 | r4 b, ^\f b b |
  e2 ^\marcato b4 \breathe b'(~ \accent ^\sempreF | b a8 g a2~ | a4 g8 fis g2~ | g4 fis8 e fis2~ | fis4) fis b,2 \fermata \breathe |
  e2 ^\mf e4 e | d2 ^\marcato a' | r4 d, e fis | b,2 fis' | r4 b, ^\p b4. b8 |
}

sopranText = \lyricmode {
  Ve -- lum tem -- pli scis -- sum est,
  et om -- nis ter -- ra, et om -- nis ter -- ra tre -- mu -- it:
  La -- tro de cru -- ce __ cla -- ma -- bat, di -- cens:
  Me -- men -- to me -- i, Do -- mi -- ne,
  dum ve -- ne -- ris in re -- gnum tu -- um.
}

altText = \lyricmode {
  Ve -- lum tem -- pli scis -- sum est,
  ve -- lum tem -- pli scis -- sum est,
  et om -- nis ter -- ra tre -- mu -- it:
  La -- tro de cru -- ce cla -- ma -- bat, di -- cens:
  Me -- men -- to
}

tenorText = \lyricmode {
  Ve -- lum tem -- pli scis -- sum est,
  ve -- lum __ tem -- pli scis -- sum est,
  et om -- nis ter -- ra tre -- mu -- it:
  La -- tro de cru -- ce cla -- ma -- bat, di -- cens:
  Me -- men -- to
}

basText = \lyricmode {
  Ve -- lum tem -- pli scis -- sum est, scis -- sum est,
  et om -- nis ter -- ra tre -- mu -- it:
  La -- tro de cru -- ce cla -- ma -- bat, di -- cens:
  Me -- men -- to
}

\score {

\new ChoirStaff <<
  \new Staff = "sopran"
  \with { instrumentName =  "SOPRANO " }
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
  \with { instrumentName =  "ALTO " }
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
  \with { instrumentName =  "TENOR " }
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
  \with { instrumentName =  "BASSE " }
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
  %#(layout-set-staff-size 18)
}

%\midi {
%  \tempo 4 = 120
%}

}