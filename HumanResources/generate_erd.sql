CREATE TABLE "position" (
  "id" int,
  "name" varchar(50),
  "description" varchar(100),
  PRIMARY KEY ("id")
);

CREATE TABLE "day" (
  "id" int,
  "name" varchar(50),
  PRIMARY KEY ("id")
);

CREATE TABLE "schedule" (
  "id" int,
  "checkin_time" time(0),
  "departure_time" time(0),
  "id_day_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_schedule.id_day_fk"
    FOREIGN KEY ("id_day_fk")
      REFERENCES "day"("id")
);

CREATE TABLE "employee_scotland" (
  "id" int,
  "name" varchar(50),
  "surname_1" varchar(50),
  "surname_2" varchar(50),
  "identification" varchar(50),
  "age" int,
  "salary" money,
  "hiring_date" date,
  "address" varchar(200),
  "phone" varchar(50),
  "id_schedule_fk" int,
  "id_position_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_scotland.id_position_fk"
    FOREIGN KEY ("id_position_fk")
      REFERENCES "position"("id"),
  CONSTRAINT "FK_employee_scotland.id_schedule_fk"
    FOREIGN KEY ("id_schedule_fk")
      REFERENCES "schedule"("id")
);

CREATE TABLE "employee_evaluation_escocia" (
  "id" int,
  "qualification" int,
  "commentary" varchar(200),
  "date" date,
  "identification_client" varchar(50),
  "id_employee_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_evaluation_escocia.id_employee_fk"
    FOREIGN KEY ("id_employee_fk")
      REFERENCES "employee_scotland"("id")
);

CREATE TABLE "employee_ireland" (
  "id" int,
  "name" varchar(50),
  "surname_1" varchar(50),
  "surname_2" varchar(50),
  "identification" varchar(50),
  "age" int,
  "salary" money,
  "hiring_date" date,
  "address" varchar(200),
  "phone" varchar(50),
  "id_schedule_fk" int,
  "id_position_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_ireland.id_position_fk"
    FOREIGN KEY ("id_position_fk")
      REFERENCES "position"("id"),
  CONSTRAINT "FK_employee_ireland.id_schedule_fk"
    FOREIGN KEY ("id_schedule_fk")
      REFERENCES "schedule"("id")
);

CREATE TABLE "employee_evaluation_ireland" (
  "id" int,
  "qualification" int,
  "commentary" varchar(200),
  "date" date,
  "identification_client" varchar(50),
  "id_employee_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_evaluation_ireland.id_employee_fk"
    FOREIGN KEY ("id_employee_fk")
      REFERENCES "employee_ireland"("id")
);

CREATE TABLE "employee_usa" (
  "id" int,
  "name" varchar(50),
  "surname_1" varchar(50),
  "surname_2" varchar(50),
  "identification" varchar(50),
  "age" int,
  "salary" money,
  "hiring_date" date,
  "address" varchar(200),
  "phone" varchar(50),
  "id_schedule_fk" int,
  "id_position_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_usa.id_schedule_fk"
    FOREIGN KEY ("id_schedule_fk")
      REFERENCES "schedule"("id"),
  CONSTRAINT "FK_employee_usa.id_position_fk"
    FOREIGN KEY ("id_position_fk")
      REFERENCES "position"("id")
);

CREATE TABLE "employee_evaluation_usa" (
  "id" int,
  "qualification" int,
  "commentary" varchar(200),
  "date" date,
  "identification_client" varchar(50),
  "id_employee_fk" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_employee_evaluation_usa.id_employee_fk"
    FOREIGN KEY ("id_employee_fk")
      REFERENCES "employee_usa"("id")
);