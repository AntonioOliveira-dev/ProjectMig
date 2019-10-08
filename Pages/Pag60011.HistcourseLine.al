page 60011 "Hist. course-Line"
{
    DelayedInsert = false;
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = 60007;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field(Line; Line)
                {
                }
                field("Cod Student"; "Cod Student")
                {
                }
                field("Student Name"; "Student Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

