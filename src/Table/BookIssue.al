table 50119 "Book Issue"
{
    Caption = 'Book Issue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Issue ID"; Code[20])
        {

        }
        field(2; "Book ID"; Code[20])
        {
            TableRelation = "Book"."Book ID" where("Available" = const(true));
        }
        field(3; "Member ID"; Code[20])
        {
            TableRelation = "Member"."Member ID";
        }
        field(4; "Issue Date"; Date)
        {

        }
        field(5; "Return Date"; Date)
        {

        }
    }


    keys
    {
        key(PK;
        "Issue ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        BookRec: Record "Book";
    begin
        if BookRec.Get("Book ID") then begin
            if BookRec.Available = false then
                Error('Book is not available for issue.');
            BookRec."Available" := false;
            BookRec.Modify();
        end;
    end;

    trigger OnModify()
    var
        BookRec: Record Book;
    begin
        if "Return Date" <> 0D then begin
            if BookRec.Get("Book ID") then begin
                BookRec.Available := true;
                BookRec.Modify();
            end;
        end;
    end;
}