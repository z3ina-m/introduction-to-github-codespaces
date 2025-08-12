#!/usr/bin/env bash
echo "---- python --version ----"
python --version || python3 --version
echo
echo "---- run hello_world.py ----"
python hello_world.py || python3 hello_world.py
echo
echo "---- recent git commits ----"
git log -n 5 --oneline
