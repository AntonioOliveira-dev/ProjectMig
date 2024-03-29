table 60002 "Classrom"
{
    DrillDownPageID = 60006;
    LookupPageID = 60006;

    fields
    {
        field(1; "Cod Classroom"; Code[20])
        {
            Caption = 'Cod Classroom';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Location; Text[50])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
        }
        field(4; Capacity; Integer)
        {
            Caption = 'Capacity';
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'Serial No';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod Classroom")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod Classroom" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Classroms No.");
            NoSeriesMgt.InitSeries(SeriesSetup."Classroms No.", xRec."No. Series", 0D, "Cod Classroom", "No. Series");
        END;
    end;

    trigger OnRename()
    begin

    end;

    var

        SeriesSetup: Record "Course – Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

}

