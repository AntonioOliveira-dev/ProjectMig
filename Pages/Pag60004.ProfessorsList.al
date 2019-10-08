page 60004 "Professors List"
{
    CardPageID = Professors;
    Editable = false;
    PageType = List;
    SourceTable = 60001;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Prof"; "Cod Prof")
                {
                }
                field(Name; Name)
                {
                }
                field(Morada; Morada)
                {
                }
                field(Phone; Phone)
                {
                }
                field(Email; Email)
                {
                }
                field("No. Series"; "No. Series")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

