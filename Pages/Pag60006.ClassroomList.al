page 60006 "Classroom List"
{
    CardPageID = Classrooms;
    Editable = false;
    PageType = ListPart;
    SourceTable = 60002;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Classroom"; "Cod Classroom")
                {
                }
                field(Name; Name)
                {
                }
                field(Location; Location)
                {
                }
                field(Capacity; Capacity)
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
        area(processing)
        {
            action("Manage List")
            {
                Caption = 'Manage List';
                RunObject = Page 60006;
            }
        }
    }
}

