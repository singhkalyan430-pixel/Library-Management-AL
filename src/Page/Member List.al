page 50118 "Member List"
{

    Caption = 'Member List';
    PageType = List;
    SourceTable = "Member";
    ApplicationArea = All;

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

    /*actions
    {
        area(Navigation)
        {
            action(NewMember)
            {
                Caption = 'New Member';
                Image = New;
                trigger OnAction()
                begin
                    // Code to create a new member record
                    var newMember: Record "Member";
                    newMember.Init();
                    newMember."Member ID" := GetNextMemberID();
                    newMember.Insert();
                    CurrPage.Update();
                end;
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
    end;*/
}
