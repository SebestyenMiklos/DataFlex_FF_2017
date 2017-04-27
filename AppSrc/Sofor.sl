// Sofor.sl
// Sof‹r lista

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cSoforDataDictionary.dd

CD_Popup_Object Sofor_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 285
    Set Label To "Sof‹r lista"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Set Main_DD To oSofor_DD
    Set Server  To oSofor_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 275
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Sofor_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oSofor_sofor_azonosito is a cDbCJGridColumn
            Entry_Item Sofor.sofor_azonosito
            Set piWidth to 86
            Set psCaption to "Azonos¡t¢"
        End_Object 

        Object oSofor_sofor_nev is a cDbCJGridColumn
            Entry_Item Sofor.sofor_nev
            Set piWidth to 300
            Set psCaption to "N‚v"
        End_Object 

        Object oSofor_sofor_szigsz is a cDbCJGridColumn
            Entry_Item Sofor.sofor_szigsz
            Set piWidth to 144
            Set psCaption to "Szigsz."
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 122
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 176
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 230
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Sofor_sl
