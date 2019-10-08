table 60003 "Course – Cab"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
        }
        field(2; CourseName; Text[30])
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
        field(7; ProfName; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Professors.Name WHERE("Cod Prof" = FIELD("Cod Prof")));
            Caption = 'Prof Name';
        }
        field(8; "Cod Classroom"; Code[20])
        {
            Caption = 'Cod Classroom';
            FieldClass = Normal;
            TableRelation = Classrom WHERE(Capacity = FILTER(>= 30));
        }
        field(9; "Classrom Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Classrom.Name WHERE("Cod Classroom" = FIELD("Cod Classroom")));
            Caption = 'Classrom Name';
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'Serial No';
            DataClassification = ToBeClassified;
        }
        field(98; "Course Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(99; Total; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Sum ("Course – Cab"."Course Count");
            Editable = false;
            Enabled = true;

            trigger OnValidate()
            begin
            end;

        }
    }

    keys
    {
        key(Key1; "Cod Course")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod Course" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Course No.");
            NoSeriesMgt.InitSeries(SeriesSetup."Course No.", xRec."No. Series", 0D, "Cod Course", "No. Series");
        END;

    end;



    var
        SeriesSetup: Record 60005;
        NoSeriesMgt: Codeunit 396;
}

