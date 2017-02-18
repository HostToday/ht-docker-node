# check if npmci is available
npmci -v

# check if we can use lts
npmci install lts

# check if yarn picks it up
npmci command yarn global add npmts
npmci command npmts -v
