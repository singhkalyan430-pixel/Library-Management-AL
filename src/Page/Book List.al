page 50119 "Book List"
{

    Caption = 'Book List';
    PageType = List;
    SourceTable = "Book";
    ApplicationArea = All;

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

    /*actions
    {
        area(Navigation)
        {
            action(NewBook)
            {
                Caption = 'New Book';
                Image = New;
                trigger OnAction()
                begin
                    // Code to create a new book record
                    var
                        newBook: Record "Book";
                        newBook.Init();
                    newBook."Book ID" := GetNextBookID();
                    newBook.Insert();
                    CurrPage.Update();
                end;
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
    end;*/
}