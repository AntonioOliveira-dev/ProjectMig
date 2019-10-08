table 60000 "Students"
{
    DrillDownPageID = 60003;
    LookupPageID = 60003;

    fields
    {
        field(1; "Cod Student"; Code[20])
        {
            Caption = 'Cod Student';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
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
        field(7; "Course Numbers"; Decimal)
        {
            CalcFormula = Sum ("Mov. Course".Duration);
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'Serial No';
            DataClassification = ToBeClassified;
        }
        field(98; "Students Count"; Integer)
        {
            AutoIncrement = false;
            Editable = false;
            InitValue = 1;
        }
        field(99; "Student Total"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Sum (Students."Students Count");
        }
    }

    keys
    {
        key(Key1; "Cod Student")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin

        IF "Cod Student" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Students No.");
            NoSeriesMgt.InitSeries(SeriesSetup."Students No.", xRec."No. Series", 0D, "Cod Student", "No. Series");
        END;
    end;

    var

        SeriesSetup: Record "Course – Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

}

