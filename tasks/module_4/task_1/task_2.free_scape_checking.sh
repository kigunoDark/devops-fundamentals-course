
THRESHOLD=${1:-10}

while true; do
    FREE_SPACE=$(df -h / | awk '{print $4}' | tail -n 1 | sed 's/G//')

    if (( $(echo "$FREE_SPACE < $THRESHOLD" | bc -l) )); then
        echo "Warning: Free disk space is below ${THRESHOLD}GB"
    fi

    sleep 300
done