cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Pauper filter=Pauper includedecklists=true includematchups=true outputfile=ResultData\Pauper_data.json 