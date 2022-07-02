\version "2.22.0"

\header {
  title = "O magnum mystérium"
  composer = "Tomás Luis da Vittoria"
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
   \key g \major
   \time 4/4
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative c {
  b''1 | e,2 b'~ | b4 b c c | b2 r4 e | c d e4. e8 \break |
  e4 b c b~( | b8 a g fis g a b g | a g g fis16 e fis2~ | fis) e |
  gis1 | a2 g4.( a8 | b4) \breathe c4.( b8 a4~ | a gis) a( g8 fis | e4) fis g2 \break |
  r4 e' c d | e4. e8 e4 \breathe c | a b c4. c8 | c4 b4. a8 a4( \break |
  a4 gis) a2 | r1 | r4 c4 b4. gis8 | a4 b c \breathe a \break |
  c4. c8 c4 c | b2 b | gis4 \breathe b b4. b8 | b4. cis8 d2 \break |
  \breathe c4.( b16 a b2 | c) b | r1 | r4 e,4 a2 \break |
  g4 e fis( gis) | a4.( b8 c4) c | b2 r | r1 \break |
  r4 a d2 | c4 a b( cis) | d4.( c8 b8 a a4~ | a gis8 fis gis4) gis | a2 r \break |
  gis2. gis4 | gis2 a | gis4.( a8 b4 c~ | c8 b b4. a8 a4) | b gis2 gis4 | a4. a8 a2 \break | 
  r4 a4.( b8 c a | b4) e d2 | c4 e d b | c4.( b8 a g g fis16 e | fis4) fis e b'( \break |
  b) g2 c4(~ | c8 b a2 gis4) |
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4
  a2 \breathe c4 | b2 gis4 | a4. g8( a b) | c4 b2 \break |
  c2 a4 | g2 e4 | fis4. e8( fis g) | a2 gis4 | a2. | r2 d4 | c4.( b8 c a \break |
  b4) g8( a b c | d4) d d | c e2 |
  \time 4/4
  e1 | r4 e e8( d c b \break |
  a4) d4.( c8 b a | gis4 a2 gis4) | a1~ | a~ | a~ | a \bar "|." |
}

alt = \relative c' {
  r1 | r2 e2~ | e a, | e'2. e4 | f f e2 |
  r4 e c d | e4. e8 e4 b | c e2( dis8 c | dis2) e |
  e1 | e2 e4.( fis8 | g4) \breathe g, a4.( b8 | c4) b a \breathe e' | e d b4. b8 |
  b4 c4. b8 a4(~ | a gis) a \breathe a' | e g g4. g8 | g2 e4 f |
  e2 e~ | e r | r4 a g4. e8 | fis4 gis a \breathe e |
  e4. e8 e4 fis | g2 fis | e4 \breathe g g4. g8 | g4 g a b( |
  b8 a a2 gis4) | a e g4.( fis16 g | a4 g8 fis e4) b | r2 r4 a |
  e'2 d4 \breathe b | cis( d) e8( d e fis | g4. fis16 g a4) g8( fis) | e2 r4 b |
  e2 d4 \breathe b | c8( d e fis g2) | a4.( g8 f e f4 | e2.) e4 | cis2 r |
  e2. e4 | e2 e | e1~ | e | e2 r4 e~ | e e f4. f8 |
  e4 \breathe a,8( b c d e fis | g4) g g2 | e4 e fis gis | a4.( g8 fis e e4~ | e) dis e g(~ |
  g8 fis e d e2 | c4) d e2 |
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4
  e \breathe a4 | g2 e4 | fis4. e8( fis g) | a2 gis4 |
  a2 \breathe e4 | e2 b4 | d2 d4 | e4 e2 | e c4 | a2 gis4 | a2 a'4 |
  g2 e4 | fis4. e8( fis g) | a2 gis4 |
  \time 4/4
  a2 r4 e | e8( d c b a4) a'(~ |
  a8 g f e d4 f) | e2 r4 b | c4.( d8 e4) f(~ | f e d4. e8 | f2) e~ | e1 |
}

tenor = \relative c {
  \clef "treble_8"
  r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r2 b'~ | b e, |
  b'2. b4 | c c b2 | r4 e c d | e4. e8 e4 b | c b4.( a8 g fis |
  g2 a | b) c4 \breathe e | c d e4. e8 | e4 d c( d) |
  b2 a4 \breathe c | b4. g8 a4 b | c a e'4. e8 | d4 b a \breathe c |
  c4. c8 c4 c | d e2( dis4) | e \breathe e, e'4. e8 | e4 e d2 |
  f e | r4 a, e'2  d4 \breathe b cis( d) | e8( d c b a b c a |
  b2.) b4 | a2 r4 a | e'2 d4 b | c b4.( a8 g fis |
  g4 a2) gis4 | a \breathe c d( e) | f4.( e8 d c d4 | c b8 a b4) b | a2 r |
  b2. b4 | b2 c | b2.( a4 | b2 c) | b4 b2 b4 | cis4. cis8 d4 a8( b |
  c8 d e2) c4 | d( c2 b4) | c c d e | a,2. c4 | b1 |
  g | a2 b | 
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4
  a \breathe a4 | e'2 e4 | d2 d4 | a4 e'2 |
  a,2 c4 | b2 g4 | a4. g8( a b) | c4 b2 | a e4 | fis4 d2 | e c'4 |
  b2 g4 | a2 a4 | a b2 |
  \time 4/4
  a4 c b8( a g fis | e4) a8( b c d e c |
  d4. \breathe e8 f e d c | b4 a) b e | e8( d c b a4) c( | d e f4. e8 | d2. \breathe cis8 b) | cis1 |
  
}

bas = \relative c {
  \clef bass
  r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 |
  e1 | a,2 e'~ | e4 e f f | e2 r4 e | c d e4. e8 |
  e4 c f2 | e a,4 \breathe a | a' g c,4. c8 | c4 g' a( d,) |
  e2 a,4 \breathe a' | g4. e8 fis4 gis | a2 r | r r4 a, |
  a'4. a8 a4 a | g4.( a8) b2 | e, r | r1 |
  r2 r4 e | a2 g4 \breathe e | fis( g) a( g8 fis | e4. g8 f4) f |
  e2 r | r4 d a'2 | g4 e fis( g) | a( g8 fis e4. d8 |
  c4 b8 a b4) b | a a' g( e) | d1( | e2.) e4 | a,2 r | 
  e'2. e4 | e2 a, | e'4.( fis8 gis4 a~ | a8 gis gis4 a2) | e4 e2 e4 | a4. a8 d,2 |
  a'2. a4 | fis( c fis2) | c r | r1 r2 e~ |
  e c | f( e) |
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4
  a, r4 | R2. | R2. | R2. |
  r2 a4 | e'2 e4 | d2 d4 | a4 e'2 |
  <<
    { \voiceOne a,2 \magnifyMusic 0.85 { e'4 | fis d2 | e }}
    \new Voice { \voiceTwo a,2 a4 | d b2 | a }
  >>
  \oneVoice a4 |
  e'2 e4 | d2 d4 | f4 e2 |
  \time 4/4
  a,4 a' g8( fis e d | c b a g a2) |
  d1( | e) | a,4 a' a8(g f e | d4 cis) d2~ | d a~ | a1 | 
}

sopranText = \lyricmode {
  O mag -- num __ my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  o mag -- num __ my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le,
  et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  ut a -- ni -- má -- li -- a vi -- dé -- rent Dó -- mi -- num na -- tum
  vi -- dé -- rent Dó -- mi -- num na -- tum,
  ja -- cén -- tem in prae -- sé -- pi -- o,
  ja -- cén -- tem in prae -- sé -- pi -- o.
  O be -- á -- ta vir -- go, cu -- jus vís -- ce -- ra
  me -- ru -- é -- runt, por -- tá -- re Dó -- mi -- num
  Je -- sum Chri -- stum. Al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja. __
}

altText = \lyricmode {
  O __ mag -- num my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  o mag -- num __ my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  et ad -- mi -- rá -- bi -- le sa -- cra -- men -- tum, __ ut a -- ni -- má -- li -- a
  vi -- dé -- rent Dó -- mi -- num na -- tum, vi -- dé -- rent Dó -- mi -- num na -- tum,
  ja -- cén -- tem, ja -- cén -- tem in prae -- sé -- pi -- o,
  ja -- cén -- tem in prae -- sé -- pi -- o.
  O be -- á -- ta vir -- go, cu -- jus vís -- ce -- ra
  me -- ru -- é -- runt, por -- tá -- re Dó -- mi -- num
  Je -- sum Chri -- stum. Al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja, al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja. __
}

tenorText = \lyricmode {
  O __ mag -- num my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  ut a -- ni -- má li -- a, ut a -- ni -- má -- li -- a
  vi -- dé -- rent Dó -- mi -- num na -- tum, vi -- dé -- rent Dó -- mi -- num na -- tum,
  ja -- cén -- tem in prae -- sé -- pi -- o, ja -- cent -- tem in prae -- sé -- pi -- o,
  in prae -- sé -- pi -- o.
  O be -- á -- ta vir -- go, cu -- jus vís -- ce -- ra me -- ru -- é -- runt,
  por -- tá -- re Dó -- mi -- num Je -- sum Chri -- stum.
  Al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja.
}

basText = \lyricmode {
  O mag -- num __ my -- sté -- ri -- um et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  et ad -- mi -- rá -- bi -- le sa -- cra -- mén -- tum,
  ut a -- ni -- má -- li -- a vi -- dé -- rent Dó -- mi -- num __ na -- tum,
  ja -- cén -- tem in prae -- sé -- pi -- o,
  ja -- cén -- tem in prae -- sé -- pi -- o,
  in prae -- sé -- pi -- o.
  O be -- á -- ta vir -- go, cu -- jus vís -- ce -- ra me -- ru -- é -- runt,
  Je -- sum Chri -- stum.
  Al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja, al -- le -- lú -- ja,
  al -- le -- lú -- ja. __
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
      \set Staff.midiMinimumVolume = #0.6
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
  #(layout-set-staff-size 16)
}

\midi {
  \tempo 4 = 100
}

}









