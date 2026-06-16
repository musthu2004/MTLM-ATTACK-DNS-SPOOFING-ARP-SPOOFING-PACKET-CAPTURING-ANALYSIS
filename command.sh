packet capturing

Capture only HTTP port 
Sudo tshark –i wlan0 –f “tcp port 80”

display only DNS packets 
sudo tshark -i wlan0 -Y dns

Display only HTTP packets 
sudo tshark -i wlan0 -Y http

Tcpdump

tcpdump capturing 
sudo tcpdump -D

and displays 50 packetscaptures
sudo tcpdump -i wlan0 -c 50 -Y

Filtering commands
Host filtering:
sudo tcpdump  host tesla.com  
