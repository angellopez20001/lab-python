#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno13/lab4
#SBATCH -J Apartado3.3
#SBATCH --output=%u-python-pi.out

#Cargamos el modulo y lo descargamos y entre ellos ponemos las ordenes necesarias con ese modulo
module load anaconda/2025.06

echo Ejecutando el notebook
time(
ipython pi-solution-alumno13.ipynb 
)
module unload anaconda/2025.06
