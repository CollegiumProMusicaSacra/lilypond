\version "2.22.0"

\header {
  tagline = ##f
  title = "Radosna srca"
  subsubtitle = "Darovna pjesma"
  poet = "Ivan Šaško"
  composer = "Anđelko Igrec"
  
}


\paper {
  indent = 0 \cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
}

global = {
  \key g \major
  \slurDashed \tieDashed
  \time 2/2
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative {
  \voiceOne
  g'2 a4 g | d2 d | g a4 g | d2 d | e fis4 fis \break |
  g2 a4 b | c2 b4 b | a4 a2. | g2 a4 g | d4 d d2 \break |
  b'2 b4 a | g2 g | c d4 c | b2 a4 a | b2 a4 a | g1 \bar "|." |
}

alt = \relative {
  \voiceTwo
  b2 d4 d4 | a2 b4 c | b2 d4 d | a2 b | c d4 d |
  d2 d4 d | e2 d4 d | d4 d2. | b2 c4 c | b4 b c2 |
  d dis4 fis | e2 e | e g4 a | g2 g4 g | g2 fis4 e | d1 |
}

tenor = \relative {
  \clef bass \voiceOne
  d2 g4 g | fis2 g4 fis | d2 g4 g | fis2 g | g a4 a |
  g2 fis4 g | g2 g4 g | fis4 fis2. | g2 e4 a | fis4 fis fis2 |
  g2 fis4 b | c2 b | g c4 d | d2 cis4 cis | d2 c4 c | b1 |
}

bas = \relative {
  \clef bass \voiceTwo
  g,2 b4 b | c2 b4 a | g2 b4 b | d2 g | c,2 c4 c |
  b2 a4 g | c2 d4 d | d4 d2. | e2 a,4 a | b4 b a2 |
  g b4 dis | e2 d | c e4 fis | g2 a4 a | d,2 d4 d | g1 |
}


\score {
  \new ChoirStaff
  <<

    \new Staff <<
      \new Voice = "s" {
        \set Staff.midiMaximumVolume = #0.7
        \global
        \sopran
      }
    >>
    
    \new Staff <<
      \new Voice = "a" {
        \set Staff.midiMaximumVolume = #0.7
        \global
        \alt
      }
    >>

    \new Staff <<
      \new Voice = "t" {
        \set Staff.midiMaximumVolume = #0.7
        \global
        \tenor
      }
    >>

    \new Staff <<
      \new Voice = "b" {
        \set Staff.midiMinimumVolume = #0.6
        \global
        \bas
      }
    >>
  >>

  \midi {
    \tempo 4 = 100
  }
}