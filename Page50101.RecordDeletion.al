// RS -  BC Go-live Tool v.2.0.0.6 - 20180915
// Based on Original release of Olof Simren -  Go-Live Tool, Range 50101..
page 50101 "Record Deletion"
{
    // version BCGOLIVE
    InsertAllowed = True; //Add records
    PageType = List;
    Editable = True;
    SourceTable = "Record Deletion Table";
    UsageCategory = Tasks;  //show in the Search Menù - "Record Deletion page"
    //AccessByPermission = page "Record Deletion" = X;  //permissions for Page
    AccessByPermission = tabledata "Record Deletion Table" = RIMD; //ALL permissions for Table
    ApplicationArea = All;
    CaptionML = ENU = 'Record Deletion';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Table ID"; Rec."Table ID")
                {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Table ID';
                    ToolTip = 'Insert table no. to Delete';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("START DELETE RECORDS")
            {
                CaptionML = ENU = 'START DELETE RECORDS';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    RecordDeletionMgt: Codeunit "Record Deletion Mgt.";
                begin
                    RecordDeletionMgt.DeleteRecords; //START DELETE RECORDS
                end;

            }
        }
    }
}