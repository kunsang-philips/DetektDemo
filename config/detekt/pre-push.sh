#!/usr/bin/env bash
echo "Deteking Issues in commits, please wait..."
OUTPUT="/tmp/detekt-$(date +%s)"
cd Code || exit
./gradlew detekt  -PskipShared > "$OUTPUT"
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
  cat "$OUTPUT"
  rm "$OUTPUT"
  echo -e "\n"
  echo "***********************************************"
  echo "        Detekt Quality-Gate Failed             "
  echo " Please fix the above issues before committing "
  echo "***********************************************"
  echo -e "\n"
  exit $EXIT_CODE
else
    echo "Detekt Quality-Gate Passed, good to push"
    exit 0
fi
rm "$OUTPUT"