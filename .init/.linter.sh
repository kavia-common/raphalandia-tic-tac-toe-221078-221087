#!/bin/bash
cd /home/kavia/workspace/code-generation/raphalandia-tic-tac-toe-221078-221087/tic_tac_toe_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
 if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

