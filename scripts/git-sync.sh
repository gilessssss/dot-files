# Colours
GREEN='\033[0;32m'
RED='\033[0;31m'
ORANGE='\033[0;33m'
NC='\033[0m'

# Script
REPOSITORIES=~/repositories
for REPO in `ls "$REPOSITORIES/"`
do
  if [ -d "$REPOSITORIES/$REPO" ]
  then
    echo -e "${ORANGE}$REPO${NC}"
    if [ -d "$REPOSITORIES/$REPO/.git" ]
    then
      cd "$REPOSITORIES/$REPO"
      git pull --all -q
      echo -e "Pulled: ${GREEN}✓${NC}"
      
      if [ -z "$(git status --porcelain)" ]; then 
        echo -e "Pushed: ${GREEN}✓${NC}"
      else 
        echo -e "Pushed: ${RED}✗${NC}"
      fi
    fi
    echo
  fi
done
cd
