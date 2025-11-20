# Unset all proxy variables
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY no_proxy NO_PROXY
# WIFI_IP=172.22.138.45 
WIFI_IP=$(ip route show dev wlp3s0 | grep default | awk '{print $3}')

# Проверка: если IP не найден (например, нет Wi-Fi), сообщить об ошибке
if [ -z "$WIFI_IP" ]; then
    echo "Ошибка: Не удалось определить IP шлюза на интерфейсе wlp3s0"
    exit 1
fi

echo "Proxy IP detected: $WIFI_IP"

# 3. Устанавливаем прокси
export http_proxy=http://$WIFI_IP:7890
export https_proxy=http://$WIFI_IP:7890
export HTTP_PROXY=http://$WIFI_IP:7890
export HTTPS_PROXY=http://$WIFI_IP:7890
# Run your command
# NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic develop --impure
NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic run path:. --impure -- --disable-gpu --no-sandbox


# Unset all proxy variables
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY no_proxy NO_PROXY
# WIFI_IP=172.22.138.45 
WIFI_IP=$(ip route show dev wlp3s0 | grep default | awk '{print $3}')

# Проверка: если IP не найден (например, нет Wi-Fi), сообщить об ошибке
if [ -z "$WIFI_IP" ]; then
    echo "Ошибка: Не удалось определить IP шлюза на интерфейсе wlp3s0"
    exit 1
fi

echo "Proxy IP detected: $WIFI_IP"

# 3. Устанавливаем прокси
export http_proxy=http://$WIFI_IP:7890
export https_proxy=http://$WIFI_IP:7890
export HTTP_PROXY=http://$WIFI_IP:7890
export HTTPS_PROXY=http://$WIFI_IP:7890
# Run your command
# NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic develop --impure
NIXPKGS_ALLOW_UNFREE=1 ~/nixstatic run .#chromium --impure -- --disable-gpu --no-sandbox