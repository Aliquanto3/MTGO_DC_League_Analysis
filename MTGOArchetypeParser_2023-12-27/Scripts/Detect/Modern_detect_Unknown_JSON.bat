cd ..
cd ..

cd MTGODecklistCache
git pull
cd ..

cd MTGOFormatData
git pull
cd ..

MTGOArchetypeParser.App.exe json detect format=Modern filter=Modern Archetype=Unknown outputfile=ResultData\Modern_Unknown.json

pause