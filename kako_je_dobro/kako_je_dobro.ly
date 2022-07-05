\version "2.22.0"

\header {
  title = "Kako je dobro (Ps 133, 1-2)"
  composer = \markup {"Andelko Igrec"}
  tagline = ##t
}

\paper {
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
}

global = {
  \key as \major \time 4/4
  \accidentalStyle  Score.modern-voice-cautionary
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative c'' {
  \tempo "Smireno"
  as8. ^\mf es16 es4 r2 |
  bes'8. ges16 ges4 r2 |
  des'8. ^\f as16 as4 r8 des8 des des |
  c4 bes8 as bes4( c8) c~ \break |
  c2 r8 as ^\p as as |
  ges4 f8 des es4( ces8) ces~ |
  ces1 ^\> \breathe |
  des8 \! ^\pp des es des ges f des( es) \break |
  e ^\mp e fis e a gis e( fis) |
  \time 6/4
  gis ^\mf gis ais gis b b cis( dis) cis b ais( gis) |
  \time 4/4
  bes4 ^\f bes8 bes~ bes2 ^\< \break |
  es8. \! \ff bes16 bes4 r2 |
  f'8. as,16 as4 r2 |
  des8. ^\p bes16 bes4 r des8 des |
  es4 des8 bes~ bes4. bes8 |
  bes4 bes8( c) as as4 des8 \break |
  es4 des8 des bes4 ges | as1 \fermata |
  \tempo "Pokretno" r1 \break |
  \tuplet 3/2 { c,8 ^\mf c c } \tuplet 3/2 { des8 des des } c4( des) |
  c ( des8 es) \tuplet 3/2 { f8 f f } \tuplet 3/2 { f g as } \break |
  bes8 g(~ \tuplet 3/2 { g8 as g }) f2 | g r |
  r \tuplet 3/2 { f8 ^\mf f f } \tuplet 3/2 { f f f } \break |
  g4 g a8 a4 a8 | a a r a b b r b \break |
  b2 ^\f b | cis( dis8 cis) b( a) | b4( fis8 ^\> gis e fis) cis( dis) \break |
  fis4. e8 e4( dis | cis2) e4. fis8 | as1 \! \p | as2. ^\> \breathe es8 \! es |
  es4 es8 es4 es8~ es4~ | es1 \fermata \break |
  \tempo "Veoma smireno" es1( ^\pp | ges | as~ as~ \break |
  as2. \fermata ) as8 ^\pp as | ges4 es ges8 ges4 ges8 | bes4 ges2. | as1~ | as \fermata \break  \bar "|." |
}

alt = \relative c' {
  c8. ^\mf c16 c4 r2 |
  des8. des16 des4 r2 |
  des8. ^\f des16 des4 r8 des des des |
  es4 es8 es ges4( as8) as~ |
  as2 r8 f ^\p f f |
  des4 des8 as ces4( as8) as~ |
  as1 ^\> |
  des8 \! ^\pp des es des ges f des( es) |
  e ^\mp e fis e a gis e( fis) |
  \time 6/4
  fis ^\mf eis eis eis dis dis fis4 dis 8 dis dis4 |
  es4 ^\f d8 d~ d2 ^\< |
  es8. \! ^\ff es16 g4 r2 |
  f8. f16 f4 r2 |
  f8. ^\p des16 des4 r4 f8 f |
  es4 f8 es~ es4. es8 |
  f4 ges4 as8 as f4 |
  ges4 as8 as ges4 es | es1 \fermata | r1 |
  r2 \tuplet 3/2 { es8 ^\mf es es } \tuplet 3/2 { es f f } |
  g8( es4 bes8 c4) d |
  c2( des4 f) | e2 r |
  \tuplet 3/2 { c8 ^\mf c c } \tuplet 3/2 { c c c } c4 c | 
  \tuplet 3/2 { e8 e e  } \tuplet 3/2 { e e e } e e4 e8 |
  f f r f g g r as |
  gis2( ^\f a8 gis fis) e |
  e( fis gis b a gis fis4~ | fis8 e4) ^\> dis8 cis4 b |
  cis8( dis b) cis cis4( b | a2) a8( b) cis4 |
  des2 \! \p c~ | c2. ^\> \breathe c8 \!  c | c4 c8 c4 c8~ c4~ | c1 \fermata |
  c( ^\pp | bes | des~ | des | es2.) \fermata es8 ^\pp es |
  des4 bes des8 des4 des8 | f4 des2. | c1~ | c1 |
}

tenor = \relative c {
  \clef "treble_8"
  es8. ^\mf as16 as4 r2 | ges8. bes16 bes4 r2 | as8. ^\f des16 des4 r8 as as as |
  as4 c8 c des4( f8) f~ | f2 r8 c ^\p c c | bes4 as8 f ges4( as8) as~ | as1 ^\> \breathe  |
  des,8 \! \pp des es des ges f des( es) | e ^\mp fis gis a b b cis4 |
  \time 6/4 dis8 ^\mf cis gis eis fis fis b4 fis8 fis dis4 |
  f4 ^\f f8 f~ f2 ^\< | bes8. \! \ff c16 es4 r2 | as,8. des16 des4 r2 |
  f,8. ^\p as16 as4 r as8 as | as4 as8 g~ g4. bes8 | des4 des8( es) es c des4 |
  des des8 des~ des2 | des4 bes c2 \fermata |
  r2 \tuplet 3/2 { bes8 ^\mf bes bes } \tuplet 3/2 { bes bes bes } |
  as4( bes) as( bes) | as ( bes) as( bes) |
  as1 | c2 \tuplet 3/2 { f,8 ^\mf f f } \tuplet 3/2 { f f f } | g2 a | 
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { c c c } c c4 c8 |
  c c r c d d r d | e( ^\f dis cis b cis4.) cis8 | cis( dis e2) dis8( cis) |
  b4 b8( a) gis( a fis4 | a8 ^\> b gis a gis4 fis | e dis) cis4. cis8 |
  es1 \! \p | es2. ^\> \breathe as8 \! as | as4 as8 as4 as8~ as4~ | as1 \fermata |
  as8. ^\pp es16 es2. | bes'8. ges16 ges2. |
  des'8. as16 as4. des8 des des | c4 bes8 as bes4( c8) c~ |
  c2. \fermata \breathe c8 ^\pp c | bes4 ges bes8 bes4 bes8 | des4 bes2. | as1~ | as \fermata |
}

bas = \relative c {
  \clef bass
  as8. ^\mf as16 as4 r2 | ges8. ges'16 ges4 r2 | f8.  ^\f f16 f4 r8 f f f |
  as4 as8 as ges4( f8) f~ | f2 r8 f ^\p f f | ges4 des8 des ces4( fes8) fes~ | fes1 ^\> \breathe |
  des8 \! \pp des es des ges f des( es) | e ^\mp e e e e e d 4 | 
  \time 6/4 cis8 ^\mf cis cis cis b b b4 b8 b b4 | bes4 ^\f bes8 bes~ bes2 ^\< |
  g'8. \! \ff as16 es4 r2 | des8. des16 des4 r2 | bes8. ^\p bes16 bes4 r bes8 bes |
  c4 des8 es~ es4. g8 | bes8( as) ges4 f8 f bes4 |
  es, f8 f ges4 bes | as1 \fermata |
  \tuplet 3/2 { as8 ^\mf as as } \tuplet 3/2 { as as as } as4 as~ |
  as1 | \tuplet 3/2 { as8 as as } \tuplet 3/2 { g g g }  f4 f |
  f( es) des2 | \tuplet 3/2 { c8 ^\mf c c } \tuplet 3/2 { c c c } c4 c | c2 c |
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { c' c b } a8 a4 g8 |
  f8 f r f f f r f | e2 ^\f e4.( b'8) | a4.( gis8 fis4.) e8 | dis8( cis b2.) |
  a2 ^\> a~ | a a4 a | as4 \! \p as2 \breathe as8 as | as4 as8 as4 as8~ as4~ | as1~ | as \fermata | 
  as1( ^\pp | ges | f | es~ | es2.) \fermata \breathe es'8 ^\pp es |
  es4 es es8 es4 es8 | es4 es2. |
  <es as,>1~ | <es as,> \fermata |
}

sopranText = \lyricmode {
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj ka -- ko je do -- bro i mi -- lo, __
  ka -- ko je do -- bro i mi -- lo __ ka -- o bra -- ća za -- je -- dno, __
  ka -- o bra -- ća za -- je -- dno, __ ka -- o bra -- ća za -- je -- dno, za -- je -- dno __ ži -- vje -- ti! __
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj ka -- ko do -- bro je __
  k'o bra -- ća __ za -- je -- dno, za -- je -- dno ži -- vje -- ti!
  Ka -- o dra -- go -- cje -- no u -- lje, __
  ka -- o dra -- go -- cje -- no u -- lje, __ u -- lje,
  ka -- o dra -- go -- cje -- no u -- lje, u -- lje na gla -- vi,
  na gla -- vi što sla -- zi, sla -- zi, __ sla -- zi,
  sla -- zi, sla -- zi na bra -- du, bra -- du A -- ro -- no -- vu. __
  Mm... __ ka -- o bra -- ća za -- je -- dno ži -- vje -- ti! __
}

altText = \lyricmode {
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj
  ka -- ko je do -- bro i mi -- lo, __
  ka -- ko je do -- bro i mi -- lo __
  ka -- o bra -- ća za -- je -- dno, __
  ka -- o bra -- ća za -- je -- dno, ka -- o bra -- ća za -- je -- dno,
  za -- je -- dno ži -- vje -- ti! __
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj
  ka -- ko do -- bro je __ k'o bra -- ća za -- je -- dno,
  za -- je -- dno ži -- vje -- ti!
  Ka -- o dra -- go -- cje -- no u -- lje, u -- lje,
  ka -- o dra -- go -- cje -- no u -- lje,
  Ka -- o dra -- go -- cje -- no u -- lje na gla -- vi, na gla -- vi
  što sla -- zi, sla -- zi, sla -- zi, sla -- zi,
  sla -- zi na bra -- du, __ bra -- du A -- ro -- no -- vu. __
  Mm... __ ka -- o bra -- ća za -- je -- dno ži -- vje -- ti! __
  
}

tenorText = \lyricmode {
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj
  ka -- ko je do -- bro i mi -- lo, __
  ka -- ko je do -- bro i mi -- lo __
  ka -- o bra -- ća za -- je -- dno, __
  ka -- o bra -- ća za -- je -- dno,
  ka -- o bra -- ća za -- je -- dno, za -- je -- dno ži -- vje -- ti! __
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj ka -- ko do -- bro je __
  k'o bra -- ća __ za -- je -- dno, za -- je -- dno ži -- vje -- ti!
  Ka -- o dra -- go -- cje -- no u -- lje, __ u -- lje, __
  u -- lje, ka -- o dra -- go -- cje -- no u -- lje,
  ka -- o dra -- go -- cje -- no u -- lje na gla -- vi, na gla -- vi što
  sla -- zi, sla -- zi, __ sla -- zi, sla -- zi
  na bra -- du, bra -- du A -- ro -- no -- vu. __
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj
  ka -- ko je do -- bro i mi -- lo __
  ka -- o bra -- ća za -- je -- dno ži -- vje -- ti! __
}

basText = \lyricmode {
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj ka -- ko je do -- bro i mi -- lo, __
  ka -- ko je do -- bro i mi -- lo  __ ka -- o bra -- ća za -- je -- dno, __
  ka -- o bra -- ća za -- je -- dno, ka -- o bra -- ća za -- je -- dno,
  za -- je -- dno ži -- vje -- ti! __
  Po -- gle -- daj, po -- gle -- daj, po -- gle -- daj ka -- ko do -- bro je __
  k'o bra -- ća za -- je -- dno, za -- je -- dno ži -- vje -- ti!
  Ka -- o dra -- go -- cje -- no u -- lje, __
  ka -- o dra -- go -- cje -- no u -- lje,
  u -- lje, ka -- o dra -- go -- cje -- no u -- lje, u -- lje,
  ka -- o dra -- go -- cje -- no u -- lje na gla -- vi, na gla -- vi što
  sla -- zi, __ sla -- zi, sla -- zi, sla -- zi na bra -- du,
  bra -- du A -- ro -- no -- vu. __
  Mm... __ ka -- o bra -- ća za -- je -- dno ži -- vje -- ti! __
}

\score {

\new ChoirStaff <<
  \new Staff = "sopran"
  \with { instrumentName =  "S" }
  \with { shortInstrumentName = "S" }
  <<
    \new Voice = "sopran" {
      %\set Staff.midiMaximumVolume = #0.7
      \global
      \sopran
    }
    \new Lyrics \lyricsto "sopran" {
      \sopranText
    }
  >>
  \new Staff = "alt"
  \with { instrumentName =  "A" }
  \with { shortInstrumentName = "A" }
  <<
    \new Voice = "alt" {
      %\set Staff.midiMaximumVolume = #0.7
      \global
      \alt
    }
    \new Lyrics \lyricsto "alt" {
      \altText
    }
  >>
  \new Staff = "tenor"
  \with { instrumentName =  "T" }
  \with { shortInstrumentName = "T" }
  <<
    \new Voice = "tenor" {
      %\set Staff.midiMinimumVolume = #0.6
      \global
      \tenor
    }
    \new Lyrics \lyricsto "tenor" {
      \tenorText
    }
  >>
  \new Staff = "bas"
  \with { instrumentName =  "B" }
  \with { shortInstrumentName = "B" }
  <<
    \new Voice = "bas" {
      %\set Staff.midiMaximumVolume = #0.7
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









