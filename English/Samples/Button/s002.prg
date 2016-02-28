/*
 * Button Sample n° 2
 * Author: Fernando Yurisich <fernando.yurisich@gmail.com>
 * Licensed under The Code Project Open License (CPOL) 1.02
 * See <http://www.codeproject.com/info/cpol10.aspx>
 *
 * Partially adapted from ooHG's distribution sample (see
 * samples\button_mix) mantained by Ciro Vargas Clemow
 * <pcman2010@yahoo.com>
 *
 * This sample shows how to display buttons with text and/or an image.
 *
 * Visit us at https://github.com/fyurisich/OOHG_Samples or at
 * http://oohg.wikia.com/wiki/Object_Oriented_Harbour_GUI_Wiki
 *
 * You can download Button6.bmp from
 * https://github.com/fyurisich/OOHG_Samples/tree/master/English/Samples/Button
 */

#include "oohg.ch"
#include "i_windefs.ch"

FUNCTION Main()

   DEFINE WINDOW Form_1 ;
      AT 0,0 ;
      WIDTH 320 ;
      HEIGHT 620 ;
      MAIN ;
      TITLE "ooHG - Button Demo" ;
      BACKCOLOR YELLOW

      @ 10,80 BUTTON btn_1 ;
         OBJ But1 ;
         CAPTION "Click Me" ;
         PICTURE "hbprint_print" ;
         ACTION if( But1:ImageMargin()[1] == 0, But1:ImageMargin( {-20, 0, 0, 0} ), But1:ImageMargin( {0, 10, 0, 0} ) ) ;
         LEFT ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Click to change image's margins." ;
         IMAGEMARGIN {0, 10, 0, 0}

      @ 80,80 BUTTON btn_2 ;
         CAPTION "On the right" ;
         PICTURE "hbprint_save" ;
         ACTION MsgInfo('btn_2') ;
         RIGHT ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Text and image (on the right) button." ;
         IMAGEMARGIN {0, 0, 0, 10}

      @ 150,80 BUTTON btn_3 ;
         CAPTION "On the top" ;
         PICTURE "hbprint_print"  ;
         ACTION MsgInfo('btn_3') ;
         TOP ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Text and image (on the top) button." ;
         IMAGEMARGIN {6, 0, 0, 0}

      @ 220,80 BUTTON btn_4 ;
         CAPTION "On the bottom" ;
         PICTURE "hbprint_save" ;
         ACTION MsgInfo('btn_4') ;
         BOTTOM ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Text and image (on the bottom) button." ;
         IMAGEMARGIN {0, 0, 6, 0}

      @ 290,80 BUTTON btn_5 OBJ oBut ;
         CAPTION "Really Long Multiline Text Only Button"  ;
         MULTILINE ;
         ACTION ChangeTextAlignment() ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TEXTALIGN DT_LEFT + DT_TOP ;
         TOOLTIP "Click me to change text alignment."

      @ 360,80 BUTTON btn_6 ;
         THEMED ;
         PICTURE "Button6.bmp"  ;
         ACTION MsgInfo('btn_6') ;
         CENTER ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Image (centered) only button, themed."

      @ 430,80 BUTTON btn_7 ;
         NOTHEME ;
         PICTURE "Button6.bmp"  ;
         ACTION MsgInfo('btn_7') ;
         CENTER ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Image (centered) only button, not themed."

      @ 500,80 BUTTON btn_8 ;
         CAPTION "Texto y             Bitmap" ;
         PICTURE  "hbprint_save"   ;
         ACTION MsgInfo('btn_8') ;
         CENTER ;
         WIDTH 140 ;
         HEIGHT 60 ;
         TOOLTIP "Text and image (centered) button."

      ON KEY ESCAPE ACTION Form_1.Release

   END WINDOW

   CENTER WINDOW Form_1
   ACTIVATE WINDOW Form_1

RETURN NIL


PROCEDURE ChangeTextAlignment
   STATIC nTextAlignH := DT_LEFT
   STATIC nTextAlignV := DT_TOP

   nTextAlignH ++
   IF nTextAlignH > 2
      nTextAlignH := 0
      nTextAlignV += 4
      IF nTextAlignV > 8
         nTextAlignV := 0
      ENDIF
   ENDIF

  oBut:nTextAlign := nTextAlignH + nTextAlignV
  oBut:RePaint()
RETURN

/*
 * EOF
 */
