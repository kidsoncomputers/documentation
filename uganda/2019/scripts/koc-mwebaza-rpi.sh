#!/bin/bash
#
# KoC/Mwebaza Raspberry Pi Desktop Customization
#
#

# #########################
# Install svn; needed
#  to clone subfolders
#  in github.com
# #########################
echo "Installing subversion ..."
sudo apt-get install -y subversion

# #########################
# Bash aliases
# #########################
echo "Adding .bash_aliases ..."
(
cat << EOF
alias ll='ls -l'
EOF
) > $HOME/.bash_aliases
chmod u+x $HOME/.bash_aliases
source $HOME/.bash_aliases

# ####################################
# KoC/Mwebaza Backgrounds
# ####################################
echo "Downloading KoC/Mwebaza background images ..."
TARGETDIR="$HOME/Backgrounds/Mwebaza/"
mkdir -p $TARGETDIR
svn export https://github.com/kidsoncomputers/documentation/trunk/uganda/2019/backgrounds $TARGETDIR
cd $HOME

# #########################
# Uganda Desktop Background
#  images
# #########################
echo "Downloading Uganda background images licensed under Creative Commons Attribution-Share Alike 4.0 International license ..."
TARGETDIR="$HOME/Backgrounds/Uganda/"
mkdir -p $TARGETDIR
cd $TARGETDIR
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/e/ee/Banded_groundling_%28Brachythemis_leucosticta%29_young_male.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/7/71/Black-headed_weaver_%28Ploceus_cucullatus_bohndorffi%29_male_nest_building.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/3/37/Common_joker_%28Byblia_ilithyia%29_male.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/7/76/Kampala_Kasubi_Tombs.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/e/e7/Long_skimmer_%28Orthetrum_trinacria%29_female.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/b/b4/Marabou_stork_%28Leptoptilos_crumenifer%29_head.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/f/fd/Olive_baboon_%28Papio_anubis%29_with_juvenile.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/4/46/Pin-tailed_whydah_%28Vidua_macroura%29_female.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/0/07/Pin-tailed_whydah_%28Vidua_macroura%29_male_non-breeding.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/f/f0/Topi_%28Damaliscus_lunatus_jimela%29_female.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/b/b3/Tree-climbing_lions_%28Panthera_leo%29.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/d/d7/Ugandan_defassa_waterbuck_%28Kobus_ellipsiprymnus_defassa%29_juvenile_male.jpg
curl --remote-name https://upload.wikimedia.org/wikipedia/commons/3/37/Ugandan_kobs_%28Kobus_kob_thomasi%29_female_and_calf.jpg
cat << LICENSE > license.txt
# Images in this folder are licensed under Creative Commons Attribution-Share Alike 4.0 International license.
#
# https://en.wikipedia.org/wiki/en:Creative_Commons
# https://creativecommons.org/licenses/by-sa/4.0/deed.en
#
#
# Sourced from:
#
# https://commons.wikimedia.org/wiki/Category:Valued_images_of_Uganda
#
#
# =========================
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=56191857
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=53501375
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=58356106
# 
# By not not phil from SF, CA, US - Kampala Kasubi Tombs, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=9762848
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=56191861
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54788427
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54082182
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54866466
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54866467
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54592937
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54082186
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54619646
# 
# By Charles J Sharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54645361
LICENSE
cd $HOME


