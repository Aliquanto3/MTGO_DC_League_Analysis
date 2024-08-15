cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Legacy filter=Legacy includedecklists=true includematchups=false outputfile=ResultData\Legacy_data.json

MTGOArchetypeParser.App.exe json detect format=Pauper filter=Pauper includedecklists=true includematchups=false outputfile=ResultData\Pauper_data.json 

MTGOArchetypeParser.App.exe json detect format=Modern filter=Modern includedecklists=true includematchups=false outputfile=ResultData\Modern_data.json

MTGOArchetypeParser.App.exe json detect format=Pioneer filter=Pioneer includedecklists=true includematchups=false outputfile=ResultData\Pioneer_data.json 

MTGOArchetypeParser.App.exe json detect format=Vintage filter=Vintage includedecklists=true includematchups=false outputfile=ResultData\Vintage_data.json 

MTGOArchetypeParser.App.exe json detect format=Standard filter=Standard includedecklists=true includematchups=false outputfile=ResultData\Standard_data.json 