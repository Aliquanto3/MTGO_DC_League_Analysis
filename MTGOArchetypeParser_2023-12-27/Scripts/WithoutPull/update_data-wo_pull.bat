cd ..
cd ..

MTGOArchetypeParser.App.exe json detect format=Legacy filter=Legacy includedecklists=true outputfile=ResultData\Legacy_data.json

MTGOArchetypeParser.App.exe json detect format=Pauper filter=Pauper includedecklists=true outputfile=ResultData\Pauper_data.json 

MTGOArchetypeParser.App.exe json detect format=Modern filter=Modern includedecklists=true outputfile=ResultData\Modern_data.json

MTGOArchetypeParser.App.exe json detect format=Pioneer filter=Pioneer includedecklists=true outputfile=ResultData\Pioneer_data.json 