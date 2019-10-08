table 60006 "His.Course – Cab"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
        }
        field(2; "Course Name"; Text[30])
        {
            Caption = 'Course Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Initial Date"; Date)
        {
            Caption = 'Initial Date';
            DataClassification = ToBeClassified;
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(5; Duration; Decimal)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
        }
        field(6; "Cod Prof"; Code[20])
        {
            Caption = 'Cod Prof';
            DataClassification = ToBeClassified;
            TableRelation = Professors;
        }
        field(7; "Prof Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Professors.Name WHERE("Cod Prof" = FIELD("Cod Prof")));
            Caption = 'Prof Name';
        }
        field(8; "Cod Classroom"; Code[20])
        {
            Caption = 'Cod Classroom';
            DataClassification = ToBeClassified;
            TableRelation = Students;
        }
        field(9; "Classrom Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Classrom.Name WHERE("Cod Classroom" = FIELD("Cod Classroom")));
            Caption = 'Classrom Name';
        }
        field(10; "Previous Code Course"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'Serial No';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod Course", "Previous Code Course")
        {
        }
    }

    fieldgroups
    {
    }


}

