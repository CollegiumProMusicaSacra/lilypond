\version "2.22.0"

\header {
  title = \markup \center-column {" " "DEUS CARITAS EST"}
  subtitle = \markup \center-column {" " "(I. Ivanova poslanica)"}
  subsubtitle = \markup \center-column \fontsize #-2 {
    " "
    "Posvećeno Uzoritom Kardinalu Dr. Franji Kuhariću"
    "nadbiskupu zagrebačkom 1983."
  }
  composer = \markup { \italic "S. M. Imakulata Malinka" }
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
   \key c \major
   \time 3/4
   \autoBeamOff
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.3 ly:text-interface::print)
}

sopran = \relative c {
  \tempo "Svečano"
  c''2 c4 | d4. d8 d4 | e2 e4 | f4. f8 f4 | g( f) e | d c d | e2.~ | e \bar "||" f2.( \break |
  e2) d4 | e2.( | d2) c4 | d( c) b | b4. a8 b4 | c2.( | d4 c) d | e2 f4 | g4.( f8) e4 \break |
  d4( c) b | e4. a,8 a4 | c( b) a | b a b | c b c | d4. c8 d4 | e2 f4 | g4.( f8) e4 | d( c) b \break |
  e4. a,8 a4 | c( b) a | g4. a8 b4 | a2.~ | a \bar "||" | \tempo "Poletno" e'4.( f8) e([ d)] | e4 a,2 | d8([ c)] b4( a) | b8([ c)] d2 \break |
  c8([ d)] e([ g)] e([ d)] | e4 a,8([ g)] a([ b)] | c b c([ a)] b([ c)] | d c d b c d | e2 e4 | e2.( | f \break |
  g2.) | a2. | r | r | r | r | r |
  r | r | r | e4.( f8) e([ d)] | e4( a,) b \break |
  c4. e8 c a | b4. d8 b g | a8([
  ^\markup { \italic "Usporiti......................................................" }
  b)] c2 | b8([ c)] d4 d | e2. \fermata \bar "|." |
}

alt = \relative c {
  e'2 e4 | b'8([ a)] g4 g | g2 g4 | a4. a8 f8([ c')] | b2 g4 | a a a | gis2( a4 | gis2.) | a2 g4 |
  g2 g4 | g2 f4 | f2 e4 | d2 d4 | f f f |e2.( | b'4 a g) | g2 c4 | b2 c4 |
  a2 a4 | e e e | f2 f4 | f f f | e e e | f g g | g2 c4 | b2 c4 | a2 f4 |
  e4 e e | f2 f4 | e4. e8 e4 | e2( f4 | e2.) | r | r | r | a4.( bes8) a([ g)] |
  a4 e2 | g8([ f)] e4( d) | e8([ f)] g2 | g4( f) a | g a2 | g8 a b4 g | a8 b c4 a |
  b8 c e4( b) | c2. | r | r | r | r | r \break |
  r | a4.( bes8) a([ g)] | a4 e2 | g8([ f g a)] g([ a)] | g2 f4 |
  e4. e8 e e | g4 f2 | e8([ d] a'4) g | f8([ e)] a4 f | e8([ a]~ a2) \fermata |
}

tenor = \relative c {
  \clef "treble_8"
  a'2 a4 | d8([ c)] b4 b | c2 c4 | c4. c8 c4 | d2 b4 | a a a | b2( c4 | b2.) | d2 b4 |
  c2 b4 | b2 c4 | a2 a4 | a2 a4 | g g g | a2( e4 | g a b) | c2 c4 | d2 c4 |
  f2 a,4 | a c c | d2 d4 | d d d | c c c | b b b | c2 c4 | d2 c4 | f2 a,4 |
  a4 c c | d2 d4 | b4. a8 g4 | c2( d4 | cis2.) | r | r | r | r |
  r | r | e4.( f8) e8([ d)] | e4 a,2 | c8 b c4 a | b8 c d4 b | c8 d e4 c |
  d8 e f4( d) | e2. | e4.( f8) e([ d)] | e4 a,2 | d8 c b4 a | g8 a b4 g | a8 b c4 a |
  b8 d d4 b | c2. | c | a2( b4 | c2) d4 |
  a4. a8 a a | d2. | c8 g e'2 | d8([ e)] f4 d | cis2. \fermata |
}

bas = \relative c {
  \clef bass
  a'2 a4 | g4. g8 g4 | c,2 c4 | f4. f8 a4 | g2 g4 | f f f | e2.~ | e | d2 g4 |
  c,2 g'4 | e2 a4 | d,2 a4 | f'2 f4 | d d d | a2.( | g) | c2 a'4 | g2 g4 |
  d2 d4 | c a a | d2 d4 | g g g | a a a | g g g | c,2 a'4 | g2 g4 | d2 d4 |
  c4 a a | d2 d4 | e4. e8 e4 | a,2.~ | a | r | r | r | r |
  r | r | r | r | r | r | r |
  r | a'4.( bes8) a8([ g)] | a4 e2 | g8 g e4 d | a b c8 d | e f g4 g | f8 g a4 a |
  g8 a b4( g) | a2. | a4.( bes8) a8([ g)] | a4( e) g8([ f)] | e4.( f8) e d | 
  c4 a4.( c8) | e4 g,4.( b8 | c8[ b)] a2 | d4 d d | a2. \fermata |
}

sopranText = \lyricmode {
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us, De -- us ca -- ri -- tas,
  De -- us, De -- us, De -- us,
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us est ca -- ri -- tas,
  De -- us, De -- us, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le, Al -- le -- lu -- ia.
}

altText = \lyricmode {
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us, De -- us, De -- us,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us,
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us est ca -- ri -- tas,
  De -- us, De -- us, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
}

tenorText = \lyricmode {
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us, De -- us, De -- us,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us,
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us est ca -- ri -- tas,
  De -- us, De -- us, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}

basText = \lyricmode {
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __ De -- us
  De -- us, De -- us, De -- us,
  De -- us ca -- ri -- tas est. __
  De -- us, De -- us,
  De -- us ca -- ri -- tas, De -- us ca -- ri -- tas,
  De -- us est ca -- ri -- tas,
  De -- us, De -- us, De -- us ca -- ri -- tas,
  De -- us ca -- ri -- tas est. __
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
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
  #(layout-set-staff-size 18)
}

%\midi {
%  \tempo 4 = 120
%}

}