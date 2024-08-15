cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Legacy filter=Legacy includedecklists=true includematchups=true outputfile=ResultData\Legacy_data.json