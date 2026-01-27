#!/bin/bash

# Matrix Rain Dashboard
# Animated Matrix-style falling characters with system stats

# Colors
GREEN='\033[38;2;0;255;0m'
DARK_GREEN='\033[38;2;0;128;0m'
BRIGHT_GREEN='\033[38;2;128;255;128m'
WHITE='\033[38;2;255;255;255m'
BLACK='\033[38;2;0;0;0m'
NC='\033[0m'

# Generate random matrix character
matrix_char() {
    chars=('0' '1' 'ア' 'イ' 'ウ' 'エ' 'オ' 'カ' 'キ' 'ク' 'ケ' 'コ' 'サ' 'シ' 'ス' 'セ' 'ソ' 'タ' 'チ' 'ツ' 'テ' 'ト' 'ナ' 'ニ' 'ヌ' 'ネ' 'ノ')
    echo "${chars[$((RANDOM % ${#chars[@]}))]}"
}

clear
echo -e "${GREEN}"

# Static header
cat << 'EOF'
╔════════════════════════════════════════════════════════════════════════╗
║                     ▓▓▓ MATRIX RAIN DASHBOARD ▓▓▓                     ║
╠════════════════════════════════════════════════════════════════════════╣
EOF

# Animated matrix rain effect (5 rows)
for row in {1..5}; do
    echo -n "║ "
    for col in {1..68}; do
        brightness=$((RANDOM % 3))
        char=$(matrix_char)
        case $brightness in
            0) echo -n -e "${DARK_GREEN}${char}${NC}" ;;
            1) echo -n -e "${GREEN}${char}${NC}" ;;
            2) echo -n -e "${BRIGHT_GREEN}${char}${NC}" ;;
        esac
    done
    echo " ║"
done

cat << 'EOF'
╠════════════════════════════════════════════════════════════════════════╣
║                          SYSTEM STATISTICS                             ║
╠════════════════════════════════════════════════════════════════════════╣
EOF

# System stats in matrix theme
echo -e "║  ${BRIGHT_GREEN}► CPU LOAD:${NC}    ${GREEN}[▓▓▓▓▓▓▓░░░]${NC} 68%   ${BRIGHT_GREEN}► MEMORY:${NC} ${GREEN}[▓▓▓▓▓░░░░░]${NC} 52%    ║"
echo -e "║  ${BRIGHT_GREEN}► PROCESSES:${NC}  ${GREEN}247 running${NC}          ${BRIGHT_GREEN}► UPTIME:${NC} ${GREEN}14d 7h 23m${NC}        ║"
echo -e "║  ${BRIGHT_GREEN}► NETWORK:${NC}    ${GREEN}↓ 12.4 MB/s${NC}          ${GREEN}↑ 3.8 MB/s${NC}                ║"
echo -e "║  ${BRIGHT_GREEN}► DISK I/O:${NC}   ${GREEN}R: 145 MB/s${NC}          ${GREEN}W: 78 MB/s${NC}                ║"

cat << 'EOF'
╠════════════════════════════════════════════════════════════════════════╣
║                         ACTIVE CONNECTIONS                             ║
╠════════════════════════════════════════════════════════════════════════╣
EOF

# Connection matrix
connections=(
    "192.168.1.100:8080 → 10.0.0.5:443   [ENCRYPTED]"
    "192.168.1.101:5432 → 10.0.0.8:5432  [DATABASE]"
    "192.168.1.102:3000 → 10.0.0.9:80    [HTTP    ]"
    "192.168.1.103:6379 → 10.0.0.7:6379  [REDIS   ]"
)

for conn in "${connections[@]}"; do
    echo -e "║  ${GREEN}●${NC} ${DARK_GREEN}${conn}${NC}  ║"
done

cat << 'EOF'
╠════════════════════════════════════════════════════════════════════════╣
║                           SYSTEM MESSAGES                              ║
╠════════════════════════════════════════════════════════════════════════╣
EOF

# Matrix-style system messages
echo -e "║  ${BRIGHT_GREEN}[+]${NC} ${GREEN}Connection established to mainframe...${NC}                       ║"
echo -e "║  ${BRIGHT_GREEN}[+]${NC} ${GREEN}Decrypting data stream... 98% complete${NC}                       ║"
echo -e "║  ${BRIGHT_GREEN}[!]${NC} ${GREEN}Anomaly detected in sector 7G${NC}                               ║"
echo -e "║  ${BRIGHT_GREEN}[+]${NC} ${GREEN}Neural network synchronization: ACTIVE${NC}                       ║"

cat << 'EOF'
╚════════════════════════════════════════════════════════════════════════╝
EOF

echo -e "\n${DARK_GREEN}Wake up, Neo... The Matrix has you...${NC}"
echo -e "${DARK_GREEN}Follow the white rabbit. 🐰${NC}\n"
