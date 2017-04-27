// C:\DataFlex Projects\DataFlex_FF_2017\AppSrc\FuvarlevelTetelEntry.vw
// Fuvarlev‚l t‚tel
//

Use DFClient.pkg
Use DFEntry.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cAutoDataDictionary.dd
Use cFuvarlevelDataDictionary.dd
Use cFuvarlevelTetelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarlevelTetelEntry FOR oFuvarlevelTetelEntry
Object oFuvarlevelTetelEntry is a dbView
    Set Location to 5 5
    Set Size to 66 288
    Set Label To "Fuvarlev‚l t‚tel"
    Set Border_Style to Border_Thick


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Object oFuvarlevel_DD is a cFuvarlevelDataDictionary
        Set DDO_Server To oAuto_DD
        Set DDO_Server To oSofor_DD
    End_Object 

    Object oFuvarlevelTetel_DD is a cFuvarlevelTetelDataDictionary
        Set DDO_Server To oFuvarlevel_DD
        Set DDO_Server To oTermek_DD
    End_Object 

    Set Main_DD To oFuvarlevelTetel_DD
    Set Server  To oFuvarlevelTetel_DD



    Object oFuvarlevelfuvarl_azonosito is a dbForm
        Entry_Item Fuvarlevel.fuvarl_azonosito
        Set Size to 13 241
        Set Location to 5 42
        Set peAnchors to anTopLeftRight
        Set Label to "Fuvarlev‚l"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 37
        Set Label_row_Offset to 0
    End_Object 

    Object oTermektermek_azonosito is a dbForm
        Entry_Item Termek.termek_azonosito
        Set Size to 13 217
        Set Location to 20 42
        Set peAnchors to anTopLeftRight
        Set Label to "Term‚k"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 37
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelTetelfuvarl_tetel_termek_mennyiseg is a dbForm
        Entry_Item FuvarlevelTetel.fuvarl_tetel_termek_mennyiseg
        Set Size to 13 209
        Set Location to 35 42
        Set peAnchors to anTopLeftRight
        Set Label to "Mennyis‚g"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 37
        Set Label_row_Offset to 0
    End_Object 


End_Object 
