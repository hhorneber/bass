%% shortcuts
%%
barbara = \bar "||"

% define a shortcut to have easier italic marks
italMark =
#(define-music-function
  (parser location text)
  (string?)
  #{
    \mark \markup{ \tiny \italic #text }
  #})

% Macro to print single slash
rightSlash = {
  \once \override Rest.stencil = #ly:percent-repeat-item-interface::beat-slash
  \once \override Rest.thickness = #0.48
  \once \override Rest.slope = #1.7
  r4
}

% Function to print a specified number of slashes
comp = #(define-music-function (parser location count) (integer?)
  #{
    \override Rest.stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest.thickness = #0.48
    \override Rest.slope = #1.7
    \repeat unfold $count { r4 }
    \revert Rest.stencil
  #}
)