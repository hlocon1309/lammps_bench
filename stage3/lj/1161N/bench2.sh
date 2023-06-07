#!/bin/sh
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -p normal
#SBATCH --nodelist=cn-[016]
#SBATCH --gpus=2
#SBATCH -A proj_1371
#SBATCH --constraint=type_a

module load openmpi/4.1.4
module load CUDA/11.7
module load lammps/2022jun23_update1

srun --mpi=pmix_v2 lmp -i in.lj -sf gpu -pk gpu 2
