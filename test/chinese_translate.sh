#!/usr/bin/env bash
mkdir -p ./translation

# Generate the diff with previous Isaac commit for changes since translation
t_commit=$(git log --author=Isaac | head -n 1 | awk '{print $2}')
echo -e "Generate the English diff since last Chinese commit"
# Generate the English diff
git diff $t_commit >translation/english_diff.txt

echo -e "Translating the diff to Chinese in translation/trans_diff_chinese.txt"
# Translating the diff to Chinese
cat translation/english_diff.txt | trans -brief en:zh-TW >translation/trans_diff_chinese.txt
