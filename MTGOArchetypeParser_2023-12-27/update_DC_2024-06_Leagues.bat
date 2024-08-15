cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Modern filter=Commander includedecklists=true includematchups=false startdate=2024-06-01 outputfile=ResultData\Duel-Commander_data.json