# https://adventofcode.com/2024/day/1

&fras "data/AOC24_01.txt"
⊜□≠@\n.          # split string at newlines
∩⋕⍚(⊃(↙5)(↙5↘8)) # extract first and second numbers
# two vectors with the numbers are on stack now
Data ←

Part₁ ← /+⌵-∩⍆
Part₂ ← /+×⟜(≡/+⊞=)

⊃Part₂ Part₁ Data
