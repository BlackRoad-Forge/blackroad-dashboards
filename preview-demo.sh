#!/bin/bash

# BlackRoad OS - Preview System Demo
# Shows what the preview browser looks like

# Colors
ORANGE="\033[38;2;247;147;26m"
PINK="\033[38;2;233;30;140m"
PURPLE="\033[38;2;153;69;255m"
BLUE="\033[38;2;20;241;149m"
CYAN="\033[38;2;0;212;255m"
TEXT_PRIMARY="\033[38;2;255;255;255m"
TEXT_SECONDARY="\033[38;2;153;153;153m"
TEXT_MUTED="\033[38;2;77;77;77m"
RESET="\033[0m"
BOLD="\033[1m"

clear
echo ""
echo -e "${BOLD}${PURPLE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${PURPLE}║${RESET}  ${ORANGE}🌐${RESET} ${BOLD}Dashboard Template Browser - Demo${RESET}                               ${BOLD}${PURPLE}║${RESET}"
echo -e "${BOLD}${PURPLE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
echo ""

echo -e "${TEXT_MUTED}This is a preview of what the web-based template browser looks like:${RESET}"
echo ""

# Header mockup
echo -e "${BOLD}${ORANGE}👻 BLACKROAD OS Dashboards${RESET}"
echo -e "${TEXT_SECONDARY}Browse 117+ beautiful terminal dashboards • Click to preview${RESET}"
echo ""

# Search bar mockup
echo -e "${TEXT_MUTED}┌────────────────────────────────────────────────────────────────────┐${RESET}"
echo -e "${TEXT_MUTED}│${RESET} ${TEXT_SECONDARY}🔍 Search templates...${RESET}                                              ${TEXT_MUTED}│${RESET}"
echo -e "${TEXT_MUTED}└────────────────────────────────────────────────────────────────────┘${RESET}"
echo ""

# Filter buttons mockup
echo -e "  [${BOLD}All${RESET}]  [Core]  [Monitoring]  [AI]  [Crypto]  [Infrastructure]  [Visualization]"
echo ""

# Stats mockup
echo -e "${TEXT_MUTED}╭─ STATISTICS ────────────────────────────────────────────────╮${RESET}"
echo -e "  ${BOLD}${ORANGE}117${RESET} ${TEXT_SECONDARY}Total Templates${RESET}    ${BOLD}${PINK}117${RESET} ${TEXT_SECONDARY}Showing${RESET}    ${BOLD}${PURPLE}87${RESET} ${TEXT_SECONDARY}Interactive${RESET}"
echo -e "${TEXT_MUTED}╰─────────────────────────────────────────────────────────────╯${RESET}"
echo ""

# Template cards mockup
echo -e "${TEXT_MUTED}╭─ TEMPLATES ─────────────────────────────────────────────────────────╮${RESET}"
echo ""

# Card 1
echo -e "  ${ORANGE}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "  ${ORANGE}│${RESET} ${BOLD}👻 blackroad-dashboard${RESET}                               ${ORANGE}│${RESET}"
echo -e "  ${ORANGE}│${RESET} ${TEXT_SECONDARY}BlackRoad OS Terminal Dashboard with agent grid${RESET}      ${ORANGE}│${RESET}"
echo -e "  ${ORANGE}│${RESET} ${TEXT_MUTED}[core] [interactive]${RESET}                                    ${ORANGE}│${RESET}"
echo -e "  ${ORANGE}└──────────────────────────────────────────────────────────┘${RESET}"

# Card 2
echo -e "  ${PINK}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "  ${PINK}│${RESET} ${BOLD}📊 live-github-dashboard${RESET}                             ${PINK}│${RESET}"
echo -e "  ${PINK}│${RESET} ${TEXT_SECONDARY}Live GitHub repository stats and activity${RESET}            ${PINK}│${RESET}"
echo -e "  ${PINK}│${RESET} ${TEXT_MUTED}[monitoring] [interactive] [api]${RESET}                        ${PINK}│${RESET}"
echo -e "  ${PINK}└──────────────────────────────────────────────────────────┘${RESET}"

# Card 3
echo -e "  ${PURPLE}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "  ${PURPLE}│${RESET} ${BOLD}🤖 neural-network-viz${RESET}                                ${PURPLE}│${RESET}"
echo -e "  ${PURPLE}│${RESET} ${TEXT_SECONDARY}Visualize neural networks in ASCII art${RESET}               ${PURPLE}│${RESET}"
echo -e "  ${PURPLE}│${RESET} ${TEXT_MUTED}[ai] [visualization] [interactive]${RESET}                      ${PURPLE}│${RESET}"
echo -e "  ${PURPLE}└──────────────────────────────────────────────────────────┘${RESET}"

# Card 4
echo -e "  ${CYAN}┌──────────────────────────────────────────────────────────┐${RESET}"
echo -e "  ${CYAN}│${RESET} ${BOLD}⚛️ quantum-simulator${RESET}                                  ${CYAN}│${RESET}"
echo -e "  ${CYAN}│${RESET} ${TEXT_SECONDARY}Quantum computing simulation dashboard${RESET}               ${CYAN}│${RESET}"
echo -e "  ${CYAN}│${RESET} ${TEXT_MUTED}[scifi] [interactive]${RESET}                                   ${CYAN}│${RESET}"
echo -e "  ${CYAN}└──────────────────────────────────────────────────────────┘${RESET}"

echo ""
echo -e "${TEXT_MUTED}╰─────────────────────────────────────────────────────────────────────╯${RESET}"
echo ""

# Preview modal mockup
echo -e "${PURPLE}┌─────────────────────────────────────────────────────────────────────┐${RESET}"
echo -e "${PURPLE}│${RESET} ${BOLD}Preview: blackroad-dashboard${RESET}                                      ${PURPLE}│${RESET}"
echo -e "${PURPLE}├─────────────────────────────────────────────────────────────────────┤${RESET}"
echo -e "${PURPLE}│${RESET}                                                                     ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${RESET}   ${BOLD}${ORANGE}╔══════════════════════════════════════════════╗${RESET}              ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${RESET}   ${BOLD}${ORANGE}║${RESET} ${BOLD}${ORANGE}👻 B${PINK}L${PURPLE}A${BLUE}C${CYAN}K${ORANGE}R${PINK}O${PURPLE}A${BLUE}D${RESET} ${TEXT_SECONDARY}OS${RESET}                           ${BOLD}${ORANGE}║${RESET}              ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${RESET}   ${BOLD}${ORANGE}╚══════════════════════════════════════════════╝${RESET}              ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${RESET}   ${TEXT_SECONDARY}System Status • Agent Grid • Live Metrics${RESET}               ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${RESET}                                                                     ${PURPLE}│${RESET}"
echo -e "${PURPLE}├─────────────────────────────────────────────────────────────────────┤${RESET}"
echo -e "${PURPLE}│${RESET}  [${TEXT_SECONDARY}Close${RESET}]                                       [${BOLD}🚀 Launch Dashboard${RESET}]  ${PURPLE}│${RESET}"
echo -e "${PURPLE}└─────────────────────────────────────────────────────────────────────┘${RESET}"
echo ""

echo -e "${CYAN}✨ Features:${RESET}"
echo ""
echo -e "  ${GREEN}•${RESET} ${BOLD}Search${RESET} - Find templates by name or description"
echo -e "  ${GREEN}•${RESET} ${BOLD}Filter${RESET} - Browse by category (Core, AI, Monitoring, etc.)"
echo -e "  ${GREEN}•${RESET} ${BOLD}Preview${RESET} - Click any card to see full visual preview"
echo -e "  ${GREEN}•${RESET} ${BOLD}Launch${RESET} - One-click to run the dashboard"
echo -e "  ${GREEN}•${RESET} ${BOLD}Badges${RESET} - Quick indicators for features (Interactive, Sound, API)"
echo ""

echo -e "${ORANGE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo ""
echo -e "${TEXT_PRIMARY}To launch the actual browser:${RESET}"
echo ""
echo -e "  ${CYAN}\$${RESET} ${BOLD}./preview-browser.sh${RESET}"
echo ""
echo -e "${TEXT_SECONDARY}Or from the main launcher:${RESET}"
echo ""
echo -e "  ${CYAN}\$${RESET} ${BOLD}./launch.sh${RESET}"
echo -e "  ${TEXT_MUTED}Select option 8: Browse All Templates${RESET}"
echo ""
