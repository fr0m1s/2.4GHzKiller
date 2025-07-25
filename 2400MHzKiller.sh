while true; do
  if sudo iw wlan0 link | grep -q "Connected"; then
    CURRENT_CHANNEL=$(sudo iw wlan0 info | grep "channel" | awk '{print $2}')
    echo "current wifi channel: $CURRENT_CHANNEL"
    if [ "$CURRENT_CHANNEL" -lt 25 ]; then 
      echo "restarting wifi bcs of connection to 2.4"
      sudo svc wifi disable && sudo svc wifi enable
    fi
  else
    echo "no wireless connection"
  fi
  sleep 6
done