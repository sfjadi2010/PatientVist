table 50100 "Patient Visit"
{
    DataClassification = CustomerContent;
    Caption = 'Patient Visit';
    DataPerCompany = true;

    fields
    {
        field(1; "Visit ID"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Visit ID';
            AutoIncrement = true;
        }
        field(2; "Patient No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Patient No.';
        }
        field(3; "Visit Date"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Visit Date';
        }
        field(4; "Visit Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Visit Type';
            OptionMembers = Consultation,"Follow-up",Emergency;
            OptionCaption = 'Consultation,Follow-up,Emergency';
        }
        field(5; "Doctor Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Doctor Name';
        }
        field(6; Notes; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }
    }

    keys
    {
        key(PK; "Visit ID")
        {
            Clustered = true;
        }
    }
}
