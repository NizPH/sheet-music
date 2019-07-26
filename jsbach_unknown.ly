\header {
  title = ""
  composer = "J.S. Bach"
}

global = {
  \key c \major
  \time 4/4
}

\parallelMusic #'(rightHand leftHand) {
  g4 c-. c-. c-. |
  r4 c g' a |
  
  c4 g8 c e c d4-. |
  b4 a r g, |
  
  d4-. d-. d g,8 d' |
  c2 c |

  f8 d e4 g4-. g-. |
  c2 c |
  
  g4-. g8 c b a c4 |
  c2 c |

  <c a>4 <b g> <a f> <g e> |
  c2 c |

  f4 r2 r4
  c2 c |
}

\score {
  \new PianoStaff <<
    \new Staff {
      \global
      <<
        \transpose g d {
          \relative c'' \rightHand
       }
      >>
    }
    \new Staff {
      \global \clef bass
      <<
        \relative c \leftHand
      >>
    }
  >>

  \layout {}
  \midi {}
}