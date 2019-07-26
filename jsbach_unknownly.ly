\header {
  title = ""
  composer = "J.S. Bach"
}

global = {
  \key c \major
  \time 4/4
}

\parallelMusic #'(rightHand leftHand) {
  \tempo "Moderato" 4 = 108-120
  g4 c-. c-. c-. |
  c4 g' a b4 |
  
  c4 g8 c e c d4-. |
  g2 g,4 c |
  
  d4-. d-. d g,8 d' |
  d4 e c2 |

  f8 d e4 g4-. g-. |
  c4 g' a b4 |
  
  g8 c b a g4 <g e> |
  r1 |

  <f d>4 <e c> <e c> d4 |
  r1 |
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