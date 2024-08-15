cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Pioneer filter=Standard includedecklists=false includematchups=false outputfile=ResultData\Standard_data.json