\version "2.22.0"

\header {
  title = "O, sveta gozbo"
  composer = "D. Bartolucci (1917 - 2013)"
  tagline = ##t
}

colorSopran = "brown"
colorAlt = "purple"
colorTenor = "navy"
colorBas = "green"

setColor = #(define-music-function
     (hex)
     (string?)
   #{
    \override Staff.StaffSymbol.color = #hex
    \override Staff.TimeSignature.color = #hex
    \override Staff.Clef.color = #hex
    \override Voice.NoteHead.color = #hex
    \override Voice.Stem.color = #hex
    \override Staff.BarLine.color = #hex
    \override Staff.Accidental.color = #hex
    \override Staff.Rest.color = #hex
    \override Staff.KeySignature.color = #hex
    \override Staff.Slur.color = #hex
    \override Staff.Tie.color = #hex
    \override Staff.Dots.color = #hex
    \override Staff.BreathingSign.color = #hex
    \override Staff.Hairpin.color = #hex
    \override Staff.DynamicText.color = #hex
    \override Staff.InstrumentName.color = #hex
   #})

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
  \key f \major \time 3/4
  %\override BreathingSign.text = \markup { \musicglyph "scripts.upbow" }
}

sopran = \relative {
  \tempo "Andantino" 4 = 72
  %\setColor \colorSopran
  r4 a'( ^\mp g~ | g) f( a | c d) c~ | c d( e | f e d) | c2. | r4 c a | a g bes | a g2 \break |
  f2. \breathe | a4( ^\mf c) d | c2 r4 | r f,( a~ | a g c) | c2. | r4 d ^\f f | f( e c | d ^\> e) d \break |
  c2. | r4 \! d ^\mf bes | bes c d | c bes ^\> bes | a2. | r4 \! bes( a) | g c c~ | c a( g) | f2. \break |
  r4 d' ^\f f | f( e) c | e( d2 ^\> ) | c2. | r \! ^\markup { \italic "poco tratt." } | r4 f, ^\mf ^\markup { \italic "a tempo" } a | a( g ^\< c) | c2. \break |
  r4 \! d e | f( e d) | c2. | r4 c( ^\p a~ | a) g( bes) | a( ^\markup { \bold "rit.  _  _  _  _" } ^\> g2) | f2.~ | f \fermata \! |
}

alt = \relative {
  %\setColor \colorAlt
  c'2. ^\p | d( | e) | f~ | f4 f( g | a g f) | e2 \breathe e4 | d2. | d4 bes d |
  c bes2 | a r4 | a( ^\mf c) d | c2( d4) | e2. | e4 \breathe c e | f2 d4 | g2( e4) \breathe | a2.~( ^\p |
  a4 g) e | f2.~ | f | r4 f ^\mf d | d e f | e d d | d \breathe c( d) | e c c~ | c bes( ^\< c) |
  d2. | r4 \! a' ^\f c | c( bes) a | g( c,2) | c ^\> bes4 | a \breathe c ^\mf \! d | e2 ^\< e4~ | e \! c e |
  f2 f4~ | f f g | a( g f) | e2.( | d~ | d4) bes ^\p d | c( ^\> bes2) | a2. \! \fermata |
}

tenor = \relative {
  \clef "treble_8"
  %\setColor \colorTenor
  a2. ^\p | a | a~ | a2 \breathe a4 | d2 e4 | f( e d) | c2 \breathe c4 | f,2. | f4 g bes |
  a g2 | f r4 | f( ^\mf a) bes | a2( b4) | c( b g) | c \breathe a c | d( a) b | c2. \breathe | f2.(~ ^\p |
  f4 e) c | d2.~ | d | r4 d ^\mf bes | bes c d | c bes bes | bes \breathe a( g) | e a a~ | a g( ^\< a) |
  bes \breathe bes \! ^\f d | d( c) a~ | a \breathe d f | f( e) c | e( ^\> d2) | c4 \breathe a \! ^\mf b | c( ^\< b g) | c \! a c |
  a2 a4 \breathe | d2 e4 | f( e d) | c2.( | f,~ | f4) g ^\p bes | a( ^\> g2) | f2. \! \fermata |
}

bas = \relative {
  \clef bass
  %\setColor \colorBas
  f ^\p | d | a2 \breathe a4 | d2 d4 | bes2. | f2 \breathe f4 | a2 a4 | bes2 bes4 | f2 f4 |
  f2. \breathe | f'4( ^\mf a) bes | f2( d4) | f2. | e4 \breathe e e | a2. | d, | c | r |
  r | bes'2 ^\mf g4 | g a bes | a g ^\> g | f2. | r4 \! g( f) | e2 e4 | a,2. | d2( c4) |
  bes2. | r | r4 bes bes | c2 a4 | bes2. ^\> | f2  \breathe f'4 \! ^\mf | e2 ^\< e4 | a2 \! a4 |
  d,2 d4 | bes2. \breathe | f | a | bes | f~ | f~ ^\> | f \! \fermata |
}

sopranText = \lyricmode {
  O, __ sve -- ta __ go -- zbo na ko -- joj se Krist bla -- gu -- je,
  sla -- vi se spo -- men mu -- ke nje -- go -- ve.
  Du -- ša se na -- pu -- nja mi -- lo -- sti i __ bu -- du -- će __ sla -- ve
  za -- log nam se da -- je. Al -- le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja. __
}

altText = \lyricmode {
  O, sve -- ta __ go -- zbo na ko -- joj se Krist bla -- gu -- je,
  sla -- vi -- se __ spo -- men mu -- ke nje -- go -- ve, __ nje -- go -- ve. __
  Du -- ša se na -- pu -- nja mi -- lo -- sti i __ bu -- du -- će __ sla -- ve
  za -- log nam __ se da -- je, da -- je. Al -- le -- lu -- ja, __
  al -- le -- lu -- ja, __ al -- le -- lu -- ja, __ al -- le -- lu -- ja.
}

tenorText = \lyricmode {
  O, sve -- ta, __ o, sve -- ta go -- zbo na ko -- joj se Krist
  bla -- gu -- je, sla -- vi se __ spo -- men mu -- ke nje -- go -- ve, nje -- go -- ve. __
  Du -- ša se na -- pu -- nja mi -- lo -- sti i __ bu -- du -- će __  sla -- ve
  za -- log nam __ se, __ za -- log nam se  da -- je. Al -- le -- lu -- ja,
  al -- le -- lu -- ja, __ al -- le -- lu -- ja.
}

basText = \lyricmode {
  O, sve -- ta, o, sve -- ta go -- zbo na ko -- joj se Krist bla -- gu -- je,
  sla -- vi se __ spo -- men mu -- ke nje -- go -- ve.
  Du -- ša se na -- pu -- nja mi -- lo -- sti i __ bu -- du -- će sla -- ve
  za -- log nam se da -- je. Al -- le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja. __
}

\score {

\new ChoirStaff <<
  \new Staff = "sopran"
  \with { instrumentName =  "S." }
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
  \with { instrumentName =  "A." }
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
  \new Staff = "tenor"
  \with { instrumentName =  "T." }
  \with { shortInstrumentName = "T." }
  <<
    \new Voice = "tenor" {
      \global
      \tenor
    }
    \new Lyrics \lyricsto "tenor" {
      \tenorText
    }
  >>
  \new Staff = "bas"
  \with { instrumentName =  "B." }
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

\layout {
  indent = 0
  #(layout-set-staff-size 17)
}

\midi {
}

}