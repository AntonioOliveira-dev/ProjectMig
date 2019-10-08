table 60004 "Course-Line"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
            TableRelation = "Course – Cab"."Cod Course";
        }
        field(2; Line; Integer)
        {
            AutoFormatType = 1;
            AutoIncrement = true;
            Caption = 'Line';
            DataClassification = ToBeClassified;
        }
        field(3; "Cod Student"; Code[20])
        {
            Caption = 'Cod Student';
            DataClassification = ToBeClassified;
            TableRelation = Students."Cod Student";
        }
        field(4; "Student Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Students.Name WHERE("Cod Student" = FIELD("Cod Student")));
            Caption = 'Student Name';
            Editable = true;
        }
    }

    keys
    {
        key(Key1; "Cod Course", Line)
        {
        }
    }

    fieldgroups
    {
    }
}

