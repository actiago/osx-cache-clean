#!/usr/bin/env bash
#
# install.sh
#

function install() {
    echo "Downloading the Simple OSX Cache Clean"
    curl -o osxcc https://raw.githubusercontent.com/cegohub/osx_cache_clean/master/osxcc.sh 2>/dev/null
    echo "Starting Simple OSX Cache Clean installation"
    sleep 1
    chmod +x osxcc
    echo "Installing OSX Cache Clean"
    sleep 1
    sudo mv osxcc /usr/local/bin/osxcc
    echo "The app was successfully installed"
    echo "Now you can run the app with the command 'osxcc' in your terminal"
}

function uninstall() {
    echo "Uninstalling OSX Cache Clean"
    sudo rm /usr/local/bin/osxcc
    sleep 1
    echo "The app was sucessfully uninstalled"
}

usage()
{
    cat << EOF
Use: $0 [options]
Options:
    -i, --install    Install the app.
    -u, --uninstall  Uninstall the app.
    -h, --help       Help.
EOF
}

while [[ $# -gt 0 ]] ; do
    case $1 in
        -i|--install)
            install
        ;;
        -u|--uninstall)
            uninstall
        ;;
        -h|--help)
            usage ; exit 0
        ;;
        *)
            echo -e "Unknow command: $1\n\n$( usage )" >&2
            exit 2
        ;;
    esac
    shift
done
