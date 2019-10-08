page 60007 "Course-cab List"
{
    DeleteAllowed = true;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field(CourseName; CourseName)
                {
                }
                field("Initial Date"; "Initial Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field(Duration; Duration)
                {
                }
                field("Cod Prof"; "Cod Prof")
                {
                }
                field(ProfName; ProfName)
                {
                }
                field("Cod Classroom"; "Cod Classroom")
                {
                }
                field("Classrom Name"; "Classrom Name")
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

