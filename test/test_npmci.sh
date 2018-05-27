# check if npmci is available
npmci -v

# check if we can use lts
npmci install lts

# check if npm picks it up
npmci command npm install -g npmts
npmci command npmts -v
