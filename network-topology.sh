#!/bin/bash

# BlackRoad OS - Network Topology Visualizer
# Visualize network structure, connections, and traffic flow

source ~/blackroad-dashboards/themes.sh 2>/dev/null || true

# Colors
ORANGE="\033[38;2;247;147;26m"
PINK="\033[38;2;233;30;140m"
PURPLE="\033[38;2;153;69;255m"
BLUE="\033[38;2;20;241;149m"
CYAN="\033[38;2;0;212;255m"
GREEN="\033[38;2;20;241;149m"
RED="\033[38;2;255;0;107m"
TEXT_PRIMARY="\033[38;2;255;255;255m"
TEXT_SECONDARY="\033[38;2;153;153;153m"
TEXT_MUTED="\033[38;2;77;77;77m"
RESET="\033[0m"
BOLD="\033[1m"

show_dashboard() {
    clear
    echo ""
    echo -e "${BOLD}${CYAN}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${PURPLE}🌐${RESET} ${BOLD}NETWORK TOPOLOGY${RESET}                                                 ${BOLD}${CYAN}║${RESET}"
    echo -e "${BOLD}${CYAN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Network Overview
    echo -e "${TEXT_MUTED}╭─ NETWORK OVERVIEW ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Nodes:${RESET}        ${BOLD}${CYAN}47${RESET}                 ${TEXT_SECONDARY}active devices${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Connections:${RESET}        ${BOLD}${ORANGE}234${RESET}                ${TEXT_SECONDARY}active links${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Traffic:${RESET}      ${BOLD}${PURPLE}847 Mbps${RESET}           ${TEXT_SECONDARY}current throughput${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Health:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}Healthy${RESET}           ${TEXT_SECONDARY}All systems operational${RESET}"
    echo ""

    # Network Topology Map
    echo -e "${TEXT_MUTED}╭─ TOPOLOGY MAP ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "                         ${ORANGE}[Internet]${RESET}"
    echo -e "                              ${TEXT_MUTED}│${RESET}"
    echo -e "                         ${ORANGE}[Firewall]${RESET}"
    echo -e "                              ${TEXT_MUTED}│${RESET}"
    echo -e "                    ${CYAN}┌─────┴─────┐${RESET}"
    echo -e "                    ${TEXT_MUTED}│${RESET}           ${TEXT_MUTED}│${RESET}"
    echo -e "              ${PINK}[Router-1]${RESET}   ${PURPLE}[Router-2]${RESET}"
    echo -e "                ${TEXT_MUTED}│${RESET}     ${TEXT_MUTED}│${RESET}     ${TEXT_MUTED}│${RESET}     ${TEXT_MUTED}│${RESET}"
    echo -e "         ${GREEN}[SW-1]${RESET} ${BLUE}[SW-2]${RESET} ${CYAN}[SW-3]${RESET} ${ORANGE}[SW-4]${RESET}"
    echo -e "           ${TEXT_MUTED}│ │${RESET}    ${TEXT_MUTED}│ │${RESET}    ${TEXT_MUTED}│ │${RESET}    ${TEXT_MUTED}│ │${RESET}"
    echo -e "          ${TEXT_MUTED}│   │${RESET}  ${TEXT_MUTED}│   │${RESET}  ${TEXT_MUTED}│   │${RESET}  ${TEXT_MUTED}│   │${RESET}"
    echo -e "         ${GREEN}●${RESET}   ${GREEN}●${RESET}  ${BLUE}●${RESET}   ${BLUE}●${RESET}  ${CYAN}●${RESET}   ${CYAN}●${RESET}  ${ORANGE}●${RESET}   ${ORANGE}●${RESET}   ${TEXT_MUTED}Servers/Hosts${RESET}"
    echo ""

    # Node Status
    echo -e "${TEXT_MUTED}╭─ NODE STATUS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Node${RESET}            ${CYAN}Type${RESET}       ${ORANGE}Status${RESET}      ${PINK}Traffic${RESET}     ${PURPLE}Uptime${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Firewall${RESET}       ${CYAN}Security${RESET}   ${GREEN}✓ Active${RESET}   ${PINK}847 Mbps${RESET}   ${PURPLE}47d 12h${RESET}"
    echo -e "  ${BOLD}Router-1${RESET}       ${CYAN}Core${RESET}       ${GREEN}✓ Active${RESET}   ${PINK}423 Mbps${RESET}   ${PURPLE}47d 12h${RESET}"
    echo -e "  ${BOLD}Router-2${RESET}       ${CYAN}Core${RESET}       ${GREEN}✓ Active${RESET}   ${PINK}424 Mbps${RESET}   ${PURPLE}47d 12h${RESET}"
    echo -e "  ${BOLD}SW-1${RESET}           ${CYAN}Access${RESET}     ${GREEN}✓ Active${RESET}   ${PINK}234 Mbps${RESET}   ${PURPLE}47d 12h${RESET}"
    echo -e "  ${BOLD}SW-2${RESET}           ${CYAN}Access${RESET}     ${GREEN}✓ Active${RESET}   ${PINK}189 Mbps${RESET}   ${PURPLE}47d 12h${RESET}"
    echo ""

    # Traffic Flow
    echo -e "${TEXT_MUTED}╭─ TRAFFIC FLOW ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Path${RESET}                              ${CYAN}Bandwidth${RESET}    ${ORANGE}Latency${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Internet → Firewall${RESET}              ${CYAN}847 Mbps${RESET}    ${ORANGE}2.3 ms${RESET}"
    echo -e "  ${BOLD}Firewall → Router-1${RESET}              ${CYAN}423 Mbps${RESET}    ${ORANGE}0.8 ms${RESET}"
    echo -e "  ${BOLD}Firewall → Router-2${RESET}              ${CYAN}424 Mbps${RESET}    ${ORANGE}0.7 ms${RESET}"
    echo -e "  ${BOLD}Router-1 → SW-1${RESET}                  ${CYAN}234 Mbps${RESET}    ${ORANGE}0.4 ms${RESET}"
    echo -e "  ${BOLD}Router-1 → SW-2${RESET}                  ${CYAN}189 Mbps${RESET}    ${ORANGE}0.5 ms${RESET}"
    echo ""

    # Bandwidth Usage
    echo -e "${TEXT_MUTED}╭─ BANDWIDTH USAGE ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Internet Link (1 Gbps)${RESET}"
    echo -e "  ${CYAN}█████████████████████████████████${TEXT_MUTED}███████${RESET}  ${BOLD}84.7%${RESET}"
    echo ""
    echo -e "  ${BOLD}Router-1 Backplane${RESET}"
    echo -e "  ${ORANGE}██████████████████${TEXT_MUTED}██████████████████████${RESET}  ${BOLD}42.3%${RESET}"
    echo ""
    echo -e "  ${BOLD}Router-2 Backplane${RESET}"
    echo -e "  ${PINK}██████████████████${TEXT_MUTED}██████████████████████${RESET}  ${BOLD}42.4%${RESET}"
    echo ""

    # Top Talkers
    echo -e "${TEXT_MUTED}╭─ TOP TALKERS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Host${RESET}                ${CYAN}Traffic Out${RESET}    ${ORANGE}Traffic In${RESET}    ${PINK}Sessions${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}10.0.1.47${RESET}          ${CYAN}234 Mbps${RESET}      ${ORANGE}189 Mbps${RESET}      ${PINK}2,847${RESET}"
    echo -e "  ${BOLD}10.0.1.89${RESET}          ${CYAN}189 Mbps${RESET}      ${ORANGE}156 Mbps${RESET}      ${PINK}1,923${RESET}"
    echo -e "  ${BOLD}10.0.2.23${RESET}          ${CYAN}147 Mbps${RESET}      ${ORANGE}123 Mbps${RESET}      ${PINK}1,456${RESET}"
    echo -e "  ${BOLD}10.0.3.12${RESET}          ${CYAN}123 Mbps${RESET}      ${ORANGE}89 Mbps${RESET}       ${PINK}987${RESET}"
    echo ""

    # Protocol Distribution
    echo -e "${TEXT_MUTED}╭─ PROTOCOL DISTRIBUTION ───────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}HTTPS${RESET}       ${CYAN}████████████████████████${RESET}          547 Mbps  ${TEXT_MUTED}64.6%${RESET}"
    echo -e "  ${BOLD}HTTP${RESET}        ${ORANGE}████████${RESET}                          156 Mbps  ${TEXT_MUTED}18.4%${RESET}"
    echo -e "  ${BOLD}SSH${RESET}         ${PINK}█████${RESET}                             89 Mbps   ${TEXT_MUTED}10.5%${RESET}"
    echo -e "  ${BOLD}DNS${RESET}         ${PURPLE}██${RESET}                                34 Mbps   ${TEXT_MUTED}4.0%${RESET}"
    echo -e "  ${BOLD}Other${RESET}       ${BLUE}█${RESET}                                 21 Mbps   ${TEXT_MUTED}2.5%${RESET}"
    echo ""

    # Network Segments
    echo -e "${TEXT_MUTED}╭─ NETWORK SEGMENTS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}DMZ${RESET}             Hosts: ${CYAN}12${RESET}   Traffic: ${ORANGE}234 Mbps${RESET}   ${GREEN}✓ Secure${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}Internal${RESET}        Hosts: ${CYAN}23${RESET}   Traffic: ${ORANGE}423 Mbps${RESET}   ${GREEN}✓ Healthy${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}Management${RESET}      Hosts: ${CYAN}8${RESET}    Traffic: ${ORANGE}47 Mbps${RESET}    ${GREEN}✓ Isolated${RESET}"
    echo -e "  ${ORANGE}●${RESET} ${BOLD}Guest${RESET}           Hosts: ${CYAN}4${RESET}    Traffic: ${ORANGE}143 Mbps${RESET}   ${GREEN}✓ Limited${RESET}"
    echo ""

    # Connection Matrix
    echo -e "${TEXT_MUTED}╭─ CONNECTION MATRIX ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}From/To${RESET}        ${CYAN}DMZ${RESET}    ${ORANGE}Internal${RESET}   ${PINK}Mgmt${RESET}   ${PURPLE}Guest${RESET}"
    echo -e "  ${TEXT_MUTED}────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}DMZ${RESET}           ${GREEN}✓${RESET}      ${GREEN}✓${RESET}          ${RED}✗${RESET}      ${RED}✗${RESET}"
    echo -e "  ${BOLD}Internal${RESET}      ${GREEN}✓${RESET}      ${GREEN}✓${RESET}          ${GREEN}✓${RESET}      ${RED}✗${RESET}"
    echo -e "  ${BOLD}Mgmt${RESET}          ${GREEN}✓${RESET}      ${GREEN}✓${RESET}          ${GREEN}✓${RESET}      ${GREEN}✓${RESET}"
    echo -e "  ${BOLD}Guest${RESET}         ${RED}✗${RESET}      ${RED}✗${RESET}          ${RED}✗${RESET}      ${GREEN}✓${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ NETWORK ALERTS ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${TEXT_SECONDARY}All systems operational${RESET}"
    echo -e "  ${CYAN}ℹ${RESET} ${TEXT_SECONDARY}High bandwidth usage on Internet link (84.7%)${RESET}"
    echo ""

    # Footer
    echo -e "${CYAN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Nodes: ${RESET}${BOLD}47 active${RESET}  ${TEXT_SECONDARY}|  Links: ${RESET}${BOLD}234 up${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 3
    done
else
    show_dashboard
fi
