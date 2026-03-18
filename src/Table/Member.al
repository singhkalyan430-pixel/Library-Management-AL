table 50117 "Member"
{
    Caption = 'Member';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Member ID"; Integer)
        {
            Caption = 'Member ID';
            DataClassification = CustomerContent;
        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Email"; Text[100])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
        }
        field(4; "Phone Number"; Text[20])
        {
            Caption = 'Phone Number';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Member ID")
        {
            Clustered = true;
        }
    }
}