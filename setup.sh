#Missing firmware for amdgpu
sudo apt install git -y
sudo apt update && sudo apt upgrade -y
cd /tmp && git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/firmware/linux-firmware.git
sudo cp /tmp/linux-firmware/amdgpu/* /lib/firmware/amdgpu && sudo update-initramfs -k all -u -v
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libx11-dev libatlas-base-dev
sudo apt-get install libgtk-3-dev libboost-python-dev
sudo apt install apt-transport-https curl gnupg -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY |sudo apt-key add -
sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo snap install fast
sudo snap install code --classic
sudo snap install go --classic
sudo snap instal julia --classic
#the following commands do install rust system tools which come handy
cargo install du-dust #disk usage analyser
cargo install ddh #duplicate file finder
cargo install fd-find #find in unix rewritten in rust with many features
cargo install nomino #renamer
cargo install skim #fuzzy finder
cargo install lsd #replacement for ls with colours
cargo install goto #A simple and user-friendly way to jump to your indexed directories.
cargo install ytop # htop like in rust
cargo install ox #text editor

