\version "2.22.0"

\header {
  title = "Ave Maria"
  composer = "T. L. DE VICTORIA (1548-1611)"
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
   \time 4/4
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative {  
  c''2 bes4 as | bes2 c | r4 c bes as \break |
  g2 as4 c | bes as g2 | f4 as g8 f4 e8 | f2 r8 g4 g8 | as4 g as2 | \break
  r1
}

alt = \relative {
  r2 r4 as' | g f g c | r as g f |
  f( e) f as | g f2 e4 | f es es8 c c4 | c2 r8 es4 es8 | es4 es es2 |
}

tenor = \relative {
  \clef "treble_8"
  r2 r4 f'4 | es d e2 | f r |
  r2 f4. c8 | es4 f c2 | r4 c bes8 as g4 | a2 r8 bes4 bes8 | c4 bes as c |
}

bas = \relative {
  \clef bass
  r1 | r2 r4 c'4 | bes as bes2 |
  c r | r1 | r4 as es8 f c4 | f2 r8 es4 es8 | as4 es as, as' |
}

sopranText = \lyricmode {
  gra -- ti -- a ple -- na, gra -- ti -- a ple -- na:
  Do -- mi -- nus te -- cum, Do -- mi -- nus te -- cum:
  Be -- ne -- di -- cta tu
}

altText = \lyricmode {
  gra -- ti -- a ple -- na, gra -- ti -- a ple -- na:
  Do -- mi -- nus te -- cum, Do -- mi -- nus te -- cum:
  Be -- ne -- di -- cta tu
}

tenorText = \lyricmode {
  gra -- ti -- a ple -- na:
  Do -- mi -- nus te -- cum, Do -- mi -- nus te -- cum:
  Be -- ne -- di -- cta tu in
}

basText = \lyricmode {
  gra -- ti -- a ple -- na:
  Do -- mi -- nus te -- cum: Be -- ne -- di -- cta tu in
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
  %indent = 1 \cm
  %#(layout-set-staff-size 16)
}

\midi {}

}