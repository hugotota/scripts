TAM=16819648
while [[ true ]]; do
	TAM_DIR=`du -s | awk '{ print substr($0, 1, 8) }'`
	if [[ $TAM_DIR -gt $TAM ]]; then
		ls -l > arquivo.log
		break;
	fi
done