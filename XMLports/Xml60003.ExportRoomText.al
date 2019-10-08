xmlport 60003 "Export Room Text"
{
    FileName = 'Export_Room.TXT';
    Format = FixedText;

    schema
    {
        textelement(Root)
        {
            tableelement(Classrom; Classrom)
            {
                XmlName = 'Classroom';
                Width = 50;
                fieldelement(CodClassroom; Classrom."Cod Classroom")
                {
                    Width = 50;
                }
                fieldelement(Name; Classrom.Name)
                {
                    Width = 1;
                }
                fieldelement(Location; Classrom.Location)
                {
                    Width = 50;
                }
                fieldelement(Capacity; Classrom.Capacity)
                {
                    Width = 50;
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

