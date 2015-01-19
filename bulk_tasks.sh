# Rename file from flac.mp3 to .mp3
find . -name '*flac.mp3' | while read f; do mv "$f" "${f//flac.mp3/mp3}"; done

# Delete files ending with .flac
find . -name '*.flac' -exec rm  "{}" \;
find . -name '*.flac' | while read f; do rm "$f" ; done
