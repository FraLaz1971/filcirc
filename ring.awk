#!/usr/bin/env awk
(( ($1-100)*($1-100) + ($2-100)*($2-100) - 100) < 1e-6) && ( ($1-100)*($1-100) + ($2-100)*($2-100) > 99  )   {print }
