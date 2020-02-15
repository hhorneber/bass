\version "2.19.82"

%\include "includes/tabs_engraved.ily"
\include "includes/no_tabs_engraved.ily"
\include "includes/settings.ily"
\include "includes/shortcuts.ily"



\header {
  title = "Caras y Caretas"
  subtitle = "Fabián Isernia on Bass"
  subsubtitle =  "Why yes, I do like arpeggios, thank you very much"
  composer = "Los Calzones Rotos"
  instrument = "Bass"
  tagline = \markup {

    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}



%score starts

intro = {

  \compressFullBarRests
  R1
  \italMark  "Intro"
  R1
  \barbara
}
firstVerse = {

  gis4.-4 gis8 \italMark "Verse" ais4.-1 ais8|
  b4.-1   b8   \minFret #4 cis4.-1 cis16 dis16-2|
  e2-4   \grace{dis16-2(} e2-4)|
  dis2-2  gis,4.-1 dis'8-4|
  cis4.-1 g'16(-2 gis)-4 cis4-4 gis-4 |
  \minFret #1
  fis4.-1\glissando \hideNotes \grace{eis8} \unHideNotes cis8 -4 fis,2-1 |
  \barbara
}

secondVerse = {
  \italMark "Verse"

  gis4. gis8 ais4. ais8|
  b4.   b8   \minFret #4  cis4. cis16 dis16|
  e4-4~ e8. b16-4 e4.-4 fis16-1 e-4|
  \override TextSpanner.bound-details.left.text = "fingering not fully visible"
  \textSpannerDown
  dis4.-2~ dis8\glissando \hideNotes \grace{cis16} \unHideNotes \minFret #1  gis4-4\startTextSpan ais8-1 b-2|
  \minFret #4
  cis4.-1 g'16-2( gis-4) cis4-4 gis-4|
  \minFret #1
  fis4.-1\glissando \hideNotes \grace{eis32 } \unHideNotes cis16-4 fis-4 fis,4~-1 fis16 cis'16-4 fis-4 cis\stopTextSpan |
  \barbara
}

bassFill = {

  cis4. gis8-4 \minFret #2 fis4.-1  cis'16\glissando-4 dis16|
  % bass fill
  fis4-1 cis'8-4( b8-1)\glissando \grace{eis32} fis2-2\prallprall~ |
  \time 2/4
  fis4.\prallprall\glissando \grace{cis8} r8|
}

chorusOne = {
  \italMark "Chorus"
  % chorus take a look at me nao-oh-wow
  fis,8-1\laissezVibrer fis'4-4 fis8 fis8. fis16\laissezVibrer fis,16\laissezVibrer fis'8 fis16\laissezVibrer  |
  fis,8\laissezVibrer fis'4 fis8 fis8. fis16\laissezVibrer fis,8\laissezVibrer fis'16\laissezVibrer fis,  |
  \minFret #0  gis4.-4 gis16 fis-1 e4. \minFret #2 dis'8-4\glissando|
  % really third finger?
  cis4.-4 gis8-4 \minFret #1 fis8.-1  cis'16-4 fis8-4 dis16-1 cis-4|
  fis,8\laissezVibrer fis'4 fis8  fis8. fis32 fis fis,8.\laissezVibrer fis'16\laissezVibrer  |
  fis,8\laissezVibrer fis'4 fis8 fis8. fis16\laissezVibrer fis,8\laissezVibrer fis'16\laissezVibrer fis, |
  \minFret #0  gis4.-4 gis16 fis-1 e4. \minFret #2 dis'8-4\glissando|
  \bassFill
  \barbara
}

thirdVerse = {
  \italMark "Verse"
  \time 4/4
  \minFret #0

  gis,4. gis8 ais4. ais8|
  b4.   b8 \minFret #4  cis4. cis16 dis16|
  e4~ e8. b16 e4. fis16 e|
  % yes really slide with index then fret with fourth finger
  dis4.-2 ais8-1\glissando  gis4-4 \minFret #1 ais8-1 b-2|
  \minFret #4 cis4.-1 g'16( gis) cis4 gis |
  \minFret #1
  fis4~ fis16\glissando eis16 cis8 fis,8. cis'16 fis8 dis16 cis|
  \barbara
}

outro = {
  \italMark "Outro"
  \time 4/4
  % outro
  \relative c, {
    \minFret #0
    \textSpannerNeutral
    \override TextSpanner.bound-details.left.text = "rit."
    cis2 fis, |
    cis'2 fis, |

    cis'2\startTextSpan  b|
    ais e|
    fis1\fermata\stopTextSpan|
  }
}

chorusFinal = {
  \italMark "Chorus"

  % chorus take a look at me nao-oh-wow
  fis,8\laissezVibrer fis'4 fis8 fis8. fis16\laissezVibrer fis,16\laissezVibrer fis'8.\laissezVibrer  |
  fis,8\laissezVibrer fis'4 fis8 fis8 fis16\laissezVibrer  \deadNotesOn b, \deadNotesOff fis8\laissezVibrer fis'16\laissezVibrer fis, |
  \minFret #0  gis4. gis16 fis e4. \minFret #2 dis'8\glissando|
  cis4. gis8 \minFret #1 fis8.  cis'16 fis8 dis16 cis|
  fis,8\laissezVibrer fis'4 fis8  fis8. fis32 fis fis,16\laissezVibrer fis'8 fis16\laissezVibrer  |
  %fis,8\laissezVibrer fis'4\laissezVibrer fis8 fis8. fis16\laissezVibrer fis,16\laissezVibrer fis'8 fis16\laissezVibrer  |
  fis,8\laissezVibrer fis'4 fis8 fis8. fis16\laissezVibrer fis,8\laissezVibrer fis'16\laissezVibrer fis, |
  \minFret #0  gis4. gis16 fis e4. \minFret #2 dis'8-4\glissando|
  cis4.-4 gis'8-4\glissando \minFret #1 \tuplet 3/2  {fis16 fis fis fis fis fis fis16 fis fis fis dis-1 cis-4 } |
  fis,8\laissezVibrer fis'4 fis8  fis8. fis32 fis fis,16\laissezVibrer fis'8 fis16\laissezVibrer  |
  %fis,8-1\laissezVibrer fis'4-4 fis8 fis8. fis16\laissezVibrer fis,16\laissezVibrer fis'8 fis16\laissezVibrer  |
  fis,8\laissezVibrer fis'4 fis8 fis8. fis16\laissezVibrer fis,8\laissezVibrer fis'16 fis,  |
  \minFret #0  gis4. gis16 fis e4. \minFret #2 dis'8-4\glissando|
  \bassFill
  \barbara
}

shortSkit = {
  
  \minFret #3
  \tuplet 3/2 {a4 a a g g g}
}
skit = { 
 \italMark  "Intro skit" 
 \shortSkit
 \time 2/4
  a4 r4 
 
  \barbara
  
}

interlude = {
  \italMark  "Interlude"
 \minFret #5
  a4 b c b
  a b c b
  a b c b
  \minFret #0
  g g e e
  
  \minFret #5
  a4 b c b
  \minFret #5
  a4 b \tuplet 3/2 { c b a}
  \minFret #3
  g1~ 
  g2 g4 g
  gis1~ 
  gis2  e'4 gis,
  a1  \glissando \minFret #17 a'2~ a8 a a a
  
  \barbara
}

firstVerse = {
  \italMark  "Verse I"
 \minFret #5
  a,4 b c c8 b
  a4 b c d
  e gis b gis8 b
  e,4 gis b8 gis e4
  
  \minFret #2
  g, d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #7
  r8 e r e r e r e
  
  \minFret #5
  a,4 e' c e8 c
  a4 b c d
  e gis b gis8 b
  e,4 d e8 d b4
  
  \minFret #2
  g d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #7
  e8 e4  e4  e8 e e
  
  \barbara
}


firstBridge = {
  \italMark  "Bridge I"
  \minFret #5
  a,4 c e c8 e
  a,4 e' e e
  \minFret #0
  e, \minFret #4 b'  gis b8 gis
  \minFret #0
  e4 gis \minFret #4 b8 gis b4
  
  \minFret #5
  a4 e' c e8 c
  a4 e' c e8 c
  \minFret #0
  e,4 \minFret #4 b'  gis b8 gis
  \minFret #0
  e4 gis \minFret #4 b8 gis b4
  
  \barbara
}


secondVerse = {
  \italMark  "Verse II"
 \minFret #5
  a,4 b c c8 b
  a4 b c d
  \minFret #0
  e, \minFret #4 gis b gis8 b
  \minFret #0
  e,4 \minFret #4 gis b gis8 b
  
  \minFret #2
  g4  d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #0
  r8 e, r e r e r e
  
  \minFret #5
  a4 b c e
  a,4 b c e
  \minFret #0
  e, \minFret #4 gis b gis8 b
  \minFret #0
  e,4 \minFret #4 gis b r8 \minFret #2 g~
  
  \minFret #2
  g4 d' b d8 g,~
  g4 b d b8 d
  c4 c c c
  \minFret #7
  e8 e4  e4  e8 e e
  
  \barbara
}


secondBridge = {
  \italMark  "Bride II"
  \minFret #5
  a,4 b c e
  a,4 c e c
  \minFret #0
  e, \minFret #4 b'  gis b
  \minFret #0
  e,4 gis \minFret #4 b gis 
  
  \minFret #5
  a4 e' c e
  a,4 e' c e
  \minFret #0
  e,4 gis \minFret #4 b gis 
  \minFret #0
  e4 gis \minFret #4 b gis 
  
  \barbara
}

breakup = {
  \shortSkit
  \barbara
  \italMark  "Break Up"  
  a4 r8 a4. r4
  a a r2
  a8 a r8 a4. r4
  a a r2
  
  |
  a4 r8 a4. r4
  a a r2
  d,4 r8 d4. r4
  e e r2
  |
  a4 r8 a4. r4
  a a r2
  d,4 r8 d4. r4
  \minFret #5
  e e g r8 b
  |
  a4 r8 a4. r4
  a a r2
  \minFret #3
  d,4 r8 d4. r4
  e4 b'4 e4. b8
  |
  a4 r8 a4. r4
  \minFret #5
  a4 c b8 c r c
  \minFret #3
  d4 r8 d4. r4
  e4 b4 e,4. r8
  |
  a4 r8 a4. r4
  \minFret #5
  a4 b c r8 c
  \minFret #3
  d4 r8 d4. r4
  e4 b4 e,4. r8
  |
  a4 r8 a4. r4
  a a r2
  d4 r8 d4. r4
  e e r2
  |
  a,4 r8 a4. r4
  a a r2
  \minFret #3
  d,2 d
  e4 e e e
  |
  \barbara
  
}

eSKAlation = {
  \italMark  "Eskalation"
  \minFret #4
  a4 b c e
  a g f a
  e b gis b8 e,
  b'8 b e,4 gis b8 gis
  |
  \minFret #4
  a4 b c e
  a g f g
  e d c b
  e4 d c b
  |
  
  \barbara
}

repriseBreakUp = {
  \italMark  "Reprise Break Up"
  \minFret #5
  a, c e f
  a e c e
  \minFret #3
  d,4 a' f a8 f
  e4 gis8 b b b b b
  |
  \minFret #5
  a4 e' c e8 c
  a4 e' c8 b a4
  \minFret #3
  d,4 a' f a8 f
  e4 gis8 b b b gis4
  |
  \minFret #5
  a e' f e
  a, b c d
  f c f c
  e8 e b4 e b
  |
  a b c d
  a b c d
  f c f c
  e8 e b4 e b
  |
  \barbara
}

outro = {
  \italMark  "Outro"
  \minFret #5
  a b c e
  a g f a
  e d c b
  e4 d c b
  |
  \minFret #5
  a b c e
  a g f g
  e d c b8 e
  e8 e d4 c b

}

bass = \relative c, {   
  
  \skit
  \time 4/4
  \interlude
  
  \firstVerse
  \firstBridge
  \interlude
  
  \secondVerse
  \secondBridge
  
  \breakup
  \eSKAlation
  \interlude
  
  \repriseBreakUp
  \outro
  
  \skit
%{
  \time 4/4
  \intro
  \firstVerse
  \secondVerse
  \chorusOne
  \thirdVerse
  % third verse with drums
  \chorusFinal
  \outro
 %}
}





chordsIntro = \chordmode {
  cis2:m fis |
  cis:m fis |
}

chordsOutro = \chordmode {
  \chordsIntro
  cis2:m b |
  fis2/ais  e|
  fis1


}

chordsVerse = \chordmode {
  gis2:m ais:m|
  b:6 cis:m7|
  e2 fis/e|
  dis:m7 gis4:m fis|
  cis2:m7 cis4:m cis:m7|
  fis2:sus fis|

}

chordsChorusNoTurnAround = \chordmode {
  b1/fis |
  dis/fis |
  gis2:m e|
  cis:m7 fis2:sus |
}

chordsChorusTurnAround = \chordmode {
  b1/fis |
  dis/fis |
  gis2:m e|
  cis:m7 fis4:sus fis|
}


chordsFill = \chordmode {
  fis1:sus4 |
  \time 2/4
  fis2|
}

chordsSong = {
  %{
  \chordsIntro
  \chordsVerse
  \chordsVerse
  \chordsChorusTurnAround
  \chordsChorusNoTurnAround
  \chordsFill
  \chordsVerse
  \chordsChorusTurnAround
  \chordsChorusTurnAround
  \chordsChorusNoTurnAround
  \chordsFill
  \chordsOutro
  %}
}



\score {

  <<
    \scoreSettings
    \new ChordNames {
      \chordSettings

      \chordsSong
    }

    \new Voice \with {
      %  \omit StringNumber
    } {
      \metronomeSettings
      \tempo 4 = 196
      \clef "bass_8"
      \key c \major
      \bass
    }

    \tabs #bass-five-string-tuning { \bass} 

  >>
  \layout {}
  \midi {}
}
