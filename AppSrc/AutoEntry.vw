// C:\DataFlex Projects\DataFlex_FF_2017\AppSrc\AutoEntry.vw
// AutoEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use Dfcentry.PKG

Use cAutoDataDictionary.dd

ACTIVATE_VIEW Activate_oAutoEntry FOR oAutoEntry
Object oAutoEntry is a dbView
    Set Location to 5 5
    Set Size to 38 247
    Set Label to "Aut¢"
    Set Border_Style to Border_Thick


    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Set Main_DD To oAuto_DD
    Set Server  To oAuto_DD



    Object oAutoauto_rendszam is a dbForm
        Entry_Item Auto.auto_rendszam
        Set Size to 13 48
        Set Location to 5 56
        Set peAnchors to anTopLeftRight
        Set Label to "Rendsz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 51
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoauto_tipus is a dbForm
        Entry_Item Auto.auto_tipus
        Set Size to 13 186
        Set Location to 20 56
        Set peAnchors to anTopLeftRight
        Set Label to "T¡pus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 51
        Set Label_row_Offset to 0
    End_Object 


End_Object 
