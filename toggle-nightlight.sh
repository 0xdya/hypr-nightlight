#!/bin/bash

STATES=(0 3500 4200 5500)
NAMES=("إيقاف" "ليلي" "دافئ" "خفيف")
STATE_FILE="/tmp/gammastep_state"

# اقرأ الحالة الحالية
current=$(cat "$STATE_FILE" 2>/dev/null || echo "0")

# انتقل للحالة التالية
next=$(( (current + 1) % ${#STATES[@]} ))

# احفظ الحالة الجديدة
echo "$next" > "$STATE_FILE"

# طبّق
pkill gammastep 2>/dev/null
sleep 0.2

if [ "$next" -ne 0 ]; then
    gammastep -O "${STATES[$next]}" &
fi

notify-send "Gammastep" "${NAMES[$next]} — ${STATES[$next]}K"
