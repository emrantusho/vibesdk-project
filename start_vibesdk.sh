#!/bin/bash
# Tell the script where Bun and the new Node are
export PATH="/usr/local/bin:$HOME/.bun/bin:$PATH"

# Go to the project folder
cd /home/emran/vibesdk

# Clear the old Vite cache to prevent conflicts
rm -rf node_modules/.vite

# We use --local to keep it off the internet and --persist-to to save data locally
bun x wrangler dev --local --persist-to .wrangler/state

# Keep the window open so we can see success/errors
read -p "Process finished. Press enter to close..."
