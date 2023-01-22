#!/bin/bash
python -c "import sqlite3; conn = sqlite3.connect('/app/src/blog.db'); conn.close()"
tail -f /dev/null