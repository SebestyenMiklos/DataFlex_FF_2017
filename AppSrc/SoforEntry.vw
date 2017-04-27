// C:\DataFlex Projects\DataFlex_FF_2017\AppSrc\SoforEntry.vw
// SoforEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use Dfcentry.PKG

Use cSoforDataDictionary.dd

ACTIVATE_VIEW Activate_oSoforEntry FOR oSoforEntry
Object oSoforEntry is a dbView
    Set Location to 5 5
    Set Size to 38 236
    Set Label to "Sof‹r"
    Set Border_Style to Border_Thick


    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Set Main_DD To oSofor_DD
    Set Server  To oSofor_DD



    Object oSoforsofor_nev is a dbForm
        Entry_Item Sofor.sofor_nev
        Set Size to 13 186
        Set Location to 5 45
        Set peAnchors to anTopLeftRight
        Set Label to "Sof‹r neve"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 40
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforsofor_szigsz is a dbForm
        Entry_Item Sofor.sofor_szigsz
        Set Size to 13 78
        Set Location to 20 45
        Set peAnchors to anTopLeftRight
        Set Label to "Szigsz."
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 40
        Set Label_row_Offset to 0
    End_Object 


End_Object 
