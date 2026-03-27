page 50130 "Library Chart"
{
    PageType = CardPart;
    ApplicationArea = All;
    Caption = 'Library Chart';

    layout
    {
        area(Content)
        {
            group(Info)
            {
                field("Message"; Msg)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        Msg: Text;

    trigger OnOpenPage()
    begin
        Msg := 'Chart coming soon...';
    end;
}