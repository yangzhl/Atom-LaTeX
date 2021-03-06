module.exports =
  toolchain:
    title: 'Toolchain to use'
    order: 1
    description: 'The toolchain to build LaTeX. `auto` tries `latexmk \
                  toolchain` and fallbacks to the default `custom toolchain`.'
    type: 'string'
    default: 'auto'
    enum: [
      'auto'
      'latexmk toolchain'
      'custom toolchain'
    ]
  latexmk_param:
    title: 'latexmk execution parameters'
    order: 2
    description: 'The parameters to use when invoking `latexmk`.'
    type: 'string'
    default: '-synctex=1 -interaction=nonstopmode -file-line-error -pdf'
  custom_toolchain:
    title: 'Custom toolchain commands'
    order: 3
    description: 'The commands to execute in `custom` toolchain. Multiple \
                  commands should be seperated by `&&`. Placeholders `%TEX` \
                  `%ARG` `%BIB` will be replaced by the following settings, \
                  and `%DOC` will be replaced by the main LaTeX file which \
                  is automatically detected under the root folder of the \
                  openning project.'
    type: 'string'
    default: '%TEX %ARG %DOC && %BIB %DOC && %TEX %ARG %DOC && %TEX %ARG %DOC'
  compiler:
    title: 'LaTeX compiler to use'
    order: 4
    description: 'The LaTeX compiler to use in `custom` toolchain. Replaces \
                  all `%TEX` string in `custom` toolchain command.'
    type: 'string'
    default: 'pdflatex'
  compiler_param:
    title: 'LaTeX compiler execution parameters'
    order: 5
    description: 'The parameters to use when invoking the custom compiler. \
                  Replaces all `%ARG` string in `custom` toolchain command.'
    type: 'string'
    default: '-synctex=1 -interaction=nonstopmode -file-line-error'
  bibtex:
    title: 'bibTeX compiler to use'
    order: 6
    description: 'The bibTeX compiler to use in `custom` toolchain. Replaces \
                  all `%BIB` string in `custom` toolchain command.'
    type: 'string'
    default: 'bibtex'
  build_after_save:
    title: 'Build LaTeX after saving'
    order: 7
    description: 'Start building with toolchain after saving a `.tex` file.'
    type: 'boolean'
    default: true
  preview_after_build:
    title: 'Preview PDF after building process'
    order: 8
    description: 'Use PDF viewer to preview the generated PDF file after \
                  successfully building LaTeX.'
    type: 'string'
    default: 'View in PDF viewer window'
    enum: [
      'View in PDF viewer window'
      'View in PDF viewer tab'
      'Do nothing'
    ]
  combine_typesetting_log:
    title: 'Combine typesetting log messages'
    order: 9
    description: 'Combine typesetting log messages in log panel. Sometimes \
                  typesetting messages may clutter the panel. Enable this \
                  config to display one message for all typesetting entries.'
    type: 'boolean'
    default: true
  file_ext_to_clean:
    title: 'Files to clean'
    order: 10
    description: 'All files under the LaTeX project root directory with the set\
                  extensions will be removed when cleaning LaTeX project. \
                  Multiple file extensions are joint with commas.'
    type: 'string'
    default: '*.aux, *.bbl, *.blg, *.idx, *.ind, *.lof, *.lot, *.out, *.toc, \
              *.acn, *.acr, *.alg, *.glg, *.glo, *.gls, *.ist, *.fls, *.log, \
              *.fdb_latexmk'
  clean_after_build:
    title: 'Clean LaTeX auxillary files after building process'
    order: 11
    description: 'Clean all auxillary files after building LaTeX project by \
                  the defined file extensions.'
    type: 'boolean'
    default: false
  delayed_minimap_refresh:
    title: 'Delay the refresh actions of atom-minimap'
    order: 12
    description: 'Delay the refresh actions of atom-minimap upon typing. This \
                  setting can reduce the keystroke stuttering in very long \
                  LaTeX source files caused by minimap extension. Reload Atom \
                  to take effect.'
    type: 'boolean'
    default: false
