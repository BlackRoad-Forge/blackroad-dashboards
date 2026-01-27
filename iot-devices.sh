#!/bin/bash

# IoT Device Dashboard
# Monitor connected IoT devices with status, telemetry, and alerts

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
PINK='\033[38;2;255;121;198m'
NC='\033[0m'

# Box drawing
TL='╔' TR='╗' BL='╚' BR='╝'
H='═' V='║'
DIVL='╠' DIVR='╣' DIVH='═'

clear

echo -e "${CYAN}${TL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${TR}${NC}"
echo -e "${CYAN}${V}${WHITE}                    🏠 IoT DEVICE DASHBOARD 📡                      ${CYAN}${V}${NC}"
echo -e "${CYAN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Device Overview
echo -e "${CYAN}${V}${NC} ${PURPLE}▶ CONNECTED DEVICES${NC}                                               ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"

devices=(
    "Smart Thermostat|Living Room|Online|72°F|Low"
    "Door Sensor|Front Door|Online|Closed|Normal"
    "Motion Detector|Hallway|Online|Active|Normal"
    "Smart Bulb|Bedroom|Online|On|Low"
    "Camera|Garage|Offline|N/A|Critical"
    "Smoke Detector|Kitchen|Online|Clear|Normal"
    "Water Leak|Basement|Alert|Detected|High"
    "Smart Lock|Back Door|Online|Locked|Normal"
)

for device in "${devices[@]}"; do
    IFS='|' read -r name location status value alert <<< "$device"
    
    if [ "$status" == "Online" ]; then
        status_color=$GREEN
        status_icon="●"
    elif [ "$status" == "Offline" ]; then
        status_color=$RED
        status_icon="●"
    else
        status_color=$YELLOW
        status_icon="⚠"
    fi
    
    case "$alert" in
        Critical) alert_color=$RED ;;
        High) alert_color=$ORANGE ;;
        Normal) alert_color=$GREEN ;;
        Low) alert_color=$BLUE ;;
    esac
    
    printf "${CYAN}${V}${NC}  ${status_color}${status_icon}${NC} %-20s ${GRAY}%-12s${NC} ${WHITE}%-8s${NC} ${CYAN}%-6s${NC} ${alert_color}%-8s${NC} ${CYAN}${V}${NC}\n" \
        "$name" "$location" "$status" "$value" "$alert"
done

echo -e "${CYAN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Network Statistics
echo -e "${CYAN}${V}${NC} ${PURPLE}▶ NETWORK STATUS${NC}                                                  ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${WHITE}Gateway:${NC}        ${GREEN}192.168.1.1${NC}      ${WHITE}Signal:${NC} ${GREEN}███████${GRAY}███${NC} 70%   ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${WHITE}MQTT Broker:${NC}    ${GREEN}Connected${NC}        ${WHITE}Topics:${NC} ${CYAN}24 active${NC}     ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${WHITE}Cloud Sync:${NC}     ${GREEN}Synced${NC}           ${WHITE}Last:${NC}   ${GRAY}2 min ago${NC}    ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"

echo -e "${CYAN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Alerts & Events
echo -e "${CYAN}${V}${NC} ${PURPLE}▶ RECENT ALERTS & EVENTS${NC}                                         ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${RED}⚠${NC} ${WHITE}Water leak detected${NC} ${GRAY}in Basement${NC}          ${GRAY}2 min ago${NC}     ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${RED}⚠${NC} ${WHITE}Camera offline${NC} ${GRAY}in Garage${NC}                 ${GRAY}15 min ago${NC}    ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${GREEN}✓${NC} ${WHITE}Motion detected${NC} ${GRAY}in Hallway${NC}              ${GRAY}1 hour ago${NC}    ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${GREEN}✓${NC} ${WHITE}Door opened${NC} ${GRAY}Front Door${NC}                  ${GRAY}2 hours ago${NC}   ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${BLUE}ℹ${NC} ${WHITE}Firmware update available${NC} ${GRAY}Smart Lock${NC}    ${GRAY}3 hours ago${NC}   ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"

echo -e "${CYAN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Summary Statistics
echo -e "${CYAN}${V}${NC} ${PURPLE}▶ SUMMARY${NC}                                                         ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${WHITE}Total Devices:${NC} ${CYAN}8${NC}     ${WHITE}Online:${NC} ${GREEN}7${NC}     ${WHITE}Offline:${NC} ${RED}1${NC}     ${WHITE}Alerts:${NC} ${YELLOW}2${NC}   ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}  ${WHITE}Uptime:${NC} ${GREEN}99.8%${NC}       ${WHITE}Power Usage:${NC} ${CYAN}1.2 kW${NC}  ${WHITE}Battery Low:${NC} ${YELLOW}0${NC}  ${CYAN}${V}${NC}"
echo -e "${CYAN}${V}${NC}                                                                       ${CYAN}${V}${NC}"

echo -e "${CYAN}${BL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${BR}${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}IoT Dashboard • Home Automation System${NC}\n"
