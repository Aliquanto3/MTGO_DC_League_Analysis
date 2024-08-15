cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json compare format=Modern referenceformat=Modern2 filter=Modern includedecklists=true includematchups=true outputfile=ResultData\Modern_data2.json