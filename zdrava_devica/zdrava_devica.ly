\version "2.22.0"

\header {
  title = \markup \center-column { " " "Zdrava Devica" " "}
  subtitle = "popijevka iz citharae octochordae"
  subsubtitle = \markup \center-column {"četveroglasni mješoviti zbor i sopran solo" " " " "}
  composer = "Obradio: Mato Lešćan"
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
  \key as \major
  \compoundMeter #'((2 3 4))
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

solo = \relative {
  \cadenzaOn
  r2 r2. r2 r2. r2 r2. \break
  r2 r2. r2 r1 r2. r2. \break
  r2. r2. r2. r2 r2. r2 r2. \break
  r2. r2. r2. r2. r2. r2 r2. r2 \pageBreak
  r2 r2. r2 r2. r2 r2. r2 r2. \break
  r2 r2. r2 r2. r2. r2 r2. r2 r2 \bar "|" \break
  \tempo "Espressivo"
  c''2~ ^\mf \bar "|" c2.~ \bar "|" c2. \breathe \bar "|" f2~ ^\f \bar "|" f2. \bar "|" es2 \breathe \bar "|" des2~ ^\mf \bar "|" des2. \bar "|" c2 \breathe \bar "|" \break
  ees2~ \bar "|" ees2.~ \bar "|" ees2 \breathe \bar "|" bes2.~ \bar "|" bes \bar "|" c2 \breathe \bar "|" as2.( \bar "|" g2 \bar "|" f2.~ \bar "|" f2) \bar "||" \pageBreak
}

sopran = \relative {
  \voiceOne
  \cadenzaOn
  \tempo "Lento e devoto"
  f'4 \( ^\mp f \bar "|" as2 g4 \bar "|" f2 \breathe \bar "|" as4 ^\p as2 \bar "|" bes4 c c2. \) \breathe \bar "|"
  bes4 \( c \bar "|" as2 bes4  \bar "|" g2 \breathe \bar "|" g4 as bes2 ^\< \bar "|" c4 c2 \breathe  \bar "|" bes2 \! as4 \bar "|"
  bes ^\mf ^\> g2 \bar "|" f2. \) \breathe \bar "|" c'2 \! ^\p as4 \bar "|" bes g \bar "|" f2.~ \bar "|" f2~ \bar "|" f2. \bar "||"
  \tempo "Andantino"
  f4 f as \bar "|" g2 f4~ \bar "|" f2. \bar "|" r2. \bar "|" as4 as2 \bar "|" bes4 ^\< c \bar "|" c2. \! \bar "|" r2 \bar "|"
  bes4 ^\> c \bar "|" as2 bes4 \bar "|" g2 \! \bar "|" r2. \bar "|" g4 ^\< as \bar "|" bes2 c4 \bar "|" c2 \bar "|" r2. \! \bar "|"
  bes4 as \bar "|" bes g2 \bar "|" f~ \bar "|" f2. \breathe \bar "|" c'2 ^\p as4 \bar "|" bes g \bar "|" f2.~ \bar "|" f2~ ^\markup { \italic "rit..."} \bar "|" f \fermata
  f4 \( ^\p f as2 g4 f2. \) \breathe as4 \( ^\mf as bes2 c4 c2 \) \breathe bes4 \( c as2 bes4 g2 \)
  g4 \( as bes2 c4 c2 \) \breathe bes2 \( as4 bes g2 f \) \breathe c' \( ^\pp as4 bes g f2.~ f2 \)
  \tempo "Brže"
  c'4 ^\mf c ^\markup \fontsize #-3 { "TEMA U ALTU" } c2 \bar "|" c4 c2 \bar "|" ees4 ^\f ees ees2 \bar "|" ees4 ^\markup \fontsize #-2 { "SOPRANI DIVISI" } ees2 \bar "|" 
  
    \arpeggioBracket <f, des'>2 \arpeggio \bar "|" \break
    \arpeggioBracket <f f'>2. \arpeggio \bar "|"
    \arpeggioBracket <c' es>2 \arpeggio \breathe \bar "|"
    \arpeggioBracket <bes es>4 \arpeggio ^\ff
    \arpeggioBracket <c f>4 \arpeggio \bar "|"
    \arpeggioBracket <des g>2 \arpeggio \<
    \arpeggioBracket <es as>4 \arpeggio \bar "|"
    \arpeggioBracket <es as>2 \arpeggio \bar "|"
    \arpeggioBracket <des g> \arpeggio \!
    \arpeggioBracket <c f>4 \arpeggio \bar "|" \break
    \arpeggioBracket <des g>4 \arpeggio
    \arpeggioBracket <bes ees>2 \arpeggio \bar "|"
    \arpeggioBracket <c f>2. \arpeggio
    
    \bar "|"
    \arpeggioBracket <f, f'> \arpeggio
    \bar "|"
    \arpeggioBracket <bes ees>2. \arpeggio \bar "|"
    \arpeggioBracket <a c>2.~ \arpeggio \bar "|"
    \arpeggioBracket <a c>2 \arpeggio \bar "||" \break

  \compoundMeter #'((5 2 4))
  f4 ^\pp \( f
  \accidentalStyle forget
  as2
  \accidentalStyle default
  g4 \bar"|" f2 \) \bar"|"
  as4 \( as2 bes4 c \bar"|" c2 \) \bar"|"
  bes4 c as2 bes4 \bar "|"  g2 \bar "|" \break
  g4 \( as bes2 c4 \bar "|" c2 \) \bar "|" bes as4 bes g2 \bar "|" f2 \bar "|"
  c'2 as4 bes g \bar "|" f2.~ f2~ ^\markup { \italic "rit..." }\bar "|" f2. \bar "|."
}

alt = \relative {
  \voiceTwo
  f'4 f f2 es4 f2 f4 f( es) des des c2.
  es4 es f2 f4 f2 f4 f g( f) es es2 des es4
  f ees( des) c2. ees2 ees4 des ees f2.~ f2~ f2.
  f4 ^\mf ees des ees2 f4~ f2. r f4 ees2 des4 des c2. r2
  g'4 g f2 f4 f2 r2. ees4 f g( f) ees ees2 r2.
  g4 f ees ees2 f2~ f2. as4( g) f d ees f2.~ f2~ f2 \fermata
  c4 c ees2 des4 c2. f4 f f2 f4 ees2 des4 des des2 des4 c2
  f4 f ees( des) c c2 d2 d4 des4 des2 c2 f f4 f ees c2.~ c2
  f4 f as2 g4 f2 as4 as bes2 c4 c2 bes4 c
  as2 bes4 g2 g4 as bes2 c4 c2 bes2 as4
  bes4 g2 f2. c'2 ^\markup {"a     -     -     -     -     -     -     -     -     -     -     -     -     -"} as4 bes g2 f2.~ f2
  d2 ( ees2. d2 f2.~ f2 ees2
  \accidentalStyle forget
  d~
  d2. \accidentalStyle default c2)
  f2(~ f2. ees2 d2.~ d c2) c' ^\mp ^\> as4 bes g f2.~ f2~ f2. \!
}

tenor = \relative {
  \clef bass
  r2 r2. r2 \voiceOne es'4 \( ^\p des( c) bes bes as2. \)
  bes4 \( bes c2 bes4 des2 \breathe des4 c bes( ^\< as) g g2 f \! f4
  f ^\mf ^\> bes2 as2. \) r \! r2 c ^\p as4 bes g f2.
  r r as4 ^\mf as c bes2 as4~ as2. r2 c4 c2 des4 ees
  ees2 r2. des4 ees c2 ^\> des4 bes2~ bes4 \! r2 bes4 c des2 ees4
  ees2~ ees4 r2 ees4 c d ^\> bes2
  \cadenzaOff
  <as c>2. r2 \! ees'2 ^\p ees4
  d ^\markup { \italic "rit..."} bes c2 \fermata \cadenzaOn
  as4 ^\p as c2 bes4 as2. \breathe as4  ^\mf as as2 as4 g2  \breathe f4  f f2 f4 es2
  des'4 c bes( as) g g2 \breathe f2 f4 f g2 as \breathe as c4
  bes bes bes2 g4 a2
  c4 ^\mf des ees2 des4 c2
  des4 ^\f ees f2 ees4 ees2 bes4 bes
  c2 d4 ees2 \breathe f4 ^\ff ees
  \accidentalStyle forget
  des2
  \accidentalStyle default
  ees4 c2 des des4
  des4 ^\> des2 c2. ees2 \! ^\mf ees4 des4 des2 c2.~ c2
  bes2(~ ^\markup { \italic "bocca chiusa"} bes2.~ bes2 des2.~ des2 c bes2~ bes2. bes2)
  as2~ as2. g2 f2.~ f ees2 r2 ^\markup \center-column { \italic "bocca aperta" \fontsize #-2 "BASSI DIVISI"}  r2.
  <ees c'>2 <c as'>4 <des bes'> <bes g'> <c a'>2. \!
  %ees'2 c4 des bes ees2
}

bas = \relative {
  s2 s2. s2 \voiceTwo r2. r2 r2.
  g4 g f( ees) des bes2 ees4 ees ees2 ees4 as,2 bes c4
  des ees2 f2. r r2 ees c4 des bes f2.
  r2. r f'4 f as g2 f4~ f2. r2 as4 as2 bes4 ^\< c \!
  c2 r2. bes4 c as2 bes4 g2~ g4 r2 g4 as bes2 c4
  c2~ c4 r2 c4 as bes g2 f2. r2 c'4( bes) as bes g f2 \fermata
  f4 f f2 f4 f2. des4 des des2 des4 as2 bes4 bes bes2 bes4 ees2
  bes'4 as g( f) ees as,2 bes bes4 bes bes2 f'2 ees2 ees4
  des ees f2.~ f2
  \accidentalStyle forget
  as4 bes c2 bes4 as2
  bes4 c des2 g,4 as2 bes4 bes
  f2 f4 c'2 des4 \accidentalStyle default c bes( as) g f2 bes,4( c) des
  ees4 f( g) as2. f2 f4 f4 f2 f2.~ f2
  bes2~( bes2.~ bes2 as2.~ as2 g f2~ f2. ees2)
  des2~( des2. c2 bes2.~ bes as2) r2 r2.
  f2.~ f2~ f2.
}

textSopranUpper = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "Kao jeka"
  (Zdra -- va de -- vi -- ca Bo -- go -- ro -- di -- ca)
}

textSopranUpperTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  le -- pi cvet
  _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "Adagio"
  Bu -- di Ti di -- ka, vsig -- dar ve -- li -- ka
  Ti si le -- pi cvet Bla -- že -- na že -- na, ro -- ža ru -- me -- na
}

textAlt = \lyricmode {
  Zdra -- va De -- vi -- ca, Bo -- go -- ro -- di -- ca,
  Ti si le -- pi cvet, bla -- že -- na __ že -- na, ro -- ža
  ru -- me -- na, sve -- ta Ma -- ri -- ja. __
  Po -- zdrav si ze -- la __ od Ga -- bri -- je -- la
  Ti si le -- pi cvet Bla -- že -- na __ že -- na
  ro -- ža ru -- me -- na __ sve -- ta Ma -- ri -- ja. __
  Ti si s_ko -- re -- na Je -- sse stvor -- je -- na,
  Ti si le -- pi cvet
  Bla -- že -- na __ že -- na ro -- ža ru -- me -- na, sve -- ta Ma -- ri -- ja. __
  O ži -- tek pra -- vi, o zde -- nec zdra -- vi,
  Ti si  le -- pi cvet Bla -- že -- na že -- na ro -- ža
  ru -- me -- na sve -- ta Ma -- ri -- ja. __
  Mm __ Mm __ sve -- ta Ma -- ri -- ja. __
}

textTenor = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ sve -- ta Ma -- ri -- ja.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _
  sve -- ta Ma -- ri -- ja.
}

textTenorLower = \lyricmode {
  Bo -- go -- ro -- di -- ca,
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ 
}

textBas = \lyricmode {
  Ti si le -- pi cvet, bla -- že -- na __ že -- na,
  ro -- ža ru -- me -- na,
  sve -- ta Ma -- ri -- ja.
  Po -- zdrav si ze -- la __ od Ga -- bri -- je  -- la.
  Ti si le -- pi cvet, __ bla -- že -- na že -- na __
  ro -- ža ru -- me -- na sve -- ta Ma -- ri -- ja.
  Ti si s_ko -- re -- na Je -- sse stvor -- je -- na,
  Ti si le -- pi cvet
  Bla -- že -- na __ že -- na ro -- ža ru -- me -- na, sve -- ta Ma -- ri -- ja. __
  O ži -- tek pra -- vi, o zde -- nec zdra -- vi,
  Ti si le -- pi cvet Bla -- že -- na __ že -- na ro -- ža
  ru -- me -- na sve -- ta Ma -- ri -- ja. __
  Mm __ Mm __ a __
}

textC = \lyricmode {
  a __ a __ a a __ a
  a __ a __ a a __ a
}

\score {
  \new StaffGroup
  <<
    \new Staff = "solo"
    \with { instrumentName =  "Solo " }
    \with { shortInstrumentName = "Solo " }
    <<
      \new Voice = "solo" {
        \global
        \solo
      }
      \new Lyrics \lyricsto "solo" {
        \textC
      }
    >>
    \new Staff = "sopranAlt"
    \with { instrumentName =  \markup \center-column {"S. " "A. "} }
    \with { shortInstrumentName = \markup \center-column {"S. " "A. "} }
    <<
      \new Voice = "sopran" {
        \global
        \sopran
      }
      \new Voice = "alt" {
        \global
        \alt
      }
      \new Lyrics
      \lyricsto "alt" {
        \textAlt
      }
      \new Lyrics = "sopranUpper" \with {
        alignAboveContext = "sopranAlt"
      }
      \new Lyrics = "sopranUpperTwo" \with {
        alignAboveContext = "sopranAlt"
      }
      \context Lyrics = "sopranUpper" {
        \lyricsto "sopran" {
          \textSopranUpper
        }
      }
      \context Lyrics = "sopranUpperTwo" {
        \lyricsto "sopran" {
          \textSopranUpperTwo
        }
      }
    >>
    \new Staff = "TenorBas"
    \with { instrumentName =  \markup \center-column {"T. " "B. "} }
    \with { shortInstrumentName = \markup \center-column {"T. " "B. "} }
    <<
      \new Voice = "tenor" {
        \global
        \tenor
      }
      \new Voice = "bas" {
        \global
        \bas
      }
      \new Lyrics = "tenor" \with {
        alignAboveContext = "TenorBas"
      }
      \context Lyrics = "tenor" {
        \lyricsto "tenor" {
          \textTenor
        }
      }
      \new Lyrics \lyricsto "tenor" {
        \textTenorLower
      }
      \new Lyrics \lyricsto "bas" {
        \textBas
      }
    >>
  >>

\layout {
  indent = 0 \cm
  #(layout-set-staff-size 16)
    \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}

\midi {
  \tempo 4 = 100
}

}