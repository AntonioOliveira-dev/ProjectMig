page 60000 "Students"
{
    PageType = Card;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Cod Student"; "Cod Student")
                {
                }
                field(Name; Name)
                {
                    Editable = true;
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
                    DrillDown = true;
                    DrillDownPageID = "Mov.Course";
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

