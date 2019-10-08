table 60005 "Course – Setup"
{

    fields
    {
        field(1; "Key"; Code[10])
        {
            Caption = 'Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Course No."; Code[10])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(3; "Students No."; Code[10])
        {
            Caption = 'Students';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(4; "Profs No."; Code[10])
        {
            Caption = 'Profs';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(5; "Classroms No."; Code[10])
        {
            Caption = 'Classroms';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(6; "Course Historic No."; Code[10])
        {
            Caption = 'Course Historic';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Key")
        {
        }
    }

    fieldgroups
    {
    }
}

