#!/usr/bin/env sh

echo "[+] Configuring git to build the website..."
git config --global --add safe.directory ${PWD}
git config user.name "${GIT_USERNAME}"
git config user.email "${GIT_USER_ID}+${GIT_USERNAME}@users.noreply.github.com"

echo "[+] Starting the mkdocs build and publishing..."
mkdocs gh-deploy --config-file ${MKDOCS_CONFIG} --force