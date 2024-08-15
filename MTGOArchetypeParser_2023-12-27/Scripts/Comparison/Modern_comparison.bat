cd ..
cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json compare format=Modern referenceformat=Modern-Old filter=Modern outputfile=ResultData\Modern_Compare.json
