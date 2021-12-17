
#TableF ← {
#  𝕨=𝕩?'*';' '
#}
# refactored to =◶" *" 

#even seq generator ⟨ 0 1 0 ⟩
EvenS ←{(2⊸|)¨ ↕𝕩}
#odd seq generator ⟨ 1 0 1 ⟩
OddS ← 1 - {(2⊸|)¨ ↕𝕩}

•Show "Seq of 3"
#•Show 0‿1‿0 =◶" *"⌜ 0‿1‿0
#•Show 0‿1‿0 =◶" *"⌜ 1‿0‿1
•Show (EvenS =◶" *"⌜ EvenS) 3
•Show (OddS =◶" *"⌜ EvenS) 3

•Show "Seq of 5"
#•Show 1‿0‿1‿0‿1 =◶" *"⌜ 1‿0‿1‿0‿1
#•Show 0‿1‿0‿1‿0 =◶" *"⌜ 1‿0‿1‿0‿1
•Show (EvenS =◶" *"⌜ EvenS) 5
•Show (OddS =◶" *"⌜ EvenS) 5


•Show (EvenS =◶" *"⌜ EvenS) 9
•Show (EvenS =◶" *"⌜ EvenS) 11


###
## Separate qns: 
# how to refactor this: returns all _odd_ number cols (even indexes)
#(2|¨1+↕9)/↕9  # how to bring out the 𝕩
#⟨ 0 2 4 6 8 ⟩

# Fork
#{2|¨1+↕𝕩}/↕ 9

# 2-Train
({2|¨1+𝕩}⊸/) ↕9

# Using Atop
# {2|¨1+𝕩}
#1 (2⊸|¨∘+) ↕9
#(2⊸|¨∘+⟜1) ⊸/ ↕9

# refactored.. no 𝕩 input 
# but got 4 combinators.. not readable
2⊸|¨∘+⟜1⊸/ ↕9


