cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Pioneer filter=Limited includedecklists=false includematchups=false outputfile=ResultData\Limited_data.json