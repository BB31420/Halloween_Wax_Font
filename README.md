### https://www.intel.com/content/www/us/en/content-details/791610/optimizing-and-running-llama2-on-intel-cpu.html
### https://github.com/google/tcmalloc

For this project use the flux comfyui option to queue 35 images gens for each prompt, 35 images for every letter in the alphabet. Let it run depending on HW and then select the best output for each letter. Clean the letter up in GIMP. Convert to SVG. Upload SVG to tinkercad to create an STL file. Scale each image proportionally so that you don't have a giant V and a small E, make them the same size at this point. You can fit the whole alphabet in one .stl file and then split this file up in a 3d slicer. Export them back to SVG to replace your unscaled versions. Various programs can create fonts for your personal devices this way. Producing numbers and symbols is a similar endeavor. 

Don't waste time manually changing the prompts for each letter, use the gift of one liners after creating the first prompt for the letter A. Feel free to edit the prompts as you see fit for each letter.

```for letter in {B..Z}; do sed "s/A/$letter/g" letter_A_prompt.txt > "output_$letter.txt"; done```

Convert from png to svg. Automate this as you see fit

```convert /home/user/Desktop/halloweenb_project/C.png -auto-level pnm:- | potrace -s -o /home/user/Desktop/halloween_project/output/C.svg```

This should hit the whole directory after replacing user and halloween_project with your info. Make a folder called output for the finished svgs:
```
for file in {A..Z}.png; do
    convert "/home/user/Desktop/halloween_project/$file" -auto-level pnm:- | \
    potrace -s -o "/home/user/Desktop/halloween_project/output/${file%.*}.svg"
done
```

# Instructions
**
Are currently scattered throughout the folders
**
# Tips
You can open all 26 images at once in GIMP and work on the editing one by one, overite the original image. you can rename them at this point to save time. This whole process can be one shot with some work, "make a cat alphabet" up to the point of the 3d printer starts up to output the end product.
```
Select the white background with magic wand
selection < invert selection
selection < sharpen
new layer + select it
bucket tool white paint
hide OG layer
export as letterA.png 
```
