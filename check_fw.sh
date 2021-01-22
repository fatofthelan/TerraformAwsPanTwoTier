while true
do
  echo "$1" >> /tmp/pan.log
  resp=$(curl -vvv -s -S -g --insecure "https://$1/api/?type=op&cmd=<show><chassis-ready></chassis-ready></show>&key=LUFRPT1TaUl2RHZHaTdNc290UEw3NStTSll2MlUrZ1k9MTRRc0FrbHYwUDVDd01lWXE4SGg5ODNtRTVIUGxEaktqVUR1QTFWaG00NVhXL2NoaXpwSXo5R25acTBLbzNjSA==")
  if [ $? -ne 0 ] ; then
    echo "Continuing.." >> pan.log
  fi
  echo "Response $resp" >> pan.log
  if [[ $resp == *"[CDATA[yes"* ]] ; then
    echo "Condition met... FW Ready"
    break
  fi
  sleep 10s
done
echo "Exiting.."
exit 0
