// C:\DataFlex Projects\DataFlex_FF_2017\AppSrc\TermekEntry.vw
// Term‚k
//

Use DFClient.pkg
Use DFEntry.pkg

Use cTermekDataDictionary.dd

ACTIVATE_VIEW Activate_oTermekEntry FOR oTermekEntry
Object oTermekEntry is a dbView
    Set Location to 5 5
    Set Size to 38 241
    Set Label To "Term‚k"
    Set Border_Style to Border_Thick


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Set Main_DD To oTermek_DD
    Set Server  To oTermek_DD



    Object oTermektermek_megnevezes is a dbForm
        Entry_Item Termek.termek_megnevezes
        Set Size to 13 186
        Set Location to 5 50
        Set peAnchors to anTopLeftRight
        Set Label to "N‚v"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oTermektermek_egysegar is a dbForm
        Entry_Item Termek.termek_egysegar
        Set Size to 13 42
        Set Location to 20 50
        Set peAnchors to anTopLeftRight
        Set Label to "Egys‚g r (Ft)"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 


End_Object 
