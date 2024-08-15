cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Standard filter=Standard includedecklists=true includematchups=true outputfile=ResultData\Standard_data.json