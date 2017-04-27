// Auto.sl
// Auto lista

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cAutoDataDictionary.dd

CD_Popup_Object Auto_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 214
    Set Label To "Auto lista"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Set Main_DD To oAuto_DD
    Set Server  To oAuto_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 204
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Auto_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oAuto_auto_rendszam is a cDbCJGridColumn
            Entry_Item Auto.auto_rendszam
            Set piWidth to 88
            Set psCaption to "Rendsz m"
        End_Object 

        Object oAuto_auto_tipus is a cDbCJGridColumn
            Entry_Item Auto.auto_tipus
            Set piWidth to 300
            Set psCaption to "Aut¢ t¡pus"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 51
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 105
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 159
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Auto_sl
