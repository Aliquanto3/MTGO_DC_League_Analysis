cd ..
cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Pioneer filter=Pioneer includedecklists=true outputfile=ResultData\Pioneer_data.json 