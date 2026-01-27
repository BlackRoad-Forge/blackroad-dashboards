#!/bin/bash

# Twitch Stream Stats Dashboard
# Monitor Twitch streaming statistics and chat activity

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
TWITCH='\033[38;2;145;70;255m'
NC='\033[0m'

# Box drawing
TL='╔' TR='╗' BL='╚' BR='╝'
H='═' V='║'
DIVL='╠' DIVR='╣' DIVH='═'

clear

echo -e "${TWITCH}${TL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${TR}${NC}"
echo -e "${TWITCH}${V}${WHITE}                      📺 TWITCH STREAM STATS 📺                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Stream Status
echo -e "${TWITCH}${V}${NC} ${PURPLE}▶ STREAM STATUS${NC}                                                   ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Channel:${NC}      ${CYAN}@ProGamerStreamer${NC}                                  ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Status:${NC}       ${GREEN}🔴 LIVE${NC}                                           ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Title:${NC}        ${CYAN}Speedrun World Record Attempt - Day 3${NC}           ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Game:${NC}         ${CYAN}Dark Souls III${NC}                                    ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Stream Time:${NC}  ${GREEN}2:34:18${NC}                                          ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"

echo -e "${TWITCH}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Viewer Stats
echo -e "${TWITCH}${V}${NC} ${PURPLE}▶ VIEWER STATS${NC}                                                    ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Current Viewers:${NC}  ${CYAN}3,847${NC}   ${GREEN}▲ +142${NC} ${GRAY}(last 5 min)${NC}            ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Peak Viewers:${NC}     ${CYAN}4,521${NC}   ${GRAY}@ 1:45 PM${NC}                          ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Avg Viewers:${NC}      ${CYAN}3,200${NC}                                          ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Total Views:${NC}      ${CYAN}847,392${NC} ${GRAY}(all time)${NC}                        ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Followers:${NC}        ${CYAN}42,847${NC}  ${GREEN}+327 today${NC}                        ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Viewer Trend:${NC} ${GREEN}▂▃▅▆█▇▆▅▄▃▂▃▄▅▇█${NC}                              ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"

echo -e "${TWITCH}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Chat Activity
echo -e "${TWITCH}${V}${NC} ${PURPLE}▶ CHAT ACTIVITY${NC}                                                   ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Messages/min:${NC}     ${CYAN}847${NC} ${GREEN}▲${NC}                                     ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Active Chatters:${NC}  ${CYAN}1,247${NC}                                        ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Moderators:${NC}       ${CYAN}12 active${NC}                                     ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Top Emotes:${NC} ${CYAN}Kappa${NC} ${GRAY}(247)${NC}  ${CYAN}PogChamp${NC} ${GRAY}(184)${NC}  ${CYAN}LUL${NC} ${GRAY}(156)${NC}       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"

echo -e "${TWITCH}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Subscription & Revenue
echo -e "${TWITCH}${V}${NC} ${PURPLE}▶ SUBSCRIPTIONS & REVENUE${NC}                                         ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Subscribers:${NC}     ${CYAN}2,847${NC} ${GREEN}+42 today${NC}                           ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Tier 1:${NC}          ${CYAN}2,340${NC}                                          ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Tier 2:${NC}          ${CYAN}412${NC}                                            ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Tier 3:${NC}          ${CYAN}95${NC}                                             ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Bits Today:${NC}      ${CYAN}12,847${NC} ${GRAY}(~\$128)${NC}                            ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Donations:${NC}       ${GREEN}\$247.50${NC} ${GRAY}(8 donations)${NC}                    ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"

echo -e "${TWITCH}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Stream Health
echo -e "${TWITCH}${V}${NC} ${PURPLE}▶ STREAM HEALTH${NC}                                                   ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Video Quality:${NC}   ${GREEN}1080p60${NC}   ${WHITE}Bitrate:${NC} ${GREEN}6000 kbps${NC}            ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}FPS:${NC}             ${GREEN}59.94${NC}     ${WHITE}Dropped Frames:${NC} ${GREEN}0.02%${NC}        ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Encoder:${NC}         ${CYAN}NVENC${NC}     ${WHITE}CPU Usage:${NC} ${GREEN}24%${NC}               ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}  ${WHITE}Latency:${NC}         ${GREEN}2.3s${NC}      ${WHITE}Connection:${NC} ${GREEN}Stable${NC}           ${TWITCH}${V}${NC}"
echo -e "${TWITCH}${V}${NC}                                                                       ${TWITCH}${V}${NC}"

echo -e "${TWITCH}${BL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${BR}${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}Twitch Stream Stats • twitch.tv/ProGamerStreamer${NC}\n"
