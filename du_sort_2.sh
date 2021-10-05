#!/bin/bash

du

Gesamtspeicher=$(du -s)

echo "Der totale Speicherbedarf betraegt: $Gesamtspeicher"