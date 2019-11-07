# lammps-scripts
Scripts related to the Large-scale Atomic Molecular Massively Parallel Simulator

## Format
Script names should follow the general convention `purpose_software_platform` where, in this case, `software` is always 'lammps'. Please comment your code __heavily__ as a courtesy to those who are not familiar with it.

## Descriptions

### compile_lammps_hipergator.sh
Compiles a serial and mpi enabled version of LAMMPS directly from the stable git branch. This script also creates `LAMMPS_SERIAL_BIN` and `LAMMPS_MPI_BIN` environment variables which point to the locations of the serial and mpi executables respectively. Execute it in the following way.
```
# I strongly recommend installing in ~/usr/local

$ cd ~/usr/local
$ bash compile_lammps_hipergator.sh
```
