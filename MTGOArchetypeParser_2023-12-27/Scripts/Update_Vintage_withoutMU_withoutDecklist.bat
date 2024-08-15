cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Vintage filter=Vintage includedecklists=false includematchups=false outputfile=ResultData\Vintage_data.json