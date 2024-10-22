https://www.intel.com/content/www/us/en/content-details/791610/optimizing-and-running-llama2-on-intel-cpu.html
https://github.com/google/tcmalloc


Don't waste time manually changing the prompts for each letter, use the gift of one liners

for letter in {B..Z}; do sed "s/A/$letter/g" input.txt > "output_$letter.txt"; done

Convert from png to svg. Automate this as you see fit

convert /home/user/Desktop/halloweenb_project/C.png -auto-level pnm:- | potrace -s -o /home/user/Desktop/halloween_project/output/C.svg


for file in [A-Z].png; do convert "/home/user/Desktop/halloweenb_project/$file" -auto-level pnm:- | potrace -s -o "/home/user/Desktop/halloween_project/output/${file%.*}.svg"; done
