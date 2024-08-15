cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Modern filter=Modern includedecklists=true includematchups=true startdate=2023-06-01 outputfile=ResultData\Modern_data.json