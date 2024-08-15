cd ..
cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Legacy filter=Vintage includedecklists=true includematchups=false outputfile=ResultData\Vintage_data.json 