#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno13/lab4
#SBATCH -J Apartado3.3
#SBATCH --output=%u-python.out

#Cargamos el modulo y lo descargamos y entre ellos ponemos las ordenes necesarias con ese modulo
module load anaconda/2025.06

echo Ejecutando el notebook con $1 elementos
time(
ipython reduc-operation-alumno13.ipynb $1
)
echo Ejecutando el notebook con $2 elementos
time(
ipython reduc-operation-alumno13.ipynb $2
)
module unload anaconda/2025.06 
