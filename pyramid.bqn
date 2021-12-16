# if input is 1 => "*"
# if input is 2 => "* "; 3 => "* *"..

#PySeg ← {
#  (2|𝕩)⊑"* "
#}

#⊑⟜"* "¨ 2|↕3

#FPySeg ← {
#  ⊑⟜"* "¨ 2|↕1 -˜ 2×1+𝕩
#}
#
#•Show ≍˘FPySeg¨↕3

# after refactor, where right arg 3 is input
# ≍˘⊑⟜"* "⚇0 2|↕¨2-⟜1∘×1+↕3

Pyramid ← {
  flatSeg ← ⊑⟜"* "⚇0 2|↕¨2-⟜1∘×1+↕𝕩 
  frontSpan ← ∾⟜" " ⍟(⌽↕𝕩) ⟨⟩
  ≍˘ frontSpan ∾¨ flatSeg
}

•Show Pyramid 5
•Show Pyramid 10


