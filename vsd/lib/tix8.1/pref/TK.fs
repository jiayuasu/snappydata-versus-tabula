#
# $Id: TK.fs,v 1.1.1.1 2001/06/15 23:23:47 darrel Exp $
#

proc tixSetFontset {} {

    global tixOption

    set tixOption(font)         -Adobe-Helvetica-Medium-R-Normal--*-120-*
    set tixOption(bold_font)    -Adobe-Helvetica-Bold-R-Normal--*-120-*
    set tixOption(menu_font)    -Adobe-Helvetica-Bold-R-Normal--*-120-*
    set tixOption(italic_font)  -Adobe-Helvetica-Bold-O-Normal--*-120-*
    set tixOption(fixed_font) -*-courier-medium-r-*-*-14-*-*-*-*-*-*-*
    set tixOption(border1)      1
}
