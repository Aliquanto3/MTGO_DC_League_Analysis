cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Modern includedecklists=false includematchups=false outputfile=ResultData\All_Formats_data.json
