table 60001 "Professors"
{
    DrillDownPageID = 60004;
    LookupPageID = 60004;

    fields
    {
        field(1; "Cod Prof"; Code[20])
        {
            Caption = 'Cod Prof';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Morada; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Phone; Text[30])
        {
            Caption = 'Phone';
            DataClassification = ToBeClassified;
        }
        field(5; Email; Text[80])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'Serial No';
            DataClassification = ToBeClassified;
        }
        field(98; "Prof Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            InitValue = 1;
        }
        field(99; Total; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Sum (Professors."Prof Count");
        }
    }

    keys
    {
        key(Key1; "Cod Prof")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin

        IF "Cod Prof" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Profs No.");
            NoSeriesMgt.InitSeries(SeriesSetup."Profs No.", xRec."No. Series", 0D, "Cod Prof", "No. Series");
        END;
    end;

    trigger OnModify()
    begin

        CourseOverview.CALCFIELDS(ProfName);
        MESSAGE('O CALCFIELDS foi feito com sucesso');
    end;

    trigger OnRename()
    begin

        CourseOverview.CALCFIELDS(ProfName);
        MESSAGE('O CALCFIELDS foi feito com sucesso');
    end;

    var
        SeriesSetup: Record "Course – Setup";
        CourseOverview: Record "Course – Cab";
        NoSeriesMgt: Codeunit NoSeriesManagement;

}

