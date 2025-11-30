page 50101 "Patient Visit Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Patient Visit";
    Caption = 'Patient Visit Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Visit ID"; Rec."Visit ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the visit ID.';
                    Editable = false;
                }
                field("Patient No."; Rec."Patient No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient number.';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the visit date and time.';
                }
                field("Visit Type"; Rec."Visit Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the visit type.';
                }
                field("Doctor Name"; Rec."Doctor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the doctor name.';
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies notes for the visit.';
                    MultiLine = true;
                }
            }
        }
    }
}
