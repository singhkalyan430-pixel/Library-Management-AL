page 50118 "Member List"
{

    Caption = 'Member List';
    PageType = List;
    SourceTable = "Member";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Member ID"; Rec."Member ID")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Email; Rec.Email)
                {
                }
                field(Phone; Rec."Phone Number")
                {
                }
            }
        }
    }

    local procedure GetNextMemberID(): Integer
    var
        member: Record "Member";
    begin
        if not member.FindLast() then
            exit(1);
        exit(member."Member ID" + 1);
    end;
}
