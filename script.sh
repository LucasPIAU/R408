#!/bin/bash

# Vérifie si un paramètre a été passé
if [ -z "$1" ]; then
  echo "Erreur : Vous devez fournir un entier en paramètre."
  exit 1
fi

# Vérifie si le paramètre est un entier
if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
  echo "Erreur : Le paramètre doit être un entier."
  exit 1
fi

# Multiplie le paramètre par 10
result=$(( $1 * 10 ))

# Affiche le résultat
echo "Le résultat est : $result"

