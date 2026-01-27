#!/bin/bash

# Raspberry Pi System Monitor
# Monitor Raspberry Pi hardware: CPU, RAM, temperature, GPIO, storage

# Colors
RED='\033[38;2;255;68;68m'
GREEN='\033[38;2;80;250;123m'
YELLOW='\033[38;2;241;250;140m'
BLUE='\033[38;2;139;233;253m'
MAGENTA='\033[38;2;255;121;198m'
CYAN='\033[38;2;139;233;253m'
WHITE='\033[38;2;248;248;242m'
GRAY='\033[38;2;98;114;164m'
ORANGE='\033[38;2;255;184;108m'
PURPLE='\033[38;2;189;147;249m'
NC='\033[0m'

# Box drawing
TL='╔' TR='╗' BL='╚' BR='╝'
H='═' V='║'
DIVL='╠' DIVR='╣' DIVH='═'

clear

echo -e "${MAGENTA}${TL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${TR}${NC}"
echo -e "${MAGENTA}${V}${WHITE}                  🍓 RASPBERRY PI MONITOR 🍓                         ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# System Info
echo -e "${MAGENTA}${V}${NC} ${PURPLE}▶ SYSTEM INFO${NC}                                                     ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Model:${NC}      ${CYAN}Raspberry Pi 4 Model B${NC}                            ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}CPU:${NC}        ${CYAN}ARM Cortex-A72 @ 1.5GHz${NC} ${GRAY}(4 cores)${NC}                ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}RAM:${NC}        ${CYAN}4 GB LPDDR4${NC}                                        ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}OS:${NC}         ${CYAN}Raspberry Pi OS (64-bit)${NC}                          ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Kernel:${NC}     ${CYAN}6.1.21-v8+${NC}                                         ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Uptime:${NC}     ${GREEN}15 days, 4:32:18${NC}                                 ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"

echo -e "${MAGENTA}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# CPU & Temperature
echo -e "${MAGENTA}${V}${NC} ${PURPLE}▶ CPU PERFORMANCE${NC}                                                 ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Core 0:${NC} ${GREEN}██████${GRAY}████${NC} 58%   ${WHITE}1.35 GHz${NC}   ${WHITE}Temp:${NC} ${GREEN}48°C${NC}        ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Core 1:${NC} ${GREEN}████${GRAY}██████${NC} 42%   ${WHITE}1.28 GHz${NC}   ${WHITE}Temp:${NC} ${GREEN}47°C${NC}        ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Core 2:${NC} ${YELLOW}███████${GRAY}███${NC} 68%   ${WHITE}1.42 GHz${NC}   ${WHITE}Temp:${NC} ${YELLOW}52°C${NC}        ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Core 3:${NC} ${GREEN}█████${GRAY}█████${NC} 51%   ${WHITE}1.31 GHz${NC}   ${WHITE}Temp:${NC} ${GREEN}49°C${NC}        ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Avg Load:${NC} ${GREEN}54.8%${NC}   ${WHITE}SoC Temp:${NC} ${GREEN}50°C${NC}   ${WHITE}Throttled:${NC} ${GREEN}No${NC}      ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"

echo -e "${MAGENTA}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Memory
echo -e "${MAGENTA}${V}${NC} ${PURPLE}▶ MEMORY${NC}                                                          ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}RAM:${NC}    ${GREEN}██████${GRAY}████████████${NC} 2.4 GB / 4.0 GB ${GRAY}(60%)${NC}       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Swap:${NC}   ${GREEN}██${GRAY}██████████████${NC} 128 MB / 1.0 GB ${GRAY}(12%)${NC}       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"

echo -e "${MAGENTA}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Storage
echo -e "${MAGENTA}${V}${NC} ${PURPLE}▶ STORAGE${NC}                                                         ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}SD Card:${NC}  ${GREEN}████████${GRAY}████${NC} 95 GB / 128 GB ${GRAY}(74%)${NC}          ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Type:${NC}     ${CYAN}SanDisk Extreme 128GB A2${NC}                          ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Speed:${NC}    ${CYAN}Read: 160 MB/s${NC} ${GRAY}|${NC} ${CYAN}Write: 90 MB/s${NC}                 ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"

echo -e "${MAGENTA}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Network & GPIO
echo -e "${MAGENTA}${V}${NC} ${PURPLE}▶ NETWORK & GPIO${NC}                                                  ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}Ethernet:${NC} ${GREEN}Connected${NC}  ${WHITE}Speed:${NC} ${CYAN}1000 Mbps${NC}                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}WiFi:${NC}     ${GREEN}Connected${NC}  ${WHITE}Signal:${NC} ${GREEN}██████${GRAY}████${NC} -42 dBm          ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}IP:${NC}       ${CYAN}192.168.1.42${NC}                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}  ${WHITE}GPIO Pins:${NC} ${CYAN}3 Active${NC} ${GRAY}(BCM 17, 27, 22)${NC}  ${WHITE}I2C:${NC} ${GREEN}Enabled${NC}      ${MAGENTA}${V}${NC}"
echo -e "${MAGENTA}${V}${NC}                                                                       ${MAGENTA}${V}${NC}"

echo -e "${MAGENTA}${BL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${BR}${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}Raspberry Pi Monitor • Hardware Dashboard${NC}\n"
