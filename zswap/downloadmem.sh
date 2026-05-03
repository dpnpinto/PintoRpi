# Check current parameters
sudo grep -r . /sys/module/zswap/parameters/
# enbale the service to personalizae zswap
sudo cp zswap-config.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable zswap-config.service
# Check stats
sudo grep -r . /sys/kernel/debug/zswap/
