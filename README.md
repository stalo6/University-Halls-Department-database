
```mermaid
erDiagram
    EMPLOYEES ||--|{ HALL : "manages_as_officer"
    EMPLOYEES ||--|{ HOSTEL : "manages_as_custodian"
    HALL ||--|{ HOSTEL : "administrative_grouping_for"
    HOSTEL ||--|{ ROOM : "contains"
    ROOM ||--|{ STUDENTS : "houses"

    EMPLOYEES {
        int employee_id PK
        string first_name
        string last_name
        string position
        string department
    }

    HALL {
        int hall_id PK
        string hall_name
        decimal fee_rate
        string office_no
        int officer_employee_id FK
    }

    HOSTEL {
        int hostel_id PK
        string hostel_name
        string occupant_gender
        int hall_id FK
        int custodian_employee_id FK
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
