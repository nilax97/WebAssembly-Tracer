wget https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.11-97998-g7ecce2dac-clang-mac.tar.gz
tar -xvf pin-3.11-97998-g7ecce2dac-clang-mac.tar.gz
rm pin-3.11-97998-g7ecce2dac-clang-mac.tar.gz
mv pin-3.11-97998-g7ecce2dac-clang-mac pin-tools

cd emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
cd ..

cd wabt
git submodule update --init --recursive
make
export PATH ="$(pwd)/bin:$PATH" 
cd ..

curl https://sh.rustup.rs -o rustup-init.sh
sh rustup-init.sh
cargo --version

cd wasabi
cargo install --path .
