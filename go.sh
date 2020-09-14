nohup xxxx &

function random_range {
    shuf -i $1-$2 -n1
}

export FRP_SERVER_PORT=$(random_range 33131 33139)
nohup /root/gm/frpc -c /root/gm/frpc.ini >/dev/null 2>&1 &
