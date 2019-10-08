page 60010 "Hist. Course-Cab"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Document;
    SourceTable = 60006;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field("Course Name"; "Course Name")
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
                field("Prof Name"; "Prof Name")
                {
                }
                field("Cod Classroom"; "Cod Classroom")
                {
                }
                field("Classrom Name"; "Classrom Name")
                {
                }
            }
            part("Hist. course-Line"; 60011)
            {
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Movements)
            {
                Image = CreateMovement;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60013;
            }
        }
    }
}

