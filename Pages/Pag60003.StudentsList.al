page 60003 "Students List"
{
    CardPageID = Students;
    Editable = false;
    PageType = ListPart;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Student"; "Cod Student")
                {
                }
                field(Name; Name)
                {
                }
                field(Address; Address)
                {
                }
                field(Phone; Phone)
                {
                }
                field(Email; Email)
                {
                }
                field("Course Numbers"; "Course Numbers")
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

