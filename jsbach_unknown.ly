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
  d4 g-. g-. g-. |
  d4 g a b4 |
  
  g4 d8 g b g a4-. |
  g2 g,4 c |
  
  a4-. a-. a d,8 a' |
  d4 e c2 |

  c8 a b4 d-. d-. |
  d4 g a b4~ |

  d8 g fis e d4 <d b> |
  b8 r8 r2 g4 |

  <c a>4 <b g> <b g> a|
  c, cis d4 d,2 |
}

\score {
  \new PianoStaff <<
    \new Staff {
      \global
      <<
        \relative c' \rightHand
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