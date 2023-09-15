#!/bin/bash

# Nastavte cestu k vašemu repozitáři
REPO_PATH="/config/sync_private"

cd $REPO_PATH

# Nastavíme GIT_SSH_COMMAND pro specifikaci klíče (pokud je potřeba)
# export GIT_SSH_COMMAND="ssh -i /path/to/your/private/key -o StrictHostKeyChecking=no"

# Zajistíme, že pracujeme s master větví
git checkout main

# Získáme nejnovější změny z vzdáleného repozitáře
git fetch origin

# Resetujeme lokální main větev na vzdálenou main větev
git reset --hard origin/main
