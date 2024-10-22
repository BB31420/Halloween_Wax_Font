for letter in {B..Z}; do sed "s/A/$letter/g" input.txt > "output_$letter.txt"; done
