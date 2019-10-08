xmlport 60001 "Students"
{
    Direction = Import;
    FieldDelimiter = ';';
    FieldSeparator = ';';
    Format = VariableText;
    UseRequestPage = true;

    schema
    {
        textelement(Root)
        {
            tableelement(Students; Students)
            {
                XmlName = 'Import';
                UseTemporary = false;
                Width = 3;
                fieldelement(Name; Students.Name)
                {
                    MinOccurs = Once;
                }
                fieldelement(Adress; Students.Address)
                {
                }
                fieldelement(Email; Students.Email)
                {
                }
                fieldelement(Phone; Students.Phone)
                {
                    MinOccurs = Zero;
                }

                trigger OnBeforeInsertRecord()
                begin
                    IF Students.Phone = '' THEN
                        Students.Phone := '210000000';
                end;
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

