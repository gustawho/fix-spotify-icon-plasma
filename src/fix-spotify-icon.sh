#!/usr/bin/env bash

set -e
tmp_dir="/tmp/fsi-$(date +%s)"

main() {
<<<<<<< HEAD
  echo -e "\e[1m\e[32m==> \e[39mEntering temporary directory...\e[0m"
  mkdir "$tmp_dir"
  cd "$tmp_dir"
  
  if [ -d "/usr/share/spotify" ]
  then
    echo -e "\e[1m\e[32m==> \e[39mBacking up resources.zip...\e[0m"
    cp /usr/share/spotify/spotify-client/Data/resources.zip resources_old.zip
    unzip resources_old.zip -d resources_old/ > source.log 2> /dev/null
    spotifydir="usrshare"
  else
    echo -e "\e[1m\e[32m==> \e[39mBacking up resources.zip...\e[0m"
    cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip
    unzip resources_old.zip -d resources_old/ > source.log 2> /dev/null
  fi

  echo -e "\e[1m\e[34m   There are two variants for the tray icon, one for each Breeze style (light and dark),"
  while : ;do
    if [ "$answer" = "g" ];then
      echo -e "\e[1m\e[31m! You didn't give a valid option, try again. (D)ark or (L)ight variant? \e[0m"
    else
      read -p "   Which one should I use, (D)ark or (L)ight? " -t 3 answer
      if [ "$answer" = "d" ];then
        echo -e "\e[1m\e[32m==> \e[39mDownloading assets...\e[0m"
        wget -O spotify-linux-16.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-16.png > download.log 2> /dev/null
        wget -O spotify-linux-22.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-22.png > download.log 2> /dev/null
        wget -O spotify-linux-24.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-24.png > download.log 2> /dev/null
        wget -O spotify-linux-32.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-32.png > download.log 2> /dev/null
        wget -O spotify-linux-48.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-48.png > download.log 2> /dev/null
        wget -O spotify-linux-64.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-64.png > download.log 2> /dev/null
        wget -O spotify-linux-128.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-128.png > download.log 2> /dev/null
        wget -O spotify-linux-256.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-256.png > download.log 2> /dev/null
        wget -O spotify-linux-512.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/dark/spotify-linux-512.png > download.log 2> /dev/null
        break
      elif [ "$answer" = "l" ];then
        echo -e "\e[1m\e[32m==> \e[39mDownloading assets...\e[0m"
        wget -O spotify-linux-16.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-16.png > download.log 2> /dev/null
        wget -O spotify-linux-22.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-22.png > download.log 2> /dev/null
        wget -O spotify-linux-24.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-24.png > download.log 2> /dev/null
        wget -O spotify-linux-32.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-32.png > download.log 2> /dev/null
        wget -O spotify-linux-48.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-48.png > download.log 2> /dev/null
        wget -O spotify-linux-64.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-64.png > download.log 2> /dev/null
        wget -O spotify-linux-128.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-128.png > download.log 2> /dev/null
        wget -O spotify-linux-256.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-256.png > download.log 2> /dev/null
        wget -O spotify-linux-512.png https://raw.githubusercontent.com/gustawho/spotify-kde-integration/master/src/icons/light/spotify-linux-512.png > download.log 2> /dev/null
        break
      fi
      let answer=g
    fi
  done

  echo -e "\e[1m\e[32m==> \e[39mReplacing files...\e[0m"
  cp spotify-linux-16.png resources_old/_linux/spotify-linux-16.png
  cp spotify-linux-22.png resources_old/_linux/spotify-linux-22.png
  cp spotify-linux-24.png resources_old/_linux/spotify-linux-24.png
  cp spotify-linux-32.png resources_old/_linux/spotify-linux-32.png
  cp spotify-linux-48.png resources_old/_linux/spotify-linux-48.png
  cp spotify-linux-64.png resources_old/_linux/spotify-linux-64.png
  cp spotify-linux-128.png resources_old/_linux/spotify-linux-128.png
  cp spotify-linux-256.png resources_old/_linux/spotify-linux-256.png
  cp spotify-linux-512.png resources_old/_linux/spotify-linux-512.png

  echo -e "\e[1m\e[32m==> \e[39mPackaging resources.zip...\e[0m"
  cd resources_old/
  zip -r resources_patched.zip . > compress.log 2> /dev/null
  cd ..
  mv resources_old/resources_patched.zip .

  if [ $spotifydir = "usrshare" ]; then
    echo -e "\e[1m\e[32m==> \e[39mReplacing current resources.zip...\e[0m"
    sudo cp resources_patched.zip /usr/share/spotify/spotify-client/Data/resources.zip
  else
    echo -e "\e[1m\e[32m==> \e[39mReplacing current resources.zip...\e[0m"
    sudo cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip
  fi
=======
    msg "Entering temporary directory..."
    mkdir "$tmp_dir"
    cd "$tmp_dir"

    msg "Making a copy of resources.zip..."
    cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip
    unzip resources_old.zip -d resources_old/

    msg "Downloading icons..."
    wget -O spotify_icon.ico https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify_icon.ico
    wget -O spotify-linux-16.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-16.png
    wget -O spotify-linux-22.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-22.png
    wget -O spotify-linux-24.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-24.png
    wget -O spotify-linux-32.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-32.png
    wget -O spotify-linux-48.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-48.png
    wget -O spotify-linux-64.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-64.png
    wget -O spotify-linux-128.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-128.png
    wget -O spotify-linux-256.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-256.png
    wget -O spotify-linux-512.png https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/images/spotify-linux-512.png


    msg "Replacing the icons..."
#    cp spotify/spotify_icon.ico resources_old/_linux/spotify_icon.ico
    cp spotify-linux-16.png resources_old/_linux/spotify-linux-16.png
    cp spotify-linux-22.png resources_old/_linux/spotify-linux-22.png
    cp spotify-linux-24.png resources_old/_linux/spotify-linux-24.png
    cp spotify-linux-32.png resources_old/_linux/spotify-linux-32.png
    cp spotify-linux-48.png resources_old/_linux/spotify-linux-48.png
    cp spotify-linux-64.png resources_old/_linux/spotify-linux-64.png
    cp spotify-linux-128.png resources_old/_linux/spotify-linux-128.png
    cp spotify-linux-256.png resources_old/_linux/spotify-linux-256.png
    cp spotify-linux-512.png resources_old/_linux/spotify-linux-512.png

    msg "Packaging resources.zip..."
    cd resources_old/
    zip -r resources_patched.zip .
    cd ..
    mv resources_old/resources_patched.zip .

    msg "Replacing current resources.zip..."
    sudo cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip
>>>>>>> ee1ca8241ccc135e16e7087b9f756eaf5ce23a0d

  echo -e "\e[1m\e[32m==> \e[39mCleaning up...\e[0m"
  rm -rf "$tmp_dir"

  echo -e "\e[1m\e[34m    Tray icon successfuly changed!"
  echo -e "\e[1m\e[34m    Restart Spotify to check it out."
  sleep 2
}

main "$@"