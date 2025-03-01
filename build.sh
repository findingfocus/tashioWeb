#!/bin/bash
rm -f tashio.love # Remove previous love executable
zip -9 -r tashio.love . #Zip new love executable
echo "Created tashio.love"
mv tashio.love /Users/findingfocus/love.js/ # Move love executable into love.js repository
echo "Moved tashio.love to love.js"
cd /Users/findingfocus/love.js/ # Change into love.js repo
echo "Running love.js"
rm -r tashio # Delete old web deployment
printf "\n" | love.js tashio.love tashio -c # Run and create new web build
echo "Tashio folder created in love.js"
mv tashio.love tashio # Copy love executable into web build folder for love.js 
echo "Moved tashio.love to tashio folder"
cd tashio # Change directory into web deployment
# Copy all needed files into web deployment folder ready for SFTP upload 
mv tashio.love /Users/findingfocus/git/tashio.dev/
mv game.data /Users/findingfocus/git/tashio.dev/
mv game.js /Users/findingfocus/git/tashio.dev/
mv love.js /Users/findingfocus/git/tashio.dev/
mv love.wasm /Users/findingfocus/git/tashio.dev/
echo "Game files are ready for deployment!"
