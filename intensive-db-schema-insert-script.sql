BEGIN;


CREATE TABLE IF NOT EXISTS public.intensive_user
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    firstname character varying(60) NOT NULL,
    lastname character varying(60) NOT NULL,
    surname character varying(60),
    date_of_birth timestamp without time zone,
    location character varying(64),
    contact_id bigint,
    user_uuid uuid,
    PRIMARY KEY (id),
    CONSTRAINT user_uuid_unique_constraint UNIQUE (user_uuid)
);

CREATE TABLE IF NOT EXISTS public.technology
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    technology_name character varying,
    PRIMARY KEY (id),
    CONSTRAINT technology_unique_constraint UNIQUE (technology_name)
);

CREATE TABLE IF NOT EXISTS public.user_technologies
(
    user_id bigint,
    technology_id bigint,
    technology_aprovement_date timestamp without time zone,
    technology_level character varying(32)
);

CREATE TABLE IF NOT EXISTS public.credential
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    username character varying(64) NOT NULL,
    password character varying(256),
    role_id bigint,
    registration_date timestamp without time zone,
    last_login_date timestamp without time zone,
    is_non_locked boolean,
    is_active boolean,
    user_id bigint,
    is_credential_non_expired boolean,
    PRIMARY KEY (id),
    CONSTRAINT username_unique_constraint UNIQUE (username)
);

CREATE TABLE IF NOT EXISTS public.user_role
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    role_name character varying(32),
    PRIMARY KEY (id),
    CONSTRAINT role_name_unique_constraint UNIQUE (role_name)
);

CREATE TABLE IF NOT EXISTS public.privilege
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    privilege_name character varying NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT privilege_name_unique_constraint UNIQUE (privilege_name)
);

CREATE TABLE IF NOT EXISTS public.roles_privileges
(
    role_id bigint,
    privilege_id bigint
);

CREATE TABLE IF NOT EXISTS public.contact
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    phone_number character varying(64),
    skype_login character varying(64),
    email character varying(64) NOT NULL,
    telegram_login character varying(64),
    github_profile character varying(64),
    PRIMARY KEY (id),
    CONSTRAINT email_unique_contastraint UNIQUE (email),
    CONSTRAINT phone_number_unique_constraint UNIQUE (phone_number)
);

ALTER TABLE IF EXISTS public.intensive_user
    ADD CONSTRAINT contact_id_contacts_fk FOREIGN KEY (contact_id)
    REFERENCES public.contact (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.user_technologies
    ADD CONSTRAINT user_id_users_fk FOREIGN KEY (user_id)
    REFERENCES public.intensive_user (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.user_technologies
    ADD CONSTRAINT technology_technologies_fk FOREIGN KEY (technology_id)
    REFERENCES public.technology (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.credential
    ADD CONSTRAINT user_id_users_fk FOREIGN KEY (user_id)
    REFERENCES public.intensive_user (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.credential
    ADD CONSTRAINT role_id_roles_fk FOREIGN KEY (role_id)
    REFERENCES public.user_role (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.roles_privileges
    ADD CONSTRAINT role_id_roles_fk FOREIGN KEY (role_id)
    REFERENCES public.user_role (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.roles_privileges
    ADD CONSTRAINT privilege_id_privileges_fk FOREIGN KEY (privilege_id)
    REFERENCES public.privilege (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;
