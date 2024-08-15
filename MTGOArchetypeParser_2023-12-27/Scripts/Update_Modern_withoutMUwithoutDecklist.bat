cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Modern filter=Modern includedecklists=false includematchups=false outputfile=ResultData\Modern_data.json