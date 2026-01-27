#!/bin/bash

# Game Server Monitor
# Monitor game server performance, players, and resources

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

echo -e "${GREEN}${TL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${TR}${NC}"
echo -e "${GREEN}${V}${WHITE}                     🎮 GAME SERVER MONITOR 🎮                        ${GREEN}${V}${NC}"
echo -e "${GREEN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Server Status
echo -e "${GREEN}${V}${NC} ${PURPLE}▶ SERVER STATUS${NC}                                                   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Game:${NC}         ${CYAN}Minecraft Java Edition 1.20.4${NC}                   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Server:${NC}       ${CYAN}Paper MC${NC} ${GREEN}●${NC} ${GREEN}Online${NC}                            ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Version:${NC}      ${CYAN}Paper-495${NC}                                        ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Uptime:${NC}       ${GREEN}3 days, 14:22:38${NC}                               ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}TPS:${NC}          ${GREEN}19.8${NC} ${GRAY}(20 is perfect)${NC}                        ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

echo -e "${GREEN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Players Online
echo -e "${GREEN}${V}${NC} ${PURPLE}▶ PLAYERS ONLINE${NC} ${CYAN}(24 / 50)${NC}                                     ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

players=(
    "Steve|Overworld|Mining|45 min"
    "Creeper_Hunter|Nether|Exploring|1.2 hrs"
    "BlockMaster99|Overworld|Building|2.8 hrs"
    "RedstoneWiz|Overworld|Redstone|38 min"
    "DiamondSeeker|Caves|Mining|1.5 hrs"
    "EnderDragonSlayer|End|Fighting|12 min"
)

for player in "${players[@]}"; do
    IFS='|' read -r name dimension activity time <<< "$player"
    
    case "$dimension" in
        Overworld) dim_color=$GREEN ;;
        Nether) dim_color=$RED ;;
        End) dim_color=$PURPLE ;;
        Caves) dim_color=$YELLOW ;;
    esac
    
    printf "${GREEN}${V}${NC}  ${GREEN}●${NC} %-20s ${dim_color}%-12s${NC} ${GRAY}%-12s${NC} ${CYAN}%s${NC}\n" \
        "$name" "$dimension" "$activity" "$time" | head -c 76
    echo -e " ${GREEN}${V}${NC}"
done

echo -e "${GREEN}${V}${NC}  ${GRAY}... and 18 more players${NC}                                         ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

echo -e "${GREEN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Performance Metrics
echo -e "${GREEN}${V}${NC} ${PURPLE}▶ PERFORMANCE${NC}                                                     ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}CPU:${NC}      ${GREEN}███████${GRAY}███${NC} 68%      ${WHITE}Memory:${NC} ${YELLOW}████████${GRAY}██${NC} 12.8/16 GB  ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Chunks:${NC}   ${CYAN}3,847 loaded${NC}       ${WHITE}Entities:${NC} ${CYAN}1,245${NC}                ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Network:${NC}  ${CYAN}↓ 2.4 MB/s${NC}  ${CYAN}↑ 1.8 MB/s${NC}                             ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

echo -e "${GREEN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# World Stats
echo -e "${GREEN}${V}${NC} ${PURPLE}▶ WORLD STATS${NC}                                                     ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}World Size:${NC}   ${CYAN}4.2 GB${NC}          ${WHITE}Spawn Point:${NC} ${CYAN}0, 64, 0${NC}       ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Seed:${NC}         ${CYAN}-2847583748291047${NC}                              ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Game Mode:${NC}    ${CYAN}Survival${NC}        ${WHITE}Difficulty:${NC} ${ORANGE}Hard${NC}           ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${WHITE}Weather:${NC}      ${BLUE}Clear${NC}           ${WHITE}Time:${NC} ${YELLOW}Day 847${NC} ${GRAY}(14:32)${NC}  ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

echo -e "${GREEN}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Recent Events
echo -e "${GREEN}${V}${NC} ${PURPLE}▶ RECENT EVENTS${NC}                                                   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${GREEN}→${NC} ${WHITE}Steve${NC} joined the game                          ${GRAY}2 min ago${NC}    ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${CYAN}✦${NC} ${WHITE}DiamondSeeker${NC} found ${CYAN}Diamonds${NC}!              ${GRAY}5 min ago${NC}    ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${RED}☠${NC} ${WHITE}EnderDragonSlayer${NC} was slain                  ${GRAY}12 min ago${NC}   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${YELLOW}⚡${NC} ${WHITE}BlockMaster99${NC} made advancement            ${GRAY}18 min ago${NC}   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}  ${BLUE}📦${NC} ${WHITE}RedstoneWiz${NC} completed build                ${GRAY}22 min ago${NC}   ${GREEN}${V}${NC}"
echo -e "${GREEN}${V}${NC}                                                                       ${GREEN}${V}${NC}"

echo -e "${GREEN}${BL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${BR}${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}Game Server Monitor • minecraft.example.com:25565${NC}\n"
