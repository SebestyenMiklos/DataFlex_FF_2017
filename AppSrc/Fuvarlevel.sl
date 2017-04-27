// Fuvarlevel.sl
// Fuvarlev‚l lista

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cSoforDataDictionary.dd
Use cAutoDataDictionary.dd
Use cFuvarlevelDataDictionary.dd

CD_Popup_Object Fuvarlevel_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 482
    Set Label To "Fuvarlev‚l lista"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Object oFuvarlevel_DD is a cFuvarlevelDataDictionary
        Set DDO_Server To oAuto_DD
        Set DDO_Server To oSofor_DD
    End_Object 

    Set Main_DD To oFuvarlevel_DD
    Set Server  To oFuvarlevel_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 472
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Fuvarlevel_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oFuvarlevel_fuvarl_azonosito is a cDbCJGridColumn
            Entry_Item Fuvarlevel.fuvarl_azonosito
            Set piWidth to 120
            Set psCaption to "Id"
        End_Object 

        Object oFuvarlevel_fuvarl_datum is a cDbCJGridColumn
            Entry_Item Fuvarlevel.fuvarl_datum
            Set piWidth to 120
            Set psCaption to "D tum"
        End_Object 

        Object oSofor_sofor_nev is a cDbCJGridColumn
            Entry_Item Sofor.sofor_nev
            Set piWidth to 300
            Set psCaption to "N‚v"
        End_Object 

        Object oAuto_auto_tipus is a cDbCJGridColumn
            Entry_Item Auto.auto_tipus
            Set piWidth to 300
            Set psCaption to "Aut¢ t¡pus"
        End_Object 

        Object oFuvarlevel_fuvarl_teljesitett_km is a cDbCJGridColumn
            Entry_Item Fuvarlevel.fuvarl_teljesitett_km
            Set piWidth to 84
            Set psCaption to "Kil¢m‚ter"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 319
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 373
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 427
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Fuvarlevel_sl
