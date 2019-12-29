# Caso o python nao esteja instalado, instale
# Caso o youtube-dl nao esteja instaldo, instale
# Caso o ffmpeg nao instalado, instale
# Caso o termux-api nao esteja instalado, instale
# Caso nao exista a pasta downloads/ytdownload, crie
# Va para a pasta ytdownload
# Peca a url
# Avancado ou rapido?
# Rapido:
	# Vid ou Music?
	# Download
# Avancado:
	# Vid ou Music?
		# Vid: Qualidade? Formato? Legenda?
		# Music: Qualidade? Formato? 

cd /storage/emulated/0/Download
mkdir songmusics
cd songmusics
youtube-dl -cix --audio-format mp3 -o "%(title)s.%(ext)s" `termux-dialog text -t "Digite o endereço do vídeo, canal ou playlist do youtube:" | jq -r ."text"`

