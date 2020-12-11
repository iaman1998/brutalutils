#!/usr/bin/env bash
#=============================================================
# https://github.com/roshanconnor123/gd-utils
# File Name: gdutils.sh
# Author: roshanconnor
# Description:running gdutils
# System Required: Debian/Ubuntu
#=============================================================

cecho() {
        local code="\033["
        case "$1" in
                black  | bk) color="${code}0;30m";;
                red    |  r) color="${code}1;31m";;
                green  |  g) color="${code}1;32m";;
                yellow |  y) color="${code}1;33m";;
                blue   |  b) color="${code}1;34m";;
                purple |  p) color="${code}1;35m";;
                cyan   |  c) color="${code}1;36m";;
                gray   | gr) color="${code}0;37m";;
                *) local text="$1"
        esac
        [ -z "$text" ] && local text="$color$2${code}0m"
        echo -e "$text"
}

# ★★★Copy from source to destination★★★
copy() {
  cd ~ && cd gd-utils
  cecho r "Remember to add your SAs as Viewer in source TD and as a Contributor in Destination TD"
  echo "Provide Source Folder ID"
  read SRC
  echo "Provide Destination Folder ID"
  read DST
  cecho r "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo && echo "Copy mode selected"
  
  cecho p "A.Create a New Folder with the same name in the destination"
  cecho p "B.Do not create a new Folder in the destination" && echo
  read -p " Choose A/B:" option
  
  case "$option" in
  A)
      node --max-old-space-size=512 copy $SRC $DST -S
	  ;;
  B)
      node --max-old-space-size=512 copy $SRC $DST -S -D
      ;;
  *)
      echo
      cecho r "Choose the Correct Option"
      ;;
  esac
}
# ★★★Calculate the size★★★
count() {
  cd ~ && cd gd-utils
  cecho r "Remember to add your SAs as Viewer (atleast) in source TD"
  echo "Provide Folder ID"
  read SRC
  cecho r "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo && echo "Size mode selected"

  cecho p "A.Normal Size Info"
  cecho p "B.Create a html file with tree like pattern"
  cecho p "C.Create a snap2html index" && echo
  read -p "Choose A/B/C:" option
  
  case "$option" in
  A)
      node count $SRC -S
	  ;;
  B)
      node count $SRC -S -t tree -o /sdcard/Tree.html
      echo " Check your Internal storage to find a file called Tree.html"
      ;;
  C) 
      node count $SRC -S -t snap -o /sdcard/Index.html
      echo "Check your Internal Storag to find a file called Index.html"
      ;;	  
  *)
      echo
      cecho r "Choose the Correct Option"
      ;;
  esac
}
# ★★★Dedupe The Folder★★★
dedupe() {
  cd ~ && cd gd-utils
  cecho r "Remember to add your SAs as Content manager (atleast) in source TD\n"
  echo "Provide Folder ID\n"
  read SRC 
  node dedupe $SRC -S
}


# ★★★Running Gdutils★★★
printf "%s by %s -English version by %s\n" "$(cecho b GD-UTILS)" "$(cecho r iwestlin)" "$(cecho c Roshanconnor)"

cecho g "1.Copy Files to your Teamdrive"
echo "➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
cecho g "2.Calculate Size"
echo "➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
cecho g "3.Remove Duplicate Files"
echo "➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
cecho y "4.EXIT" && echo
read -p " Choose any Number [1-4]:" option

case "$option" in
1)
    copy
	;;
2)
    count
    ;;
3)
    dedupe
    ;;
4)
    exit
    ;;
*)
    echo
    cecho r "Choose Correct Number from the Options"
    ;;
esac
