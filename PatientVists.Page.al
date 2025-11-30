page 50100 "Patient Visits"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Patient Visit";
    Caption = 'Patient Visits';
    CardPageId = "Patient Visit Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Visit ID"; Rec."Visit ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the visit ID.';
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewVisit)
            {
                ApplicationArea = All;
                Caption = 'New Visit';
                Image = New;
                ToolTip = 'Create a new patient visit.';

                trigger OnAction()
                begin
                    Rec.Init();
                    Rec.Insert(true);
                end;
            }
            action(OpenVisitCard)
            {
                ApplicationArea = All;
                Caption = 'Open Visit Card';
                Image = Card;
                ToolTip = 'Open the patient visit card.';

                trigger OnAction()
                var
                    PatientVisitCard: Page "Patient Visit Card";
                begin
                    PatientVisitCard.SetRecord(Rec);
                    PatientVisitCard.Run();
                end;
            }
        }
    }
}
