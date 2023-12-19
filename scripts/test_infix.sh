#!/bin/sh -e

BASEDIR=$(realpath "$(dirname "$0")")
ROOTDIR=$(realpath "$BASEDIR/..")
TESTDIR=$(realpath "$ROOTDIR/test/infix")
CALCULATOR=$(realpath "$ROOTDIR/build/src/calculator")
CHECKER="$BASEDIR/checker.py"
CORRECT="correct"
INCORRECT="incorrect"

echo "\033[96mTest infix incorrect tests\033[0m"
python3 "$CHECKER" "$CALCULATOR" "${TESTDIR}/${INCORRECT}"

echo "\033[96mTest infix correct tests\033[0m"
python3 "$CHECKER" "$CALCULATOR" "${TESTDIR}/${CORRECT}"
