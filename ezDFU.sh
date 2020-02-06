ret=$(bin/igetnonce 2>/dev/null | grep ECID)
ecidhex=$(echo $ret | cut -d '=' -f 2 )
ecidhex2=$(echo $ecidhex | tr '[:lower:]' '[:upper:]')
echo $ecidhex2 >/dev/null
ecid=$(echo "obase=10; ibase=16; $ecidhex2" | bc)
echo $ecid

ret=$(bin/igetnonce 2>/dev/null | grep ApNonce)
nonce=$(echo $ret | cut -d '=' -f 2)
echo $nonce #APNONCE

echo "*Please write you model number here (eg iPhone6,2)*"
read model
echo "*Now enter your boardconfig (eg N53AP)*"
read bconfig

#tsschecker
./tsschecker -B $bconfig -d $model -s -e $ecid -m bm.plist --apnonce $nonce
echo "*SIGNING iBSS*"
#sign
bin/img4tool -s "$ecid"_iPhone8,4_n69ap_13.3.1-17D50_"$nonce".shsh2 -c ibss.signed -p ibss.im4p >/dev/null
sleep 0.3
echo "*SIGNING iBEC*"
bin/img4tool -s "$ecid"_iPhone8,4_n69ap_13.3.1-17D50_"$nonce".shsh2 -c ibec.signed -p ibec.im4p >/dev/null
sleep 0.2
echo "*SIGNING COMPLETE!*"
sleep 0.2
echo "*UPLOADING SIGNED iBSS*"
bin/irecovery -f ibss.signed
echo "*UPLOADING SIGNED iBEC*"
bin/irecovery -f ibec.signed
sleep 2
echo "*READY TO RESTORE*"
# who doesn't like rgb
bin/irecovery -c "bgcolor 255 0 255" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 245 0 245" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 230 0 230" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 220 0 220" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 210 0 210" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 200 0 200" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 190 0 190" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 180 0 180" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 170 0 170" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 160 0 160" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 150 0 150" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 140 0 140" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 130 0 130" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 120 0 120" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 100 0 100" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 80 0 80" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 60 0 60" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 40 0 40" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 20 0 20" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 0 0 0" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 20 0 20" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 40 0 40" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 60 0 60" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 80 0 80" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 100 0 100" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 120 0 120" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 130 0 130" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 140 0 140" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 150 0 150" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 160 0 160" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 170 0 170" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 180 0 180" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 190 0 190" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 200 0 200" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 210 0 210" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 220 0 220" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 230 0 230" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 240 0 240" >/dev/null
sleep 0.04
bin/irecovery -c "bgcolor 255 0 255" >/dev/null
sleep 0.04
