test -s ~/.alias && . ~/.alias || true
alias syu="sudo zypper update"
alias sl="ls"
alias con="ssh sc22ojw@remote-access.leeds.ac.uk"

f=3 b=4
for j in f b; do
	for i in {0..7}; do
		printf -v $j$i %b "\e[${!j}${i}m"
	done
done
for i in {0..7}; do
	printf -v fbright$i %b "\e[9${i}m"
done
bld=$'\e[1m'
rst=$'\e[0m'
inv=$'\e[7m'

cat <<EOF

$rst
$bld
 $fbright3  ▄███████▄                $fbright1  ▄██████▄    $fbright2  ▄██████▄    $fbright4  ▄██████▄    $fbright5  ▄██████▄
 $fbright3▄█████████▀▀               $fbright1▄$fbright7█▀█$fbright1██$fbright7█▀█$fbright1██▄  $fbright2▄█$fbright7█ █$fbright2██$fbright7█ █$fbright2█▄  $fbright4▄█$fbright7█ █$fbright4██$fbright7█ █$fbright4█▄  $fbright5▄█$fbright7█ █$fbright5██$fbright7█ █$fbright5█▄
 $fbright3███████▀      $fbright7▄▄  ▄▄  ▄▄   $fbright1█$fbright7▄▄█$fbright1██$fbright7▄▄█$fbright1███  $fbright2██$fbright7███$fbright2██$fbright7███$fbright2██  $fbright4██$fbright7███$fbright4██$fbright7███$fbright4██  $fbright5██$fbright7███$fbright5██$fbright7███$fbright5██
 $fbright3███████▄      $fbright7▀▀  ▀▀  ▀▀   $fbright1████████████  $fbright2████████████  $fbright4████████████  $fbright5████████████
 $fbright3▀█████████▄▄               $fbright1██▀██▀▀██▀██  $fbright2██▀██▀▀██▀██  $fbright4██▀██▀▀██▀██  $fbright5██▀██▀▀██▀██
 $fbright3  ▀███████▀                $fbright1▀   ▀  ▀   ▀  $fbright2▀   ▀  ▀   ▀  $fbright4▀   ▀  ▀   ▀  $fbright5▀   ▀  ▀   ▀
$rst

EOF
