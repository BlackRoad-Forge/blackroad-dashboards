#!/bin/bash

# Calendar Dashboard
# Display calendar with events, meetings, and reminders

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

echo -e "${BLUE}${TL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${TR}${NC}"
echo -e "${BLUE}${V}${WHITE}                      📅 CALENDAR DASHBOARD 📅                        ${BLUE}${V}${NC}"
echo -e "${BLUE}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Current Date Header
current_date=$(date '+%B %d, %Y')
current_day=$(date '+%A')
echo -e "${BLUE}${V}${NC} ${CYAN}${current_day}, ${current_date}${NC}                              ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"

echo -e "${BLUE}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Calendar
echo -e "${BLUE}${V}${NC} ${PURPLE}▶ DECEMBER 2026${NC}                                                   ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   ${WHITE}Sun   Mon   Tue   Wed   Thu   Fri   Sat${NC}                          ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   ${GRAY}30${NC}     1     2     3     4     5     6                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    7     8     9    10    11    12    13                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   14   ${CYAN}[15]${NC}   16    17    18    19    20                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   21    22    23   ${YELLOW}24${NC}   ${RED}25${NC}    26    27                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   28    29    30    31   ${GRAY}1     2     3${NC}                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}   ${CYAN}[15]${NC} Today   ${YELLOW}24${NC} Event   ${RED}25${NC} Holiday                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"

echo -e "${BLUE}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Today's Events
echo -e "${BLUE}${V}${NC} ${PURPLE}▶ TODAY'S SCHEDULE${NC}                                                ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${GREEN}●${NC} ${WHITE}09:00 AM${NC}  ${CYAN}Team Standup${NC}                      ${GRAY}30 min${NC}       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${GREEN}●${NC} ${WHITE}10:30 AM${NC}  ${CYAN}Code Review Session${NC}               ${GRAY}1 hour${NC}       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${YELLOW}◐${NC} ${WHITE}02:00 PM${NC}  ${CYAN}Client Demo${NC}                       ${GRAY}45 min${NC}       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${GRAY}○${NC} ${WHITE}04:00 PM${NC}  ${CYAN}Sprint Planning${NC}                    ${GRAY}2 hours${NC}      ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"

echo -e "${BLUE}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Upcoming Events
echo -e "${BLUE}${V}${NC} ${PURPLE}▶ UPCOMING EVENTS${NC}                                                 ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${CYAN}Tomorrow${NC} ${GRAY}Dec 16${NC}                                                ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${WHITE}11:00 AM${NC}  ${CYAN}Product Launch Meeting${NC}                             ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${WHITE}03:00 PM${NC}  ${CYAN}1-on-1 with Manager${NC}                                ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${CYAN}This Week${NC}                                                          ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${GRAY}Dec 17${NC}  ${CYAN}Doctor Appointment${NC} ${GRAY}(Personal)${NC}                      ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${GRAY}Dec 18${NC}  ${CYAN}Team Building Event${NC}                                  ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${GRAY}Dec 19${NC}  ${CYAN}Quarterly Review${NC}                                     ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${YELLOW}Next Week${NC}                                                         ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${GRAY}Dec 24${NC}  ${YELLOW}Holiday Party${NC}                                        ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}    ${GRAY}Dec 25${NC}  ${RED}Christmas Day${NC} ${GRAY}(Holiday)${NC}                             ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"

echo -e "${BLUE}${DIVL}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVH}${DIVR}${NC}"

# Reminders
echo -e "${BLUE}${V}${NC} ${PURPLE}▶ REMINDERS${NC}                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${YELLOW}!${NC} ${WHITE}Submit expense report${NC} ${GRAY}(Due tomorrow)${NC}                      ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${YELLOW}!${NC} ${WHITE}Review Q4 goals${NC} ${GRAY}(Due Friday)${NC}                             ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}  ${GREEN}✓${NC} ${GRAY}Send weekly report${NC} ${GRAY}(Completed)${NC}                            ${BLUE}${V}${NC}"
echo -e "${BLUE}${V}${NC}                                                                       ${BLUE}${V}${NC}"

echo -e "${BLUE}${BL}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${H}${BR}${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}Calendar Dashboard • Stay organized!${NC}\n"
