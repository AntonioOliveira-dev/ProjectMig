table 60007 "Hist.Course-Line"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
            TableRelation = "His.Course – Cab";
        }
        field(2; Line; Integer)
        {
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
        }
    }

    keys
    {
        key(Key1; Line, "Cod Course")
        {
        }
    }

    fieldgroups
    {
    }
}

