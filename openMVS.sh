# Prepare and empty machine for building:
cd ${HOME}/dev/

main_path=`pwd`

# Eigen (Required)
hg clone https://bitbucket.org/eigen/eigen#3.2 ${HOME}/dev/eigen
cd ${HOME}/dev/eigen
mkdir eigen_build
cd eigen_build
cmake . ../
make -j 8
sudo make install

# VCGLib (Required)
git clone https://github.com/cdcseacave/VCG.git ${HOME}/dev/vcglib

# Ceres (Required)
git clone https://ceres-solver.googlesource.com/ceres-solver ${HOME}/dev/ceres-solver
cd ${HOME}/dev/ceres-solver
mkdir ceres_build
cd ceres_build
cmake . ../ -DMINIGLOG=ON -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
find ${HOME}/dev/ceres-solver -type f -exec sed -i 's/NULL/nullptr/g' {} \;
make -j 8
sudo make install

# OpenMVS
git clone https://github.com/cdcseacave/openMVS.git ${HOME}/dev/openMVS
cd ${HOME}/dev/openMVS
mkdir openMVS_build
cd openMVS_build
cmake . ../ -DCMAKE_BUILD_TYPE=Release -DVCG_DIR=${HOME}/dev/vcglib
make -j 8
sudo make install
