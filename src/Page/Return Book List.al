page 50125 "Return Book List"
{

    Caption = 'Return Book List';
    PageType = List;
    SourceTable = "Book Issue";
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTableView = where("Return Date" = const(0D));

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Issue ID"; Rec."Issue ID")
                {
                }
                field("Book ID"; Rec."Book ID")
                {
                }
                field("Member ID"; Rec."Member ID")
                {
                }
                field("Issue Date"; Rec."Issue Date")
                {
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ReturnBook)
            {
                Caption = 'Return Book';
                Image = Return;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec."Return Date" <> 0D then
                        Error('Already returned.');

                    Rec."Return Date" := Today;
                    Rec.Modify(true);

                    Message('Book returned successfully.');
                end;
            }
        }
    }
}