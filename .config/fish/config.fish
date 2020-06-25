source "$CONFIG/fish/alias.fish"
source "$CONFIG/fish/abbr.fish"

set -g fish_key_bindings fish_vi_key_bindings

set -U forest_fg d8caac
set -U forest_black 3b4252
set -U forest_red e68183
set -U forest_green a7c080
set -U forest_yellow d9bb80
set -U forest_blue 89beba
set -U forest_magenta d3a0bc
set -U forest_cyan 87c095
set -U forest_white d8caac

set -U fish_color_normal $forest_fg                             
set -U fish_color_command $forest_green                         
set -U fish_color_quote $forest_yellow                          
set -U fish_color_redirection $forest_fg                        
set -U fish_color_param $forest_fg                                 
set -U fish_color_comment $forest_yellow                                
set -U fish_color_match $forest_blue                                  
set -U fish_color_selection $forest_white --bold --background=brblack   
set -U fish_color_search_match $forest_yellow --background=brblack    
set -U fish_color_history_current --bold                        
set -U fish_color_operator $forest_blue                               
set -U fish_color_escape $forest_cyan                                 
set -U fish_color_cwd $forest_green                                     
set -U fish_color_cwd_root $forest_red                                  
set -U fish_color_valid_path --underline                        
set -U fish_color_autosuggestion 747369                         
set -U fish_color_user $forest_green                                  
set -U fish_color_host $forest_fg                                   
set -U fish_color_cancel -r                                     
set -U fish_pager_color_completion $forest_fg                       
set -U fish_pager_color_description B3A06D yellow               
set -U fish_pager_color_prefix white --bold --underline         
set -U fish_pager_color_progress brwhite --background=cyan   
