\version "2.22.0"

\header {
  title = "CANITE ET PSALLITE"
  composer = "IVAN LUKACIC"
  arranger = "1574 (?) - 1648"  
  tagline = ##t
}

\layout {
  indent = 0
  #(layout-set-staff-size 17)
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}

\paper {
  left-margin = 1.7\cm
  right-margin = 1.7\cm
  top-margin = 1.7\cm
  bottom-margin = 1.7\cm
  system-system-spacing =
  #'((basic-distance . 16) 
     (minimum-distance . 8)
     (padding . 1)
     (stretchability . 60)) 
}

global = {
  \key f \major \time 8/4 \autoBeamOff
}

sopran = \relative c' {
  r \breve | r \break |
  f8 ^\f g ^\markup {"TUTTI"} a c b4. b8 c4 bes8 c a4. a8 | g4 r4 f16([ e f g] a4.) a8 g2 g4 \break |
  f1 r | r \breve | r1 r2 r4 c'4 ^\f \break |
  d8 c d bes a a c c b4 c2. | r4 g8 a bes4 bes8 bes a4. a8 bes2 \break |
  g8 a bes2 f a4 g4. g8 | a1 r4 ^\mf c ^\markup {"SOLO"} c8 bes a f | g4 g8 d' es d c bes c4. c8 bes2 \break |
  r4 bes8 bes bes2. a8 g fis4 fis | r d'4. a8 c bes a4 g8 f g4 g | r8 g g a bes2. a8 a g4. g8 \break |
  f1 ^\markup {"TUTTI"} \breathe bes \f ^\< | bes4 \! d8 c c2 ^\> a r4 \! bes4 | bes d8 d c4 c8 a bes bes ^\markup {"poco rit. . . . ."} a2 a4 \break |
  \tempo "PIU ALLEGRETTO" 4 = 104
  \time 3/4 g \breathe bes ^\mp a | g es g | a8 a bes4 \breathe c | a4.( bes8 c4~ | c8[ bes g a] bes4~ \break |
  bes8[ a f g] a4~ | a8[ g] e4.) \breathe e8 | f2. | c'8[( ^\mp bes ^\markup {"SOLO"} a g]) a4 | g4. g8 f4 \break |
  R2. ^\markup {"TUTTI"} |  d'8([ ^\markup {"piu"} ^\f c bes a)] c4 | bes2 g4 | a2. \break |
  d8([ ^\mp c bes g)] a4 | bes8([ a g e)] f4 | g4. g8 bes4 | a4. a8 g4 \break |
  R2. | R2. | a4. bes8 g4 | g2 g4 \break |
  \tempo "ANIMATO" 4 = 116
  \time 8/4
  g1 r1 | r \breve | r \break |
  r2. ^\markup {"TUTTI"} bes2 ^\f bes8 bes a4 a8 a | g1 a | r \breve \break |
  r \breve | r \break |
  r4 g bes4.( a16[ g] f8[ g a bes] c4. \tenuto \breathe bes16[ a] | g8[ ^\< a bes c] \! d4. c16[ bes] a8[ g] c4. bes16[ a] g4~ \break |
  g8[ a] bes4. a16[ g] f4. g8 a2) a4 \breathe | g2. ^\markup {"poco rit . . ."} ^\< g4 \breathe a1 \! ^\f \break |
  
}

alt = \relative c' {
  r \breve | r |
  c8 ^\f e f g g4. g8 g4 es8 es d4. d8 | d2 d16([ c d e] f2) e8[ d] e4. e8 |
}

tenorOne = \relative c {
  \tempo "NOBILE, CON ANIMA" 4 = 92
  \clef "treble_8"
  f8 g a c b4. b8 c4 bes8 c a4. a8 | g4 a16([ g a bes] c4.) f,8 g4. g8 f2 |
  a8 ^\f b d es d4. d8 c4 g8 g fis4. fis8 | g4 \breathe d16([ e f d] bes'4 ^\< c2) \! bes8[( a]) g4. g8 |
}

tenorTwo = \relative c' {
  \clef "treble_8"
  r \breve | r \break |
  c8 g f es g4. b8 g4 g8 g d'4. a8 | bes4 bes8[( c] d4) c \breathe c2. c4 |
}

bas = \relative c {
  \clef "bass"
  r \breve | r |
  f8 ^\f e d c g'4. g8 c,4 es8 c d4. d8 | g,4 bes2 a4 c2. c4 |
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
  om -- ni -- a re -- gna coe -- lo -- rum lae -- tan -- tes ca -- ni -- te.
}

altText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu
}

tenorOneText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu -- li,
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu
}

tenorTwoText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu
}

basText = \lyricmode {
  Ca -- ni -- te et psal -- li -- te, om -- nes po -- pu -- li, om -- nes po -- pu
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopran"
    \with { instrumentName =  "Sopran" }
    \with { shortInstrumentName = "S." }
    <<
      \new Voice = "sopran" {
        \global
        \sopran
      }
      \new Lyrics \lyricsto "sopran" {
        \sopranText
      }
    >>
    \new Staff = "alt"
    \with { instrumentName =  "Alt" }
    \with { shortInstrumentName = "A." }
    <<
      \new Voice = "alt" {
        \global
        \alt
      }
      \new Lyrics \lyricsto "alt" {
        \altText
      }
    >>
    \new Staff = "tenor1"
    \with { instrumentName =  "Tenor I" }
    \with { shortInstrumentName = "T1." }
    <<
      \new Voice = "tenor1" {
        \global
        \tenorOne
      }
      \new Lyrics \lyricsto "tenor1" {
        \tenorOneText
      }
    >>
    \new Staff = "tenor2"
    \with { instrumentName =  "Tenor II." }
    \with { shortInstrumentName = "T2." }
    <<
      \new Voice = "tenor2" {
        \global
        \tenorTwo
      }
      \new Lyrics \lyricsto "tenor2" {
        \tenorTwoText
      }
    >>
    \new Staff = "bas"
    \with { instrumentName =  "Bas." }
    \with { shortInstrumentName = "B." }
    <<
      \new Voice = "bas" {
        \global
        \bas
      }
      \new Lyrics \lyricsto "bas" {
        \basText
      }
    >>
  >>
}
