#!/bin/bash

# Nastavte cestu k vašemu repozitáři
REPO_PATH="/config"

cd $REPO_PATH

# Zajistíme, že pracujeme s master větví
git checkout master

# Získáme nejnovější změny z vzdáleného repozitáře
git fetch origin

# Resetujeme lokální master větev na vzdálenou master větev
git reset --hard origin/master

# Odešleme všechny lokální změny (pokud existují) na vzdálený repozitář
git push origin master
