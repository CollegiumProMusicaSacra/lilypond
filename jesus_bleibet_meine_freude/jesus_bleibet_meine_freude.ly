\version "2.22.0"

#(set-global-staff-size 17)

\header {
  tagline = ##f
  title = "KORAL IZ KANTANE No 147"
  subtitle = "Jesus bleibet meine Freude - Isus mi je svagda radost"
  subsubtitle = "(S njemačkog preveo Sead Ivan Muhamedagić)"
  composer = "J. S. Bach"
}

\paper {
  indent = 0 \cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f

  two-sided = ##t
  top-margin = 20
  inner-margin = 10
  outer-margin = 10
  bottom-margin = 20
}

global = {
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = {
  \relative c'' {
    \set Score.skipBars = ##t
    \override MultiMeasureRest #'expand-limit = 1
    \key g \major
    \time 3/4 \voiceOne
    \oneVoice R1*3/4*8 \voiceOne | b2 c4 | d2 d4 | c2 b4 | a4 a \oneVoice r4 | r2. \voiceOne | b2 c4 | d2 b4 |
    a8( b16 c) b4( a) | g2 \oneVoice r4 | R1*3/4*6 \voiceOne | b2 c4 | d2 d4 | c2 b4 | a a \oneVoice r | r2. \voiceOne| b2 c4 |
    d2 b4 | a8( b16 c) b4( a) | g2 \oneVoice r4 | R1*3/4*7 \voiceOne | a2 b4 | c2 c4 | b4.( c16 d) b4 | a a \oneVoice r |
    R1*3/4*2 \voiceOne | c2 d4 | e2 e4 | d4.( e16 f) d4 | c c \oneVoice r | R1*3/4*2 \voiceOne | b2 c4 | d2 d4 |
    c4 b2 | a2 \oneVoice r4 | r2. \voiceOne | b2 c4 | d2 b4 | a8( b16 c) a2 | g2. \bar "||" | \oneVoice R1*3/4*11 | \bar "|."
  }
}

alt = {
  \relative c'' {
    \key g \major
    \time 3/4 \voiceTwo
    s1*3/4*8 | g2 g4 | a( g) fis | g d2 | d4 d s | s2. | g2 g4 | g( d) e |
    e4 fis8( e fis4) | d2 s4 | s1*3/4*6 | g2 g4 | a( g) fis | g d2 | d4 d s | s2. | g2 g4 |
    g( d) e | e fis8( e fis4) | d2 s4 | s1*3/4*7 | fis2 gis4 | a2 a4 | a2 gis4 | a a s |
    s1*3/4*2 | a2 g4 | g( c) g | f( a) g | g g s | s1*3/4*2 | g2 g4 | g2 g4 |
    g8( fis) g2 | fis2 s4 | s2. | g2 g4 | g( d) e | e fis8( e fis4) d2. | s1*3/4*11
  }
}

tenor = {
  \relative c' {
    \set Score.skipBars = ##t
    \override MultiMeasureRest #'expand-limit = 1
    \key g \major
    \clef bass
    \time 3/4 \voiceOne
    \oneVoice R1*3/4*8 \voiceOne | d2 e4 | a,2 b4 | b( a) g | fis a \oneVoice r | r2. \voiceOne | d2 e4 | d( b) b |
    c8([ a)] d( b c4) | b2 \oneVoice r4 | R1*3/4*6 \voiceOne | d2 e4 | a,2 b4 | b( a) g | fis a \oneVoice r | r2. \voiceOne | d2 e4 |
    d( b) b | c8[( a]) d( b c4) | d2 \oneVoice r4 | R1*3/4*7 \voiceOne d2 d4 | e2 f4 | f( d) e | c c \oneVoice r |
    R1*3/4*2 \voiceOne e2 d4 | c2 c4 | a2 b4 | e e \oneVoice r | R1*3/4*2 \voiceOne | d2 e4 | d( b) b |
    c( d) e | a,2 \oneVoice r4 | r2. \voiceOne | d2 e4 | d( b) b | c8[( a]) d( b c4) | b2. | \oneVoice R1*3/4*11 |
  }
}

bas = {
  \relative c' {
    \key g \major
    \clef bass
    \time 3/4 \voiceTwo
    s1*3/4*8 | g4( fis) e | fis( e) d | e( fis) g | d d s | s2. | g4( fis) e | b'( b,) e |
    c( d) d | g,2 s4 | s1*3/4*6 | g'4( fis) e | fis( e) d | e( fis) g | d d s | s2. | g4( fis) e |
    b'( b,) e | c( d) d | g,2 s4 | s1*3/4*7 | d'4( c) b | a( a'8[ g]) f( e) | d4( b) e | a,4 a s |
    s1*3/4*2 | a'2 b4 | c( a) e | f( d) g | c, c s | s1*3/4*2 | g'2 e4 | b'4( e) e, |
    a,( b) c | d2 s4 | s2. | g4( fis) e | b'( b,) e | c d2 | g,2. | s1*3/4*11 |
  }
}

txtOne = \lyricmode {
  I -- sus mi -- je svag -- da ra -- dost,
  ut -- je -- ha __ je sr -- ca mog.
  I -- sus lije -- či pa -- tnju, sla -- bost,
  On je sna -- ga ži -- ća __ mog.
  Mo -- jem o -- ku svije -- tlo dra -- go,
  mo -- joj du -- ši strast __ i bla -- go.
  Za -- to ni -- kad I -- su -- sa
  pu -- stit ne -- ću iz __ sr -- ca.
}

txtTwo = \lyricmode {
  I -- sus mi -- je svag -- da ra -- dost,
  ut -- je -- ha __ je sr -- ca mog.
  I -- sus lije -- či pa -- tnju, sla -- bost,
  On je sna -- ga ži -- ća __ mog.
  Mo -- jem o -- ku svije -- tlo dra -- go,
  mo -- joj du -- ši strast __ i bla -- go.
  Za -- to ni -- kad I -- su -- sa
  pu -- stit ne -- ću iz __ sr -- ca.
}

txtThree = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Je -- sus blei -- bet me -- ine Freu -- de,
  mei -- nes Her -- zens Trost __ und __ Saft.
  Je -- sus weh -- ret al -- lem Lei -- de,
  er ist mei -- nes Le -- bens __ Kraft.
  Mei -- ner Au -- gen Lust __ und Son -- ne,
  mei -- ner See -- le Shatz __ und Won -- ne;
  da -- rum laß' ich Je -- sum nicht
  aus dem Her -- zen und Ge -- sicht.
}

txtFour = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Je -- sus blei -- bet me -- ine Freu -- de,
  mei -- nes Her -- zens Trost __ und Saft.
  Je -- sus weh -- ret al -- lem Lei -- de,
  er __ ist mei -- nes Le -- bens Kraft.
  Mei -- ner Au -- gen Lust __ und Son -- ne,
  mei -- ner See -- le Shatz __ und Won -- ne;
  da -- rum laß' ich Je -- sum nicht
  aus __ dem Her -- zen und Ge -- sicht.
}




\score {
  \new StaffGroup
  <<

    \new Staff <<
      \new Voice = "s" { \global \sopran }
      \new Voice = "a" { \global \alt }
    >>
    \new Lyrics \lyricsto "s" { \txtOne }
    \new Lyrics \lyricsto "s" { \txtThree }

    \new Staff = #"bottomStaff"
    <<
      \new Voice = "t" { \global \tenor }
     \new Voice = "b" { \global \bas }
    >>   
    \new Lyrics \lyricsto "b" { \txtTwo }
    \new Lyrics \lyricsto "b" { \txtFour }

  >>



  \layout {
    \context {
      \Score
      markFormatter = #format-mark-box-alphabet
    }
  }



  \midi {
   \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
    }
  }
%}
}