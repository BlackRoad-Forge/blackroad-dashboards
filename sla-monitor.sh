#!/bin/bash

# BlackRoad OS - SLA Monitor
# Track service level agreements, uptime, and performance targets

source ~/blackroad-dashboards/themes.sh 2>/dev/null || true

# Colors
ORANGE="\033[38;2;247;147;26m"
PINK="\033[38;2;233;30;140m"
PURPLE="\033[38;2;153;69;255m"
BLUE="\033[38;2;20;241;149m"
CYAN="\033[38;2;0;212;255m"
GREEN="\033[38;2;20;241;149m"
RED="\033[38;2;255;0;107m"
YELLOW="\033[38;2;255;193;7m"
TEXT_PRIMARY="\033[38;2;255;255;255m"
TEXT_SECONDARY="\033[38;2;153;153;153m"
TEXT_MUTED="\033[38;2;77;77;77m"
RESET="\033[0m"
BOLD="\033[1m"

show_dashboard() {
    clear
    echo ""
    echo -e "${BOLD}${GREEN}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${GREEN}║${RESET}  ${BLUE}📊${RESET} ${BOLD}SLA MONITOR${RESET}                                                      ${BOLD}${GREEN}║${RESET}"
    echo -e "${BOLD}${GREEN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Overall SLA Status
    echo -e "${TEXT_MUTED}╭─ OVERALL SLA STATUS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Current Period:${RESET}     ${BOLD}${CYAN}April 2026${RESET}         ${TEXT_MUTED}30 days${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}SLA Compliance:${RESET}     ${BOLD}${GREEN}98.7%${RESET}              ${GREEN}✓ Above target${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Target:${RESET}             ${BOLD}${ORANGE}99.9%${RESET}              ${TEXT_MUTED}(99.0% minimum)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Budget Remaining:${RESET}   ${BOLD}${PURPLE}2h 10m${RESET}             ${TEXT_MUTED}downtime allowed${RESET}"
    echo ""

    # Service Uptime
    echo -e "${TEXT_MUTED}╭─ SERVICE UPTIME ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Service${RESET}             ${CYAN}Uptime${RESET}     ${ORANGE}Target${RESET}     ${PINK}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}API Gateway${RESET}        ${CYAN}99.97%${RESET}    ${ORANGE}99.9%${RESET}     ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}Web App${RESET}            ${CYAN}99.94%${RESET}    ${ORANGE}99.9%${RESET}     ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}Database${RESET}           ${CYAN}99.99%${RESET}    ${ORANGE}99.95%${RESET}    ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}Auth Service${RESET}       ${CYAN}99.87%${RESET}    ${ORANGE}99.9%${RESET}     ${YELLOW}⚠ Warning${RESET}"
    echo -e "  ${BOLD}Cache${RESET}              ${CYAN}99.96%${RESET}    ${ORANGE}99.5%${RESET}     ${GREEN}✓ Pass${RESET}"
    echo ""

    # Uptime Visualization
    echo -e "${TEXT_MUTED}╭─ UPTIME TREND (30 DAYS) ──────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  100%  ${GREEN}████████████████████████████████████████${RESET}"
    echo -e "  99.9% ${GREEN}████████████████████████████████████████${RESET}  ${BOLD}Target${RESET}"
    echo -e "  99.5% ${CYAN}████████████████████████████████████████${RESET}"
    echo -e "  99.0% ${TEXT_MUTED}────────────────────────────────────────${RESET}  ${TEXT_MUTED}Minimum${RESET}"
    echo ""

    # Incident Summary
    echo -e "${TEXT_MUTED}╭─ INCIDENT SUMMARY ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Incidents:${RESET}    ${BOLD}${CYAN}8${RESET}                  ${TEXT_SECONDARY}this month${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Critical:${RESET}           ${BOLD}${RED}1${RESET}                  ${TEXT_SECONDARY}(47 min downtime)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Major:${RESET}              ${BOLD}${ORANGE}2${RESET}                  ${TEXT_SECONDARY}(23 min downtime)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Minor:${RESET}              ${BOLD}${YELLOW}5${RESET}                  ${TEXT_SECONDARY}(8 min downtime)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Downtime:${RESET}     ${BOLD}${PURPLE}1h 18m${RESET}             ${TEXT_SECONDARY}(98.2% uptime)${RESET}"
    echo ""

    # Performance Metrics
    echo -e "${TEXT_MUTED}╭─ PERFORMANCE METRICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Metric${RESET}              ${CYAN}Current${RESET}    ${ORANGE}Target${RESET}     ${PINK}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Response Time${RESET}      ${CYAN}234 ms${RESET}    ${ORANGE}< 500 ms${RESET}  ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}Error Rate${RESET}         ${CYAN}0.03%${RESET}     ${ORANGE}< 0.1%${RESET}    ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}Throughput${RESET}         ${CYAN}8,473/s${RESET}   ${ORANGE}> 5,000/s${RESET} ${GREEN}✓ Pass${RESET}"
    echo -e "  ${BOLD}P95 Latency${RESET}        ${CYAN}847 ms${RESET}    ${ORANGE}< 1000 ms${RESET} ${GREEN}✓ Pass${RESET}"
    echo ""

    # Recent Incidents
    echo -e "${TEXT_MUTED}╭─ RECENT INCIDENTS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}●${RESET} ${BOLD}Database Connection Pool Exhausted${RESET}"
    echo -e "     ${TEXT_SECONDARY}Severity: Critical • Duration: 47m • Impact: 100%${RESET}"
    echo -e "     ${TEXT_MUTED}Apr 15, 2026 14:23 - 15:10 UTC${RESET}"
    echo ""
    echo -e "  ${ORANGE}●${RESET} ${BOLD}API Gateway High Latency${RESET}"
    echo -e "     ${TEXT_SECONDARY}Severity: Major • Duration: 18m • Impact: 30%${RESET}"
    echo -e "     ${TEXT_MUTED}Apr 12, 2026 09:15 - 09:33 UTC${RESET}"
    echo ""
    echo -e "  ${YELLOW}●${RESET} ${BOLD}Cache Cluster Degraded Performance${RESET}"
    echo -e "     ${TEXT_SECONDARY}Severity: Minor • Duration: 5m • Impact: 10%${RESET}"
    echo -e "     ${TEXT_MUTED}Apr 08, 2026 22:47 - 22:52 UTC${RESET}"
    echo ""

    # SLA Credits
    echo -e "${TEXT_MUTED}╭─ SLA CREDITS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Credits Issued:${RESET}     ${BOLD}${RED}\$8,470${RESET}             ${TEXT_SECONDARY}this month${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Affected Customers:${RESET} ${BOLD}${ORANGE}234${RESET}                ${TEXT_SECONDARY}received credits${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Credit:${RESET}         ${BOLD}${PURPLE}\$36.20${RESET}             ${TEXT_SECONDARY}per customer${RESET}"
    echo ""

    # Availability by Hour
    echo -e "${TEXT_MUTED}╭─ AVAILABILITY BY HOUR (24H) ──────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}████████████████████${RED}█${GREEN}███████████████████${RESET}  ${BOLD}99.6%${RESET}"
    echo -e "  ${TEXT_MUTED}00:00              14:00              23:59${RESET}"
    echo -e "                      ${RED}↑${RESET} ${TEXT_MUTED}Incident: 14:23-15:10${RESET}"
    echo ""

    # MTTR & MTBF
    echo -e "${TEXT_MUTED}╭─ RELIABILITY METRICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}MTTR:${RESET}               ${BOLD}${CYAN}23 minutes${RESET}         ${TEXT_SECONDARY}Mean Time To Repair${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}MTBF:${RESET}               ${BOLD}${ORANGE}12.4 days${RESET}          ${TEXT_SECONDARY}Mean Time Between Failures${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Incidents/Month:${RESET}    ${BOLD}${PURPLE}8${RESET}                  ${GREEN}↓ 33%${RESET} vs last month"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Impact:${RESET}         ${BOLD}${PINK}37%${RESET}                ${TEXT_SECONDARY}of users affected${RESET}"
    echo ""

    # Monthly Comparison
    echo -e "${TEXT_MUTED}╭─ MONTHLY COMPARISON ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Month${RESET}       ${CYAN}Uptime${RESET}     ${ORANGE}Incidents${RESET}    ${PINK}Credits${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}January${RESET}    ${CYAN}99.93%${RESET}    ${ORANGE}5${RESET}            ${PINK}\$4,200${RESET}"
    echo -e "  ${BOLD}February${RESET}   ${CYAN}99.91%${RESET}    ${ORANGE}7${RESET}            ${PINK}\$5,800${RESET}"
    echo -e "  ${BOLD}March${RESET}      ${CYAN}99.96%${RESET}    ${ORANGE}3${RESET}            ${PINK}\$2,100${RESET}"
    echo -e "  ${BOLD}April${RESET}      ${CYAN}99.87%${RESET}    ${ORANGE}8${RESET}            ${PINK}\$8,470${RESET}  ${TEXT_MUTED}(current)${RESET}"
    echo ""

    # Customer Impact
    echo -e "${TEXT_MUTED}╭─ CUSTOMER IMPACT ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Customers:${RESET}    ${BOLD}${CYAN}2,847${RESET}              ${TEXT_SECONDARY}active accounts${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Affected:${RESET}           ${BOLD}${ORANGE}847${RESET}                ${TEXT_SECONDARY}(29.7%)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Complaints:${RESET}         ${BOLD}${RED}23${RESET}                 ${TEXT_SECONDARY}filed this month${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}NPS Impact:${RESET}         ${BOLD}${PURPLE}-2.4${RESET}               ${TEXT_SECONDARY}points${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALERTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}  Auth Service below target (99.87% vs 99.9%)"
    echo -e "  ${CYAN}ℹ${RESET}  ${BOLD}INFO${RESET}     Approaching monthly downtime budget (1h 18m used)"
    echo ""

    # Footer
    echo -e "${GREEN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Period: ${RESET}${BOLD}Apr 2026${RESET}  ${TEXT_SECONDARY}|  Target: ${RESET}${BOLD}99.9%${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 5
    done
else
    show_dashboard
fi
