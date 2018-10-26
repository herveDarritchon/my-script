displayUsage() {
                echo "Usage : "  >&2
                echo -e "\t-h : display usage."  >&2
                echo -e "\t-s : stop les containers."  >&2
                echo -e "\t-d : efface les containers."  >&2
                echo -e "\t-d : efface les containers ainsi que les données dans les volumes."  >&2
}

parseParamenters() {
    while getopts "hsdv" opt; do
        case "$opt" in
        h|\?)
            displayUsage
            exit 0
            ;;
    	s)  stopAllContainers
            ;;
        v)  deleteAllContainersWithVolumes
            ;;
        d)  deleteAllContainers
            ;;
        :)  stopAllContainers
            deleteAllContainers
            ;;
        *)  displayUsage
            exit 3
            ;;
        esac
    done
}

stopAllContainers() {
    docker stop $(docker ps -a -q)
}

deleteAllContainersWithVolumes() {
    docker rm -v $(docker ps -a -q)
}

deleteAllContainers() {
    docker rm $(docker ps -a -q)
}

# Main Program
parseParamenters $@

exit 0
