CREATE TABLE "users" (
  "codigo" integer PRIMARY KEY,
  "username" varchar2,
  "email" varchar2,
  "senha" varchar2,
  "status_users": bool,
  "created_at" timestamp
);

CREATE TABLE "list_banks" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "account_Type" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "banks" (
  "codigo" integer PRIMARY KEY,
  "codigo_user" integer,
  "codigo_account_Type" integer,
  "codigo_list_banks" integer,
  "apelido" varchar2,
  "saldo_inicial" bigint,
  "start_date" timestamp,
  "other_information" varchar2
);

CREATE TABLE "categorias" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "centro_custo" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "tipos_lancamentos" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "tipos_gastos" (
  "codigo" integer PRIMARY KEY,
  "descricao" varchar2
);

CREATE TABLE "lancamentos" (
  "codigo" integer PRIMARY KEY,
  "to_receive" bool,
  "user_receive" varchar2,
  "date_receive" timestamp,
  "is_installment" bool,
  "codigo_user" integer,
  "codigo_categorias" integer,
  "codigo_bank" integer,
  "codigo_centro_custo" integer,
  "codigo_tipos_gastos" integer,
  "payment_methods" varchar2,
  "valor" decimal,
  "descricao" varchar2,
  "tipos_lancamentos" integer,
  "tipo_operacao" varchar2,
  "tipo_movimentacao" varchar2,
  "created_at" timestamp
);

ALTER TABLE "banks" ADD FOREIGN KEY ("codigo_user") REFERENCES "users" ("codigo");

ALTER TABLE "banks" ADD FOREIGN KEY ("codigo_account_Type") REFERENCES "account_Type" ("codigo");

ALTER TABLE "banks" ADD FOREIGN KEY ("codigo_list_banks") REFERENCES "list_banks" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("codigo_user") REFERENCES "users" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("codigo_categorias") REFERENCES "categorias" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("codigo_bank") REFERENCES "banks" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("codigo_centro_custo") REFERENCES "centro_custo" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("codigo_tipos_gastos") REFERENCES "tipos_gastos" ("codigo");

ALTER TABLE "lancamentos" ADD FOREIGN KEY ("tipos_lancamentos") REFERENCES "tipos_lancamentos" ("codigo");
