#!/bin/bash
echo "Escaneando archivo limpio..."
ls
clamscan  /sample_file.txt
echo ""

echo "Escaneando archivo con virus de prueba (EICAR)..."
clamscan /virus.txt

echo ""
