#!/bin/bash

# Task Board Dashboard
# Kanban-style task management dashboard

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

clear

echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${WHITE}                          📋 TASK BOARD DASHBOARD 📋                          ${CYAN}║${NC}"
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════════════╣${NC}"
echo -e "${CYAN}║${NC} ${GRAY}Sprint 23${NC} │ ${WHITE}Team: Engineering${NC} │ ${CYAN}Dec 15-29${NC} │ ${GREEN}6 days left${NC}           ${CYAN}║${NC}"
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════════════╣${NC}"

# Kanban columns
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}  ${PURPLE}┌──── TODO (8) ────┐${NC}  ${BLUE}┌─ IN PROGRESS (5) ┐${NC}  ${GREEN}┌─── DONE (12) ────┐${NC}  ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}  ${PURPLE}│${NC}                  ${PURPLE}│${NC}  ${BLUE}│${NC}                   ${BLUE}│${NC}  ${GREEN}│${NC}                  ${GREEN}│${NC}  ${CYAN}║${NC}"

# TODO Column
todo_tasks=(
    "Fix login bug|P1|2h"
    "Update docs|P3|1h"
    "Code review|P2|1.5h"
)

# IN PROGRESS Column
progress_tasks=(
    "API integration|P1|4h"
    "UI refactor|P2|3h"
)

# DONE Column  
done_tasks=(
    "Database schema|P1|✓"
    "Unit tests|P2|✓"
)

# Print tasks side by side
for i in {0..2}; do
    # TODO
    if [ $i -lt ${#todo_tasks[@]} ]; then
        IFS='|' read -r title priority time <<< "${todo_tasks[$i]}"
        case "$priority" in
            P1) p_color=$RED ;;
            P2) p_color=$ORANGE ;;
            P3) p_color=$YELLOW ;;
        esac
        printf "${CYAN}║${NC}  ${PURPLE}│${NC} ${p_color}●${NC} %-14s ${PURPLE}│${NC}  " "$title"
    else
        printf "${CYAN}║${NC}  ${PURPLE}│${NC}                  ${PURPLE}│${NC}  "
    fi
    
    # IN PROGRESS
    if [ $i -lt ${#progress_tasks[@]} ]; then
        IFS='|' read -r title priority time <<< "${progress_tasks[$i]}"
        case "$priority" in
            P1) p_color=$RED ;;
            P2) p_color=$ORANGE ;;
            P3) p_color=$YELLOW ;;
        esac
        printf "${BLUE}│${NC} ${p_color}●${NC} %-16s ${BLUE}│${NC}  " "$title"
    else
        printf "${BLUE}│${NC}                   ${BLUE}│${NC}  "
    fi
    
    # DONE
    if [ $i -lt ${#done_tasks[@]} ]; then
        IFS='|' read -r title priority status <<< "${done_tasks[$i]}"
        printf "${GREEN}│${NC} ${GREEN}✓${NC} %-14s ${GREEN}│${NC}  " "$title"
    else
        printf "${GREEN}│${NC}                  ${GREEN}│${NC}  "
    fi
    
    echo -e "${CYAN}║${NC}"
done

# Bottom of columns
echo -e "${CYAN}║${NC}  ${PURPLE}│${NC} ${GRAY}+ Add task...${NC}    ${PURPLE}│${NC}  ${BLUE}│${NC} ${GRAY}Working on...${NC}    ${BLUE}│${NC}  ${GREEN}│${NC} ${GRAY}Completed!${NC}     ${GREEN}│${NC}  ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}  ${PURPLE}└──────────────────┘${NC}  ${BLUE}└───────────────────┘${NC}  ${GREEN}└──────────────────┘${NC}  ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"

echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════════════╣${NC}"

# Team Members
echo -e "${CYAN}║${NC} ${PURPLE}▶ TEAM MEMBERS${NC}                                                            ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${GREEN}●${NC} Alice ${GRAY}(Frontend)${NC}    ${BLUE}Working${NC}  ${GRAY}2 tasks${NC}      ${WHITE}Last: 5 min ago${NC}      ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${GREEN}●${NC} Bob ${GRAY}(Backend)${NC}      ${BLUE}Working${NC}  ${GRAY}3 tasks${NC}      ${WHITE}Last: 12 min ago${NC}     ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${YELLOW}◐${NC} Charlie ${GRAY}(DevOps)${NC}   ${YELLOW}Away${NC}     ${GRAY}0 tasks${NC}      ${WHITE}Last: 2 hours ago${NC}    ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${GREEN}●${NC} Diana ${GRAY}(QA)${NC}         ${BLUE}Working${NC}  ${GRAY}1 task${NC}       ${WHITE}Last: 1 min ago${NC}      ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"

echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════════════╣${NC}"

# Sprint Progress
echo -e "${CYAN}║${NC} ${PURPLE}▶ SPRINT PROGRESS${NC}                                                         ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${WHITE}Velocity:${NC}        ${GREEN}████████${GRAY}██${NC} ${CYAN}32 / 40 points${NC} ${GRAY}(80%)${NC}                ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${WHITE}Tasks:${NC}           ${GREEN}████████${GRAY}██${NC} ${CYAN}12 / 25 complete${NC} ${GRAY}(48%)${NC}              ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${WHITE}Burndown:${NC}        ${GREEN}On track${NC} ${GRAY}▼${NC} ${CYAN}18.5 hrs remaining${NC}                     ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${WHITE}Blockers:${NC}        ${RED}2 issues${NC} ${GRAY}(API dependency, Code review)${NC}           ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"

echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════════════╣${NC}"

# Recent Activity
echo -e "${CYAN}║${NC} ${PURPLE}▶ RECENT ACTIVITY${NC}                                                         ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${GREEN}✓${NC} ${WHITE}Alice${NC} completed ${GRAY}'Database schema'${NC}                 ${GRAY}5 min ago${NC}     ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${BLUE}→${NC} ${WHITE}Bob${NC} moved ${GRAY}'API integration'${NC} to ${BLUE}In Progress${NC}        ${GRAY}12 min ago${NC}    ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${YELLOW}!${NC} ${WHITE}Diana${NC} flagged blocker on ${GRAY}'Fix login bug'${NC}      ${GRAY}25 min ago${NC}    ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}   ${GREEN}✓${NC} ${WHITE}Alice${NC} completed ${GRAY}'Unit tests'${NC}                     ${GRAY}1 hour ago${NC}    ${CYAN}║${NC}"
echo -e "${CYAN}║${NC}                                                                               ${CYAN}║${NC}"

echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"

echo -e "\n${GRAY}Last updated: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${GRAY}Task Board Dashboard • Agile Project Management${NC}\n"
