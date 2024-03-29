if !exists('g:colors_name') || g:colors_name !=# 'gruvbox-material'
    finish
endif
if index(g:gruvbox_material_loaded_file_types, 'dosini') ==# -1
    call add(g:gruvbox_material_loaded_file_types, 'dosini')
else
    finish
endif
let s:configuration = gruvbox_material#get_configuration()
let s:palette = gruvbox_material#get_palette(s:configuration.background, s:configuration.palette)
" syn_begin: dosini {{{
call gruvbox_material#highlight('dosiniHeader', s:palette.red, s:palette.none, 'bold')
highlight! link dosiniLabel Yellow
highlight! link dosiniValue Green
highlight! link dosiniNumber Green
" syn_end
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
