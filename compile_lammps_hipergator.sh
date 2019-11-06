#!/bin/bash

# save the current directory
start_dir="$(pwd)"

# clone the lammps repo from source
git clone -b stable https://github.com/lammps/lammps.git
cd lammps
git pull
cd src

# update the package
make purge
make package-update

# this is the compile chain as of November 5, 2019
module load intel/2016.0.109
module load impi/5.1.1

# compile serial and mpi enabled versions
make serial
make mpi

# export the location of the executables to an environment variable
echo "export LAMMPS_SERIAL_BIN=$start_dir/lammps/src/lmp_serial" >> ~/.bashrc
echo "export LAMMPS_MPI_BIN=$start_dir/lammps/src/lmp_mpi" >> ~/.bashrc

# source the bashrc to make changes take effect in current session
source ~/.bashrc
