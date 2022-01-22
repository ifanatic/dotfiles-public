let g:lightline = {
    \ 'colorscheme': 'one', 
    \  'active': {
    \    'left': [ ['mode', 'paste'], [], [ 'readonly', 'relativepath', 'modified' ] ],
    \    'right': [ [], [], [ 'fileformat', 'fileencoding', 'lineinfo', 'percent' ] ]
    \  },
    \  'inactive': {
    \    'left': [ ['mode', 'paste'], [], [ 'readonly', 'relativepath', 'modified' ] ],
    \    'right': [ [], [], [ 'fileformat', 'fileencoding', 'lineinfo', 'percent' ] ]
    \  },
    \  'subseparator': {
    \    'left': '', 'right': ''
    \  },
    \  'tabline': {
    \    'left': [ ['buffers'] ],
    \    'right': [ [] ]
    \  },
    \  'tabline_separator': {
    \    'left': "", 'right': ""
    \  },
    \  'tabline_subseparator': {
    \    'left': "", 'right': ""
    \  },
    \  'component_expand': {
    \    'buffers': 'lightline#bufferline#buffers'
    \  },
    \  'component_raw': {
    \    'buffers': 1
    \  },
    \  'component_type': {
    \    'buffers': 'tabsel'
    \  }
    \}
