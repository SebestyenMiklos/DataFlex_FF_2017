// C:\DataFlex Projects\DataFlex_FF_2017\AppSrc\FuvarlevelEntry.vw
// Fuvarlev‚l
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cAutoDataDictionary.dd
Use cFuvarlevelDataDictionary.dd
Use cFuvarlevelTetelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarlevelEntry FOR oFuvarlevelEntry
Object oFuvarlevelEntry is a dbView
    Set Location to 5 5
    Set Size to 222 522
    Set Label To "Fuvarlev‚l"
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
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oFuvarlevelTetel_DD is a cFuvarlevelTetelDataDictionary
        Set DDO_Server To oFuvarlevel_DD
        Set DDO_Server To oTermek_DD
        Set Constrain_File To Fuvarlevel.File_Number
    End_Object 

    Set Main_DD To oFuvarlevel_DD
    Set Server  To oFuvarlevel_DD



    Object oFuvarlevelfuvarl_azonosito is a dbForm
        Entry_Item Fuvarlevel.fuvarl_azonosito
        Set Size to 13 127
        Set Location to 5 78
        Set peAnchors to anTopLeftRight
        Set Label to "fuvarl azonosito"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelfuvarl_datum is a dbForm
        Entry_Item Fuvarlevel.fuvarl_datum
        Set Size to 13 128
        Set Location to 20 78
        Set peAnchors to anTopLeftRight
        Set Label to "Teljes¡t‚s d tuma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforsofor_azonosito is a dbForm
        Entry_Item Sofor.sofor_azonosito
        Set Size to 13 127
        Set Location to 35 78
        Set peAnchors to anTopLeftRight
        Set Label to "Sof‹r"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelfuvarl_munkaido_menyiseg is a dbForm
        Entry_Item Fuvarlevel.fuvarl_munkaido_menyiseg
        Set Size to 13 129
        Set Location to 50 78
        Set peAnchors to anTopLeftRight
        Set Label to "Munkaid‹ (¢ra)"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoauto_rendszam is a dbForm
        Entry_Item Auto.auto_rendszam
        Set Size to 13 129
        Set Location to 65 78
        Set peAnchors to anTopLeftRight
        Set Label to "Rendsz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelfuvarl_teljesitett_km is a dbForm
        Entry_Item Fuvarlevel.fuvarl_teljesitett_km
        Set Size to 13 130
        Set Location to 80 78
        Set peAnchors to anTopLeftRight
        Set Label to "Teljes¡tett kil¢m‚ter"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelfuvarl_uzemanyag_mennyiseg is a dbForm
        Entry_Item Fuvarlevel.fuvarl_uzemanyag_mennyiseg
        Set Size to 13 131
        Set Location to 95 78
        Set peAnchors to anTopLeftRight
        Set Label to "šzemanyag (liter)"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelfuvarl_uzemanyag_egysegar is a dbForm
        Entry_Item Fuvarlevel.fuvarl_uzemanyag_egysegar
        Set Size to 13 131
        Set Location to 110 78
        Set peAnchors to anTopLeftRight
        Set Label to "šzemanyag egys‚g r"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 73
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 84 464
        Set Location to 133 5
        Set Server to oFuvarlevelTetel_DD
        Set Ordering to 5
        Set peAnchors to anAll
        Set psLayoutSection to "oFuvarlevelEntry_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oTermek_termek_azonosito is a cDbCJGridColumn
            Entry_Item Termek.termek_azonosito
            Set piWidth to 412
            Set psCaption to "Term‚k"
        End_Object 

        Object oFuvarlevelTetel_fuvarl_tetel_termek_mennyiseg is a cDbCJGridColumn
            Entry_Item FuvarlevelTetel.fuvarl_tetel_termek_mennyiseg
            Set piWidth to 516
            Set psCaption to "Mennyis‚g"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
