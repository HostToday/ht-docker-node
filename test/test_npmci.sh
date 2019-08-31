# check if npmci is available
npm init -y
npmci -v

# TODO update npmci to not require package.json
npmci node install stable

# check if npm picks it up
npmci command npm install -g @gitzone/tsrun
npmci command tsrun -v
