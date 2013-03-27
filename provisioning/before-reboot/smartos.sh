if [ "$1" = "" ]
then
  echo "Usage: $0 <hostname> <puppetmaster internal ip>"
  exit
fi

if [ "$2" = "" ]
then
  echo "Usage: $0 <hostname> <puppetmaster internal ip>"
  exit
fi

SCRIPT_HOSTNAME=$1
SCRIPT_PUPPET_INTERNAL_IP=$2

sudo sm-set-hostname $SCRIPT_HOSTNAME
echo "Pre-reboot setup complete. Please reboot the machine VIA the Joyent admin UI, then run the after-reboot script."