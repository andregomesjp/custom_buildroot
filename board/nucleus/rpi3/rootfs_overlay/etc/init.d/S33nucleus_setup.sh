#!/bin/sh
FIND_SENTINEl=$(ls /etc/systemd/system | grep sentinel)
HAS_SENTINEL=false
FIND_NATASHA=$(ls /etc/systemd/system | grep natasha)
HAS_NATASHA=false
FIND_AIOROS=$(ls /etc/systemd/system | grep aiorosplayer)
HAS_AIOROS=false

register_services()
{
    if [[ -z $FIND_SENTINEl ]]; then
        echo "Error: sentinel.service not found"
    else
        HAS_SENTINEL=true
    fi

    if [[ -z $FIND_NATASHA ]]; then
        echo "Error: natasha.service not found"
    else
        HAS_NATASHA=true
    fi

    if [[ -z $FIND_AIOROS ]]; then
        echo "Error: aiorosplayer.service not found"
    else
        HAS_AIOROS=true
    fi

    if [[ $HAS_SENTINEL = true ]]; then
        IS_SENTINEL_ENABLED=$(systemctl is-enabled sentinel)
        if [[ "$IS_SENTINEL_ENABLED" = *"enabled"* ]]; then
            echo "sentinel.service: is-enabled"
        else
            echo "sentinel.service: enabling sentinel.service"
            systemctl enable sentinel.service
            systemctl daemon-reload
            systemctl restart sentinel
        fi
        IS_SENTINEL_ACTIVE=$(systemctl is-active sentinel)
        if [[ "$IS_SENTINEL_ACTIVE" = *"active"* ]]; then
            echo "sentinel.service is active and running"
        else
            systemctl restart sentinel.service
        fi
    fi

    if [[ $HAS_NATASHA = true ]]; then
        IS_SENTINEL_ENABLED=$(systemctl is-enabled natasha)
        if [[ "$IS_NATASHA_ENABLED" = *"enabled"* ]]; then
            echo "natasha.service: is-enabled"
        else
            echo "natasha.service: enabling natasha.service"
            systemctl enable natasha.service
            systemctl daemon-reload
            systemctl restart natasha
        fi
        IS_SENTINEL_ACTIVE=$(systemctl is-active natasha)
        if [[ "$IS_NATASHA_ACTIVE" = *"active"* ]]; then
            echo "natasha.service is active and running"
        else
            systemctl restart natasha.service
        fi
    fi

    if [[ $HAS_AIOROS = true ]]; then
        IS_SENTINEL_ENABLED=$(systemctl is-enabled aiorosplayer)
        if [[ "$IS_AIOROS_ENABLED" = *"enabled"* ]]; then
            echo "aiorosplayer.service: is-enabled"
        else
            echo "aiorosplayer.service: enabling aiorosplayer.service"
            systemctl enable aiorosplayer.service
            systemctl daemon-reload
            systemctl restart aiorosplayer.service
        fi
        IS_SENTINEL_ACTIVE=$(systemctl is-active aiorosplayer)
        if [[ "$IS_AIOROS_ACTIVE" = *"active"* ]]; then
            echo "aiorosplayer.service is active and running"
        else
            systemctl restart aiorosplayer.service
        fi
    fi
}

case "$1" in
    start)
        echo "Loading nucleus services"
        register_services
        ;;
    stop)
        ;;
    *)
        echo "Usage: $0 start"
        exit 1
        ;;
esac
exit $?
