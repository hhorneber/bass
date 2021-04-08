\version "2.19.82"

%\include "includes/tabs_engraved.ily"
\include "includes/no_tabs_engraved.ily"
\include "includes/settings.ily"
\include "includes/shortcuts.ily"

\header {
  title = "Spoiler Alert"
  subtitle = "Version 0.1"
  composer = "Henrik Horneber @ Wisecräcker"
   
  
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}



%score starts

introAndVerse = \chordmode {
 
  c1 |
  c |
  e:7/b |
  e:7/b |
  
  \italMark  "Intro / Strophe"
  a:m |
  a:m/g |
  d:7/fis |
  d:7/fis |
  
  f |
  as |
  c |
  c2 g \barbara
}

interlude = \chordmode {
  
  f1 |
  f:m |
  c |
  c2 c:7|
  
  \italMark  "Interlude / Pre-Chorus / in Alex' Welt der Chorus?"
  f1 |
  f:m |
  c |
  c2:7 g:m|
  
  f1 |
  as |
  c2 e:7/b|
  a1:7|
  
  f |
  g |
  c |
  c2 g 
  \barbara
  
}


chordsSong = {
  \introAndVerse \break
  \interlude
}



\score {

  <<
    \scoreSettings
    
    \new ChordNames 
     {        
      \chordsSong      
     }  
     
     \new Voice  {
      \metronomeSettings
      \tempo 4 = 208
      
      
      \relative c' {
         % intro + verse
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          % interlude
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
          
          \comp #4 |
          \comp #4 |
          \comp #4 |
          \comp #4 |
      }
    }
       
  >>
  \layout {}
  \midi {}
}
