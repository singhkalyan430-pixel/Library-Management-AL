page 50119 "Book List"
{

    Caption = 'Book List';
    PageType = List;
    SourceTable = "Book";
    ApplicationArea = All;
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Book ID"; Rec."Book ID")
                {
                }
                field(Title; Rec.Title)
                {
                }
                field(Author; Rec.Author)
                {
                }
                field(Available; Rec.Available)
                {
                }
            }
        }
    }

    local procedure GetNextBookID(): Integer
    var
        book: Record "Book";
    begin
        if not book.FindLast() then
            exit(1);
        exit(book."Book ID" + 1);
    end;
}