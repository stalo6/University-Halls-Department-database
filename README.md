erDiagram
    %% Relationships
    EMPLOYEES ||--|{ HALL : "manages_as_officer"
    EMPLOYEES ||--|{ HOSTEL : "manages_as_custodian"
    HALL ||--|{ HOSTEL : "administrative_grouping_for"
    HOSTEL ||--|{ ROOM : "contains"
    ROOM ||--|{ STUDENTS : "houses"

    %% Entities
    EMPLOYEES {
        int employee_id PK
        string first_name
        string last_name
        string position "Halls Officer or Custodian"
        string department
    }

    HALL {
        int hall_id PK
        string hall_name
        decimal fee_rate "Same rate for all hostels in this hall"
        string office_no
        int officer_employee_id FK "The Halls Officer"
    }

    HOSTEL {
        int hostel_id PK
        string hostel_name
        string occupant_gender
        int hall_id FK
        int custodian_employee_id FK "The Custodian"
    }

    ROOM {
        int room_id PK
        string room_number
        int capacity
        int hostel_id FK
    }

    STUDENTS {
        string reg_number PK
        string first_name
        string last_name
        int year_of_study
        int room_id FK
    }
    
