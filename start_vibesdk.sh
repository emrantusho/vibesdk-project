#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$HOME/.bun/bin:$PATH"
nvm use 22

cd /home/emran/vibesdk

# FIX: Check if dist folder exists, if not, build it
if [ ! -d "dist" ]; then
  echo "Dist folder missing. Building project..."
  bun run build
fi

# Run the dev server
bun x wrangler dev --local --persist-to .wrangler/state

read -p "Process finished. Press enter to close..."
