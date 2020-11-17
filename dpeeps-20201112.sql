--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: clinics_clinic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics_clinic (
    id integer NOT NULL,
    description text,
    name character varying(100) NOT NULL,
    size character varying(10),
    image character varying(100),
    email character varying(254),
    website character varying(200),
    fax character varying(30),
    phone character varying(30),
    last_login timestamp with time zone,
    location_id integer NOT NULL,
    organisation_id integer
);


--
-- Name: clinics_clinic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinics_clinic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinics_clinic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinics_clinic_id_seq OWNED BY public.clinics_clinic.id;


--
-- Name: clinics_clinicflaggedclinic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics_clinicflaggedclinic (
    id integer NOT NULL,
    notes text NOT NULL,
    clinic_id integer NOT NULL,
    clinic_noted_id integer NOT NULL
);


--
-- Name: clinics_clinicflaggedclinic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinics_clinicflaggedclinic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinics_clinicflaggedclinic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinics_clinicflaggedclinic_id_seq OWNED BY public.clinics_clinicflaggedclinic.id;


--
-- Name: clinics_clinicflaggedprofessional; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics_clinicflaggedprofessional (
    id integer NOT NULL,
    notes text NOT NULL,
    clinic_id integer NOT NULL,
    professional_id integer NOT NULL
);


--
-- Name: clinics_clinicflaggedprofessional_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinics_clinicflaggedprofessional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinics_clinicflaggedprofessional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinics_clinicflaggedprofessional_id_seq OWNED BY public.clinics_clinicflaggedprofessional.id;


--
-- Name: clinics_location; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics_location (
    id integer NOT NULL,
    country character varying(20) NOT NULL,
    state character varying(20) NOT NULL,
    postcode character varying(10) NOT NULL,
    suburb character varying(20) NOT NULL,
    street_name character varying(100) NOT NULL,
    street_number character varying(30) NOT NULL,
    latitude double precision,
    longitude double precision,
    subpremise character varying(30),
    premise character varying(100)
);


--
-- Name: clinics_location_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinics_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinics_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinics_location_id_seq OWNED BY public.clinics_location.id;


--
-- Name: clinics_organisation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics_organisation (
    id integer NOT NULL,
    description text NOT NULL,
    name character varying(100) NOT NULL,
    size character varying(10) NOT NULL,
    image character varying(100),
    email character varying(254) NOT NULL,
    website character varying(200) NOT NULL,
    headquarters_id integer NOT NULL
);


--
-- Name: clinics_organisation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinics_organisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinics_organisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinics_organisation_id_seq OWNED BY public.clinics_organisation.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: professionals_area; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_area (
    id integer NOT NULL,
    postcode integer,
    country character varying(20) NOT NULL,
    state character varying(20) NOT NULL,
    city character varying(20) NOT NULL
);


--
-- Name: professionals_area_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_area_id_seq OWNED BY public.professionals_area.id;


--
-- Name: professionals_profession; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_profession (
    id integer NOT NULL,
    description text,
    active boolean NOT NULL,
    profession_type_id integer NOT NULL,
    professional_id integer NOT NULL,
    uid character varying(32) NOT NULL
);


--
-- Name: professionals_profession_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_profession_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_profession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_profession_id_seq OWNED BY public.professionals_profession.id;


--
-- Name: professionals_professional; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_professional (
    id integer NOT NULL,
    title character varying(20),
    description text,
    last_name character varying(100) NOT NULL,
    image character varying(100),
    last_login timestamp with time zone,
    first_name character varying(100) NOT NULL,
    bulk_billing text,
    fees text,
    wait_times text,
    uid character varying(32) NOT NULL
);


--
-- Name: professionals_professional_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_professional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_professional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_professional_id_seq OWNED BY public.professionals_professional.id;


--
-- Name: professionals_professionalgroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_professionalgroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    user_id integer NOT NULL,
    uid character varying(32) NOT NULL
);


--
-- Name: professionals_professionalgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_professionalgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_professionalgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_professionalgroup_id_seq OWNED BY public.professionals_professionalgroup.id;


--
-- Name: professionals_professionalgroupmapping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_professionalgroupmapping (
    id integer NOT NULL,
    group_id integer NOT NULL,
    professional_id integer NOT NULL
);


--
-- Name: professionals_professionalgroupmapping_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_professionalgroupmapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_professionalgroupmapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_professionalgroupmapping_id_seq OWNED BY public.professionals_professionalgroupmapping.id;


--
-- Name: professionals_professiontype; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_professiontype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    uid character varying(32) NOT NULL
);


--
-- Name: professionals_professiontype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_professiontype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_professiontype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_professiontype_id_seq OWNED BY public.professionals_professiontype.id;


--
-- Name: professionals_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_rate (
    id integer NOT NULL,
    hourly_pay_max integer,
    hourly_pay_min integer,
    annual_pay_max integer,
    annual_pay_min integer,
    currency character varying(5) NOT NULL
);


--
-- Name: professionals_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_rate_id_seq OWNED BY public.professionals_rate.id;


--
-- Name: professionals_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professionals_role (
    id integer NOT NULL,
    description text,
    start_date date,
    end_date date,
    clinic_id integer NOT NULL,
    professional_id integer NOT NULL,
    rate_id integer,
    healthlink_address character varying(100)
);


--
-- Name: professionals_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professionals_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professionals_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professionals_role_id_seq OWNED BY public.professionals_role.id;


--
-- Name: questions_choice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_choice (
    id integer NOT NULL,
    display_name character varying(50) NOT NULL,
    internal_id character varying(50) NOT NULL,
    weight integer NOT NULL
);


--
-- Name: questions_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_choice_id_seq OWNED BY public.questions_choice.id;


--
-- Name: questions_clinicanswer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_clinicanswer (
    id integer NOT NULL,
    choice_id integer NOT NULL,
    clinic_id integer NOT NULL,
    position_id integer NOT NULL,
    question_id integer NOT NULL
);


--
-- Name: questions_clinicanswer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_clinicanswer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_clinicanswer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_clinicanswer_id_seq OWNED BY public.questions_clinicanswer.id;


--
-- Name: questions_position; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_position (
    id integer NOT NULL,
    description text NOT NULL
);


--
-- Name: questions_position_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_position_id_seq OWNED BY public.questions_position.id;


--
-- Name: questions_professionalanswer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_professionalanswer (
    id integer NOT NULL,
    choice_id integer NOT NULL,
    professional_id integer NOT NULL,
    question_id integer NOT NULL
);


--
-- Name: questions_professionalanswer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_professionalanswer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_professionalanswer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_professionalanswer_id_seq OWNED BY public.questions_professionalanswer.id;


--
-- Name: questions_question; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_question (
    id integer NOT NULL,
    name text NOT NULL,
    clinic_question text NOT NULL,
    professional_question text NOT NULL
);


--
-- Name: questions_question_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_question_id_seq OWNED BY public.questions_question.id;


--
-- Name: questions_question_questionnaire; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_question_questionnaire (
    id integer NOT NULL,
    question_id integer NOT NULL,
    questionnaire_id integer NOT NULL
);


--
-- Name: questions_question_questionnaire_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_question_questionnaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_question_questionnaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_question_questionnaire_id_seq OWNED BY public.questions_question_questionnaire.id;


--
-- Name: questions_questionnaire; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions_questionnaire (
    id integer NOT NULL,
    description text NOT NULL
);


--
-- Name: questions_questionnaire_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_questionnaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_questionnaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_questionnaire_id_seq OWNED BY public.questions_questionnaire.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    auth_id character varying(100) NOT NULL,
    professional_id integer,
    email character varying(254),
    user_key character varying(8) NOT NULL
);


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_usernotesclinic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_usernotesclinic (
    id integer NOT NULL,
    notes text NOT NULL,
    clinic_id integer NOT NULL,
    user_id integer NOT NULL,
    uid character varying(32) NOT NULL
);


--
-- Name: users_usernotesclinic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_usernotesclinic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_usernotesclinic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_usernotesclinic_id_seq OWNED BY public.users_usernotesclinic.id;


--
-- Name: users_usernotesprofessional; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_usernotesprofessional (
    id integer NOT NULL,
    notes text NOT NULL,
    professional_id integer NOT NULL,
    user_id integer NOT NULL,
    uid character varying(32) NOT NULL
);


--
-- Name: users_usernotesprofessional_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_usernotesprofessional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_usernotesprofessional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_usernotesprofessional_id_seq OWNED BY public.users_usernotesprofessional.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: clinics_clinic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinic ALTER COLUMN id SET DEFAULT nextval('public.clinics_clinic_id_seq'::regclass);


--
-- Name: clinics_clinicflaggedclinic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedclinic ALTER COLUMN id SET DEFAULT nextval('public.clinics_clinicflaggedclinic_id_seq'::regclass);


--
-- Name: clinics_clinicflaggedprofessional id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedprofessional ALTER COLUMN id SET DEFAULT nextval('public.clinics_clinicflaggedprofessional_id_seq'::regclass);


--
-- Name: clinics_location id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_location ALTER COLUMN id SET DEFAULT nextval('public.clinics_location_id_seq'::regclass);


--
-- Name: clinics_organisation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_organisation ALTER COLUMN id SET DEFAULT nextval('public.clinics_organisation_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: professionals_area id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_area ALTER COLUMN id SET DEFAULT nextval('public.professionals_area_id_seq'::regclass);


--
-- Name: professionals_profession id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_profession ALTER COLUMN id SET DEFAULT nextval('public.professionals_profession_id_seq'::regclass);


--
-- Name: professionals_professional id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professional ALTER COLUMN id SET DEFAULT nextval('public.professionals_professional_id_seq'::regclass);


--
-- Name: professionals_professionalgroup id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroup ALTER COLUMN id SET DEFAULT nextval('public.professionals_professionalgroup_id_seq'::regclass);


--
-- Name: professionals_professionalgroupmapping id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroupmapping ALTER COLUMN id SET DEFAULT nextval('public.professionals_professionalgroupmapping_id_seq'::regclass);


--
-- Name: professionals_professiontype id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professiontype ALTER COLUMN id SET DEFAULT nextval('public.professionals_professiontype_id_seq'::regclass);


--
-- Name: professionals_rate id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_rate ALTER COLUMN id SET DEFAULT nextval('public.professionals_rate_id_seq'::regclass);


--
-- Name: professionals_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_role ALTER COLUMN id SET DEFAULT nextval('public.professionals_role_id_seq'::regclass);


--
-- Name: questions_choice id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_choice ALTER COLUMN id SET DEFAULT nextval('public.questions_choice_id_seq'::regclass);


--
-- Name: questions_clinicanswer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer ALTER COLUMN id SET DEFAULT nextval('public.questions_clinicanswer_id_seq'::regclass);


--
-- Name: questions_position id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_position ALTER COLUMN id SET DEFAULT nextval('public.questions_position_id_seq'::regclass);


--
-- Name: questions_professionalanswer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_professionalanswer ALTER COLUMN id SET DEFAULT nextval('public.questions_professionalanswer_id_seq'::regclass);


--
-- Name: questions_question id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question ALTER COLUMN id SET DEFAULT nextval('public.questions_question_id_seq'::regclass);


--
-- Name: questions_question_questionnaire id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question_questionnaire ALTER COLUMN id SET DEFAULT nextval('public.questions_question_questionnaire_id_seq'::regclass);


--
-- Name: questions_questionnaire id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_questionnaire ALTER COLUMN id SET DEFAULT nextval('public.questions_questionnaire_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_usernotesclinic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesclinic ALTER COLUMN id SET DEFAULT nextval('public.users_usernotesclinic_id_seq'::regclass);


--
-- Name: users_usernotesprofessional id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesprofessional ALTER COLUMN id SET DEFAULT nextval('public.users_usernotesprofessional_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add clinic	7	add_clinic
26	Can change clinic	7	change_clinic
27	Can delete clinic	7	delete_clinic
28	Can view clinic	7	view_clinic
29	Can add clinic flagged clinic	8	add_clinicflaggedclinic
30	Can change clinic flagged clinic	8	change_clinicflaggedclinic
31	Can delete clinic flagged clinic	8	delete_clinicflaggedclinic
32	Can view clinic flagged clinic	8	view_clinicflaggedclinic
33	Can add location	9	add_location
34	Can change location	9	change_location
35	Can delete location	9	delete_location
36	Can view location	9	view_location
37	Can add organisation	10	add_organisation
38	Can change organisation	10	change_organisation
39	Can delete organisation	10	delete_organisation
40	Can view organisation	10	view_organisation
41	Can add clinic flagged professional	11	add_clinicflaggedprofessional
42	Can change clinic flagged professional	11	change_clinicflaggedprofessional
43	Can delete clinic flagged professional	11	delete_clinicflaggedprofessional
44	Can view clinic flagged professional	11	view_clinicflaggedprofessional
45	Can add area	12	add_area
46	Can change area	12	change_area
47	Can delete area	12	delete_area
48	Can view area	12	view_area
49	Can add professional	13	add_professional
50	Can change professional	13	change_professional
51	Can delete professional	13	delete_professional
52	Can view professional	13	view_professional
53	Can add rate	14	add_rate
54	Can change rate	14	change_rate
55	Can delete rate	14	delete_rate
56	Can view rate	14	view_rate
57	Can add role	15	add_role
58	Can change role	15	change_role
59	Can delete role	15	delete_role
60	Can view role	15	view_role
61	Can add professional flagged professional	16	add_professionalflaggedprofessional
62	Can change professional flagged professional	16	change_professionalflaggedprofessional
63	Can delete professional flagged professional	16	delete_professionalflaggedprofessional
64	Can view professional flagged professional	16	view_professionalflaggedprofessional
65	Can add professional flagged clinic	17	add_professionalflaggedclinic
66	Can change professional flagged clinic	17	change_professionalflaggedclinic
67	Can delete professional flagged clinic	17	delete_professionalflaggedclinic
68	Can view professional flagged clinic	17	view_professionalflaggedclinic
69	Can add choice	18	add_choice
70	Can change choice	18	change_choice
71	Can delete choice	18	delete_choice
72	Can view choice	18	view_choice
73	Can add position	19	add_position
74	Can change position	19	change_position
75	Can delete position	19	delete_position
76	Can view position	19	view_position
77	Can add questionnaire	20	add_questionnaire
78	Can change questionnaire	20	change_questionnaire
79	Can delete questionnaire	20	delete_questionnaire
80	Can view questionnaire	20	view_questionnaire
81	Can add question	21	add_question
82	Can change question	21	change_question
83	Can delete question	21	delete_question
84	Can view question	21	view_question
85	Can add professional answer	22	add_professionalanswer
86	Can change professional answer	22	change_professionalanswer
87	Can delete professional answer	22	delete_professionalanswer
88	Can view professional answer	22	view_professionalanswer
89	Can add clinic answer	23	add_clinicanswer
90	Can change clinic answer	23	change_clinicanswer
91	Can delete clinic answer	23	delete_clinicanswer
92	Can view clinic answer	23	view_clinicanswer
93	Can add profession type	24	add_professiontype
94	Can change profession type	24	change_professiontype
95	Can delete profession type	24	delete_professiontype
96	Can view profession type	24	view_professiontype
97	Can add profession	25	add_profession
98	Can change profession	25	change_profession
99	Can delete profession	25	delete_profession
100	Can view profession	25	view_profession
101	Can add professional group	26	add_professionalgroup
102	Can change professional group	26	change_professionalgroup
103	Can delete professional group	26	delete_professionalgroup
104	Can view professional group	26	view_professionalgroup
105	Can add professional group mapping	27	add_professionalgroupmapping
106	Can change professional group mapping	27	change_professionalgroupmapping
107	Can delete professional group mapping	27	delete_professionalgroupmapping
108	Can view professional group mapping	27	view_professionalgroupmapping
109	Can add user notes clinic	28	add_usernotesclinic
110	Can change user notes clinic	28	change_usernotesclinic
111	Can delete user notes clinic	28	delete_usernotesclinic
112	Can view user notes clinic	28	view_usernotesclinic
113	Can add user notes professional	29	add_usernotesprofessional
114	Can change user notes professional	29	change_usernotesprofessional
115	Can delete user notes professional	29	delete_usernotesprofessional
116	Can view user notes professional	29	view_usernotesprofessional
117	Can add user	30	add_user
118	Can change user	30	change_user
119	Can delete user	30	delete_user
120	Can view user	30	view_user
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$pQCMgxLqALpQ$T/ZUneOngwyhvFSLH/398fWnyJnW4ZJYvOtNVpNDvlw=	2020-10-25 18:59:48.346258+11	t	elliottlovell			elliott.lovell88@gmail.com	t	t	2020-05-20 22:32:47.622564+10
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: clinics_clinic; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clinics_clinic (id, description, name, size, image, email, website, fax, phone, last_login, location_id, organisation_id) FROM stdin;
1742	\N	Lib Heyward Clinical Psychologist	\N		\N	http://www.libheyward.com.au/	6334 0203	(03) 6334 3311	\N	1693	\N
1744	\N	Ruth Paul Clinical Psychologist	\N		\N	http://www.holymantherapycentre.com.au/	6301 9260	0477 554 260	\N	1694	\N
1747	\N	Forpsych	\N		\N	https://www.forpsych.com.au/	6301 9211	0438 908 331	\N	1697	\N
1749	\N	Headspace Launceston	\N		\N	http://headspace.org.au/headspace-centres/launceston/	6335 3127	(03) 6335 3100	\N	1699	\N
1751	\N	Russell Mccashney Social Worker	\N		\N	http://www.mccashneyconsulting.com.au/	6334 0203	0427 313 859	\N	1701	\N
1753	\N	Robyn Mckinnon Consultancy And Counselling Services - Launceston	\N		\N	http://www.rmcounselling.com.au/	6701 5206	0419 544 110	\N	1703	\N
1754	\N	Robyn Mckinnon Consultancy And Counselling Services - Longford	\N		\N	http://www.rmcounselling.com.au/	6701 5206	0419 544 110	\N	1704	\N
1759	\N	Tim Feely And Associates	\N		\N	http://www.timfeely.com.au/	6339 2771	(03) 6334 4451	\N	1708	\N
1762	\N	Beaconsfield Doctors Surgery	\N		\N	https://yhcgroup.com.au/centres/beaconsfield/	6383 1700	(03) 6383 1770	\N	1711	\N
1763	\N	Rose Cottage Medical Centre	\N		\N	http://www.rosecottagemedical.com.au/	6334 3630	(03) 6334 3622	\N	1712	\N
1764	\N	Westbury Doctors Surgery	\N		\N	https://yhcgroup.com.au/centres/westbury/	6393 2503	(03) 6393 2083	\N	1713	\N
1765	\N	Evandale Doctors Surgery	\N		\N	https://yhcgroup.com.au/centres/evandale/	6391 8956	(03) 6714 4828	\N	1714	\N
1769	\N	Janis Richards Psychologist - Mowbray	\N		\N	\N		0429 402 212	\N	1718	\N
1771	\N	Lyndon Walker Psychologist	\N		\N	http://individualandfamilycounselling.com.au/	6326 6384	0417 038 471	\N	1720	\N
1772	\N	Rubicon Psychology	\N		\N	http://rubiconpsychology.com.au/	6411 6644	(03) 6451 5838	\N	1721	\N
1773	\N	Somerset Medical Centre	\N		\N	http://www.yourhealth.net.au/smc/	6435 2773	(03) 6435 1421	\N	1722	\N
1774	\N	Maureen Doherty - Psychologist	\N		\N	\N		0408 868 131	\N	1723	\N
1775	\N	Coastal Psychology	\N		\N	https://coastalpsychology.com.au/	6424 2079	(03) 6424 2048	\N	1724	\N
1777	\N	Elpe Health - Ulverstone	\N		\N	https://www.elpe.com.au/elpe-health	6425 7667	(03) 6425 6901	\N	1726	\N
1781	\N	Elpe Health - Zeehan	\N		\N	http://www.ochrehealth.com.au/practices/zeehan-general-practice/	6425 7667	(03) 6471 6262	\N	1730	\N
1782	\N	Psychology Caffe - Ulverstone	\N		\N	http://www.psychologycaffe.com.au/	6426 3054	(03) 6425 2881	\N	1731	\N
1786	\N	Psychology Caffe - Latrobe	\N		\N	http://www.psychologycaffe.com.au/	6426 3054	(03) 6426 3050	\N	1735	\N
1787	\N	Psychology Plus	\N		\N	http://www.psychologyplus.org/	6431 9950	(03) 6431 9959	\N	1736	\N
1788	\N	Southside Family Medical - Burnie	\N		\N	https://www.tasfamilymedical.com/	6432 2255	(03) 6432 2222	\N	1737	\N
1789	\N	Saunders Street Clinic	\N		\N	http://saundersstreetclinic.com.au/	6442 1711	(03) 6442 1700	\N	1738	\N
1790	\N	Burnie Gp Super Clinic	\N		\N	http://www.burniesuperclinic.com.au/contact-us.html	6433 9900	(03) 6433 9999	\N	1739	\N
1796	\N	Sheffield Medical Centre	\N		\N	https://yhcgroup.com.au/centres/sheffield/	6491 1977	(03) 6491 1166	\N	1745	\N
1800	\N	Hq Counselling And Psychological Services	\N		\N	\N	6432 1241	(03) 6432 1229	\N	1744	\N
1802	\N	The Hobart Clinic	\N		\N	http://www.thehobartclinic.com.au/	6247 6439	(03) 6247 9960	\N	1750	\N
1804	\N	The Hobart Anaesthetic Group	\N		\N	http://www.thegroup.com.au/	6224 0034	(03) 6223 1610	\N	1752	\N
1809	\N	Calvary Cardiac Centre	\N		\N	http://www.calvarylenahvalley.org.au/	6278 9221	(03) 6278 5333	\N	1757	\N
1810	\N	Hobart Heart Centre	\N		\N	http://www.hhc.com.au/	6214 3092	(03) 6214 3085	\N	1758	\N
1811	\N	Hobart Cardiology And Medical Specialists	\N		\N	http://hobartcardiology.com.au/	6222 4222	(03) 6222 4200	\N	1759	\N
1812	\N	Charles Clinic - Launceston	\N		\N	http://www.charlesheart.care/	6334 2424	(03) 6311 1555	\N	1760	\N
1813	\N	Calvary Health Care Sessional Rooms	\N		\N	https://www.calvarycare.org.au/	6334 4242	(03) 6332 4999	\N	1761	\N
1820	\N	Calvary Cardiac Centre Cardiothoracic Consulting Rooms	\N		\N	http://www.calvarylenahvalley.org.au/	6278 5077	(03) 6278 5333	\N	1767	\N
1822	\N	Dr Ashutosh Hardikar Private Specialist	\N		\N	http://www.dhhs.tas.gov.au/service_information/services_files/RHH	6231 3055	(03) 6166 8308	\N	1769	\N
1823	\N	Launceston Pathology Collection Centre - Launceston	\N		\N	http://www.launcestonpath.com.au/	6334 2273	(03) 6334 3636	\N	1770	\N
1824	\N	St John's Sessional Suites	\N		\N	https://www.calvarycare.org.au/st-johns-private-hospital-hobart/doctors-and-health-professionals/find-a-specialist/	6224 8992	(03) 6224 7244	\N	1771	\N
1825	\N	Specialist Care Australia - Launceston	\N		\N	http://specialistcareaustralia.com.au/	6779 1301	(03) 6779 1300	\N	1772	\N
1827	\N	Hobart Medical Specialists	\N		\N	http://www.hms.org.au/	6210 1950	(03) 6210 1900	\N	1774	\N
1828	\N	Hobart Colorectal Surgeons	\N		\N	http://www.careygall.com.au/	6228 2633	(03) 6228 2688	\N	1775	\N
1829	\N	Tamar Surgical	\N		\N	http://www.tamarsurgical.com.au/	6380 8388	(03) 6380 8388	\N	1776	\N
1831	\N	Mr Hung Nguyen Private Specialist	\N		\N	\N	6334 2527	(03) 6334 2242	\N	1778	\N
1832	\N	Dr Srini Yellapu Private Specialist	\N		\N	http://www.sriniyellapu.com/	6214 3274	(03) 6214 3275	\N	1779	\N
1834	\N	Dr Andrew Jevtic Private Specialist - Hobart	\N		\N	https://www.healthdirect.gov.au/australian-health-services/20073432/dr-andrew-jevtic-private-specialist-sandy-bay/services/sandy-bay-7005-king	6224 3302	(03) 6224 3303	\N	1781	\N
1837	\N	Regional Imaging Tasmania - St Vincent's Hospital	\N		\N	http://www.regionalimaging.com.au/	6334 3335	(03) 6332 7400	\N	1784	\N
1838	\N	Dr Joanne Campbell Private Specialist	\N		\N	\N	6334 2527	(03) 6334 2242	\N	1778	\N
1839	\N	Aboriginal Health Service Hobart - Nipluna	\N		\N	https://tacinc.com.au/programs/health/	6234 0780	(03) 6234 0777	\N	1785	\N
1840	\N	Launceston Respiratory & Sleep Centre	\N		\N	http://www.lstrsc.com.au/	6334 0260	(03) 6331 1300	\N	1786	\N
1841	\N	Hobart Private Specialists - Suite 5	\N		\N	http://www.hobartprivatehospital.com.au/	6214 3577	(03) 6214 3000	\N	1787	\N
1843	\N	Mr Warwick Brennan Private Specialist	\N		\N	\N	6224 8551	(03) 6224 0100	\N	1789	\N
1844	\N	Mr Magdi Ghali Private Specialist	\N		\N	\N	6431 9203	(03) 6431 9060	\N	1790	\N
1846	\N	Mr Danesh Irani Private Specialist	\N		\N	\N	6334 3478	(03) 6331 3144	\N	1792	\N
1847	\N	Hobart Ent	\N		\N	\N	6223 7671	(03) 6224 2400	\N	1793	\N
1849	\N	Dr Ana Naiman Private Specialist	\N		\N	\N	6223 7731	(03) 6224 2400	\N	1795	\N
1851	\N	Gastrohealth Hobart	\N		\N	http://gastrohobart.com.au/	6251 1585	(03) 6169 1177	\N	1797	\N
1853	\N	Central Gastroenterology Pty Ltd	\N		\N	\N	6231 5876	(03) 6214 3592	\N	1798	\N
1854	\N	Dr Jarrad Wilson Private Specialist	\N		\N	\N	6228 7048	(03) 6228 2688	\N	1799	\N
1783	\N	Psychology Caffe - Burnie	\N		\N	https://www.tasfamilymedical.com/	6426 3054	(03) 6432 2222	\N	1732	\N
1856	\N	Dr Scott Fanning Private Specialist	\N		\N	http://www.launcestongastro.com.au/	6301 9234	(03) 6334 4390	\N	1801	\N
1861	\N	Hobart Private Consulting Rooms	\N		\N	\N	6214 3061	(03) 6222 4200	\N	1805	\N
1867	\N	Hobart Women's Specialists	\N		\N	http://www.hobartwomensspecialists.com.au/	6220 0688	(03) 6220 0600	\N	1811	\N
1869	\N	Calvary Consulting Suites - Practice 1	\N		\N	http://www.tasortho.com.au/	6234 8565	(03) 6234 7511	\N	1813	\N
1636	\N	Roslyn Badcock & Associates - Sorell	\N		\N	https://www.sorelldoctorssurgery.com.au/	6269 2489	(03) 6165 1595	\N	1601	\N
1632	\N	Gregory Street Psychology	\N		\N	http://www.gregorystreetpsychology.com.au/	6251 1566	(03) 6224 7877	\N	1597	\N
1633	\N	Christina Anderson - Clinical Psychologist	\N		\N	\N	6223 8638	0438 340 258	\N	1598	\N
1635	\N	Roslyn Badcock & Associates - Bellerive	\N		\N	\N	6244 4419	(03) 6244 8670	\N	1600	\N
1637	\N	Salamanca Psychology	\N		\N	http://www.salamancapsychology.com.au/	6224 1644	(03) 6224 1633	\N	1602	\N
1638	\N	Archer Street Health Pty Ltd	\N		\N	https://www.archerstreethealth.com.au/	6124 2232	(03) 6124 2222	\N	1603	\N
1639	\N	The Psychology Centre	\N		\N	http://www.psychologycentre.com.au	6223 1349	(03) 6223 1138	\N	1604	\N
1640	\N	Dr Steven Bradford - Clinical Psychologist	\N		\N	http://www.tasmindbodylife.com/	6285 8080	0475 000 679	\N	1598	\N
1641	\N	Roseanne Brumby (clinical Psychologist & Couples Counsellor)	\N		\N	http://www.macquariepsychology.net.au/		(03) 6224 8448	\N	1598	\N
1642	\N	Linda Burrows Clinical Psychologist	\N		\N	\N	6223 2800	(03) 6223 2822	\N	1598	\N
1643	\N	Macquarie Psychology	\N		\N	http://www.macquariepsychology.net.au/	6224 8449	(03) 6224 8448	\N	1605	\N
1647	\N	Christine Clifford Clinical Psychologist	\N		\N	https://www.psychology159.com/contact	6223 1349	6223 1138	\N	1608	\N
1648	\N	Marie-louise Craske - Clinical Psychologist	\N		\N	\N	6251 1552	0428 079 338	\N	1609	\N
1650	\N	Tobias Croft - Clinical Psychologist - Cygnet	\N		\N	http://huonvalleyhealthcentre.com.au/	6295 1233	(03) 6295 1333	\N	1611	\N
1652	\N	Kingston Beach Health Centre	\N		\N	http://www.kbhc.com.au/	6229 9800	(03) 6229 9844	\N	1613	\N
1653	\N	Eclectic Consulting Ltd	\N		\N	http://eclectic-consult.com/	6134 8813	(03) 9016 0306	\N	1614	\N
1654	\N	Psychologyworks	\N		\N	http://psychologyworks.com.au/	6234 3005	(03) 6234 3555	\N	1615	\N
1655	\N	Shirin Fernandez Clinical Psychologist	\N		\N	https://www.psychology159.com/contact	6105 0750	0407 364 574	\N	1608	\N
1659	\N	Rohini Gore Clinical Psychologist	\N		\N	http://www.tasmindbodylife.com/		0475 000 679	\N	1618	\N
1660	\N	Headspace Hobart	\N		\N	https://headspace.org.au/headspace-centres/hobart/	6231 3908	(03) 6231 2927	\N	1619	\N
1661	\N	Newchoices - Ferguson Court	\N		\N	\N		6229 2111	\N	1620	\N
1664	\N	Your Health Hub	\N		\N	http://www.yourhealthhub.com.au/	6122 0169	(03) 6122 0150	\N	1623	\N
1667	\N	New Town Psychology Practice	\N		\N	\N	6228 3661	(03) 6228 3868	\N	1626	\N
1669	\N	Knopwood Medical Centre	\N		\N	http://scctas.net/	6247 1749	(03) 6247 1019	\N	1628	\N
1671	\N	Geraldine Lum Psychologist	\N		\N	\N	6223 4944	(03) 6223 7352	\N	1598	\N
1672	\N	Psych2u	\N		\N	https://psych2u.com.au/	1800 472 866	1300 472 866	\N	1630	\N
1634	\N	The Practice (psychology Services) - Kingston	\N		\N	\N	6251 1530	0490 143 169	\N	1599	\N
1656	\N	Brad Freeman Clinical Psychologist	\N		\N	\N		0412 000 250	\N	1616	\N
1665	\N	Scaling Your Mountains	\N		\N	\N		6224 0855	\N	1624	\N
1678	\N	After Hours Doctor	\N		\N	http://www.afterhoursdoctor.com.au/	6273 1405	(03) 6165 2360	\N	1635	\N
1694	\N	The Stress Clinic Of Hobart	\N		\N	http://thestressclinicofhobart.com/	6228 9909	(03) 6228 9909	\N	1646	\N
1695	\N	Helen Fryer Counselling And Psychotherapy	\N		\N	\N		0402 029 069	\N	1647	\N
1697	\N	Lorraine's Place	\N		\N	\N		0459 764 920	\N	1649	\N
1698	\N	Southern Beaches Counselling	\N		\N	http://www.hobartcounsellingcentre.com.au/		0487 338 103	\N	1650	\N
1644	\N	Karen Chilcott Clinical Psychologist	\N		\N	\N	6242 0416	6282 1400	\N	1606	\N
1645	\N	Parinda Chiranakorn Clinical Psychologist	\N		\N	\N		0412 726 490	\N	1607	\N
1646	\N	Clair Cholajda Clinical Psychologist	\N		\N	\N	6223 4944	6223 4162	\N	1598	\N
1702	\N	Cecilia Bendall Psychologist	\N		\N	\N	6278 9487	6278 9489	\N	1654	\N
1709	\N	Richmond Therapy Practice	\N		\N	\N		0418 493 977	\N	1660	\N
1649	\N	Tess Crawley & Associates - Hobart	\N		\N	\N	6223 2244	6223 2122	\N	1610	\N
1713	\N	Louise King Psychologist	\N		\N	\N		0400 920 763	\N	1664	\N
1651	\N	Tobias Croft - Clinical Psychologist - Geeveston	\N		\N	\N	6297 0031	6297 1903	\N	1612	\N
1657	\N	Janet Freestun Clinical Psychologist	\N		\N	\N	6223 4944	0408 822 921	\N	1617	\N
1658	\N	Lisa Gilroy Clinical Psychologist	\N		\N	\N	6107 9424	0421 049 619	\N	1608	\N
1662	\N	Newchoices - Elizabeth Street	\N		\N	\N		6229 2111	\N	1621	\N
1663	\N	Newchoices - John Street	\N		\N	\N		6229 2111	\N	1622	\N
1666	\N	Kristy Hill Clinical Psychologist	\N		\N	\N	6251 1553	0448 494 389	\N	1625	\N
1668	\N	Elizabeth Hyslop Clinical Psychologist	\N		\N	\N	6234 9473	0417 588 400	\N	1627	\N
1670	\N	Sabina Lane - Clinical Psychologist	\N		\N	\N		0417 379 774	\N	1629	\N
1674	\N	Julian Mcgarry Clinical Psychologist - Kingston	\N		\N	\N	6295 0776	6295 0776	\N	1631	\N
1676	\N	Adjusting Futures	\N		\N	\N	6278 8142	0488 099 184	\N	1633	\N
1679	\N	Peter Nelson Clinical Psychologist	\N		\N	\N	6234 9003	6235 3100	\N	1636	\N
1681	\N	Kingston Psychology	\N		\N	\N	6229 3901	6229 2888	\N	1637	\N
1684	\N	St Helen's Private Consulting Suites	\N		\N	\N	6221 6586	6221 6585	\N	1640	\N
1693	\N	Hobart Educational Assessments	\N		\N	\N		0417 300 620	\N	1597	\N
1703	\N	Focused Psychology Services	\N		\N	\N	6134 8826	1300 472 866	\N	1630	\N
1704	\N	Gp2u Telehealth Pty Ltd	\N		\N	\N	1800 472 832	1300 472 866	\N	1655	\N
1715	\N	Jasmin Mandari Psychologist	\N		\N	\N		0417 162 795	\N	1666	\N
1745	\N	Emerge Allied Health	\N		\N	\N	6301 9262	6709 8270	\N	1695	\N
1746	\N	Megan Smoak Clinical Psychologist	\N		\N	http://www.holymantherapycentre.com.au/	6388 8114	0477 554 260	\N	1696	\N
1752	\N	Robyn Mckinnon Consultancy And Counselling Services - Flinders Island	\N		\N	\N	6701 5206	6701 5227	\N	1702	\N
1755	\N	Rob Pearce - Social Worker	\N		\N	\N		0455 513 090	\N	1705	\N
1757	\N	Rising Strong Psychology & Consulting Services	\N		\N	http://www.launcestonhealthhub.com.au/	6388 8115	(03) 6388 8111	\N	1707	\N
1761	\N	Psychology Caffe - Deloraine	\N		\N	https://www.delorainehouse.com.au/contact-us/	6426 3054	(03) 6362 2678	\N	1710	\N
1779	\N	Elpe Health - Somerset	\N		\N	http://www.yourhealth.net.au/smc/	6425 7667	(03) 6435 1421	\N	1728	\N
2187	\N	Strive Chiropractors	\N		\N	\N	6334 9307	6334 4667	\N	2090	\N
1784	\N	Robyn Mckinnon Consultancy And Counselling Services - King Island	\N		\N	http://www.dhhs.tas.gov.au/service_information/service_delivery_points/king_island_district_hospital_and_health_centre	6701 5206	(03) 6462 9900	\N	1733	\N
1727	\N	University Psychology Clinic	\N		\N	\N	6226 7249	6226 2805	\N	1678	\N
1794	\N	Vivien Henderson Psychological Services	\N		\N	\N	6433 0149	6433 0754	\N	1743	\N
1798	\N	Eco Health Therapies	\N		\N	\N		(03) 6425 5081	\N	1747	\N
1730	\N	Ashley Wong Hoy Psychologist - Nubeena	\N		\N	\N		0408 482 384	\N	1681	\N
1731	\N	Ashley Wong Hoy Psychologist - Sorell	\N		\N	\N		0408 482 384	\N	1682	\N
1732	\N	Mrs Shane Cavanagh Social Worker	\N		\N	\N		0429 364 199	\N	1683	\N
1735	\N	Helen Bindoff Clinical Psychologist	\N		\N	\N	6334 8494	6331 9939	\N	1686	\N
1743	\N	Psychological Assessment And Assistance	\N		\N	\N	6338 1813	0438 521 758	\N	1692	\N
1748	\N	Coaching Access Management Systems	\N		\N	\N	6301 9550	0419 301 773	\N	1698	\N
1750	\N	Deborah Klye Mental Health Social Worker - The Blue Door	\N		\N	\N	6334 8465	0409 948 172	\N	1700	\N
1756	\N	Bernadette Zeeman Accredited Mental Hlth Social Worker	\N		\N	\N	6301 9237	0437 792 665	\N	1706	\N
1758	\N	Beverley Ernst Psychologist - The Blue Door	\N		\N	\N	6334 8465	0448 347 933	\N	1700	\N
1760	\N	Wendy Gall Psychologist	\N		\N	\N	6334 2537	6331 6563	\N	1709	\N
1766	\N	Lesley Osenieks - Psychologist	\N		\N	\N	6388 8114	6388 8115	\N	1715	\N
1767	\N	Prospect Allied Health	\N		\N	\N	6344 8542	6344 8512	\N	1716	\N
1768	\N	Janis Richards Psychologist - Campbell Town	\N		\N	\N		0429 402 212	\N	1717	\N
1770	\N	Tess Crawley & Associates - Launceston	\N		\N	\N	6223 2244	6331 0577	\N	1719	\N
1776	\N	Michael Marriot Clinical Psychologist	\N		\N	\N	6431 1166	6431 1166	\N	1725	\N
1778	\N	Elpe Health - Sheffield	\N		\N	\N	6425 7667	6425 6901	\N	1727	\N
1780	\N	Psychology Caffe - West Coast	\N		\N	\N	6425 7667	6425 6901	\N	1729	\N
1785	\N	Psychology Caffe - Devonport	\N		\N	\N	6426 3054	6426 3050	\N	1734	\N
1791	\N	Christina Chamley Psychologist	\N		\N	\N		6432 6000	\N	1740	\N
1792	\N	Psychology Caffe - Smithton	\N		\N	\N	6426 3054	6426 3050	\N	1741	\N
1793	\N	Anna De La Rue Psychological And Counselling Services	\N		\N	\N		0439 394 794	\N	1742	\N
1795	\N	North West Psychology	\N		\N	\N	6431 1030	6431 1191	\N	1744	\N
1797	\N	Andrew Mcclymont Psychologist	\N		\N	\N	6437 2339	0477 882 484	\N	1746	\N
1799	\N	Elpe Health - Wynyard	\N		\N	http://wynyardmedical.com.au/	6425 7667	(03) 6442 2201	\N	1748	\N
1801	\N	Care Forward - North West	\N		\N	http://www.careforward.com.au/	6423 7999	1300 364 876	\N	1749	\N
1803	\N	Dr Malcolm Anderson Private Specialist	\N		\N	\N	6214 3031	6214 3047	\N	1751	\N
1806	\N	Southern Pain Service	\N		\N	\N	6251 1663	6169 9527	\N	1754	\N
1805	\N	Tasmanian Anaesthesia	\N		\N	\N	6251 1595	6292 0973	\N	1753	\N
1808	\N	Dr Rob Eadie Private Specialist	\N		\N	\N	6343 0866	0421 609 703	\N	1756	\N
1807	\N	Old Vic Anaesthetists	\N		\N	http://www.oldvic.com.au/	6331 5966	(03) 6331 5299	\N	1755	\N
1814	\N	Hayat Cardiology	\N		\N	\N	6388 8114	6388 8115	\N	1696	\N
1815	\N	Dr Brian Herman Private Specialist	\N		\N	\N	6331 0943	6331 6643	\N	1762	\N
1817	\N	A/prof Donald Mctaggart Private Specialist	\N		\N	\N	6331 8486	(03) 6334 1393	\N	1764	\N
1818	\N	Dr Bhuwan Singh Private Specialist	\N		\N	\N	6331 5159	6334 5645	\N	1765	\N
1816	\N	Dr George Koshy Private Specialist	\N		\N	\N	6334 0653	6334 0640	\N	1763	\N
1819	\N	Charles Clinic - North West	\N		\N	\N	6334 2424	6311 1555	\N	1766	\N
1821	\N	Dr Keshav Bhattarai Private Specialist	\N		\N	\N	6231 3055	6166 8999	\N	1768	\N
1826	\N	Specialist Care Australia - Ulverstone	\N		\N	\N	6779 1308	6779 1309	\N	1773	\N
1830	\N	Dr David Lloyd Private Specialist	\N		\N	http://www.davidlloydcolorectal.com.au/	6331 1117	(03) 6331 0717	\N	1777	\N
1833	\N	Launceston Dermatology	\N		\N	\N	6331 1237	6331 2288	\N	1780	\N
1845	\N	Mr Magdi Ghali Private Specialist - Cradle Coast	\N		\N	\N	6431 9203	6431 9060	\N	1791	\N
1857	\N	Dr Brent Mitchell Private Specialist	\N		\N	\N	6331 3140	(03) 6334 2866	\N	1802	\N
1860	\N	Dr Albert Nwaba Private Specialist	\N		\N	http://www.northwestprivate.com.au/	6424 6855	(03) 6432 6000	\N	1740	\N
1863	\N	Calvary Private Specialists	\N		\N	http://www.calvarylenahvalley.org.au/	6228 5944	(03) 6278 5333	\N	1807	\N
1864	\N	Dr Krishna Kalpurath - Private Specialist Geriatrician	\N		\N	http://www.calvarystvincents.org.au/	6426 5523	(03) 6332 4999	\N	1808	\N
1868	\N	Dr Andrew Evans Private Specialist	\N		\N	\N	9428 7769	9428 6386	\N	1812	\N
1871	\N	Tasmanian Spine Service - Launceston	\N		\N	http://www.launcestonhealthhub.com.au/	6278 2494	(03) 6388 8111	\N	1815	\N
1835	\N	Dr Andrew Jevtic Private Specialist - Launceston	\N		\N	\N	6224 3302	6224 3303	\N	1782	\N
1842	\N	Dr Simone Boardman Private Specialist	\N		\N	\N	6388 9260	6988 9251	\N	1788	\N
1848	\N	Mr Philip Moore Private Specialist	\N		\N	\N	6223 2242	6231 0385	\N	1794	\N
1850	\N	Dr Stephen Chung Private Specialist	\N		\N	\N	6214 3593	6214 3592	\N	1796	\N
1852	\N	Calvary Medical Group	\N		\N	\N	6278 5233	6278 5456	\N	1767	\N
1855	\N	Dr Mark Wilson Gastroenterology	\N		\N	\N	6281 9324	6281 9319	\N	1800	\N
1858	\N	Offspring Child Health	\N		\N	\N	9815 1115	1800 543 737	\N	1803	\N
1859	\N	Dr Mark Veldhuis Private Specialist	\N		\N	\N	6334 2589	6334 1455	\N	1804	\N
1862	\N	Dr Suneet Kohli - Private Specialist	\N		\N	\N	6380 8368	6311 1585	\N	1806	\N
1865	\N	Launceston Memory Centre	\N		\N	\N	6343 2014	0407 803 276	\N	1809	\N
1866	\N	Regal Elderly Medicine	\N		\N	\N	6301 9287	6338 2386	\N	1810	\N
1872	\N	Tasmanian Spine Service - Lenah Valley	\N		\N	\N	6278 2494	6228 3777	\N	1816	\N
1876	\N	Eternal Women's Health	\N		\N	\N	6220 1355	6220 1350	\N	1819	\N
1836	\N	Tasderm	\N		\N	\N	6343 0866	(03) 6343 0700	\N	1783	\N
1879	\N	The Tabbot Foundation	\N		\N	\N	6224 2700	1800 180 880	\N	1822	\N
1881	\N	Tas Ivf - Hobart Clinic	\N		\N	\N	6212 7777	6162 7700	\N	1824	\N
1880	\N	Fertility Tasmania	\N		\N	http://www.fertilitytasmania.com.au/	6169 1110	(03) 6169 1111	\N	1823	\N
1884	\N	Tasgynae Obstetricians & Gynaecologists	\N		\N	http://www.tamarobgyn.com.au/	6301 9270	(03) 6343 0999	\N	1827	\N
1885	\N	North West Private Hospital	\N		\N	http://www.northwestprivate.com.au/	6432 6099	(03) 6432 6000	\N	1828	\N
1892	\N	Hobart Eye Surgeons - Eastern Shore	\N		\N	http://www.eyesurgeons.com.au/	6210 6099	(03) 6210 6000	\N	1834	\N
1888	\N	Hobart Occupational Medicine	\N		\N	\N	6224 0994	6224 0935	\N	1831	\N
1889	\N	Tasoem	\N		\N	\N	6234 6299	6234 6376	\N	1832	\N
2197	\N	Participate Tasmania (incorporated)	\N		\N	\N		6237 0008	\N	2100	\N
1904	\N	Dr Robert Mckay Private Specialist	\N		\N	http://www.northwesteyesurgeons.com.au/our-specialists.html	6432 1627	(03) 6431 7604	\N	1828	\N
1918	\N	Dr Berni Einoder Private Specialist	\N		\N	\N	6331 9611	(03) 6331 9973	\N	1856	\N
1919	\N	Mr Gary Fettke Private Specialist	\N		\N	\N	6334 8892	(03) 6334 5133	\N	1857	\N
1920	\N	Dr Timothy Marshall Private Specialist	\N		\N	\N	6331 9611	6331 9973	\N	1856	\N
1922	\N	Mr David Penn Private Specialist	\N		\N	\N	6334 8892	(03) 6334 8896	\N	1857	\N
1927	\N	Tasmanian Oral Maxillofacial And Implant Surgery - Devonport	\N		\N	http://www.tomis.com.au/	6251 1629	(03) 6169 2129	\N	1861	\N
1935	\N	Dr Christopher Bailey Private Specialist	\N		\N	\N	6334 7661	(03) 6334 7662	\N	1867	\N
1954	\N	The Swallows Centre	\N		\N	\N	6331 3429	6331 3426	\N	1882	\N
1958	\N	Dr Mark Bell Private Specialist - Burnie	\N		\N	\N	6334 7009	6334 7007	\N	1885	\N
1900	\N	Launceston Eye Institute	\N		\N	\N	6344 1577	6344 1377	\N	1842	\N
1903	\N	Launceston Eye Institute - Ulverstone	\N		\N	\N	6344 1577	6344 1377	\N	1845	\N
1905	\N	Dr Ian Murrell Private Specialist	\N		\N	\N	6344 1577	6344 1377	\N	1846	\N
1914	\N	Calvary Consulting Suites - Practice 2	\N		\N	\N	6234 6266	6234 7511	\N	1813	\N
1915	\N	Watson Orthopaedics	\N		\N	\N	6231 2378	6231 2477	\N	1853	\N
1924	\N	Mr Scott Fletcher Private Specialist	\N		\N	\N	6431 8788	6431 3536	\N	1846	\N
1929	\N	Tasmanian Oral Maxillofacial And Implant Surgery - Launceston	\N		\N	\N	6259 1629	6169 2129	\N	1863	\N
1930	\N	Mr Daniel Player Private Specialist - Burnie	\N		\N	\N	6331 3833	6331 3733	\N	1740	\N
1932	\N	Dr Paul Sillifant Private Specialist	\N		\N	\N	6214 3074	6214 3072	\N	1865	\N
1938	\N	Dr Michael Jackson - Private Specialist	\N		\N	\N		0427 780 919	\N	1870	\N
1947	\N	The Hobart Clinic - Hobart	\N		\N	\N	6247 6439	6247 9960	\N	1877	\N
1949	\N	Telepsychiatrist Online	\N		\N	\N	9923 6590	1300 617 685	\N	1879	\N
1951	\N	Kirkman Psychiatry And Telehealth Practice	\N		\N	\N	6225 0408	6225 1672	\N	1880	\N
1955	\N	Dr George (robert) Hyde Private Specialist	\N		\N	\N	6124 2245	6124 2240	\N	1883	\N
1957	\N	Dr Eric Ratcliff Private Specialist	\N		\N	\N	6331 2087	6331 2122	\N	1884	\N
1963	\N	Dr M C Mathew Private Specialist - Brickfields Specialist Group	\N		\N	\N	6334 7122	(03) 6334 8880	\N	1890	\N
1964	\N	Dr Rajesh Raj Private Specialist	\N		\N	http://www.launcestonhealthhub.com.au/	6388 8114	(03) 6388 8111	\N	1891	\N
1961	\N	Precision Brain Spine And Pain Centre	\N		\N	\N	9816 8564	6333 8820	\N	1888	\N
1966	\N	Dr James Markos Private Specialist	\N		\N	\N	6331 4471	6334 4676	\N	1893	\N
1972	\N	Tasmania Anti Obesity Surgery Centre	\N		\N	https://tasmaniaantiobesitysurgery.com.au/dr-stephen-wilkinson/	6214 3064	(03) 6214 3063	\N	1899	\N
1991	\N	North Tas Urology - St Helens	\N		\N	http://www.dhhs.tas.gov.au/service_information/service_delivery_points/st_helens_district_hospital	6331 6300	(03) 6387 5570	\N	1913	\N
1993	\N	North Tas Urology - Devonport	\N		\N	https://www.smartclinics.com.au/location/devonport-wenvoe/	6331 6300	(03) 6422 6200	\N	1914	\N
1995	\N	Mr David Cottier Private Specialist - Launceston	\N		\N	\N	6214 3031	6214 3010	\N	1915	\N
1997	\N	John Street Medical Centre	\N		\N	https://www.johnstreetmc.com/	6229 7987	(03) 6229 1987	\N	1917	\N
2000	\N	Bellerive Doctors	\N		\N	http://www.easternshoredoctors.com.au/	6245 0708	(03) 6282 1333	\N	1920	\N
2010	\N	Hobart Skin Cancer Clinic	\N		\N	https://hobartskincancerclinic.com.au/	6245 0253	(03) 6245 0861	\N	1928	\N
1974	\N	Jane Mills Private Specialist	\N		\N	\N	6231 2378	6231 2477	\N	1853	\N
1981	\N	Mr Sven Anders Private Specialist	\N		\N	\N	6431 5954	6432 1371	\N	1905	\N
1983	\N	James Roberts-thomson - Private Specialist	\N		\N	\N	6424 8710	6423 3900	\N	1906	\N
1992	\N	North Tas Urology - Burnie	\N		\N	\N	6331 6300	6331 6200	\N	1740	\N
2001	\N	Calvary Health Care - Lenah Valley	\N		\N	\N	6278 5143	6278 5333	\N	1767	\N
2015	\N	Hobart Acupuncture	\N		\N	\N	6224 5848	6224 5779	\N	1933	\N
2031	\N	Churchill Avenue Medical Centre	\N		\N	\N	6225 4890	6225 3858	\N	1949	\N
2033	\N	General Practice Plus - Mountain Retreat	\N		\N	\N	6223 5099	6223 5570	\N	1950	\N
2034	\N	Huon Valley Health Centre - Cygnet	\N		\N	\N	6295 1233	6295 1333	\N	1611	\N
2043	\N	Claremont Medical Centre	\N		\N	\N	6249 9035	(03) 6249 3093	\N	1959	\N
2058	\N	Hobart Aged Care	\N		\N	http://www.unitingagewell.org/	6282 1399	(03) 6282 1150	\N	1971	\N
2042	\N	Kingston Skin Clinic	\N		\N	\N	6229 3760	6283 1800	\N	1958	\N
2044	\N	Call The Doctor - Afterhours Home Visiting Service	\N		\N	\N	6231 6503	1800 225 584	\N	1960	\N
2064	\N	General Practice Plus - Kingston Plaza	\N		\N	http://www.generalpracticeplus.com.au/	6227 1139	(03) 6227 1533	\N	1975	\N
2046	\N	General Practice (dr Roger Cox)	\N		\N	\N	6231 1362	6231 1313	\N	1962	\N
2075	\N	Macquarie Medical	\N		\N	http://www.dentalonmacquarie.com.au/	6223 2158	(03) 6223 3639	\N	1984	\N
2083	\N	Aboriginal Health Service Launceston	\N		\N	\N	6332 3880	6332 3888	\N	1992	\N
2091	\N	Norwood Medical Centre	\N		\N	http://norwoodmc.com.au/appointment/	8888 9921	(03) 6344 8344	\N	1999	\N
2100	\N	Westbury Medical Centre	\N		\N	http://www.delorainemedical.com//	6393 1450	(03) 6393 1221	\N	2008	\N
2109	\N	Northern Midlands Medical Services - Perth	\N		\N	\N	6398 2822	6398 2295	\N	2017	\N
2115	\N	Ravenswood Medical Centre	\N		\N	\N	6777 5250	6311 1530	\N	2022	\N
2116	\N	St Marys General Practice	\N		\N	https://www.dhhs.tas.gov.au/service_information/service_delivery_points/st_marys_health_centre	6372 2559	(03) 6387 5555	\N	2023	\N
2054	\N	Dr Wha Johnson	\N		\N	\N	8888 4909	6256 4747	\N	1965	\N
2062	\N	Bathurst Street Skin Cancer Clinic	\N		\N	\N	8779 8991	1800 252 436	\N	1974	\N
2078	\N	Dr Monica Mylek-simpson - Private General Practice	\N		\N	\N		0447 613 190	\N	1987	\N
2111	\N	Bicheno General Practice	\N		\N	\N	6375 1901	6375 1455	\N	2019	\N
2114	\N	Launceston Diabetes Clinic	\N		\N	\N	6380 8388	6388 8111	\N	1715	\N
2127	\N	City Medical Practice	\N		\N	http://www.cmct.com.au/	6431 1141	(03) 6431 6511	\N	2032	\N
2129	\N	Family Planning Tasmania - Burnie	\N		\N	\N	6431 6743	6431 7692	\N	2034	\N
2141	\N	Tasmanian Skin Clinic	\N		\N	http://www.tasmanianskinclinic.com.au/	6424 5013	(03) 6424 5003	\N	2046	\N
2161	\N	Ear Clinic	\N		\N	http://earclinic.com.au/	6334 4422	(03) 6334 7334	\N	2065	\N
2168	\N	Backinbalance	\N		\N	\N	6244 1355	6244 2444	\N	2071	\N
2170	\N	Kingston Chiropractic Centre	\N		\N	http://www.kingstonchiropractic.com.au/	6229 7933	(03) 6229 7900	\N	2073	\N
2184	\N	Macquarie Practice	\N		\N	\N		0418 880 797	\N	2087	\N
2185	\N	Central Chiropractic Clinic	\N		\N	http://www.centralchiropracticclinic.com.au/		(03) 6331 9656	\N	2088	\N
2205	\N	Stagg Nutrition & Dietetics	\N		\N	http://delorainemedical.com/	6362 3333	(03) 6362 2266	\N	2108	\N
2207	\N	Dr Diane Fletcher-way Dietitian	\N		\N	\N	6491 1360	0419 365 810	\N	2109	\N
2208	\N	Nourishing Solutions	\N		\N	http://www.dhhs.tas.gov.au/service_information/service_delivery_points/king_island_district_hospital_and_health_centre		(03) 6462 9900	\N	2110	\N
2145	\N	Aboriginal Health Service Burnie - Pataway	\N		\N	\N	6436 4151	6436 4100	\N	2049	\N
2149	\N	Aboriginal Health Service Devonport - Tulaminakali	\N		\N	\N	6436 4162	6436 4100	\N	2053	\N
2162	\N	Audioclinic Tasmania - Launceston	\N		\N	\N	6334 0655	6334 1466	\N	2066	\N
2166	\N	Audioclinic Tasmania - Devonport	\N		\N	\N	6424 9253	6424 9239	\N	2069	\N
2179	\N	Chiropractic Works	\N		\N	\N	6330 3292	6330 3291	\N	2082	\N
2201	\N	Physiotas - Launceston	\N		\N	\N	6331 0455	6334 0622	\N	2104	\N
2203	\N	Nutrition Solutions Tasmania	\N		\N	\N		0417 325 129	\N	2106	\N
2177	\N	New Town Chiropractic	\N		\N	\N		(03) 6228 4555	\N	2080	\N
2209	\N	Diabetes Management Options	\N		\N	\N	6249 1500	(03) 6249 1300	\N	2111	\N
2213	\N	Mobile Health And Rehab - Ymca Glenorchy	\N		\N	\N	8676 1797	0406 190 026	\N	2114	\N
2210	\N	Diabetes Management Options - Glenorchy	\N		\N	http://www.ipn.com.au/gp/tas-glenorchy-glenorchy-medical-centre/	6249 1500	(03) 6274 0800	\N	2112	\N
2211	\N	Diabetes Management Options - Rosny Park	\N		\N	http://www.ipn.com.au/gp/tas-rosny-park-clarence-gp-super-clinic/	6249 1500	(03) 6282 1400	\N	1606	\N
2223	\N	Exercise Physiology Services	\N		\N	\N	6247 3961	6247 3961	\N	2124	\N
2217	\N	Bay Physiotherapy	\N		\N	\N	6225 2751	6224 2726	\N	2118	\N
2227	\N	Physiofit	\N		\N	\N	6344 9788	6344 9799	\N	2126	\N
2229	\N	Care Forward - North	\N		\N	http://www.careforward.com.au/	6331 0688	1300 364 876	\N	2128	\N
2232	\N	Activate Life Rehabilitation	\N		\N	\N	8 6406 1622	8 6406 1622	\N	2131	\N
2234	\N	Regain Exercise Physiology	\N		\N	\N		6424 5313	\N	2133	\N
2238	\N	Wynyard Rehab And Exercise Physiology	\N		\N	\N		0429 645 649	\N	2136	\N
2224	\N	In Balance	\N		\N	\N	6334 7456	6334 4766	\N	1685	\N
2225	\N	Njf Wellness Centres - Launceston	\N		\N	\N	6301 9293	0458 602 402	\N	2125	\N
2226	\N	The Active Effect	\N		\N	\N	6327 1515	0419 143 781	\N	1868	\N
2239	\N	Hazel Bucher Nurse Practitioner Consultancy	\N		\N	\N		0488 595 009	\N	2137	\N
2240	\N	Tasmanian Community Clinic	\N		\N	http://www.associatedplastics.com.au/		(03) 6272 0744	\N	2138	\N
2247	\N	Join The Dots Occupational Therapy	\N		\N	\N		0439 717 320	\N	2144	\N
2233	\N	Ep To U	\N		\N	\N		0459 145 721	\N	2132	\N
2254	\N	Janne Cowan Occupational Therapy	\N		\N	\N	6343 0211	6344 4215	\N	2150	\N
2241	\N	Respect Occupational Therapy	\N		\N	\N		0404 400 988	\N	2139	\N
2242	\N	Grow Occupational Therapy	\N		\N	\N	6285 8098	6265 9281	\N	2140	\N
2243	\N	Mouthworks	\N		\N	\N	6251 1462	6218 2887	\N	1674	\N
2244	\N	Occupational Therapy Tas	\N		\N	\N		0418 588 081	\N	2141	\N
2245	\N	Rehab Alive Occupational Therapy Services	\N		\N	\N		0428 547 000	\N	2142	\N
2248	\N	Health Potential - Mobile Occupational Therapy	\N		\N	\N		0416 070 223	\N	2145	\N
2250	\N	Mobile Tasmania Occupational Therapy	\N		\N	\N		0409 006 485	\N	2142	\N
2252	\N	Olesia Veremchuk - Mobile Occupational Therapist	\N		\N	\N		0403 791 881	\N	2148	\N
2253	\N	Leiemma Canty - Occupational Therapist	\N		\N	\N	6301 9596	0478 613 593	\N	2149	\N
2255	\N	Otrehabservices	\N		\N	\N		0402 040 073	\N	2151	\N
2258	\N	Adapt Occupational Therapy	\N		\N	\N	6301 9214	0475 297 729	\N	2154	\N
2259	\N	Latitude Therapy - Linda Barker	\N		\N	\N		0448 400 868	\N	2155	\N
2260	\N	Hobart Osteopathic Clinic	\N		\N	\N	6223 6462	6223 6272	\N	2156	\N
2261	\N	Macquarie Osteopaths	\N		\N	\N	6234 4026	6234 6424	\N	2157	\N
2265	\N	Rockhopper	\N		\N	\N	6223 8610	0402 457 401	\N	2161	\N
2272	\N	Freshwater Osteopathy - George Town	\N		\N	\N	6334 9066	6334 9044	\N	2168	\N
2277	\N	Kay Amery - Physiotherapist	\N		\N	\N	9012 4471	0428 513 141	\N	2171	\N
2280	\N	Jennifer Ball Physiotherapy	\N		\N	\N	6224 5122	6224 5100	\N	2174	\N
2283	\N	Antill Physiotherapy	\N		\N	\N	6146 3950	6223 2051	\N	2177	\N
2284	\N	Tasmanian Spine Service - Physiotherapy Clinic	\N		\N	\N	6278 2494	6228 3777	\N	2178	\N
2285	\N	Kiley Bowes - Physiotherapist	\N		\N	\N	9012 4471	0410 062 520	\N	2171	\N
2290	\N	Frances Elmer-james Physiotherapy	\N		\N	\N		0406 108 620	\N	2182	\N
2293	\N	Andrea Ireland Physiotherapist	\N		\N	\N	6229 9161	0433 590 958	\N	2185	\N
2299	\N	Back In Motion - Sorell Connect	\N		\N	\N	6285 8593	6281 2499	\N	2190	\N
2315	\N	Ulverstone Physiotherapy	\N		\N	\N	6425 6057	6425 9500	\N	2202	\N
2296	\N	Total Workfit Solutions Pty Ltd	\N		\N	\N	6234 5007	6234 6376	\N	1832	\N
2321	\N	Tim Squire Physiotherapy Services	\N		\N	http://www.timsquirephysio.com.au/		0413 475 558	\N	2206	\N
2322	\N	Physiotherapy & Industrial Solutions P/l (dev)	\N		\N	\N	6423 2458	(03) 6423 2454	\N	2207	\N
2329	\N	Gregory Street Podiatry	\N		\N	http://www.gregorystreetpsychology.com.au/	6224 8924	(03) 6224 7877	\N	2213	\N
2340	\N	Claremont Top To Toe Health	\N		\N	\N	6417 5126	6200 6582	\N	2223	\N
2343	\N	St Johns Foot Clinic - Launceston	\N		\N	http://www.launcestonmc.com.au/		(03) 6388 8111	\N	2226	\N
2303	\N	Maree Webber Rehabilitation Service	\N		\N	\N		6224 7806	\N	2193	\N
2347	\N	Foot Ankle And Rehabilitation Clinics	\N		\N	http://www.farc.com.au/	6311 1808	(03) 6327 1920	\N	2229	\N
2352	\N	St Johns Foot Clinic - Sheffield	\N		\N	https://yhcgroup.com.au/centres/sheffield/		(03) 6491 1166	\N	2234	\N
2353	\N	Dc Podiatry - Devonport	\N		\N	https://www.smartclinics.com.au/location/devonport-wenvoe/	6423 4452	(03) 6422 6200	\N	2235	\N
2359	\N	Feet Sp Podiatry - Wynyard	\N		\N	\N	6442 3415	6442 3415	\N	2239	\N
2367	\N	David Emmett Speech Pathology	\N		\N	\N		(03) 6244 3108	\N	2246	\N
2376	\N	Talk A Lot Speech Pathology	\N		\N	\N	6459 2025	0477 272 233	\N	2254	\N
2310	\N	Bass Coast Physiotherapy - Bridport	\N		\N	\N	6380 3622	6382 2170	\N	2005	\N
2312	\N	Bass Coast Physiotherapy - Scottsdale	\N		\N	\N	6380 3622	6382 2170	\N	1994	\N
2314	\N	Burnie Physiotherapy And Sports Injury Clinic - Wynyard	\N		\N	\N	6435 3365	6435 3366	\N	1748	\N
2317	\N	Coastal Physiotherapy - Somerset	\N		\N	\N	6435 2773	6435 1421	\N	1722	\N
2320	\N	Physiotas - Shearwater	\N		\N	\N	6424 7811	6428 7500	\N	2205	\N
2325	\N	Hobart Podiatrists & Footwear (fleur Fewster & Assoc)	\N		\N	\N	6224 0994	6223 1011	\N	1831	\N
2333	\N	Southern Tas Podiatry Clinic - Franklin	\N		\N	\N	6264 2491	6264 3416	\N	2216	\N
2337	\N	Sam Leitch Podiatry	\N		\N	\N	6134 8815	0419 621 340	\N	2220	\N
2342	\N	St Johns Foot Clinic - Evandale	\N		\N	\N		6391 8855	\N	2225	\N
2345	\N	St Johns Foot Clinic - Westbury	\N		\N	\N		6393 2083	\N	2228	\N
2346	\N	Dc Podiatry - George Town District Hospital	\N		\N	\N	6380 3622	0419 129 755	\N	2200	\N
2355	\N	Feet Sp Podiatry - Penguin	\N		\N	\N	6432 2651	6432 2664	\N	2045	\N
2356	\N	Feet Sp Podiatry - Somerset	\N		\N	\N	6432 2651	6432 2664	\N	1722	\N
2363	\N	Beswick Psychology Service	\N		\N	\N	6334 1550	6334 7590	\N	2242	\N
2364	\N	Tamara Reynish Counsellor - The Blue Door	\N		\N	\N	6395 1529	0413 711 942	\N	2243	\N
2366	\N	Nicole Cowles - Mobile Speech Pathology Service	\N		\N	\N		0408 004 723	\N	2245	\N
2375	\N	Finn Speech Pathology	\N		\N	\N		0499 014 041	\N	2253	\N
2377	\N	Emh Speech Pathology	\N		\N	\N		0417 371 991	\N	1731	\N
2378	\N	Speech Pathology Cradle Coast	\N		\N	\N		0424 346 504	\N	2255	\N
2380	\N	Speech Pathology Tasmania - Devonport	\N		\N	\N	6234 5447	0417 595 151	\N	2257	\N
1673	\N	Ashley Lynch Private Clinical Psychologist	\N		\N	http://www.salamancapsychology.com.au/	6134 8807	(03) 6224 1633	\N	1598	\N
1675	\N	Federal Street Pain Clinic	\N		\N	http://insight.physio	6231 6500	(03) 6231 4200	\N	1632	\N
1677	\N	Michaela Morgan Clinical Psychologist	\N		\N	http://michaelamorganpsychology.com/	6285 8021	0406 633 991	\N	1634	\N
1680	\N	Kym Nutting Clinical Psychologist	\N		\N	https://www.psychology159.com/contact		0409 005 877	\N	1608	\N
1682	\N	Kelly Pettit - Clinical Psychological Services	\N		\N	https://kellypettit-psychological-services.business.site/?utm_source=gmb&utm_medium=referral		0408 058 528	\N	1638	\N
1683	\N	Eastern Shore Psychology	\N		\N	http://www.easternshorepsychology.com/	6251 1533	(03) 6240 5442	\N	1639	\N
1685	\N	Balanced - Mind Body Life	\N		\N	http://www.tasmindbodylife.com/	6273 8498	0475 000 679	\N	1641	\N
1686	\N	Dr Harry Stanton Clinical Psychologist	\N		\N	\N	6225 5093	(03) 6225 1910	\N	1642	\N
1687	\N	Family Psychological Services	\N		\N	http://www.familypsychservices.com.au/	6224 8871	(03) 6224 8881	\N	1643	\N
1688	\N	Margaret Stoklosa Clinical Psychologist	\N		\N	http://www.familypsychservices.com.au/our-people/margaret-stoklosa	6224 8871	(03) 6224 8881	\N	1643	\N
1689	\N	Lisa Storchheim Clinical Psychologist	\N		\N	\N	6234 9473	0417 316 406	\N	1627	\N
1690	\N	Hill Street Psychology	\N		\N	https://hillstreetpsychology.com.au/		0417 587 197	\N	1644	\N
1691	\N	Julian Watchorn Clinical Psychologist	\N		\N	http://julianwatchorn.com.au/	6223 4944	(03) 6223 4494	\N	1598	\N
1692	\N	Tasmanian Obstetrics And Gynaecology Specialists (tasogs)	\N		\N	http://www.tasogs.com/location/	6234 9216	(03) 6214 3333	\N	1645	\N
1696	\N	Health-wise Counselling And Consultancy Service	\N		\N	\N		0412 618 009	\N	1648	\N
1699	\N	All Round Health And Community Care	\N		\N	http://www.roundhealth.org.au/	6236 9018	(03) 6236 9016	\N	1651	\N
1700	\N	The Narrative Centre - Bellerive	\N		\N	http://www.thenarrativecentre.com.au/		(03) 6288 7340	\N	1652	\N
1701	\N	Lindisfarne Psychology & Wellbeing Centre	\N		\N	http://lindisfarnepsychology.com.au/	6243 8755	(03) 6243 8715	\N	1653	\N
1705	\N	Windsor Psychology - Hobart	\N		\N	\N	6224 8999	(03) 6224 8555	\N	1656	\N
1706	\N	Dr Trevor Crowe Pyschologist - Huonville	\N		\N	https://www.huonvalleypsychology.com.au/	6251 1451	0432 951 133	\N	1657	\N
1707	\N	Ipar Rehab - Hobart	\N		\N	http://ipar.com.au/	6238 7399	(03) 6238 7300	\N	1658	\N
1708	\N	Gore Street Medical	\N		\N	http://www.gorestreetmedical.com.au/	8676 1997	(03) 6224 6717	\N	1659	\N
1710	\N	Bruny Island Medical	\N		\N	http://www.dhhs.tas.gov.au/service_information/service_delivery_points/community_health_centre_-_bruny_island		(03) 6293 1143	\N	1661	\N
1711	\N	Huon Valley Health Centre - Huonville	\N		\N	http://huonvalleyhealthcentre.com.au/	6264 2411	(03) 6264 2800	\N	1662	\N
1712	\N	Jones & Co Psychology	\N		\N	http://www.jonesandcopsychology.com.au/	6285 8007	(03) 6234 2000	\N	1663	\N
1714	\N	Jan Lee Psychologist	\N		\N	\N	6223 5755	(03) 6223 5700	\N	1665	\N
1716	\N	Newdegate Street Health Centre	\N		\N	\N	6236 9442	(03) 6231 4109	\N	1667	\N
1717	\N	Derwent Valley Medical Centre	\N		\N	http://www.derwentvalleymedicalcentre.com.au/	6261 4246	(03) 6261 1399	\N	1668	\N
1718	\N	Emily Parkinson - Psychologist	\N		\N	http://emilyparkinsonpsychology.com/	6256 9241	0414 355 985	\N	1669	\N
1719	\N	Ernest Schall Psychologist	\N		\N	\N	6251 1636	6292 0948	\N	1670	\N
1720	\N	Rosny Park Family Practice	\N		\N	https://rosnyparkfamilypractice.business.site/?utm_source=gmb&utm_medium=referral	6244 2151	(03) 6244 7222	\N	1671	\N
1721	\N	Amiens Clinic	\N		\N	https://www.amiensclinic.com.au/	6273 3789	(03) 6272 8869	\N	1672	\N
1722	\N	Sandy Bay Clinic	\N		\N	https://www.sandybayclinic.com.au/	6224 8077	(03) 6223 6822	\N	1673	\N
1723	\N	The Lindisfarne Clinic	\N		\N	https://thelindisfarneclinic.com.au/	6243 6933	(03) 6243 8611	\N	1674	\N
1724	\N	Darren Stops Psychologist	\N		\N	http://www.sthelensprivatehospital.com.au/	6223 4594	(03) 6221 6444	\N	1675	\N
1725	\N	Davey Street Medical Centre	\N		\N	http://salamancamc.com.au/	6223 6222	(03) 6223 6223	\N	1676	\N
1726	\N	Counselling And Psychology Tasmania	\N		\N	http://www.hobartcounsellingcentre.com.au/	6231 2385	0487 338 103	\N	1677	\N
1728	\N	Angela Waite Psychology	\N		\N	https://www.angelawaite.com.au/		0466 797 335	\N	1679	\N
1729	\N	Ashley Wong Hoy Psychologist - Richmond	\N		\N	http://www.ashleywonghoy.com/		0408 482 384	\N	1680	\N
1733	\N	Vanessa Bakker Clinical Psychologist	\N		\N	\N	6334 7456	(03) 6334 4766	\N	1684	\N
1734	\N	Launceston Integrated Pain Service (lips)	\N		\N	http://www.painlaunceston.com.au/	6334 7456	0438 152 307	\N	1685	\N
1736	\N	Healthy Mind Centre	\N		\N	http://www.healthymindcentre.com.au/	6301 9226	(03) 6388 9229	\N	1687	\N
1737	\N	Launceston Therapy Clinic	\N		\N	http://www.launcestontherapyclinic.com.au/	6331 4662	(03) 6331 4664	\N	1688	\N
1738	\N	Patrick Fleming And Associates	\N		\N	\N	6334 2537	(03) 6334 9869	\N	1689	\N
1739	\N	Windsor Psychology - Riverside	\N		\N	http://www.windsorpsychology.com/	6327 1199	0427 130 565	\N	1690	\N
1740	\N	Joe Freeman	\N		\N	http://joefreemanpsychologist.com.au/	6301 9202	0467 946 830	\N	1691	\N
1741	\N	Holly M Guest And Associates Psychological Services	\N		\N	\N	6301 9515	(03) 6331 7002	\N	1692	\N
1870	\N	Neurosurgery Tasmania	\N		\N	http://www.neurosurgerytasmania.com.au/	6228 6550	(03) 6228 6966	\N	1814	\N
1873	\N	Mr Jens Peters-willke Private Specialist	\N		\N	http://hobartneurosurgery.com.au/	6228 2411	(03) 6228 6454	\N	1767	\N
1874	\N	Women's Imaging	\N		\N	https://womensimaging.net.au/	6228 6896	(03) 6228 6890	\N	1817	\N
1875	\N	Hobart Obgyn	\N		\N	http://www.hobartobgyn.com.au	6228 3050	(03) 6228 3331	\N	1818	\N
1877	\N	Dr Brett Daniels Private Specialist	\N		\N	http://drbrettdaniels.com.au/	6223 6097	(03) 6223 2067	\N	1820	\N
1878	\N	Sorell Family Practice	\N		\N	http://www.sorellfamilypractice.com.au/	6265 1303	(03) 6265 2341	\N	1821	\N
1882	\N	Dr Steve Sonneveld Private Specialist	\N		\N	https://www.tasivf.com.au/doctors-and-clinics/fertility-specialists/dr-steve-sonneveld	6228 4832	(03) 6228 3292	\N	1825	\N
1883	\N	Launceston Obstetrics And Gynaecology	\N		\N	http://www.launcestonobsgyn.com.au/	6333 0944	(03) 6333 0344	\N	1826	\N
1886	\N	Dr Kim Dobromilsky - Private Specialist	\N		\N	\N	6431 5766	(03) 6408 5000	\N	1829	\N
1887	\N	Dr Andreas Ernst Private Specialist	\N		\N	\N	6331 7712	(03) 6331 7711	\N	1830	\N
1890	\N	Dr Ian Byard Private Specialist	\N		\N	\N	6285 8009	(03) 6292 0752	\N	1833	\N
1891	\N	Icon Cancer Centre	\N		\N	https://iconcancercentre.com.au/centre/hobart/	9086 7990	(03) 6240 2600	\N	1824	\N
1893	\N	Hobart Eye Surgeons - Hobart	\N		\N	http://www.eyesurgeons.com.au	6210 6099	(03) 6210 6000	\N	1835	\N
1894	\N	Precision Eye Clinic	\N		\N	http://www.precisioneyeclinic.com.au/	8414 4006	(03) 6288 8188	\N	1836	\N
1895	\N	Derwent Eye Specialists	\N		\N	http://derwenteye.com.au/	1300 329 337	1300 337 968	\N	1837	\N
1896	\N	Tasmanian Eye Clinics - Glenorchy	\N		\N	http://www.taseye.com.au/	6230 7436	(03) 6230 7444	\N	1838	\N
1897	\N	Tasmanian Eye Clinics - Hobart	\N		\N	http://taseye.com.au/	6214 0590	(03) 6214 0599	\N	1839	\N
1898	\N	Tasmanian Eye Clinics - Kingston	\N		\N	http://taseye.com.au/	6211 8349	(03) 6211 8333	\N	1840	\N
1899	\N	Launceston Eye Doctors	\N		\N	http://launcestoneyedoctors.com.au/	6334 3989	(03) 6334 4960	\N	1841	\N
1901	\N	Devonport Eye Hospital	\N		\N	http://northwesteyesurgeons.com.au/	6423 2754	(03) 6424 6111	\N	1843	\N
1902	\N	Dr Michael Haybittel Private Specialist	\N		\N	http://www.northwesteyesurgeons.com.au/our-specialists.html	6432 1627	(03) 6431 7604	\N	1844	\N
1906	\N	Mr Miles Callahan Private Specialist	\N		\N	https://milescallahan.com.au/	6224 5599	(03) 6224 5566	\N	1847	\N
1907	\N	Mr Paul Einoder Private Specialist	\N		\N	http://www.hobartortho.com.au/	6223 8885	(03) 6234 3936	\N	1848	\N
1908	\N	Mr Greg Harvey Private Specialist	\N		\N	\N	6223 3110	(03) 6223 3180	\N	1849	\N
1909	\N	Mr Richard Jamieson Private Specialist	\N		\N	http://www.richardjamieson.com.au/	6228 5944	(03) 6228 5933	\N	1850	\N
1910	\N	Dr Scott Mackie Private Specialist	\N		\N	http://www.mackie.net.au/	6228 1449	(03) 6228 1490	\N	1767	\N
1911	\N	Mr John Mills Private Specialist	\N		\N	\N	6231 2378	(03) 6231 2477	\N	1851	\N
1912	\N	Petterwood Orthopaedics	\N		\N	http://petterwoodorthopaedics.com/	6228 4960	(03) 6228 0411	\N	1767	\N
1913	\N	Wellington Orthopaedics	\N		\N	http://www.wellingtonorthopaedics.com.au/	6223 7133	(03) 6223 7122	\N	1852	\N
1916	\N	Dr Matthew Wilkinson - Private Specialist	\N		\N	http://www.drmattortho.com.au/	6251 1527	(03) 6124 2172	\N	1854	\N
1917	\N	Mr Roger Butorac Private Specialist	\N		\N	\N	6331 6637	(03) 6331 6088	\N	1855	\N
1921	\N	Tamar Valley Orthopaedics	\N		\N	http://www.myorthopod.com.au/	6388 9260	(03) 6388 9250	\N	1788	\N
1923	\N	Mr Peter Van Winden Private Specialist	\N		\N	\N	6334 8016	(03) 6334 5116	\N	1858	\N
1925	\N	Russell Furzer Orthopaedic Pty Ltd	\N		\N	\N	6431 7442	(03) 6431 6068	\N	1859	\N
1926	\N	Hobart Specialist Dental Centre	\N		\N	http://www.hobartorthodontist.com.au/	6223 4588	(03) 6223 4488	\N	1860	\N
1928	\N	Tasmanian Oral Maxillofacial And Implant Surgery - Hobart	\N		\N	http://www.tomis.com.au/	6251 1629	(03) 6169 2129	\N	1862	\N
1931	\N	Mr Daniel Player Private Specialist - Launceston	\N		\N	http://www.danielplayer.net/	6331 3833	(03) 6331 3733	\N	1864	\N
1933	\N	West Tamar Health	\N		\N	http://www.westtamarhealth.com.au/	6327 1199	(03) 6327 2947	\N	1690	\N
1934	\N	Hobart Paediatric Group	\N		\N	http://www.hobartpaedgroup.com.au/	6278 8400	(03) 6278 8600	\N	1866	\N
1936	\N	Dr Megan Corp - Private Specialist	\N		\N	https://launcestonhealthhub.com.au/	6388 8114	(03) 6388 8115	\N	1868	\N
1937	\N	Dr Mark Pascoe Private Specialist	\N		\N	http://markpascoe.com.au/		(03) 6228 6001	\N	1869	\N
1939	\N	Macquarie Plastic Surgery	\N		\N	https://www.macquarieplasticsurgery.net.au/	6251 1531	(03) 6223 8420	\N	1871	\N
1940	\N	Centre For Hand Wrist Plastic Surgery	\N		\N	https://www.handwristplastic.surgery/	6214 3586	(03) 6214 3585	\N	1872	\N
1941	\N	Hobart Institute Of Plastic Surgery	\N		\N	\N	6215 3573	(03) 6214 3572	\N	1873	\N
1942	\N	Launceston Plastic And Cosmetic Surgery Unit	\N		\N	https://www.esthetiqueclinic.com.au/	6331 1119	(03) 6334 9313	\N	1874	\N
1943	\N	Popa Medical Services	\N		\N	\N	6334 7566	(03) 6334 8033	\N	1784	\N
1944	\N	Cpr Surgery	\N		\N	http://www.cprsurgery.com.au/	6388 8117	(03) 6388 8118	\N	1776	\N
1945	\N	Mr Simon Thomson And Associates	\N		\N	http://www.simonthomsonplasticsurgeon.com/	6224 1270	(03) 6224 3366	\N	1875	\N
1946	\N	Dr Stephane Auchincloss Private Specialist	\N		\N	\N	6224 7756	(03) 6224 7752	\N	1876	\N
1948	\N	Dr Natalie Glinka Private Specialist	\N		\N	\N		(03) 6234 3558	\N	1878	\N
1950	\N	Dr Elaine Jensen Private Specialist	\N		\N	\N	6234 9473	(03) 6234 1344	\N	1627	\N
1952	\N	Dr Phillip Reid Private Specialist	\N		\N	\N	6224 7756	(03) 6224 7752	\N	1876	\N
1953	\N	Dr Lev Fridgant Private Specialist	\N		\N	\N	6380 8983	(03) 6380 8982	\N	1881	\N
1956	\N	Dr Deborah Latham Private Specialist	\N		\N	\N	6124 2245	(03) 6124 2240	\N	1883	\N
1959	\N	Dr Mark Bell Private Specialist - Launceston	\N		\N	http://www.oncologynorth.com.au/	6334 7009	(03) 6334 7007	\N	1886	\N
1960	\N	Dr Stan Gauden Private Specialist	\N		\N	\N	6331 0355	(03) 6331 0344	\N	1887	\N
1962	\N	Clin Assoc Prof Mark Slatyer Private Specialist	\N		\N	\N	6234 6360	(03) 6234 7555	\N	1889	\N
1965	\N	Tasmanian Lung Service - Launceston	\N		\N	https://www.tasmanianlungservice.com/	6331 1351	(03) 6331 0580	\N	1892	\N
1967	\N	Tas Ivf - Launceston Clinic	\N		\N	https://www.tasivf.com.au/locations/launceston-fertility-clinic	6332 2020	(03) 6332 2000	\N	1894	\N
1968	\N	Rheumatology Tasmania	\N		\N	http://www.rheumtas.com.au/	6224 1926	(03) 6223 3801	\N	1895	\N
1969	\N	Dr Stewart Graham Private Specialist	\N		\N	\N	6334 8547	(03) 6334 8631	\N	1896	\N
1970	\N	Lionheart Rheumatology	\N		\N	\N	6223 1527	(03) 6223 1501	\N	1897	\N
1971	\N	Sports Medicine Practice	\N		\N	\N	6236 9456	(03) 6231 9225	\N	1898	\N
1973	\N	Mr David Finkelde Private Specialist	\N		\N	\N	6234 8775	(03) 6231 0300	\N	1798	\N
1975	\N	Mr Tony Patiniotis Private Specialist	\N		\N	\N	6231 0533	(03) 6231 5577	\N	1900	\N
1976	\N	Dr Jacqui Slater Private Specialist	\N		\N	http://www.bohmer.com.au/	6214 3160	(03) 6214 3594	\N	1901	\N
1977	\N	Mr David Stary Private Specialist	\N		\N	http://www.tasveinclinic.com.au/	6214 3031	(03) 6214 3017	\N	1751	\N
1978	\N	Dr Fiona Lee Private Specialist	\N		\N	\N	6334 9022	(03) 6334 9000	\N	1902	\N
1979	\N	Dr Girish Pande Private Specialist	\N		\N	http://www.launcestonweightloss.com.au/	6331 2166	(03) 6331 2966	\N	1903	\N
1980	\N	Miss Amanda Young Private Specialist	\N		\N	\N	6334 5464	(03) 6331 6662	\N	1904	\N
1982	\N	Steele Street Clinic - Private Hospital	\N		\N	http://www.steelestreetclinic.com/	6424 6855	(03) 6424 4615	\N	1906	\N
1984	\N	Mr Anthony Eaton Private Specialist	\N		\N	http://www.eatonurology.com.au/	6228 2411	(03) 6228 2111	\N	1907	\N
1985	\N	Urology Hobart	\N		\N	http://www.urologyhobart.com.au/	6214 3284	(03) 6214 3285	\N	1908	\N
1986	\N	Mr Ian Middleton Private Specialist	\N		\N	\N	6278 1478	(03) 6278 1944	\N	1909	\N
1987	\N	Mr Fadi Nuwayhid Private Specialist	\N		\N	\N	6231 1187	(03) 6231 1158	\N	1910	\N
1988	\N	Mr Frank Redwig Private Medical Specialist	\N		\N	http://redwigurology.com/	6214 3197	(03) 6214 3097	\N	1911	\N
1989	\N	Mr Stephen Brough Private Specialist	\N		\N	https://www.urologynorth.net.au/	6331 3666	(03) 6331 9645	\N	1784	\N
1990	\N	North Tas Urology - Launceston	\N		\N	http://www.ntu.net.au/	6331 6300	(03) 6331 6200	\N	1912	\N
1994	\N	Mr David Cottier Private Specialist - Hobart	\N		\N	\N	6214 3031	(03) 6214 3010	\N	1751	\N
1996	\N	Dr Catherine (cathy) Thoo Private Specialist	\N		\N	https://www.drcathythoo.com.au/	6231 9107	0428 073 026	\N	1916	\N
1998	\N	Claremont Village Medical Centre	\N		\N	\N	6249 2763	(03) 6249 1311	\N	1918	\N
1999	\N	Cambridge Park Medical Centre	\N		\N	\N	6248 4605	(03) 6248 4808	\N	1919	\N
2002	\N	Calvary Hospital - St Johns Campus	\N		\N	http://www.calvarystjohns.org.au/	6223 1523	(03) 6223 7444	\N	1797	\N
2003	\N	Family Planning Tasmania - Glenorchy	\N		\N	http://www.fpt.asn.au/	6273 9203	(03) 6273 9117	\N	1921	\N
2004	\N	Lenah Valley Medical Centre	\N		\N	http://www.lenahvalleymedicalcentre.net/	6278 2237	(03) 6228 0243	\N	1922	\N
2005	\N	City Doctors & Travel Clinic	\N		\N	http://www.citydoctors.com.au/	6231 6717	(03) 6231 3003	\N	1923	\N
2006	\N	Rosny Doctors And Travel Clinic	\N		\N	\N	6245 0428	(03) 6244 1058	\N	1924	\N
2007	\N	Sandy Bay Doctors	\N		\N	http://sandybaydoctors.com.au/	6223 2813	(03) 6210 0500	\N	1925	\N
2008	\N	Greenpoint Medical Services	\N		\N	http://www.ipn.com.au/	6263 6403	(03) 6263 7349	\N	1926	\N
2009	\N	Battery Point Medical	\N		\N	https://www.batterypointmedical.com.au/	6229 9952	(03) 6105 0700	\N	1927	\N
2011	\N	Kingborough Medical Centre	\N		\N	http://www.ipn.com.au/	6229 3760	(03) 6229 3434	\N	1929	\N
2012	\N	New Town Skin Cancer And Repair Clinic	\N		\N	https://www.skincancercentres.com.au/centre/tas/new-town-skin-cancer-centre	6228 0118	(03) 6228 0041	\N	1930	\N
2013	\N	Argyle Medical	\N		\N	http://argylemedical.com.au/	6238 8299	(03) 6238 8222	\N	1931	\N
2014	\N	Hopkins Street Clinic	\N		\N	http://www.ipn.com.au/gp/tas-moonah-hopkins-street-medical-clinic/	6278 1257	(03) 6228 2200	\N	1932	\N
2016	\N	Glenorchy Medical Centre	\N		\N	http://www.ipn.com.au/gp/tas-glenorchy-glenorchy-medical-centre/	6272 0877	(03) 6274 0800	\N	1934	\N
2017	\N	Eastern Shore Doctors - Shoreline	\N		\N	http://www.easternshoredoctors.com.au/	6247 1100	(03) 6282 1333	\N	1935	\N
2018	\N	General Practice (dr Ilona Bewsher)	\N		\N	\N	6231 9670	(03) 6234 9774	\N	1936	\N
2019	\N	Long Beach Medical Centre	\N		\N	http://www.longbeachmedical.com.au/	6225 5166	(03) 6225 5155	\N	1937	\N
2020	\N	Eastern Shore Medical Centre	\N		\N	http://www.yourhealth.net.au/easternshore/	6243 6912	(03) 6243 8788	\N	1938	\N
2021	\N	Collins Street General Practice	\N		\N	http://www.grosvenorstgp.com.au/	6223 2217	(03) 6223 3355	\N	1939	\N
2022	\N	Grosvenor Street General Practice	\N		\N	http://www.grosvenorstgp.com.au/	6224 1946	(03) 6224 1944	\N	1940	\N
2023	\N	Eastern Shore Doctors - Lauderdale	\N		\N	http://www.easternshoredoctors.com.au/	6248 1223	(03) 6282 1333	\N	1941	\N
2024	\N	Clarence Gp Super Clinic	\N		\N	http://www.ipn.com.au/gp/tas-rosny-park-clarence-gp-super-clinic/	6245 0416	(03) 6282 1400	\N	1942	\N
2025	\N	Franklin Street Clinic	\N		\N	https://www.eastderwentdental.com/	6243 0911	(03) 6243 9128	\N	1943	\N
2026	\N	Augusta Road Medical Centre	\N		\N	http://www.augustamedical.com.au/	6278 1215	(03) 6278 1744	\N	1944	\N
2027	\N	New Town Central Medical Centre	\N		\N	\N	6228 0840	(03) 6228 7285	\N	1945	\N
2028	\N	General Practice Plus - Stoke Street	\N		\N	http://www.generalpracticeplus.com.au/	6228 7843	(03) 6223 5533	\N	1946	\N
2029	\N	Brighton Regional Doctors	\N		\N	http://www.brightonregionaldoctors.com.au/	6144 6555	(03) 6144 6550	\N	1947	\N
2030	\N	Tasman Medical Practice	\N		\N	http://www.tasmanhealth.org.au/	6250 9045	(03) 6250 9038	\N	1948	\N
2032	\N	General Practice Plus - Cascade Rd	\N		\N	http://www.generalpracticeplus.com.au/	6224 2393	(03) 6223 5533	\N	1860	\N
2035	\N	Swansea General Practice	\N		\N	http://www.hobartpath.com.au/locations/collection-centres/swansea.aspx	6257 8067	(03) 6223 1955	\N	1951	\N
2036	\N	Eastern Shore Doctors - Bellerive	\N		\N	http://www.easternshoredoctors.com.au/	6282 1399	(03) 6282 1333	\N	1952	\N
2037	\N	Health Change	\N		\N	http://www.healthchange.com.au/	6135 5806	(03) 6135 5805	\N	1953	\N
2038	\N	Snug Medical Centre	\N		\N	\N	6267 9041	(03) 6267 9221	\N	1954	\N
2039	\N	Sorell Doctors Surgery	\N		\N	https://www.sorelldoctorssurgery.com.au/	6269 2489	(03) 6165 1595	\N	1955	\N
2040	\N	Sandy Bay Afterhours	\N		\N	http://sandybaydoctors.com.au/	6223 2813	(03) 6210 0500	\N	1956	\N
2041	\N	Glebe Hill Family Practice	\N		\N	http://ghfp.com.au/	6169 0001	(03) 6169 0000	\N	1957	\N
2045	\N	Anubha Anti-ageing Medicine	\N		\N	http://www.anubha.com.au/	6239 1099	(03) 6239 1572	\N	1961	\N
2047	\N	After Hours Doctor Hobart	\N		\N	https://yourhobarthealth.com.au/services/after-hours-doctor/	8779 8991	1800 252 436	\N	1963	\N
2048	\N	Bothwell Doctors	\N		\N	https://www.facebook.com/bothwelldoctors/	6259 5563	(03) 6259 5520	\N	1964	\N
2049	\N	Your Hobart Doctor	\N		\N	https://yourhobarthealth.com.au/services/doctor/	8779 8991	1800 252 436	\N	1963	\N
2050	\N	Spring Bay Medical Centre	\N		\N	\N	6256 4742	(03) 6256 4747	\N	1965	\N
2051	\N	Brighton Doctors Surgery	\N		\N	https://www.brightondoctorssurgery.com.au/	6251 3110	(03) 6268 1077	\N	1966	\N
2052	\N	Barrack Street Practice	\N		\N	https://www.barrackstreet.com.au/	6223 1245	(03) 6223 1055	\N	1967	\N
2053	\N	Risdon Vale Family Practice	\N		\N	https://risdon-vale-family-practice.business.site/?m=true	9966 9978	(03) 6146 3900	\N	1968	\N
2055	\N	Ht Health Group	\N		\N	https://hthealthgroup.com.au/	6221 1677	(03) 6221 1675	\N	1969	\N
2056	\N	Macquarie Skin Cancer Clinic	\N		\N	https://www.macquarieskincancerclinic.com.au/	6251 1531	(03) 6224 7123	\N	1871	\N
2057	\N	General Practice Plus - Gregory Street	\N		\N	http://traveldoctorhobart.com	6200 1366	(03) 6223 5570	\N	1970	\N
2059	\N	Respect Aged Care - Wellington Views	\N		\N	http://www.respect.com.au/	6263 4100	(03) 6262 6000	\N	1972	\N
2060	\N	Dr John Faulkner General Practice	\N		\N	https://www.healthdirect.gov.au/australian-health-services/20064749/wellness-medical/services/west-hobart-7000-warwick	6231 1362	(03) 6231 1555	\N	1962	\N
2061	\N	Dodges Ferry Medical	\N		\N	https://www.healthdirect.gov.au/australian-health-services/20063479/dodges-ferry-medical/services/dodges-ferry-7173-carlton-beach	6265 8755	(03) 6265 8700	\N	1973	\N
2063	\N	Rosny After Hours Doctor Service	\N		\N	\N	6245 0428	(03) 6210 0555	\N	1924	\N
2065	\N	Moonah Health Centre	\N		\N	\N	6228 1364	(03) 6228 5652	\N	1976	\N
2066	\N	O'briens Bridge Medical Centre	\N		\N	\N	6273 9397	(03) 6272 6995	\N	1977	\N
2067	\N	Dover Medical Centre	\N		\N	http://www.huonvalley.tas.gov.au/services/health-and-medical/dover-medical-centre/	6298 1010	(03) 6298 1222	\N	1978	\N
2068	\N	Humanitarian Entrants Clinic	\N		\N	http://www.roundhealth.org.au/	6236 9018	(03) 6236 9016	\N	1651	\N
2069	\N	Dr Lad's Surgery	\N		\N	http://www.drlad.com.au/	6229 2241	(03) 6229 4111	\N	1979	\N
2070	\N	Huon Doctors Surgery	\N		\N	http://www.huondoctorssurgery.com.au/	6264 1600	(03) 6264 1666	\N	1980	\N
2071	\N	Cygnet Family Practice	\N		\N	http://www.cygnetfamilypractice.com/	6295 0038	(03) 6295 1460	\N	1981	\N
2072	\N	Geeveston Medical Centre	\N		\N	http://www.huonvalley.tas.gov.au/services/health-and-medical/geeveston-medical-centre/	6297 0031	(03) 6297 1903	\N	1612	\N
2073	\N	Connewarre Clinic	\N		\N	http://scctas.net/	6249 7914	(03) 6249 2179	\N	1982	\N
2074	\N	Bridge Street Surgery Richmond	\N		\N	http://richmondlaserclinictas.com/	6260 2387	0478 608 550	\N	1983	\N
2076	\N	Moreton Group Medical Services	\N		\N	http://www.moretongroup.com/	6251 1599	(03) 6278 3029	\N	1985	\N
2077	\N	Bupa Aged Care	\N		\N	https://www.bupaagedcare.com.au/aged-care-homes/bupa-south-hobart	6224 7045	(03) 6217 9297	\N	1986	\N
2079	\N	Central Highlands General Practice	\N		\N	https://centralhighlands.tas.gov.au/community/health/	6287 1355	(03) 6122 2016	\N	1988	\N
2080	\N	North Hobart Medical Centre	\N		\N	\N	6231 3542	(03) 6231 0318	\N	1989	\N
2081	\N	Medical Acupuncture Tasmania	\N		\N	http://www.medac.com.au/	6278 1215	(03) 6278 1744	\N	1990	\N
2082	\N	Ochre Medical Centre - St Helens	\N		\N	http://www.ochrehealth.com.au/practices/ochre-medical-centre-st-helens-tas/	6376 1888	(03) 6376 1777	\N	1991	\N
2084	\N	Launceston Medical Centre	\N		\N	http://www.launcestonmc.com.au/	6380 8388	(03) 6388 8111	\N	1993	\N
2085	\N	Ochre Medical Centre Scottsdale	\N		\N	https://www.ochrehealth.com.au/	6352 3133	(03) 6352 2522	\N	1994	\N
2086	\N	Prospect Medical Centre	\N		\N	http://prospectmedicalcentre.com.au/	6343 1527	(03) 6344 7991	\N	1716	\N
2087	\N	Tremaur Medical Centre	\N		\N	http://www.tremaur.com.au/	6331 6160	(03) 6331 1055	\N	1995	\N
2088	\N	National Home Doctor Service - Launceston	\N		\N	http://lahms.com.au/		(03) 6331 4588	\N	1996	\N
2089	\N	Northern Suburbs Medical Service	\N		\N	http://www.nsms.com.au/	6336 0550	(03) 6336 0555	\N	1997	\N
2090	\N	George Town Medical Centre	\N		\N	http://www.georgetownmedical.com.au/	6382 3535	(03) 6382 4333	\N	1998	\N
2092	\N	Tamar Skin Cancer Clinic	\N		\N	http://www.tamarskincancerclinic.com.au/	6333 0925	(03) 6311 1520	\N	2000	\N
2093	\N	Kings Meadows Medical Centre	\N		\N	https://www.kingsmeadowsmedicalcentre.com.au/	6343 3250	(03) 6344 5722	\N	2001	\N
2094	\N	Newstead Medical	\N		\N	http://www.newsteadmedical.com.au/	6334 2105	(03) 6331 1088	\N	2002	\N
2095	\N	Family Doctor Service	\N		\N	http://www.familydoctorservice.com/	6343 4436	(03) 6343 5556	\N	2003	\N
2096	\N	Family Planning Tasmania - Launceston	\N		\N	http://www.fpt.asn.au/	6343 6766	(03) 6343 4566	\N	2004	\N
2097	\N	Ochre Medical Centre Bridport	\N		\N	http://www.ochrehealth.com.au/	6356 0182	(03) 6356 1500	\N	2005	\N
2098	\N	Northern Midlands Medical Services - Longford	\N		\N	http://longfordmedical.com.au/	6391 2722	(03) 6391 1170	\N	2006	\N
2099	\N	Deloraine Medical Centre	\N		\N	http://delorainemedical.com/	6362 3333	(03) 6362 2266	\N	2007	\N
2101	\N	Exeter Medical Centre	\N		\N	https://www.healthdirect.gov.au/australian-health-services/20063489/exeter-medical-centre/services/exeter-7275-main	6394 3225	(03) 6394 4247	\N	2009	\N
2102	\N	Civic Square Surgery	\N		\N	\N	6334 5141	(03) 6331 5510	\N	2010	\N
2103	\N	Ochre Medical Centre Flinders Island	\N		\N	http://www.ochrehealth.com.au/practices/ochre-medical-centre-flinders-island-tas/	6359 2244	(03) 6359 2011	\N	2011	\N
2104	\N	High Street Family Practice	\N		\N	http://www.highstreetfamilypractice.com.au/	6334 5511	(03) 6334 5500	\N	2012	\N
2105	\N	Lilydale Family Health Care	\N		\N	http://lilydalefhc.com.au/	6388 9296	(03) 6388 9295	\N	2013	\N
2106	\N	Windmill Hill Medical	\N		\N	http://windmillhillmedical.com/	6776 0081	67760080	\N	2014	\N
2107	\N	Summerdale Medical Centre	\N		\N	http://www.summerdalemedical.com.au/	6343 0002	(03) 6344 7177	\N	2015	\N
2108	\N	Flinders Island Aboriginal Association Inc (fiaai)	\N		\N	http://fiaai.org.au/	6359 3562	(03) 6359 3532	\N	2016	\N
2110	\N	Campbell Town Surgery	\N		\N	\N	6381 1123	(03) 6381 1133	\N	2018	\N
2112	\N	Mowbray Medical	\N		\N	http://www.mowbraymedical.com.au/	6326 7905	(03) 6326 7555	\N	2020	\N
2113	\N	Legana Medical Centre	\N		\N	\N	6330 3870	(03) 6330 3044	\N	2021	\N
2117	\N	Launceston Skin Cancer Clinic	\N		\N	http://launcestonscc.com.au/		(03) 6388 8119	\N	1715	\N
2118	\N	Beaconsfield Medical Service	\N		\N	https://www.healthdirect.gov.au/australian-health-services/20063451/beaconsfield-medical-service/services/beaconsfield-7270-weld	6383 1510	(03) 6383 1511	\N	2024	\N
2119	\N	General Practice (dr Kathy Maxwell)	\N		\N	\N		(03) 6331 1131	\N	2025	\N
2120	\N	First Point Healthcare	\N		\N	http://www.firstpointhealthcare.com.au/	6331 1188	(03) 6331 1166	\N	2026	\N
2121	\N	Esk Family Health Care Centre	\N		\N	http://www.eskmedical.com.au/	6331 8405	(03) 6331 2355	\N	2027	\N
2122	\N	Launceston Aged Care Associates	\N		\N	http://www.cct.org.au/	9102 9770	1300 722 400	\N	2028	\N
2123	\N	Launceston After Hours Medical Service	\N		\N	http://lahms.com.au/	6334 8494	(03) 6331 4588	\N	1686	\N
2124	\N	Latrobe Family Medical Practice	\N		\N	http://www.lfmp.com.au/	6426 2629	(03) 6426 1141	\N	2029	\N
2125	\N	Don Medical Clinic - Family Practice	\N		\N	http://www.donmedical.com.au/	6451 5815	(03) 6441 5299	\N	2030	\N
2126	\N	Victoria Street Clinic - Ulverstone	\N		\N	http://www.ulverstonemedical.com/	6425 4544	(03) 6425 2900	\N	2031	\N
2128	\N	Burnie General Practice	\N		\N	https://www.ipn.com.au/gp/tas-burnie-burnie-general-practice/	6431 7005	(03) 6431 7708	\N	2033	\N
2130	\N	Smithton Medical Services	\N		\N	http://smithtondoctors.com.au	6452 3345	(03) 6452 2555	\N	2035	\N
2131	\N	Wynyard Medical Centre	\N		\N	http://wynyardmedical.com.au/	6442 4222	(03) 6442 2201	\N	2036	\N
2132	\N	Patrick Street Clinic	\N		\N	https://patst.com.au/	6425 6669	(03) 6425 1611	\N	2037	\N
2133	\N	Bass House Surgery	\N		\N	\N	6431 8394	(03) 6431 3244	\N	2038	\N
2134	\N	Strahan General Practice	\N		\N	http://www.ochrehealth.com.au/	6495 1992	(03) 6495 1617	\N	2039	\N
2135	\N	East Devonport Medical Centre	\N		\N	\N	6427 0101	(03) 6427 9111	\N	2040	\N
2136	\N	Valley Road Medical Centre	\N		\N	\N	6424 5167	(03) 6424 7598	\N	2041	\N
2137	\N	Devonport Smartclinics Family Medical Centres - Wenvoe St	\N		\N	https://www.smartclinics.com.au/location/devonport-wenvoe/	6423 4452	(03) 6422 6200	\N	2042	\N
2138	\N	Ochre Health Medical Centre - King Island	\N		\N	https://www.ochrehealth.com.au/practices/medical-centre-king-island-tas/	6462 1923	(03) 6462 0200	\N	2043	\N
2139	\N	Queenstown General Practice	\N		\N	http://www.ochrehealth.com.au/practices/queenstown-general-practice/	6495 1996	(03) 6495 1523	\N	2044	\N
2140	\N	Patrick Street Clinic Penguin	\N		\N	https://patst.com.au/	6437 0755	(03) 6437 0955	\N	2045	\N
2142	\N	Dr Merran Dyer Practice	\N		\N	https://www.drmerrandyer.com.au/	6491 2469	(03) 6491 2369	\N	2047	\N
2143	\N	Port Sorell Medical Centre	\N		\N	http://www.yourhealth.net.au/psmed	6428 7736	(03) 6428 7720	\N	2048	\N
2144	\N	Penguin General Practice	\N		\N	\N	6437 2504	(03) 6437 2508	\N	1746	\N
2146	\N	One Care - Umina Park	\N		\N	http://myonecare.com.au/	6433 5167	(03) 6433 5166	\N	2050	\N
2147	\N	Rosebery General Practice	\N		\N	http://www.ochrehealth.com.au/practices/rosebery-general-practice/	6495 1518	(03) 6495 1613	\N	2051	\N
2148	\N	Zeehan General Practice	\N		\N	http://www.ochrehealth.com.au/practices/zeehan-general-practice/	6471 5918	(03) 6450 0095	\N	2052	\N
2150	\N	Golden Lotus Acupuncture	\N		\N	http://www.goldenlotusacupuncture.com.au/		0401 167 442	\N	2054	\N
2151	\N	Eastern Shore Acupuncture	\N		\N	http://www.eastern-shore-acupuncture.com.au/		(03) 6244 1058	\N	2055	\N
2152	\N	Chad Wuest - Acupuncture	\N		\N	https://chadwuest.com/		0479 003 867	\N	2056	\N
2153	\N	Hearing Australia - Bellerive	\N		\N	http://hearing.com.au/bellerive	6244 8994	(03) 6282 0800	\N	2057	\N
2154	\N	Steven Hooper Hearing - Care Statewide	\N		\N	http://www.shhcare.com.au/	6278 1166	(03) 6278 1122	\N	2058	\N
2155	\N	Audioclinic Tasmania - Glenorchy	\N		\N	\N	6274 1749	6273 3615	\N	2059	\N
2156	\N	Audioclinic Tasmania - Hobart	\N		\N	http://www.audika.com.au/?utm_source=gmb&utm_medium=organic&utm_campaign=AudioClinic%20Hobart	6223 7842	(03) 6234 5585	\N	2060	\N
2157	\N	Audioclinic Tasmania - Kingston	\N		\N	http://www.audioclinictas.com.au/		(03) 6239 3676	\N	2061	\N
2158	\N	Audioclinic Tasmania - Rosny	\N		\N	http://www.audioclinictas.com.au/	6244 5514	(03) 6244 5506	\N	2062	\N
2159	\N	Hearing Australia - Glenorchy	\N		\N	https://www.hearing.com.au/Our-services/Find-a-Hearing-Centre/TAS/Glenorchy	6273 8675	13 44 32	\N	2063	\N
2160	\N	Eastern Audiology Services	\N		\N	http://www.easternaudiologyservices.com.au/	6244 4419	(03) 6244 1993	\N	2064	\N
2163	\N	Abel Hearing Clinic	\N		\N	https://www.abelhearing.com.au/?utm_source=google&utm_medium=organic&utm_campaign=Google%20My%20Business%20Page	6334 9881	(03) 6334 4805	\N	1792	\N
2164	\N	Hearing Australia - Devonport	\N		\N	https://www.hearing.com.au/Our-services/Find-a-Hearing-Centre/TAS/Devonport	6423 2789	13 44 32	\N	2067	\N
2165	\N	Hearing Australia - Burnie	\N		\N	https://www.hearing.com.au/Our-services/Find-a-Hearing-Centre/TAS/Burnie	6431 5002	13 44 32	\N	2068	\N
2167	\N	Huonville Chiropractic Centre	\N		\N	\N		(03) 6264 1037	\N	2070	\N
2169	\N	Hobart Chiropractic Centre	\N		\N	http://www.hobartchiropractic.com.au/	6231 6133	(03) 6231 6131	\N	2072	\N
2171	\N	Howrah Chiropractic Centre	\N		\N	http://howrahchiropracticcentre.com/		(03) 6247 6241	\N	2074	\N
2172	\N	Derwent Valley Chiropractic	\N		\N	\N	6261 1708	(03) 6261 1880	\N	2075	\N
2173	\N	Chiropractic On Collins	\N		\N	http://www.chirooncollins.com.au/	6234 7785	(03) 6234 7707	\N	2076	\N
2174	\N	Outback Chiropractic	\N		\N	http://outbackchiro.com.au/	6231 5225	(03) 6231 5225	\N	2077	\N
2175	\N	Clarence Chiropractic Centre	\N		\N	http://www.clarencechiropractic.com.au/	6245 1672	(03) 6244 2928	\N	2078	\N
2176	\N	Chirolife Chiropractic - Hobart	\N		\N	http://www.chirolife.backdoctors.com.au/		(03) 6224 9349	\N	2079	\N
2178	\N	Chirolife Chiropractic - Kingston	\N		\N	http://www.chirolife.backdoctors.com.au/dr-brandan-sills-kingston	6229 4113	(03) 6251 1955	\N	2081	\N
2180	\N	Tamar Chiropractic - Elphin Road	\N		\N	http://www.tamarchiropractic.com.au/	6331 3511	(03) 6331 3411	\N	2083	\N
2181	\N	Tamar Chiropractic - Emu Bay Road	\N		\N	http://www.tamarchiropractic.com.au/	6362 4914	(03) 6362 2666	\N	2084	\N
2182	\N	Tamar Chiropractic - Hobart Road	\N		\N	\N	6344 9700	(03) 6344 9600	\N	2085	\N
2183	\N	Combining Chiropractic	\N		\N	http://combinechiro.wordpress.com/		(03) 6344 7327	\N	2086	\N
2186	\N	Equilibrium Chiropractic	\N		\N	https://www.equilibriumchiro.com.au/		(03) 6331 2217	\N	2089	\N
2188	\N	Launceston Chiropractic	\N		\N	http://www.launcestonchiropractic.com.au/	6331 3848	(03) 6331 8898	\N	2091	\N
2189	\N	Healing Chiropractic	\N		\N	http://www.healingchiropractic.com.au/	6331 8650	(03) 6331 8228	\N	2092	\N
2190	\N	Island Chiropractic	\N		\N	https://burnieislandchiropractic.com.au/	6432 4110	(03) 6431 9388	\N	2093	\N
2191	\N	Devonport Chiropractic	\N		\N	http://devonportchiropractic.com.au/	6424 1151	(03) 6424 1133	\N	2094	\N
2192	\N	The Devonport Chiropractor	\N		\N	http://the.devonportchiropractor.com.au/		(03) 6424 5284	\N	2095	\N
2193	\N	Nourish Tasmania	\N		\N	http://www.nourishtas.com.au/	6234 5899	(03) 6234 7040	\N	2096	\N
2194	\N	Leap Health Kingston	\N		\N	http://leaphealth.com.au/kingston	6227 1888	(03) 6229 3005	\N	2097	\N
2195	\N	Leap Health Physio & Sports Injury Centre - New Town	\N		\N	http://www.leaphealth.com.au/	6228 0792	(03) 6228 0756	\N	2098	\N
2196	\N	Leap Health Physiotherapy & Sports Injury Centre - Huonville	\N		\N	https://leaphealth.com.au/	6264 1490	(03) 6286 0277	\N	2099	\N
2198	\N	Your Path To Health - Derwent Park	\N		\N	https://www.yourpathtohealth.com.au/	6273 9443	(03) 6272 4539	\N	2101	\N
2199	\N	Your Path To Health - Rosny Park	\N		\N	https://www.yourpathtohealth.com.au/	6244 7712	(03) 6245 1049	\N	2102	\N
2200	\N	Revive Motional Health	\N		\N	http://www.revivehealth.com.au/	6272 9476	(03) 6272 4000	\N	2103	\N
2202	\N	Launceston Dietetics	\N		\N	http://www.launcestondietetics.com.au/	6334 3630	0417 325 129	\N	2105	\N
2204	\N	Engage Therapy	\N		\N	http://www.engagetherapy.com.au/	6343 5607	(03) 6343 7852	\N	2107	\N
2206	\N	Nutrition For Life - Healthcare	\N		\N	https://nutritionforlifehealthcare.com.au/	6301 9201	(03) 6301 9096	\N	2026	\N
2212	\N	Care Forward - South	\N		\N	http://www.careforward.com.au/	1300 657 728	1300 364 876	\N	2113	\N
2214	\N	Leap Health - Hobart	\N		\N	https://leaphealth.com.au/hobart/	6311 0604	(03) 6234 6498	\N	2115	\N
2215	\N	Leap Health Body Tech Physiotherapy - Salamanca	\N		\N	https://leaphealth.com.au/bodytechsalamanca/	6224 1597	(03) 6223 3855	\N	2116	\N
2216	\N	Allcare Physiotherapy	\N		\N	http://www.allcarephysio.com.au/	6224 9774	(03) 6224 9777	\N	2117	\N
2218	\N	Healthy Horizons	\N		\N	http://www.healthyhorizons.com.au/		(03) 6265 9404	\N	2119	\N
2219	\N	Hobart Exercise Physiology	\N		\N	http://www.hobartexercisephysiology.com.au/	6251 1505	0447 392 038	\N	2120	\N
2220	\N	All About Fitness	\N		\N	http://allaboutfitness.net.au/		0417 836 988	\N	2121	\N
2221	\N	Optimum Health Solutions Tasmania	\N		\N	http://www.opt.net.au/	2 8583 3135	(03) 6245 0799	\N	2122	\N
2222	\N	Bodysystem	\N		\N	http://www.bodysystem.com.au/	6231 5993	(03) 6231 5991	\N	2123	\N
2228	\N	The Active Health Company - Launceston	\N		\N	http://www.tamarchiropractic.com.au/		(03) 6331 3411	\N	2127	\N
2230	\N	The Training Fix	\N		\N	https://m.facebook.com/The-Training-Fix-184572448248592/	6425 3388	(03) 6425 3388	\N	2129	\N
2231	\N	Physiotas - Devonport	\N		\N	http://www.physiotas.com.au/	6424 7811	(03) 6424 7511	\N	2130	\N
2235	\N	Resolve Physiotherapy And Industrial Health Solutions	\N		\N	http://resolvephysio.com.au/		(03) 6406 5133	\N	2134	\N
2236	\N	Physiotas - Ulverstone	\N		\N	http://www.physiotas.com.au/	6424 7811	(03) 6425 5997	\N	2037	\N
2237	\N	Coastal Physiotherapy - Burnie	\N		\N	http://coastalphysiotherapy.com.au/	6431 2748	(03) 6431 4586	\N	2135	\N
2246	\N	Independent Kids - Occupational Therapy	\N		\N	http://www.independentkids.com.au/	6223 2163	(03) 6234 5333	\N	2143	\N
2249	\N	Susie Potito Paediatric Physiotherapy	\N		\N	http://www.pandatherapy.com.au/	6278 8400	(03) 6278 8600	\N	2146	\N
2251	\N	Visability Children's Therapy Centre	\N		\N	http://visability.com.au/		(03) 6245 9232	\N	2147	\N
2256	\N	Ipar Rehab - Launceston	\N		\N	http://ipar.com.au/	6332 0099	(03) 6332 0000	\N	2152	\N
2257	\N	Launceston Occupational Therapy	\N		\N	http://launcestonocctherapy.com.au/	6334 2537	63317202	\N	2153	\N
2262	\N	New Town Osteopathy	\N		\N	http://www.newtownosteo.com.au/	6278 7757	(03) 6278 7717	\N	2158	\N
2263	\N	Hobart Natural Health Clinic	\N		\N	http://taswellbeing.com.au/	6234 4884	0456 038 139	\N	2159	\N
2264	\N	North Hobart Osteopathy	\N		\N	https://www.northhobartosteopathy.com/?utm_source=google&utm_medium=organic&utm_campaign=Google%20My%20Business%20Page	6234 5514	(03) 6234 5510	\N	2160	\N
2266	\N	Osteopic - Bellerive	\N		\N	http://www.osteopathhobart.com.au/	6134 8835	0488 176 129	\N	2162	\N
2267	\N	Osteopic - Kingston Beach	\N		\N	http://www.osteopathhobart.com.au/	6134 8835	0488 176 129	\N	2163	\N
2268	\N	Connections Health	\N		\N	http://www.connectionshealth.com.au/	8080 6626	(03) 6237 0036	\N	2164	\N
2269	\N	Derwent Osteopathy & Natural Health	\N		\N	http://www.osteopathynaturalhealth.com.au/	6223 6462	(03) 6237 0052	\N	2165	\N
2270	\N	Bodyfocus	\N		\N	http://www.launcestonosteopathy.com.au/	6301 9290	(03) 6331 6225	\N	2166	\N
2271	\N	Lotus Osteopathy	\N		\N	http://www.osteopath-launceston.com.au/	6334 9664	(03) 6334 6674	\N	2167	\N
2273	\N	Freshwater Osteopathy - Newstead	\N		\N	http://www.freshwaterosteopathy.com.au/	6334 9066	(03) 6334 9044	\N	2169	\N
2274	\N	Kevin Clifford Osteopath	\N		\N	https://osteokclifford.cliniko.com/bookings	6334 2537	(03) 6331 5433	\N	1709	\N
2275	\N	Island Osteopathy	\N		\N	\N	6425 1774	(03) 6425 3326	\N	2170	\N
2276	\N	Hobart Home Physio Group	\N		\N	http://tassportsphysio.com.au/	9012 4471	(03) 6224 4900	\N	2171	\N
2278	\N	Back In Motion - Hobart On Murray	\N		\N	https://www.backinmotion.com.au/hobart-on-murray	6231 3817	(03) 6231 3939	\N	2172	\N
2279	\N	(pelvic Physio) Rachel Andrew Apa Continence & Women's Health Physio	\N		\N	http://www.pelvicphysio.com.au/		(03) 6214 3333	\N	2173	\N
2281	\N	Jane Barker Pelvic Floor Clinic	\N		\N	http://www.pelvicfloorclinic.com.au/	6228 3050	(03) 6228 3331	\N	2175	\N
2282	\N	Huon Physiotherapy	\N		\N	http://www.huonphysiotherapy.com.au/	6264 2177	(03) 6264 2166	\N	2176	\N
2286	\N	Northside Physiotherapy	\N		\N	https://northsidephysiotherapy.com.au/	6278 1857	(03) 6278 1920	\N	1932	\N
2287	\N	Tas Sports Physio	\N		\N	http://tassportsphysio.com.au/	6224 2861	(03) 6224 4900	\N	2179	\N
2288	\N	Back In Motion - Rosny Park	\N		\N	http://www.backinmotion.com.au/rosny-park	6285 8593	(03) 6281 2499	\N	2180	\N
2289	\N	Flex Health Therapy	\N		\N	http://www.flexhealththerapy.com.au/	8677 9195	(03) 6287 6019	\N	2181	\N
2291	\N	Clarence Joint Therapy	\N		\N	http://www.clarencejointtherapy.com/	6247 2266	(03) 6247 2211	\N	2183	\N
2292	\N	Leap Health Physio & Sports Injury Centre - Rosny	\N		\N	http://leaphealth.com.au/rosny-park	6244 6540	(03) 6244 7747	\N	2184	\N
2294	\N	Back In Motion - Kingston	\N		\N	https://www.backinmotion.com.au/kingston	6237 0043	(03) 6237 0045	\N	2186	\N
2295	\N	Derwent Valley Physiotherapy & Sports Injury Clinic	\N		\N	\N	6261 4887	(03) 6261 5884	\N	2187	\N
2297	\N	Bellerive Physiotherapy And Sports Centre	\N		\N	\N	6244 7951	(03) 6244 1348	\N	2188	\N
2298	\N	Elke Rudolph-move With Ease	\N		\N	http://elkerudolph.com.au/	6231 9230	0498 537 885	\N	2189	\N
2300	\N	Flowstate Physio	\N		\N	http://flowstatephysio.com/	6121 4560	0481 301 919	\N	2120	\N
2301	\N	The Pelvic Studio	\N		\N	http://www.thepelvicstudio.com/	6285 8010	(03) 6224 7195	\N	2191	\N
2302	\N	Cygnet Physio	\N		\N	http://huonvalleyhealthcentre.com.au/	6295 0175	(03) 6295 1333	\N	2192	\N
2304	\N	Launceston Respiratory Physiotherapy	\N		\N	http://www.lstrsc.com.au/	6334 0260	(03) 6331 1300	\N	2194	\N
2305	\N	Launceston Physiotherapy Services	\N		\N	http://www.launcestonphysio.com.au/?utm_source=google&utm_medium=organic&utm_campaign=Google%20My%20Business%20Page	6334 7911	(03) 6331 3811	\N	2195	\N
2306	\N	Mowbray Physiotherapy Services	\N		\N	http://mowbrayphysiotherapyservices.com/	6326 4311	(03) 6326 6999	\N	2196	\N
2307	\N	Elphin Road Physiotherapy	\N		\N	\N	6334 6554	(03) 6331 8355	\N	2197	\N
2308	\N	Riverside Physiotherapy	\N		\N	http://riversidephysiotherapy.com/	6327 4622	(03) 6327 3977	\N	2198	\N
2309	\N	West Tamar Physiotherapy	\N		\N	http://www.westtamarphysio.com.au	6394 4144	(03) 6394 4111	\N	2199	\N
2311	\N	Bass Coast Physiotherapy - George Town	\N		\N	\N	6380 3622	(03) 6382 2170	\N	2200	\N
2313	\N	Burnie Physiotherapy And Sports Injury Clinic	\N		\N	http://burniephysiotherapy.com.au/	6435 3365	(03) 6435 3366	\N	2201	\N
2316	\N	Physiotas - Latrobe	\N		\N	http://www.physica.com.au/	6424 7811	(03) 6426 1111	\N	2029	\N
2318	\N	Wynyard Physiotherapy	\N		\N	http://saundersstreetclinic.com.au/	6442 1711	(03) 6442 1700	\N	2203	\N
2319	\N	King Island Physiotherapy	\N		\N	https://www.ochrehealth.com.au/practices/medical-centre-king-island-tas/		(03) 6462 0200	\N	2204	\N
2323	\N	My Footdr - Ispahan	\N		\N	https://www.myfootdr.com.au/our-clinics/south-hobart-ispahan-podiatry-centre/?utm_campaign=GMB&utm_source=gmb&utm_medium=link	6224 3814	(03) 6224 3555	\N	2208	\N
2324	\N	Tim Pain Podiatry	\N		\N	http://timpainpodiatry.com.au/	6244 6199	(03) 6244 7999	\N	2209	\N
2326	\N	Foot Systems & Sport & Exercise Podiatry	\N		\N	http://www.footsystems.com.au/		(03) 6234 4055	\N	2210	\N
2327	\N	Kingston Podiatry	\N		\N	\N	6229 8581	(03) 6229 8583	\N	2211	\N
2328	\N	Hobart Biomechanics Clinic	\N		\N	http://www.awcopperpodiatrist.com/	6234 5740	(03) 6234 5009	\N	2212	\N
2330	\N	Healthy Step Hobart	\N		\N	http://www.comfortandfit.com.au/	6231 1448	(03) 6231 1336	\N	2214	\N
2331	\N	Tasmanian Foot & Ankle Clinic	\N		\N	https://www.tasmanianfootandankleclinic.com.au/	8582 9760	(03) 6278 1744	\N	2215	\N
2332	\N	Southern Tas Podiatry Clinic - Bruny Island	\N		\N	https://www.southerntaspodiatry.com.au/	6264 2491	(03) 6293 1143	\N	1661	\N
2334	\N	Southern Tas Podiatry Clinic - Huonville	\N		\N	http://southerntaspodiatry.com.au/	6264 2491	(03) 6264 3416	\N	2217	\N
2335	\N	Claremont Podiatry	\N		\N	http://www.claremontpodiatry.com.au/	6249 1444	(03) 6249 1155	\N	2218	\N
2336	\N	Eastern Shore Podiatry	\N		\N	\N	6244 1157	(03) 6244 1155	\N	2219	\N
2338	\N	Hobart Mobile Podiatry	\N		\N	https://leaphealth.com.au/hobart/	6118 2606	(03) 6234 6498	\N	2221	\N
2339	\N	New Town Podiatry	\N		\N	\N	6278 3575	(03) 6278 3570	\N	2222	\N
2341	\N	Launceston Podiatry Clinic	\N		\N	http://www.launcestonpodiatryclinic.com.au/	6331 0063	(03) 6334 7174	\N	2224	\N
2344	\N	St Johns Foot Clinic - Legana	\N		\N	http://stjohnsfootclinic.com/		(03) 6330 3680	\N	2227	\N
2348	\N	Lightfoot Podiatry	\N		\N	http://www.lfpodiatry.com/	6380 8396	(03) 6331 9568	\N	2230	\N
2349	\N	Kings Meadows Podiatry	\N		\N	https://www.kingsmeadowspodiatry.com.au/	6343 5288	(03) 6343 5300	\N	2231	\N
2350	\N	David Mckay And Associates	\N		\N	https://www.davidmckayassociates.com/	6331 9419	(03) 6331 4811	\N	2232	\N
2351	\N	My Footdr - Devonport	\N		\N	https://www.myfootdr.com.au/our-clinics/devonport-podiatry-centre/?utm_campaign=GMB&utm_source=gmb&utm_medium=link	6424 6922	(03) 6424 8182	\N	2233	\N
2354	\N	Feet Sp Podiatry - Burnie	\N		\N	\N	6432 2651	(03) 6432 2664	\N	2236	\N
2357	\N	Camdale Podiatry	\N		\N	\N	6435 0471	(03) 6435 0477	\N	2237	\N
2358	\N	Footprints Podiatry - Wynyard	\N		\N	http://www.footprintspodiatry.com.au/	6425 6333	(03) 6425 7333	\N	2238	\N
2360	\N	Footprints Podiatry - Cooee	\N		\N	http://www.footprintspodiatry.com.au/	6425 6333	(03) 6425 7333	\N	1739	\N
2361	\N	Footprints Podiatry - Smithton	\N		\N	http://www.footprintspodiatry.com.au/	6425 6333	(03) 6425 7333	\N	2240	\N
2362	\N	Footprints Podiatry - Ulverstone	\N		\N	http://www.footprintspodiatry.com.au/	6425 6333	(03) 6425 7333	\N	2241	\N
2365	\N	Speech Pathology Tasmania - Hobart	\N		\N	http://spt.com.au/	6234 5447	(03) 6234 5717	\N	2244	\N
2368	\N	The Therapy Network	\N		\N	https://hockleyspeechpathology.com/		0423 072 265	\N	2247	\N
2369	\N	Tanya Laugher Speech Pathologist - Howrah	\N		\N	http://www.tanyalaugherspeechpathologist.com.au/	6285 8079	0408 666 723	\N	2248	\N
2370	\N	Tanya Laugher Speech Pathologist - Sandy Bay	\N		\N	http://tanyalaugherspeechpathologist.com.au/	6285 8079	0408 666 723	\N	1673	\N
2371	\N	Step By Step Speech Pathology	\N		\N	http://stepbystepspeech.com.au/	6301 9227	0488 639 345	\N	2249	\N
2372	\N	Start Smart Tasmania	\N		\N	http://www.startsmarttasmania.com.au/		(03) 6388 8457	\N	2250	\N
2373	\N	Greer Maine - Speech Pathologist	\N		\N	\N		0479 163 390	\N	2251	\N
2374	\N	Lynn Brooke Speech Pathology	\N		\N	\N		(03) 6423 6059	\N	2252	\N
2379	\N	Speech Pathology Tasmania - Burnie	\N		\N	http://www.cocoonpaediatrics.com.au/	6234 5447	0499 223 773	\N	2256	\N
\.


--
-- Data for Name: clinics_clinicflaggedclinic; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clinics_clinicflaggedclinic (id, notes, clinic_id, clinic_noted_id) FROM stdin;
\.


--
-- Data for Name: clinics_clinicflaggedprofessional; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clinics_clinicflaggedprofessional (id, notes, clinic_id, professional_id) FROM stdin;
\.


--
-- Data for Name: clinics_location; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clinics_location (id, country, state, postcode, suburb, street_name, street_number, latitude, longitude, subpremise, premise) FROM stdin;
1778	Australia	TAS	7250	East Launceston	Lyttleton St	26	-41.4345299999999881	147.149614000000014	\N	\N
1671	Australia	TAS	7018	Rosny Park	Bayfield St	10	-42.8663712999999973	147.370410600000014	\N	\N
1672	Australia	TAS	7009	Derwent Park	Main Rd	254	-42.8366546999999969	147.286990000000003	\N	\N
1674	Australia	TAS	7015	Lindisfarne	Lincoln St	30	-42.8475338999999877	147.351798900000006	\N	\N
1675	Australia	TAS	7000	Hobart	Macquarie St	186	-42.8865805999999878	147.325511500000005	\N	\N
1676	Australia	TAS	7000	Hobart	Davey St	25	-42.8846811999999886	147.329046099999999	\N	\N
1677	Australia	TAS	7000	Hobart	Liverpool St	221	-42.8845969999999994	147.323275300000006	2	\N
1679	Australia	TAS	7000	Glebe	Edward St	2	-42.8765090999999998	147.329037999999997	\N	\N
1680	Australia	TAS	7025	Richmond	Bridge St	12	-42.7378259999999983	147.432737900000006	\N	\N
1684	Australia	TAS	7250	Launceston	Charles St		-41.4429633000000024	147.14171540000001	\N	\N
1685	Australia	TAS	7250	Launceston	Paterson St	18	-41.4357570000000024	147.138642000000004	\N	\N
1687	Australia	TAS	7249	South Launceston	Wellington St	455	-41.4589114999999993	147.152238799999992	\N	\N
1688	Australia	TAS	7250	Launceston	Canning St	54	-41.442977599999999	147.139017999999993	\N	\N
1689	Australia	TAS	7250	Launceston	York St	76	-41.4368004999999968	147.142217499999987	26	\N
1691	Australia	TAS	7250	Launceston	Elphin Rd	1	-41.432035599999999	147.145806999999991	\N	\N
1692	Australia	TAS	7250	Launceston	Paterson St	68	-41.437675100000007	147.13514330000001	\N	\N
1693	Australia	TAS	7250	Launceston	Paterson St	39	-41.4365741000000014	147.137916899999993	\N	\N
1694	Australia	TAS	7250	Launceston	Brisbane St	52	-41.436066799999999	147.140667000000008	House, Level 2	\N
1697	Australia	TAS	7250	Launceston	York St	116	-41.438547100000001	147.139533	\N	\N
1699	Australia	TAS	7250	Launceston	Brisbane St	186	-41.4390347999999875	147.13551240000001	\N	\N
1701	Australia	TAS	7250	Launceston	Paterson St	39	-41.4365009999999998	147.138003999999995	\N	\N
1703	Australia	TAS	7250	Newstead	Wentworth St	14	-41.4459519999999983	147.160606999999999	1	\N
1704	Australia	TAS	7301	Longford	Wellington St	159	-41.6039511000000033	147.126046500000001	\N	\N
1708	Australia	TAS	7250	St Leonards	St Leonards Rd	337	-41.4596149999999994	147.20181199999999	\N	\N
1711	Australia	TAS	7270	Beaconsfield	Weld St	144	-41.1996267000000032	146.816114599999992	\N	\N
1712	Australia	TAS	7250	Launceston	Innes St	5	-41.4299154999999999	147.146720499999986	\N	\N
1713	Australia	TAS	7303	Westbury	Meander Valley Rd	86	-41.5262711999999965	146.834107999999986	\N	\N
1714	Australia	TAS	7212	Evandale	High St	8A	-41.5698725000000024	147.246315199999998	\N	\N
1718	Australia	TAS	7248	Mowbray	Invermay Rd	282	-41.4042750999999996	147.132485099999997	3	\N
1720	Australia	TAS	7250	Launceston	Brisbane St	52	-41.4360550999999973	147.140762899999999	\N	\N
1721	Australia	TAS	7307	Shearwater	Shearwater Blvd	22	-41.1609053000000031	146.540673700000013	\N	\N
1722	Australia	TAS	7322	Somerset	Falmouth St	33	-41.0415860000000023	145.833180400000003	\N	\N
1723	Australia	TAS	7325	Wynyard	Frederick St	35	-40.9896657000000033	145.711741600000011	\N	\N
1724	Australia	TAS	7310	Devonport	Oldaker St	68	-41.1756092999999979	146.354169000000013	\N	\N
1726	Australia	TAS	7315	Ulverstone	King Edward St	47	-41.1589691000000002	146.171714000000009	\N	\N
1730	Australia	TAS	7469	Zeehan	Main St	89	-41.8874490999999978	145.337526300000007	\N	\N
1731	Australia	TAS	7315	Ulverstone	King Edward St	22	-41.1558259000000035	146.171775099999991	\N	\N
1735	Australia	TAS	7307	Latrobe	Gilbert St	120	-41.2358660000000015	146.411564999999996	\N	\N
1736	Australia	TAS	7320	South Burnie	Hale St	12	-41.0611035000000015	145.909189700000013	\N	\N
1737	Australia	TAS	7320	South Burnie	Reeves St	3	-41.0629826999999992	145.914163300000013	1	\N
1738	Australia	TAS	7325	Wynyard	Jackson St	37	-40.9902269999999973	145.728903500000001	\N	\N
1745	Australia	TAS	7306	Sheffield	Henry St	1	-41.3851872999999983	146.324424399999998	\N	\N
1744	Australia	TAS	7320	Burnie	Wilson St	152	-41.0577710000000025	145.90476799999999	\N	\N
1750	Australia	TAS	7019	Rokeby	Chipmans Rd	31	-42.9046250000000029	147.435618900000009	\N	\N
1752	Australia	TAS	7000	Hobart	Macquarie St	303	-42.890338100000001	147.320015799999993	\N	\N
1757	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8659910000000011	147.303689999999989	\N	\N
1758	Australia	TAS	7000	Hobart	Argyle St	33	-42.8809281999999925	147.329851300000001	\N	\N
1759	Australia	TAS	7000	Hobart	Argyle St	25	-42.8813679999999877	147.330594100000013	Suite1	\N
1760	Australia	TAS	7250	Launceston	Charles St	287	-41.4465871000000021	147.143687	\N	\N
1761	Australia	TAS	7250	Launceston	Frederick St	5	-41.4405294999999896	147.142829400000011	\N	\N
1769	Australia	TAS	7000	Hobart	Liverpool St	48	-42.8800241999999869	147.329894200000012	\N	\N
1770	Australia	TAS	7250	Launceston	Frederick St	71	-41.4441473999999985	147.1343009	\N	\N
1771	Australia	TAS	7004	South Hobart	Cascade Rd	30F	-42.8961056000000127	147.30669420000001	\N	\N
1772	Australia	TAS	7250	Launceston	Wellington St	127-129	-41.4430048999999983	147.138742699999995	2	\N
1774	Australia	TAS	7000	Hobart	Hampden Rd	121	-42.8883827000000082	147.329575299999988	\N	\N
1775	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8659910000000011	147.303689999999989	\N	\N
1767	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.866153599999997	147.304099100000002	\N	\N
1690	Australia	TAS	7250	Riverside	Windsor Dr	1	-41.4046081999999913	147.094213400000001	\N	\N
1776	Australia	TAS	7250	Launceston	Wellington St	247	-41.4486340999999996	147.140354099999996	1	\N
1739	Australia	TAS	7320	Cooee	Bass Hwy	52-56	-41.0405990000000003	145.876334000000014	\N	\N
1673	Australia	TAS	7005	Sandy Bay	Sandy Bay Rd	270	-42.8967108000000081	147.329002400000007	\N	\N
1779	Australia	TAS	7000	Hobart	Argyle St	33	-42.8808810000000022	147.32996399999999	Suite 9, Ground Floor	\N
1781	Australia	TAS	7005	Sandy Bay	King St	97	-42.8954702999999924	147.323387800000006	\N	\N
1783	Australia	TAS	7249	South Launceston	Wilson St	13	-41.4512190000000018	147.140520199999997	\N	\N
1785	Australia	TAS	7000	Hobart	Patrick St	56	-42.8791094999999984	147.321123999999998	\N	\N
1786	Australia	TAS	7250	Launceston	Charles St	287	-41.4462149000000011	147.143491000000012	112	\N
1787	Australia	TAS	7000	Hobart	Argyle St	Cnr	-42.8807898000000023	147.329754100000002	\N	\N
1789	Australia	TAS	7000	Hobart	Davey St	149	-42.8901182000000034	147.322032199999995	\N	\N
1790	Australia	TAS	7320	South Burnie	Wilson St	194	-41.060618599999998	145.906335100000007	\N	\N
1793	Australia	TAS	7004	South Hobart	Macquarie St	324	-42.8921757999999969	147.318081500000005	\N	\N
1795	Australia	TAS	7004	South Hobart	Macquarie St	324	-42.8921757999999969	147.318081500000005	\N	\N
1799	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8661030000000025	147.303711499999991	\N	\N
1801	Australia	TAS	7250	Launceston	Frederick St	5	-41.4405294999999896	147.142829400000011	\N	\N
1805	Australia	TAS	7000	Hobart	Argyle St	25	-42.8813675000000032	147.330594399999995	\N	\N
1811	Australia	TAS	7000	Hobart	Elizabeth St	18	-42.8827779999999876	147.329792999999995	6	\N
1813	Australia	TAS	7000	Hobart	Elizabeth St	438	-42.8659910000000011	147.303689999999989	\N	\N
1814	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8659910000000011	147.303689999999989	\N	\N
1817	Australia	TAS	7009	Moonah	Main Rd	18	-42.8502437	147.297181599999988	\N	\N
1818	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8659910000000011	147.303689999999989	\N	\N
1820	Australia	TAS	7004	South Hobart	Warneford St	1	-42.8895955999999998	147.32047399999999	\N	\N
1821	Australia	TAS	7172	Sorell	Cole St	12	-42.7829320000000024	147.566311000000013	11	\N
1825	Australia	TAS	7008	New Town	Clare St	16	-42.8662642999999974	147.309666399999998	\N	\N
1826	Australia	TAS	7250	Launceston	Lyttleton St	19	-41.4340449999999976	147.150438900000012	\N	\N
1829	Australia	TAS	7320	Burnie	North West Private Hospital / 21 Brickport Road		-41.0462719999999877	145.880239899999992	\N	\N
1830	Australia	TAS	7250	Launceston	Elizabeth St	14	-41.4384105000000034	147.142994299999998	\N	\N
1833	Australia	TAS	7004	South Hobart	Cascade Rd	30E	-42.8957266999999973	147.306199800000002	\N	\N
1824	Australia	TAS	7000	Hobart	Melville St	2	-42.8781504999999967	147.328071899999998	\N	\N
1835	Australia	TAS	7000	Hobart	Argyle St	182	-42.8759001999999967	147.322260199999988	\N	\N
1836	Australia	TAS	7005	Sandy Bay	Queen St	80	-42.893961300000008	147.325253199999992	\N	\N
1837	Australia	TAS	7000	Hobart	Bathurst St	99	-42.8812283999999977	147.324645599999997	Suite 2, Ground Floor	\N
1838	Australia	TAS	7010	Glenorchy	Main Rd	370	-42.8331559000000013	147.275614700000006	unit 3	\N
1839	Australia	TAS	7000	Hobart	Kirksway Pl	4	-42.8881288999999981	147.330629399999992	2	\N
1840	Australia	TAS	7050	Kingston	Channel Court Shopping Centre	Shop 77	-42.9756750000000025	147.309494000000001	\N	\N
1841	Australia	TAS	7250	Launceston	Charles St	262	-41.4445740000000029	147.141828000000004	\N	\N
1843	Australia	TAS	7310	Devonport	Oldaker St	62	-41.1754749999999916	146.35487599999999	\N	\N
1844	Australia	TAS	7320	Cooee	Brickport Rd	21	-41.0464987000000008	145.880955400000005	\N	\N
1847	Australia	TAS	7004	South Hobart	Cascade Rd	30	-42.8957227000000074	147.306395400000014	\N	\N
1848	Australia	TAS	7000	Hobart	Davey St	69	-42.886895899999999	147.326298699999995	\N	\N
1849	Australia	TAS	7000	Hobart	Macquarie St	268	-42.8907979999999966	147.320218000000011	\N	\N
1850	Australia	TAS	7008	Lenah Valley	C/- Calvary Hospital Campus - 49 Augusta Road		-42.8663151000000013	147.302833800000002	\N	\N
1851	Australia	TAS	7000	North Hobart	Federal St	71	-42.8710767999999973	147.315625799999992	\N	\N
1852	Australia	TAS	7004	South Hobart	Wellington Grange - 30 Cascade Road		-42.8954935000000006	147.306808999999987	\N	\N
1854	Australia	TAS	7004	South Hobart	Cascade Rd	30	-42.8957227000000074	147.306395400000014	\N	\N
1855	Australia	TAS	7250	Launceston	Brisbane St	23	-41.4346649999999883	147.143829000000011	\N	\N
1788	Australia	TAS	7250	Launceston	Elphin Road	77	-41.4339239999999975	147.153732999999988	\N	\N
1858	Australia	TAS	7250	Launceston	Elphin Rd	50	-41.4328909999999979	147.150613899999996	\N	\N
1859	Australia	TAS	7320	Burnie	North West Medical Centre - Orthopaedic Suite / 21 Brickport		-41.0470061999999984	145.881994200000008	\N	\N
1862	Australia	TAS	7004	South Hobart	Falconer House / St John's Hospital - 30 Cascade Road		-42.8963540000000023	147.305713999999995	\N	\N
1864	Australia	TAS	7250	Launceston	George St	170	-41.4401915999999986	147.143483900000007	3	\N
1866	Australia	TAS	7008	Lenah Valley	Augusta Rd	59	-42.8662368000000029	147.302774199999988	\N	\N
1868	Australia	TAS	7250	Launceston	Wellington St	247	-41.4485743999999983	147.140319599999998	Level 1	\N
1869	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.866153599999997	147.304099100000002	\N	\N
1872	Australia	TAS	7000	Hobart	Liverpool St	22	-42.8789674000000005	147.330286599999994	\N	\N
1873	Australia	TAS	7000	Hobart	Argyle St	34	-42.8811520000000002	147.329603399999996	2	\N
1874	Australia	TAS	7250	Launceston	Elphin Rd	54	-41.4331800000000001	147.150960999999995	\N	\N
1875	Australia	TAS	7000	Hobart	Macquarie St	295	-42.8900599999999983	147.320308799999992	\N	\N
1878	Australia	TAS	7000	Mount Stuart	Mount Stuart Rd	10	-42.872996999999998	147.310702099999986	\N	\N
1627	Australia	TAS	7000	North Hobart	Elizabeth St	436	-42.8712659999999985	147.31277399999999	\N	\N
1876	Australia	TAS	7000	Hobart	Salamanca Pl	33	-42.8862242000000009	147.330657900000006	\N	\N
1881	Australia	TAS	7250	East Launceston	Lyttleton St	26	-41.4345241999999985	147.149604799999992	\N	\N
1883	Australia	TAS	7250	Newstead	Elphin Rd	137	-41.4390507999999969	147.159502400000008	\N	\N
1886	Australia	TAS	7250	Launceston	Frederick St	5	-41.4407280000000071	147.142717000000005	Suite 9	\N
1924	Australia	TAS	7018	Rosny Park	Ross Ave	7	-42.8649035999999981	147.370723599999991	\N	\N
1887	Australia	TAS	7250	East Launceston	Lyttleton St	19	-41.4340479999999971	147.15045760000001	\N	\N
1889	Australia	TAS	7000	Hobart	Collins St	8	-42.879300299999997	147.332805799999988	\N	\N
1892	Australia	TAS	7250	Launceston	Frederick St	9	-41.4411950000000004	147.141084000000006	\N	\N
1894	Australia	TAS	7250	Launceston	High St	11	-41.4334453999999965	147.148009500000001	\N	\N
1895	Australia	TAS	7000	Hobart	Warneford St	4	-42.8897457000000131	147.319910999999991	\N	\N
1896	Australia	TAS	7249	South Launceston	Thistle St W	38	-41.4532792999999984	147.138369399999988	\N	\N
1897	Australia	TAS	7000	Hobart	Davey St	71	-42.8868825999999999	147.326117299999993	\N	\N
1898	Australia	TAS	7000	Hobart	Collins St	36	-42.8800091000000023	147.331981299999995	\N	\N
1798	Australia	TAS	7000	Hobart	Argyle St	25	-42.8813989000000007	147.3306173	3	\N
1900	Australia	TAS	7000	Hobart	Hobart Private Hospital - Suite 8 / 33 Argyle Street		-42.8807293999999999	147.329820500000011	\N	\N
1901	Australia	TAS	7000	Hobart	Argyle St	34	-42.8811218999999966	147.329509099999996	Suite 2B, Level 2	\N
1902	Australia	TAS	7250	Launceston	George St	170	-41.4405294000000026	147.142829400000011	\N	\N
1903	Australia	TAS	7250	Launceston	George St	170	-41.4402100000000004	147.14342400000001	4	\N
1904	Australia	TAS	7250	Launceston	Dowling St	1	-41.4328474000000071	147.151822900000013	\N	\N
1906	Australia	TAS	7310	Devonport	Steele St	166	-41.1787211999999982	146.341645	\N	\N
1907	Australia	TAS	7008	New Town	Joynton St	12	-42.865715999999999	147.304496	\N	\N
1908	Australia	TAS	7000	Hobart	Ground Flr / 33 Argyle Street	Suite 8	-42.8808249000000004	147.330046199999998	\N	\N
1909	Australia	TAS	7008	New Town	Joynton St	10	-42.8656711999999871	147.304936400000003	\N	\N
1910	Australia	TAS	7000	Hobart	Collins St	85	-42.8824565000000035	147.327685800000012	Lvl 2	\N
1911	Australia	TAS	7000	Hobart	- Hobart Private Hospital - 33 Argyle Street	Suite 3	-42.8808991000000006	147.329805099999987	\N	\N
1784	Australia	TAS	7250	Launceston	Frederick St	5	-41.4406729000000027	147.142840500000005	\N	\N
1912	Australia	TAS	7250	Launceston	Canning St	25-27	-41.4422895000000082	147.141863499999999	\N	\N
1751	Australia	TAS	7000	Hobart	Argyle St	33	-42.8807432999999989	147.329854699999999	suite 7	\N
1916	Australia	TAS	7000	Hobart	Hunter St	19A	-42.881050799999997	147.335362199999992	Unit 233	\N
1918	Australia	TAS	7011	Claremont	Main Rd	35	-42.7908120000000025	147.255324999999999	24-25	Claremont Plaza
1919	Australia	TAS	7170	Cambridge	Stanton Pl	1	-42.8318449000000001	147.464492000000007	5	\N
1797	Australia	TAS	7004	South Hobart	Cascade Rd	30	-42.8957266999999973	147.306199800000002	\N	\N
1921	Australia	TAS	7010	Glenorchy	Main Rd	421	-42.8322100999999975	147.272039599999999	\N	\N
1922	Australia	TAS	7008	Lenah Valley	Augusta Rd	95	-42.8658021999999903	147.297441499999991	\N	\N
1923	Australia	TAS	7000	Hobart	Collins St	188	-42.8855289999999982	147.325334999999995	\N	\N
1925	Australia	TAS	7005	Sandy Bay	King St	57	-42.8952661000000006	147.325610799999993	2	\N
1926	Australia	TAS	7030	Bridgewater	Hurst St	9-11	-42.7359091000000006	147.24615	\N	\N
1927	Australia	TAS	7004	Battery Point	Sandy Bay Rd	53	-42.89016629999999	147.329306500000001	\N	\N
1929	Australia	TAS	7050	Kingston	John St	11	-42.9745679999999979	147.309556100000009	9	\N
1930	Australia	TAS	7008	New Town	New Town Rd	137	-42.8595834000000124	147.306211399999995	\N	\N
1931	Australia	TAS	7000	Hobart	Argyle St	34	-42.8811335999999912	147.329532900000004	\N	\N
1934	Australia	TAS	7010	Glenorchy	Main Rd	346	-42.8335173999999981	147.278113600000012	\N	\N
1935	Australia	TAS	7018	Howrah	Shoreline Dr	6	-42.8803488000000002	147.407154999999989	\N	\N
1936	Australia	TAS	7000	Glebe	Shoobridge St	20	-42.8721035000000015	147.324917800000009	\N	\N
1937	Australia	TAS	7005	Sandy Bay	Beach Rd	3	-42.9128901999999997	147.355550399999998	3	\N
1938	Australia	TAS	7015	Lindisfarne	Lincoln St	31	-42.8476967000000002	147.353493100000009	\N	\N
1939	Australia	TAS	7000	Hobart	Collins St	117	-42.8835519000000005	147.326894199999998	3	\N
1940	Australia	TAS	7005	Sandy Bay	Grosvenor St	57	-42.9009700000000009	147.32703810000001	\N	\N
1941	Australia	TAS	7021	Lauderdale	S Arm Rd	444	-42.9068100000000001	147.480907099999996	\N	\N
1942	Australia	TAS	7018	Rosny Park	Bayfield St	16-22	-42.8664361000000014	147.371498900000006	\N	\N
1943	Australia	TAS	7015	Lindisfarne	Franklin St	21	-42.8466181999999876	147.353520800000013	\N	\N
1944	Australia	TAS	7008	Lenah Valley	Augusta Rd	120	-42.8656706000000014	147.295255200000014	\N	\N
1945	Australia	TAS	7008	New Town	New Town Rd	127	-42.8598147000000083	147.306866899999989	\N	\N
1946	Australia	TAS	7008	New Town	Stoke St	3	-42.8649573000000075	147.311803400000002	\N	\N
1947	Australia	TAS	7030	Brighton	Brighton Rd	174	-42.6984950000000012	147.2531879	\N	\N
1948	Australia	TAS	7184	Nubeena	Nubeena Rd	1614	-43.0967662999999988	147.743094200000002	\N	\N
1932	Australia	TAS	7009	Moonah	Hopkins St	67	-42.8460960000000028	147.295749000000001	\N	\N
1602	Australia	TAS	7000	Hobart	Brooke St	8	-42.8840959999999995	147.331198099999995	1	\N
1603	Australia	TAS	7008	New Town	Archer Street	16	-42.8661512999999985	147.312783499999995	\N	\N
1604	Australia	TAS	7005	Sandy Bay	Princes St	81	-42.898100300000003	147.320677100000012	\N	\N
1601	Australia	TAS	7172	Sorell	Gordon St	31	-42.7845756999999907	147.56165390000001	\N	\N
1616	Australia	TAS	7005	Sandy Bay	Princes St	87	-42.8972637999999975	147.3242525	\N	\N
1624	Australia	TAS	7005	Sandy Bay	Gregory St	11	-42.8958413000000007	147.326383700000008	\N	\N
1605	Australia	TAS	7000	Hobart	Macquarie St	277	-42.8895880999999974	147.321183100000013	\N	\N
1635	Australia	TAS	7009	Derwent Park	Main Rd	252	-42.8368668999999969	147.287314699999996	\N	\N
1609	Australia	TAS	7000	Hobart	Davey St	205	-42.8918310999999974	147.319664399999994	\N	\N
1611	Australia	TAS	7112	Cygnet	George St	14	-43.1604485000000082	147.074087399999996	\N	\N
1613	Australia	TAS	7050	Kingston Beach	Recreation St	2	-42.981564000000013	147.322853000000009	\N	2
1614	Australia	TAS	7000	Hobart	Bathurst St	114	-42.8821638000000007	147.324307800000014	\N	\N
1615	Australia	TAS	7000	Hobart	Murray St	39	-42.8830791999999974	147.327236099999993	Level 8	\N
1606	Australia	TAS	7018	Rosny Park	Bayfield St	16-22	-42.8664361000000014	147.371498900000006	\N	\N
1618	Australia	TAS	7000	Hobart	Collins St	121	-42.8837417000000016	147.3263575	Level 1	\N
1619	Australia	TAS	7000	Hobart	Liverpool St	49	-42.8802590000000023	147.327972999999986	\N	\N
1620	Australia	TAS	7050	Kingston	Ferguson Ct	13	-42.9840165000000027	147.30973929999999	\N	\N
1623	Australia	TAS	7018	Bellerive	Cambridge Rd	31-33	-42.8748024000000001	147.368338099999988	Level 3	\N
1626	Australia	TAS	7008	New Town	New Town Rd	160	-42.8594540000000066	147.305169000000006	\N	\N
1628	Australia	TAS	7019	Rokeby	S Arm Rd	46	-42.901623800000003	147.447460699999993	\N	\N
1630	Australia	TAS	7004	Battery Point	Montpelier Retreat	38	-42.8884453000000008	147.331441699999999	\N	\N
1632	Australia	TAS	7000	North Hobart	Federal St	73	-42.8712143000000125	147.315585800000008	\N	\N
1634	Australia	TAS	7000	West Hobart	Thelma Dr	8	-42.8911670000000029	147.30421419999999	\N	\N
1608	Australia	TAS	7000	Hobart	Campbell St	159	-42.8759060999999875	147.325790100000006	\N	\N
1638	Australia	TAS	7000	Hobart	Elizabeth St	340	-42.8745896000000073	147.316759600000012	\N	\N
1639	Australia	TAS	7018	Rosny Park	Bayfield St	2	-42.8660489999999967	147.369733999999994	Suite 9	\N
1597	Australia	TAS	7005	Sandy Bay	Gregory St	16	-42.8956469999999968	147.326213999999993	\N	\N
1600	Australia	TAS	7018	Bellerive	Cambridge Rd	120	-42.8678990000000013	147.371307000000002	1a	\N
1641	Australia	TAS	7000	Hobart	Collins St	121	-42.8837417000000016	147.3263575	Level 1	\N
1642	Australia	TAS	7005	Sandy Bay	Sonning Cres	12	-42.918120799999997	147.356884100000002	\N	\N
1643	Australia	TAS	7000	Hobart	Davey St	205	-42.8858260000000016	147.327907900000014	\N	\N
1644	Australia	TAS	7000	West Hobart	Hill St	93	-42.8801099999999877	147.312115000000006	\N	\N
1598	Australia	TAS	7000	Hobart	Macquarie St	287	-42.8897474999999986	147.3207223	1	\N
1645	Australia	TAS	7000	Hobart	Argyle St	25	-42.8814543000000015	147.330518399999988	\N	\N
1648	Australia	TAS	7000	Hobart	Salamanca Pl	33	-42.8868050000000025	147.331655000000012	suite 15b level 3	\N
1652	Australia	TAS	7018	Bellerive	Waverley St	26	-42.8710977	147.378058100000004	\N	\N
1653	Australia	TAS	7015	Lindisfarne	Lincoln St	44A	-42.8471179999999876	147.353942999999987	\N	\N
1599	Australia	TAS	7051	Kingston	John Street	29	\N	\N	\N	\N
1607	Australia	TAS	7006	Sandy Bay	Churchill Avenue	Level 1/2	\N	\N	\N	\N
1610	Australia	TAS	7004	Battery Point	S16 L3 Galleria Building 33 Salamanca Place		\N	\N	\N	\N
1617	Australia	TAS	7001	Hobart	Macquarie Street	287	\N	\N	\N	\N
1621	Australia	TAS	7002	North Hobart	Elizabeth Street	436	\N	\N	\N	\N
1622	Australia	TAS	7051	Kingston	John Street	Shop 4/7	\N	\N	\N	\N
1625	Australia	TAS	7002	North Hobart	Elizabeth Street	Suite 6/340	\N	\N	\N	\N
1629	Australia	TAS	7000	Hobart	Davey Street	202	\N	\N	\N	\N
1631	Australia	TAS	7050	Kingston	John Street Medical Centre - 5 John Street		\N	\N	\N	\N
1633	Australia	TAS	7008	New Town	Creek Road	63/83	\N	\N	\N	\N
1636	Australia	TAS	7004	Battery Point	Hampden Road	86	\N	\N	\N	\N
1637	Australia	TAS	7051	Kingston	Freeman Street	6	\N	\N	\N	\N
1646	Australia	TAS	7000	North Hobart	Elizabeth St	436	-42.8712659999999985	147.31277399999999	\N	\N
1647	Australia	TAS	7018	Howrah	Carella St	235	-42.8976048000000034	147.414728499999995	\N	\N
1640	Australia	TAS	7001	Hobart	St Helen's Private Hospital - 186 Macquarie Street		\N	\N	\N	\N
1649	Australia	TAS	7018	Bellerive	Ormond St	32	-42.8700339000000028	147.375113700000014	\N	\N
1650	Australia	TAS	7000	Hobart	Liverpool St	221	-42.8845969999999994	147.323275300000006	2	\N
1654	Australia	TAS	7008	New Town	Montagu St	111	-42.8629940999999874	147.301045600000009	\N	\N
1660	Australia	TAS	7025	Richmond	Franklin St	28	-42.732463199999998	147.436125699999991	\N	\N
1664	Australia	TAS	7000	Hobart	Melville St	58	-42.8816510999999991	147.322499300000004	\N	\N
1695	Australia	TAS	7249	South Launceston	Talbot Rd	124	-41.4542112000000031	147.154458599999998	\N	\N
1702	Australia	TAS	7255	Whitemark	James St	4	-40.1213060999999982	148.017325900000003	\N	\N
1705	Australia	TAS	7250	Newstead	Elphin Rd	169	-41.4361730999999978	147.156850899999995	\N	\N
1655	Australia	TAS	7001	Hobart	Telehealth Service		\N	\N	\N	\N
1707	Australia	TAS	7250	Launceston	Wellington St	247	-41.4485497999999879	147.140364900000009	\N	\N
1710	Australia	TAS	7304	Deloraine	Emu Bay Rd	112	-41.523272900000002	146.649874199999999	\N	\N
1696	Australia	TAS	7250	Launceston	Brisbane St	52	-41.4373064999999983	147.138883600000014	House, Level 2	\N
1666	Australia	TAS	7001	Hobart	Outreach Service Only		\N	\N	\N	\N
1678	Australia	TAS	7006	Sandy Bay	University Of Tasmania / Clarke Road		\N	\N	\N	\N
1681	Australia	TAS	7184	Nubeena	C/- Tasman Medical Practice - 1614 Nubeena Road		\N	\N	\N	\N
1682	Australia	TAS	7172	Sorell	Station Lane	Shop 3/5	\N	\N	\N	\N
1683	Australia	TAS	7051	Kingston	Po Box 650		\N	\N	\N	\N
1698	Australia	TAS	7250	East Launceston	Elphin Road	67	\N	\N	\N	\N
1700	Australia	TAS	7248	Invermay	Invermay Road	64	\N	\N	\N	\N
1706	Australia	TAS	7250	Launceston	Crab Tree Chambers / 1st Floor / 96-102 St John Street		\N	\N	\N	\N
1717	Australia	TAS	7210	Campbell Town	C/- Campbell Town Doctors Surgery - High Street		\N	\N	\N	\N
1719	Australia	TAS	7250	Launceston	St John Street	Level 2/63	\N	\N	\N	\N
1725	Australia	TAS	7320	Burnie	Aberdeen - 10 Bourke Street		\N	\N	\N	\N
1728	Australia	TAS	7322	Somerset	Falmouth St	33	-41.0415860000000023	145.833180400000003	\N	\N
1727	Australia	TAS	7306	Sheffield	Kentish Family Support House / 5 Austin Place		\N	\N	\N	\N
1729	Australia	TAS	7467	Queenstown	Medical Union Health Centre - 14-16 Orr Street		\N	\N	\N	\N
1732	Australia	TAS	7320	South Burnie	Reeves St	3	-41.0629826999999992	145.914163300000013	1	\N
1733	Australia	TAS	7256	Currie	Edward St	35	-39.929817199999988	143.85789410000001	7256	\N
1734	Australia	TAS	7310	Devonport	Oldaker Street	9	\N	\N	\N	\N
1743	Australia	TAS	7320	Romaine	Kingsley Ave	22	-41.076812799999999	145.907804499999997	\N	\N
1747	Australia	TAS	7315	Ulverstone	Statewide Service		-41.1569284999999994	146.172285700000003	\N	\N
1748	Australia	TAS	7325	Wynyard	Goldie St	138	-40.9905959999999965	145.724232000000001	\N	\N
1749	Australia	TAS	7310	Devonport	Steele St	11	-41.181750000000001	146.361619999999988	\N	\N
1754	Australia	TAS	7000	Hobart	Patrick St	1	-42.8797878000000026	147.320020099999994	\N	\N
1741	Australia	TAS	7330	Smithton	Rural Health Centre - 68 Emmett Street		\N	\N	\N	\N
1742	Australia	TAS	7256	Currie	Currie Library / Meech Street		\N	\N	\N	\N
1755	Australia	TAS	7250	Launceston	Frederick St	5	-41.4407280000000071	147.142717000000005	Suite 11	\N
1762	Australia	TAS	7250	Newstead	Penquite Rd	12	-41.4493836999999985	147.168407400000007	\N	\N
1764	Australia	TAS	7250	East Launceston	Clarence St	18	-41.4340747999999977	147.148630200000014	\N	\N
1765	Australia	TAS	7250	Launceston	Frederick St	12	-41.4427856999999875	147.136623500000013	\N	\N
1766	Australia	TAS	7320	Cooee	Brickport Rd	21	-41.0463146000000023	145.880324000000002	\N	\N
1773	Australia	TAS	7315	Ulverstone	Queen St	35a	-41.1525468000000032	146.163394000000011	\N	\N
1753	Australia	TAS	7000	North Hobart	Federal Street	Level 1/73	\N	\N	\N	\N
1756	Australia	TAS	7250	Launceston	Thistle Street	36	\N	\N	\N	\N
1777	Australia	TAS	7250	Launceston	Elphin Rd	56	-41.4332597000000007	147.151173599999993	\N	\N
1780	Australia	TAS	7250	Launceston	Elphin Rd	46	-41.4353235999999967	147.15557720000001	\N	\N
1791	Australia	TAS	7315	Ulverstone	Alexandra Rd	11	-41.1577381000000031	146.176092199999999	\N	\N
1802	Australia	TAS	7250	East Launceston	Lyttleton St	24	-41.4340639999999993	147.14950300000001	\N	\N
1740	Australia	TAS	7320	Cooee	Brickport Rd	21	-41.0464987000000008	145.880955400000005	\N	\N
1763	Australia	TAS	7250	Launceston	Frederick Street	9	\N	\N	\N	\N
1807	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.8659910000000011	147.303689999999989	\N	\N
1768	Australia	TAS	7001	Hobart	Liverpool Street	48	\N	\N	\N	\N
1808	Australia	TAS	7250	Launceston	Frederick St	5	-41.4406345000000016	147.14267430000001	\N	\N
1812	Australia	TAS	7250	East Launceston	Lyttleton St	19	-41.4340766999999985	147.150562000000008	\N	\N
1782	Australia	TAS	7250	Launceston	High Street	1/7	\N	\N	\N	\N
1794	Australia	TAS	7004	South Hobart	Warneford Street	5	\N	\N	\N	\N
1796	Australia	TAS	7000	Hobart	Hobart Private Specialists - Suite 6/33 Argyle Street		\N	\N	\N	\N
1800	Australia	TAS	7008	Lenah Valley	Lower Level 2 / Calvary Medical Centre / 49 Augusta Road		\N	\N	\N	\N
1803	Australia	TAS	7250	Launceston	Launceston Health Hub - L1/247 Wellington Street		\N	\N	\N	\N
1804	Australia	TAS	7250	Launceston	George Street	Suite 2/170	\N	\N	\N	\N
1806	Australia	TAS	7250	Launceston	/ St Vincent's Hospital / 5 Frederick Street	Suite 7	\N	\N	\N	\N
1809	Australia	TAS	7250	Launceston	Relbia Road	228	\N	\N	\N	\N
1810	Australia	TAS	7250	East Launceston	High Street - Qv Building	Suite 6/7	\N	\N	\N	\N
1815	Australia	TAS	7250	Launceston	Wellington St	247	-41.4485497999999879	147.140364900000009	\N	\N
1816	Australia	TAS	7008	Lenah Valley	Marian House - Calvary Hospital Gnd Flr 49 Augusta Road		\N	\N	\N	\N
1823	Australia	TAS	7000	Hobart	Elizabeth St	81	-42.8809995000000015	147.326979899999998	4	\N
1827	Australia	TAS	7250	East Launceston	High St	32	-41.4381710999999981	147.146850199999989	\N	\N
1819	Australia	TAS	7001	Hobart	Melville Street	Level 1/2	\N	\N	\N	\N
1834	Australia	TAS	7018	Rosny Park	Bayfield St	11	-42.8667750999999981	147.370376399999998	\N	\N
1822	Australia	TAS	7000	Hobart	State Wide Telephone Service		\N	\N	\N	\N
1828	Australia	TAS	7320	Cooee	Brickport Rd	21	-41.0464987000000008	145.880955400000005	\N	\N
1856	Australia	TAS	7250	East Launceston	High St	11	-41.4391627999999983	147.147246499999994	Suite 1	\N
1857	Australia	TAS	7250	East Launceston	Lyttleton St	19	-41.4340479999999971	147.15045760000001	\N	\N
1831	Australia	TAS	7001	Hobart	Davey Street	201	\N	\N	\N	\N
1832	Australia	TAS	7002	North Hobart	Campbell Street	199	\N	\N	\N	\N
1861	Australia	TAS	7310	Devonport	Oldaker St	61	-41.1761623000000014	146.35461810000001	\N	\N
1867	Australia	TAS	7250	Launceston	Canning St	24	-41.4419289999999876	147.141625900000008	\N	\N
1882	Australia	TAS	7250	Launceston	Brisbane St	37b	-41.4373064999999983	147.138883600000014	\N	\N
1885	Australia	TAS	7320	Cooee	Brickport Rd	22	-41.0443779000000006	145.876571200000001	\N	\N
1890	Australia	TAS	7250	Launceston	Canning St	101	-41.4442166999999984	147.136879499999992	\N	\N
1891	Australia	TAS	7250	Launceston	Wellington St	247	-41.4485497999999879	147.140364900000009	\N	\N
1893	Australia	TAS	7250	Launceston	St John St	168	-41.4396932999999876	147.1407217	\N	\N
1899	Australia	TAS	7000	Hobart	Hobart Private Hospital - Suite 1/33 Argyle Street		-42.8811779999999985	147.330012000000011	\N	\N
1842	Australia	TAS	7250	Launceston	Thistle Street West	36	\N	\N	\N	\N
1845	Australia	TAS	7315	Ulverstone	Eastland Drive	4	\N	\N	\N	\N
1846	Australia	TAS	7320	Burnie	North West Medical Centre - 21 Brickport Road		\N	\N	\N	\N
1853	Australia	TAS	7002	North Hobart	Federal Street	71	\N	\N	\N	\N
1863	Australia	TAS	7250	Launceston	Canning Street	16	\N	\N	\N	\N
1865	Australia	TAS	7001	Hobart	Argyle Street	Suite 10/33	\N	\N	\N	\N
1870	Australia	TAS	7000	Hobart	Hobart Corporate Centre - L3/85 Macquarie Street		\N	\N	\N	\N
1877	Australia	TAS	7000	Hobart	Level 1/suite 2 - Mind Hub City 175 Collins Street		\N	\N	\N	\N
1879	Australia	TAS	7000	Hobart	Statewide Telehealth Service		\N	\N	\N	\N
1880	Australia	TAS	7005	Sandy Bay	No Address Telehealth Service		\N	\N	\N	\N
1884	Australia	TAS	7250	Launceston	George Street	155	\N	\N	\N	\N
1888	Australia	TAS	7250	Launceston	Charles Street	Suite 111/287	\N	\N	\N	\N
1913	Australia	TAS	7216	St Helens	Annie St	10	-41.3185289999999981	148.240826999999996	\N	\N
1914	Australia	TAS	7310	Devonport	Wenvoe St	8	-41.1820650000000015	146.360925699999996	\N	\N
1915	Australia	TAS	7250	Launceston	Lyttleton St	16	-41.433689600000001	147.149911500000002	\N	\N
1917	Australia	TAS	7050	Kingston	John St	5	-42.9752535000000009	147.30900410000001	\N	\N
1905	Australia	TAS	7320	Burnie	North West Medical Centre - Suite 1 / 21 Brickport Road		\N	\N	\N	\N
1920	Australia	TAS	7018	Bellerive	Cambridge Rd	48	-42.8746200999999871	147.367734200000001	\N	\N
1928	Australia	TAS	7018	Bellerive	Cambridge Rd	46	-42.8746421999999896	147.36758549999999	\N	\N
1959	Australia	TAS	7011	Claremont	Box Hill Rd	12	-42.791279000000003	147.25436400000001	\N	\N
1971	Australia	TAS	7018	Mornington	Cambridge Rd	283	-42.8579936000000004	147.390261600000002	\N	\N
1975	Australia	TAS	7050	Kingston	Channel Hwy	20	-42.974915799999998	147.311727899999994	Shop 12A	\N
1984	Australia	TAS	7004	South Hobart	Macquarie St	386	-42.8933020999999997	147.313873599999994	\N	\N
1992	Australia	TAS	7250	Launceston	Charles St	182	-41.4402609000000126	147.139397800000012	\N	\N
1933	Australia	TAS	7001	Hobart	Macquarie Street	186	\N	\N	\N	\N
1949	Australia	TAS	7006	Sandy Bay	Churchill Avenue	2	\N	\N	\N	\N
1950	Australia	TAS	7004	South Hobart	Macquarie Street	430	\N	\N	\N	\N
1958	Australia	TAS	7051	Kingston	John Street	9/11	\N	\N	\N	\N
1960	Australia	TAS	7001	Hobart	Greater Hobart		\N	\N	\N	\N
1974	Australia	TAS	7001	Hobart	Bathurst Street	71	\N	\N	\N	\N
1987	Australia	TAS	7051	Kingston	Nursing Home Visiting Service		\N	\N	\N	\N
1999	Australia	TAS	7250	Norwood	Penquite Rd	212	-41.4563236999999987	147.177951699999994	\N	\N
2008	Australia	TAS	7303	Westbury	Meander Valley Rd	80	-41.5262436999999878	146.834808500000008	\N	\N
2017	Australia	TAS	7300	Perth	Fairtlough St	180	-41.5668263000000024	147.174377499999991	\N	\N
2022	Australia	TAS	7250	Ravenswood	Lambert St	41	-41.4186501000000007	147.175994199999991	\N	\N
2023	Australia	TAS	7215	St Marys	Gardiners Creek Rd	15-17	-41.5760497000000129	148.181280799999996	\N	\N
2032	Australia	TAS	7320	Burnie	Marine Terrace	10	-41.0523380000000131	145.907675000000012	1	\N
2034	Australia	TAS	7320	Burnie	Mount St	199	-41.0559429999999992	145.90423229999999	\N	\N
2046	Australia	TAS	7310	Devonport	Oldaker St	64	-41.1756270999999927	146.354670999999996	\N	\N
2065	Australia	TAS	7250	Launceston	Charles St	264	-41.444901999999999	147.141627999999997	\N	\N
2071	Australia	TAS	7018	Bellerive	Percy St	13	-42.8754480999999998	147.368798400000003	\N	\N
2073	Australia	TAS	7050	Kingston	John St	7	-42.9750376000000003	147.308912499999991	4	\N
2087	Australia	TAS	7215	Bicheno	Seascape Ave	2	-41.8681078999999983	148.2814099	\N	\N
2088	Australia	TAS	7250	Launceston	Brisbane St	93	-41.4370029999999971	147.139886899999993	1	\N
2090	Australia	TAS	7250	Launceston	Elphin Rd	39	-41.4353235999999967	147.15557720000001	\N	\N
2019	Australia	TAS	7215	Bicheno	Foster Street	94	\N	\N	\N	\N
2049	Australia	TAS	7320	Burnie	Alexander Street	53	\N	\N	\N	\N
2053	Australia	TAS	7310	Devonport	Best Street	106	\N	\N	\N	\N
2066	Australia	TAS	7250	Launceston	Charles Street	Shop 10/216	\N	\N	\N	\N
2069	Australia	TAS	7310	Devonport	Formby Road	42	\N	\N	\N	\N
2082	Australia	TAS	7277	Legana	Freshwater Point Road	17	\N	\N	\N	\N
2100	Australia	TAS	7004	South Hobart	Macquarie St	394	-42.8933297999999894	147.313688200000001	\N	\N
2108	Australia	TAS	7304	Deloraine	Tower Hill St	22	-41.5219951000000123	146.652804400000008	\N	\N
2109	Australia	TAS	7306	Sheffield	Haberles Rd	60	-41.3968062000000003	146.306042300000001	\N	\N
2110	Australia	TAS	7256	Currie	Edward St	35	-39.929817199999988	143.85789410000001	7256	\N
2111	Australia	TAS	7011	Berriedale	Cabernet Dr	16	-42.8104889999999969	147.254056999999989	\N	\N
2112	Australia	TAS	7010	Glenorchy	Main Rd	346	-42.8335173999999981	147.278113600000012	\N	\N
2124	Australia	TAS	7018	Howrah	Corinth St	65	-42.8888385999999997	147.408722299999994	\N	\N
2126	Australia	TAS	7250	Launceston	Wellington St	305	-41.4421747999999965	147.138093300000008	\N	\N
2128	Australia	TAS	7250	Riverside	W Tamar Hwy	403	-41.4069199999999995	147.092852899999997	1	\N
2131	Australia	TAS	7310	Devonport	Steele St	260	-41.1793452999999872	146.344594599999994	\N	\N
2133	Australia	TAS	7310	Devonport	Macfie St	11	-41.1838552000000035	146.359448399999991	\N	\N
2136	Australia	TAS	7325	Wynyard	Goldie St	45	-40.9902223000000134	145.724434900000006	\N	\N
2104	Australia	TAS	7250	Launceston	Howick Street	44/46	\N	\N	\N	\N
2137	Australia	TAS	7050	Kingston Beach	Auburn Rd	41	-42.9812774999999974	147.316937999999993	\N	\N
2106	Australia	TAS	7250	Launceston	Mobile Service		\N	\N	\N	\N
2138	Australia	TAS	7009	Moonah	Birdwood Ave	1	-42.8429590000000076	147.293073399999997	\N	\N
2144	Australia	TAS	7054	Margate	Beach Rd	62	-43.0286094999999875	147.268923699999988	\N	\N
2114	Australia	TAS	7000	Hobart	Mobile Service Hobart Region		\N	\N	\N	\N
2150	Australia	TAS	7250	Norwood	Bettina Ave	24	-41.4628299000000027	147.178033599999992	\N	\N
2118	Australia	TAS	7005	Sandy Bay	Beach Road	7	\N	\N	\N	\N
2125	Australia	TAS	7250	East Launceston	Aquatic Centre / 18a High Street		\N	\N	\N	\N
2132	Australia	TAS	7315	Ulverstone	Mobile Service		\N	\N	\N	\N
2139	Australia	TAS	7000	Hobart	Home Visits Only - Southern Area		\N	\N	\N	\N
2140	Australia	TAS	7172	Sorell	Sorell Allied Health Centre - 42 Cole Street		\N	\N	\N	\N
2141	Australia	TAS	7008	Lenah Valley	Po Box 311		\N	\N	\N	\N
2142	Australia	TAS	7000	Hobart	Mobile Service		\N	\N	\N	\N
2145	Australia	TAS	7002	North Hobart	/ Palfreymanns Arcade - 340 Elizabeth Street	Suite 4	\N	\N	\N	\N
2148	Australia	TAS	7051	Kingston	Mobile Service		\N	\N	\N	\N
2149	Australia	TAS	7250	Launceston	Telehealth Service		\N	\N	\N	\N
2151	Australia	TAS	7250	Newstead	Home Visits		\N	\N	\N	\N
2154	Australia	TAS	7250	Launceston	Visiting Mobile Service		\N	\N	\N	\N
2155	Australia	TAS	7316	Penguin	Mobile Service Only		\N	\N	\N	\N
2156	Australia	TAS	7000	Hobart	Fitzroy Place	2	\N	\N	\N	\N
2157	Australia	TAS	7002	North Hobart	Burnett Street	73	\N	\N	\N	\N
2161	Australia	TAS	7001	Hobart	Galleria Building - Suite 20 / 31 - 35 Salamanca Place		\N	\N	\N	\N
2168	Australia	TAS	7253	George Town	C/- George Town District Hospital - 47 Anne Street		\N	\N	\N	\N
2174	Australia	TAS	7001	Hobart	Macquarie Street	171	\N	\N	\N	\N
2177	Australia	TAS	7000	Hobart	Antill Street	26	\N	\N	\N	\N
2178	Australia	TAS	7008	Lenah Valley	Marian House - Calvary Hospital - 49 Augusta Road		\N	\N	\N	\N
2190	Australia	TAS	7172	Sorell	Gordon St	22	-42.7840883999999875	147.562109399999997	\N	\N
2182	Australia	TAS	7000	West Hobart	The Rejuve Centre - 111 Hill Street		\N	\N	\N	\N
2202	Australia	TAS	7315	Ulverstone	Victoria St	48	-41.1550603000000024	146.173732699999988	\N	\N
2206	Australia	TAS	7315	Turners Beach	The Esplanade	21	-41.1590830000000025	146.237198000000006	\N	\N
2185	Australia	TAS	7052	Blackmans Bay	Po Box 115		\N	\N	\N	\N
2207	Australia	TAS	7310	Devonport	Best St	108	-41.1769739000000072	146.352010199999995	\N	\N
2213	Australia	TAS	7005	Sandy Bay	Gregory St	16	-42.8956469999999968	147.326213999999993	\N	\N
2223	Australia	TAS	7011	Berriedale	Main Rd	33a	-42.7961986999999979	147.254637000000002	\N	\N
2226	Australia	TAS	7250	Launceston	Wellington St	247	-41.4486340999999996	147.140354099999996	Ground Floor	\N
2229	Australia	TAS	7250	Riverside	W Tamar Rd	318	-41.4126842000000011	147.100508100000013	\N	\N
2234	Australia	TAS	7306	Sheffield	Henry St	1	-41.3851872999999983	146.324424399999998	\N	\N
2193	Australia	TAS	7006	Sandy Bay	Po Box 440		\N	\N	\N	\N
2235	Australia	TAS	7310	Devonport	Wenvoe St	8	-41.1820650000000015	146.360925699999996	\N	\N
2239	Australia	TAS	7325	Wynyard	Jackson St	49	-40.9879711000000029	145.727483199999995	\N	\N
2246	Australia	TAS	7004	Battery Point	Colville St	4A	-42.8720867999999982	147.382626299999998	7	\N
2254	Australia	TAS	7315	West Ulverstone	Highfield Cres	8	-41.1471124999999986	146.150887299999994	\N	\N
2255	Australia	TAS	7316	Penguin	Arnold St	9	-41.1151562999999882	146.073560399999991	\N	\N
2205	Australia	TAS	7307	Shearwater	Poyston Drive	3/11	\N	\N	\N	\N
2216	Australia	TAS	7113	Franklin	C/- Huon Regional Care - Franklin / 3278 Huon Hwy		\N	\N	\N	\N
2220	Australia	TAS	7000	Hobart	Mobile Podiatry Service		\N	\N	\N	\N
2225	Australia	TAS	7212	Evandale	Evandale Doctors Surgery - 8a High Street		\N	\N	\N	\N
2228	Australia	TAS	7303	Westbury	Westbury Doctors Surgery - 86 Meander Valley Road		\N	\N	\N	\N
2242	Australia	TAS	7250	Launceston	Cimitiere Street	Suite 3/81	\N	\N	\N	\N
2243	Australia	TAS	7250	Launceston	Invermay Road	64	\N	\N	\N	\N
2245	Australia	TAS	7004	South Hobart	Po Box 304		\N	\N	\N	\N
2253	Australia	TAS	7325	Wynyard	Mobile Service		\N	\N	\N	\N
2257	Australia	TAS	7310	Devonport	William Street	113	\N	\N	\N	\N
1656	Australia	TAS	7004	Battery Point	Sandy Bay Rd	70	-42.8897852999999998	147.330451799999992	\N	\N
1657	Australia	TAS	7109	Huonville	Skinner Dr	6	-43.0314525000000003	147.048991400000006	\N	\N
1658	Australia	TAS	7000	Hobart	Bathurst St	21	-42.8784920000000014	147.328533999999991	Suite 1	\N
1659	Australia	TAS	7004	South Hobart	Gore St	2	-42.8916940000000011	147.317588900000004	\N	\N
1662	Australia	TAS	7109	Huonville	Main St	85	-43.0268890999999982	147.049917899999997	\N	\N
1663	Australia	TAS	7000	North Hobart	Elizabeth St	326	-42.8753938999999988	147.31733890000001	Room 2	\N
1665	Australia	TAS	7000	Hobart	Murray St	86	-42.8830248000000012	147.326116799999994	\N	\N
1667	Australia	TAS	7000	West Hobart	Newdegate St	107	-42.8763725000000022	147.307527300000004	\N	\N
1668	Australia	TAS	7140	New Norfolk	Burnett St	11	-42.7802784000000003	147.06098209999999	\N	\N
1669	Australia	TAS	7008	New Town	New Town Rd	160	-42.8594201999999882	147.305163399999998	Room 3	\N
1670	Australia	TAS	7000	Hobart	Bathurst St	114	-42.8821684999999988	147.3242659	\N	\N
1860	Australia	TAS	7004	South Hobart	Cascade Rd	30A	-42.8955806000000024	147.305824699999988	\N	\N
1951	Australia	TAS	7190	Swansea	Wellington St	37	-42.1274652999999972	148.077049799999998	\N	\N
1952	Australia	TAS	7018	Bellerive	Cambridge Rd	48	-42.8746200999999871	147.367734200000001	\N	\N
1953	Australia	TAS	7018	Howrah	Clarence St	272	-42.8781991000000033	147.3996894	\N	\N
1954	Australia	TAS	7054	Snug	Beach Rd	7	-43.0659390000000002	147.256949100000014	\N	\N
1955	Australia	TAS	7172	Sorell	Gordon St	31	-42.7845756999999907	147.56165390000001	\N	\N
1956	Australia	TAS	7005	Sandy Bay	King St	57	-42.8952661000000006	147.325610799999993	2	\N
1957	Australia	TAS	7018	Howrah	Hance Rd	45	-42.8872309000000129	147.426459499999993	\N	\N
1961	Australia	TAS	7054	Fern Tree	Summerleas Rd	680	-42.9387118000000001	147.282411700000011	\N	\N
1964	Australia	TAS	7030	Bothwell	Patrick St	13-17	-42.3839172999999931	147.008862700000009	\N	\N
1963	Australia	TAS	7000	Hobart	Bathurst St	71	-42.8799743999999876	147.32652490000001	\N	\N
1965	Australia	TAS	7190	Triabunna	Victoria St	1	-42.503641199999997	147.909561400000001	\N	\N
1966	Australia	TAS	7030	Brighton	Bedford St	1	-42.6966669999999979	147.253318100000001	\N	\N
1967	Australia	TAS	7000	Hobart	Barrack St	5A	-42.8873411000000004	147.325202700000006	\N	\N
1968	Australia	TAS	7016	Risdon Vale	Sugarloaf Rd	32	-42.8118848000000014	147.351673699999992	\N	\N
1969	Australia	TAS	7005	Hobart	Sandy Bay Rd	410	-42.9022184000000024	147.337151699999993	\N	\N
1871	Australia	TAS	7000	Hobart	Macquarie St	322	-42.8921509999999984	147.318213100000008	\N	\N
1970	Australia	TAS	7005	Sandy Bay	Gregory St	18	-42.8956909999999993	147.326035999999988	\N	\N
1972	Australia	TAS	7017	Old Beach	Stanfield Dr	24	-42.7609698999999992	147.266693400000008	\N	\N
1962	Australia	TAS	7000	West Hobart	Warwick St	156	-42.8811090000000021	147.31511900000001	\N	\N
1973	Australia	TAS	7173	Dodges Ferry	Carlton Beach Rd	52	-42.8580340999999976	147.617791299999993	1	\N
1976	Australia	TAS	7009	Moonah	Main Rd	16	-42.8505101000000082	147.297358800000012	\N	\N
1977	Australia	TAS	7010	Montrose	Main Rd	502	-42.8254194999999882	147.26561190000001	\N	\N
1978	Australia	TAS	7117	Dover	Chapman Ave	15	-43.3146620000000127	147.016271999999987	\N	\N
1651	Australia	TAS	7000	Hobart	Murray St	71	-42.8823549999999969	147.325453299999992	\N	\N
1979	Australia	TAS	7052	Blackmans Bay	Opal Dr	5	-42.9985199999999992	147.318569999999994	Shop 14	\N
1980	Australia	TAS	7109	Huonville	Main St	49	-43.0297870000000131	147.048718199999996	\N	\N
1981	Australia	TAS	7112	Cygnet	Frederick St	1	-43.1587266000000014	147.074525599999987	\N	\N
1612	Australia	TAS	7116	Geeveston	Arve Rd	19	-43.1630129999999994	146.926663999999988	\N	\N
1982	Australia	TAS	7011	Berriedale	Main Rd	711	-42.8011908000000005	147.254934600000013	\N	\N
1983	Australia	TAS	7025	Richmond	Bridge St	25A	-42.7360946000000084	147.436316500000004	\N	\N
1985	Australia	TAS	7008	New Town	New Town Rd	98	-42.8618570000000005	147.309929199999999	\N	\N
1986	Australia	TAS	7004	South Hobart	Gore St	14	-42.8911986000000027	147.317318400000005	\N	\N
1988	Australia	TAS	7140	Ouse	Lyell Hwy	6896	-42.4865489999999966	146.717064999999991	\N	\N
1989	Australia	TAS	7000	North Hobart	Elizabeth St	408	-42.8727266	147.314731099999989	\N	\N
1990	Australia	TAS	7008	Hobart	Augusta Rd	120	-42.8657269999999997	147.295176999999995	\N	\N
1991	Australia	TAS	7216	St Helens	Pendrigh Pl	11	-41.3225770000000026	148.251484000000005	\N	\N
1993	Australia	TAS	7250	Launceston	Wellington St	247	-41.4486340999999996	147.140354099999996	Ground Floor	\N
1994	Australia	TAS	7260	Scottsdale	Fosters Rd	2	-41.1552548000000016	147.519969599999996	\N	\N
1716	Australia	TAS	7250	Prospect	Trotters Ln	4	-41.4709823000000029	147.137288699999999	\N	\N
1995	Australia	TAS	7250	Launceston	Elphin Rd	67	-41.4329480000000032	147.152431000000007	\N	\N
1996	Australia	TAS	7250	Launceston	Frankland St	50A	-41.4456072999999989	147.142027600000006	\N	\N
1997	Australia	TAS	7248	Mowbray	Invermay Rd	278	-41.4046080000000032	147.13261700000001	\N	\N
1998	Australia	TAS	7253	George Town	Anne St	49	-41.1035843000000014	146.821317099999987	\N	\N
2000	Australia	TAS	7248	Invermay	Invermay Rd	54-58	-41.4208597000000012	147.135684400000002	\N	\N
2001	Australia	TAS	7249	Kings Meadows	Hobart Rd	86C	-41.4652729000000022	147.15860889999999	\N	\N
2002	Australia	TAS	7250	Newstead	Elphin Rd	165	-41.4412469999999971	147.160932000000003	\N	\N
2003	Australia	TAS	7249	Kings Meadows	Hobart Rd	137	-41.4671323999999899	147.160576200000008	\N	\N
2004	Australia	TAS	7250	Launceston	Wellington St	269	-41.4498241000000007	147.141228799999993	\N	\N
2005	Australia	TAS	7262	Bridport	Main St	123	-41.0012122999999988	147.390534099999996	\N	\N
2006	Australia	TAS	7301	Longford	George St	28	-41.5929243	147.117493499999995	\N	\N
2007	Australia	TAS	7304	Deloraine	Tower Hill St	22	-41.5219951000000123	146.652804400000008	\N	\N
2009	Australia	TAS	7275	Exeter	Main Rd	102	-41.300444000000013	146.954184999999995	\N	\N
2010	Australia	TAS	7250	Launceston	Cameron St	77	-41.4362123000000011	147.136558400000013	\N	\N
2011	Australia	TAS	7255	Whitemark	James St	4	-40.1213060999999982	148.017325900000003	\N	\N
2012	Australia	TAS	7250	East Launceston	High St	7	-41.4330672000000035	147.147974299999987	\N	\N
2013	Australia	TAS	7268	Lilydale	Main Rd	1977	-41.2497698999999969	147.217222499999991	\N	\N
2014	Australia	TAS	7250	Launceston	High St	13	-41.4337657000000021	147.147836699999999	\N	\N
2015	Australia	TAS	7250	Summerhill	Cnr Peel And Stanley Street		-41.4665600000000012	147.129570999999999	\N	\N
2016	Australia	TAS	7255	Lady Barron	West St	16	-40.209584999999997	148.237784000000005	\N	\N
2018	Australia	TAS	7210	Campbell Town	High St	70	-41.9263949999999923	147.493410000000011	\N	\N
2020	Australia	TAS	7248	Mowbray	Invermay Rd	282	-41.4042976000000067	147.132324399999987	3	\N
2021	Australia	TAS	7277	Legana	Freshwater Point Rd	16	-41.3623534999999976	147.043505100000004	1	\N
1715	Australia	TAS	7250	Launceston	Wellington St	247	-41.4485819999999876	147.140388999999999	\N	\N
2024	Australia	TAS	7270	Beaconsfield	Weld St	146	-41.1993652999999966	146.815612499999986	\N	\N
2025	Australia	TAS	7250	Newstead	Elphin Rd	134	-41.4396189999999933	147.158951999999999	\N	\N
2027	Australia	TAS	7250	Launceston	Brisbane St	33	-41.4348329999999976	147.142552999999992	\N	\N
2028	Australia	TAS	7250	Launceston	Broadland Dr	8	-41.4312230000000028	147.153897999999998	\N	\N
1686	Australia	TAS	7250	Launceston	Frankland St	50A	-41.4456072999999989	147.142027600000006	\N	\N
2030	Australia	TAS	7310	Devonport	Oldaker St	48-54	-41.175575000000002	146.356217100000009	SHOP 7	\N
2031	Australia	TAS	7315	Ulverstone	Victoria St	39	-41.1582983999999996	146.173328700000013	\N	\N
2033	Australia	TAS	7320	Burnie	Mount St	35-37	-41.0516594000000126	145.905516000000006	\N	\N
2035	Australia	TAS	7330	Smithton	King St	14	-40.8393445000000028	145.124460400000004	\N	\N
2036	Australia	TAS	7325	Wynyard	Goldie St	138	-40.9905959999999965	145.724232000000001	\N	\N
2038	Australia	TAS	7320	Burnie	Wilmot St	83	-41.0505670999999879	145.901293500000008	\N	\N
2039	Australia	TAS	7468	Strahan	Bay St	3	-42.1532827999999995	145.321245500000003	\N	\N
2040	Australia	TAS	7310	East Devonport	Stephen St	13	-41.1815457000000009	146.370896700000003	\N	\N
2041	Australia	TAS	7310	Devonport	Valley Rd	37	-41.186864700000001	146.343292399999996	\N	\N
2042	Australia	TAS	7310	Devonport	Wenvoe St	8	-41.1820650000000015	146.360925699999996	\N	\N
2043	Australia	TAS	7256	Currie	Edward St	35	-39.9298876000000007	143.858454200000011	\N	\N
2044	Australia	TAS	7467	Queenstown	Orr St	60-64	-42.0811020000000013	145.558355000000006	\N	\N
2045	Australia	TAS	7316	Penguin	Ironcliffe Rd	19	-41.1158965999999992	146.070433900000012	\N	\N
2047	Australia	TAS	7306	Sheffield	Duff Dr	12	-41.3797639000000004	146.324174499999998	\N	\N
2048	Australia	TAS	7307	Shearwater	Club Dr	81	-41.161235099999999	146.530908600000004	\N	\N
1746	Australia	TAS	7316	Penguin	Main Rd	107	-41.1145070000000032	146.075258999999988	\N	\N
2050	Australia	TAS	7320	Shorewell Park	Mooreville Rd	22	-41.0615342999999982	145.877416199999999	\N	\N
2051	Australia	TAS	7470	Rosebery	Hospital Rd	1	-41.7763975000000016	145.542676199999988	\N	\N
2052	Australia	TAS	7469	Zeehan	Main St	100	-41.8842181999999994	145.337432299999989	\N	\N
2054	Australia	TAS	7000	Hobart	Liverpool Street	71	-42.8807140999999987	147.327462400000002	\N	\N
2055	Australia	TAS	7018	Rosny	Ross Ave	7	-42.8649035999999981	147.370723599999991	\N	\N
2056	Australia	TAS	7002	North Hobart	Pitt St	3a	-42.8736590999999976	147.315177299999988	\N	\N
2057	Australia	TAS	7018	Rosny Park	Bayfield St	30	-42.8668790999999985	147.372248000000013	\N	\N
2058	Australia	TAS	7009	Moonah	Sunderland St	6	-42.8452089999999899	147.295877999999988	\N	\N
2059	Australia	TAS	7010	Glenorchy	Main Rd	353a	-42.8332794000000021	147.278264400000012	\N	\N
2060	Australia	TAS	7000	Hobart	Murray St	86	-42.8829321999999991	147.326152100000002	Ground Floor	\N
2061	Australia	TAS	7050	Kingston	Channel Hwy	29	-42.9765603999999968	147.309856700000012	\N	Channel Court Shopping Centre
2062	Australia	TAS	7018	Rosny Park	Eastlands Shopping Centre / Bligh Street	Shop 1	-42.866146999999998	147.369053000000008	\N	\N
2063	Australia	TAS	7010	Glenorchy	Main Rd	350	-42.8341431000000128	147.27704	\N	\N
2064	Australia	TAS	7018	Bellerive	Cambridge Rd	120	-42.8678990000000013	147.371307000000002	1a	\N
1792	Australia	TAS	7250	Launceston	St John St	170	-41.4426093000000009	147.142647000000011	\N	\N
2067	Australia	TAS	7310	Devonport	Steele St	39	-41.1814064999999871	146.359641199999999	1	\N
2068	Australia	TAS	7320	Burnie	Wilson St	87-91	-41.053054699999997	145.906580899999994	2	\N
2070	Australia	TAS	7109	Huonville	Main St	63	-43.0288222999999874	147.04940959999999	\N	\N
2072	Australia	TAS	7000	Hobart	Harrington St	181	-42.8810531000000026	147.320258899999999	\N	\N
2074	Australia	TAS	7018	Howrah	Clarence St	277	-42.881301999999998	147.406367999999986	1	\N
2075	Australia	TAS	7140	New Norfolk	High St	39	-42.7811100999999994	147.063189499999993	\N	\N
2076	Australia	TAS	7000	Hobart	Collins St	174	-42.8845304000000027	147.326083600000004	\N	\N
2077	Australia	TAS	7000	North Hobart	Elizabeth St	263	-42.876274500000001	147.318702300000012	\N	\N
2078	Australia	TAS	7018	Rosny Park	Bayfield St	26	-42.8665530000000032	147.372179999999986	3	\N
2079	Australia	TAS	7000	Hobart	Collins St	85	-42.8824565000000035	147.327685800000012	Level 2	\N
2080	Australia	TAS	7008	New Town	New Town Rd	198	-42.8571316999999965	147.303775400000006	\N	\N
2081	Australia	TAS	7050	Kingston	Channel Hwy	30	-42.9752339999999933	147.310339999999997	\N	\N
2083	Australia	TAS	7250	Launceston	Elphin Rd	60	-41.4334257999999878	147.151533599999993	\N	\N
2084	Australia	TAS	7304	Deloraine	Emu Bay Rd	4	-41.5249960000000087	146.656737200000009	\N	\N
2085	Australia	TAS	7249	Kings Meadows	Hobart Rd	149	-41.4679066000000134	147.160963100000004	\N	\N
2086	Australia	TAS	7249	Launceston	Talbot Rd	98	-41.4567619999999977	147.15489199999999	\N	\N
2089	Australia	TAS	7250	East Launceston	Abbott St	34	-41.4377986000000007	147.151139699999987	\N	\N
2091	Australia	TAS	7250	Newstead	Cypress St	1	-41.4335231000000022	147.153354199999995	\N	\N
2092	Australia	TAS	7250	Launceston	Charles St	198-216	-41.4424660999999901	147.14030600000001	Shop 5	\N
2093	Australia	TAS	7320	Burnie	Queen St	4	-41.0481691999999967	145.901280100000008	\N	\N
2094	Australia	TAS	7310	Devonport	Forbes St	99	-41.1889706999999987	146.354968799999995	\N	\N
2095	Australia	TAS	7310	Devonport	Steele St	82	-41.1802100000000024	146.352332100000012	\N	\N
2096	Australia	TAS	7005	Sandy Bay	Gregory St	2	-42.8954152000000022	147.327006100000006	\N	\N
2097	Australia	TAS	7050	Kingston	Hutchins St	10	-42.9764856999999907	147.311698400000012	\N	\N
2098	Australia	TAS	7008	New Town	Swanston St	117	-42.8538165000000006	147.305656199999987	\N	\N
2099	Australia	TAS	7109	Huonville	Main St	56	-43.0292649000000011	147.049631099999999	Shop 3	\N
2101	Australia	TAS	7009	Derwent Park	Main Rd	254	-42.8366546999999969	147.286990000000003	Level 1	\N
2102	Australia	TAS	7018	Rosny Park	Bayfield St	17	-42.8670767999999995	147.371220599999987	\N	\N
2103	Australia	TAS	7010	Glenorchy	Anfield St	1A	-42.8311952000000034	147.276146600000004	\N	\N
2105	Australia	TAS	7250	Launceston	Innes St	5	-41.4299154999999999	147.146720399999992	\N	\N
2107	Australia	TAS	7249	Kings Meadows	Hobart Rd	139-143	-41.4674735999999982	147.16083900000001	Shop 2a	\N
2026	Australia	TAS	7250	Newstead	Belhaven Cres	48	-41.4396283999999966	147.165058200000004	\N	\N
2113	Australia	TAS	7018	Rosny Park	Bayfield St	6	-42.8661030000000025	147.370164999999986	level 1	\N
2115	Australia	TAS	7000	Hobart	Davey St	25	-42.8847231000000022	147.329039499999993	Ground	\N
2116	Australia	TAS	7004	Battery Point	Salamanca Square	33	-42.8876752999999979	147.333094899999992	\N	\N
2117	Australia	TAS	7005	Sandy Bay	Sandy Bay Rd	68	-42.8897343000000006	147.33051660000001	\N	\N
2119	Australia	TAS	7173	Dodges Ferry	Old Forcett Rd	517	-42.8486652000000134	147.628067200000004	\N	\N
2121	Australia	TAS	7011	Berriedale	Mittara Cres	4	-42.7995370000000008	147.25294310000001	\N	\N
2122	Australia	TAS	7018	Mornington	Electra Pl	49	-42.8591468999999989	147.39378769999999	\N	\N
2123	Australia	TAS	7000	Hobart	Collins St	38	-42.8801549999999878	147.331828999999999	\N	\N
2127	Australia	TAS	7250	Launceston	Elphin Rd	60	-41.4334257999999878	147.151533599999993	\N	\N
2129	Australia	TAS	7315	West Ulverstone	Westside Shopping Centre - Shop 15 / 12 Alice Street		-41.1512859999999989	146.162596000000008	\N	\N
2130	Australia	TAS	7310	Devonport	Best St	75	-41.1775185999999991	146.353085600000014	\N	\N
2134	Australia	TAS	7310	Devonport	Oldaker St	81	-41.1758382000000083	146.352590800000002	\N	\N
2037	Australia	TAS	7315	Ulverstone	Patrick St	6	-41.1555337000000065	146.171352100000007	\N	\N
2135	Australia	TAS	7320	Burnie	King St	3	-41.049798999999993	145.902901000000014	\N	\N
2143	Australia	TAS	7004	Battery Point	Castray Esplanade	2	-42.8885879999999986	147.337805000000003	\N	\N
2146	Australia	TAS	7008	Lenah Valley	Augusta Rd	59	-42.866252099999997	147.303360400000003	\N	\N
2147	Australia	TAS	7018	Bellerive	Cambridge Rd	31	-42.8748080000000016	147.368340999999987	shop 3	\N
2152	Australia	TAS	7250	Launceston	Paterson St	10-14	-41.4356091000000006	147.139023500000008	Level 2	\N
2153	Australia	TAS	7250	Launceston	York St	76	-41.4368004000000028	147.142217499999987	\N	\N
2158	Australia	TAS	7008	New Town	Pedder St	67	-42.860679300000001	147.301731100000012	\N	\N
2159	Australia	TAS	7000	Hobart	Bathurst St	73	-42.8800469999999976	147.326178999999996	\N	\N
2160	Australia	TAS	7000	North Hobart	Argyle St	385	-42.8693677000000122	147.315757399999995	\N	\N
2162	Australia	TAS	7018	Bellerive	Percy St	8	-42.8751049999999978	147.369781999999987	2	\N
2163	Australia	TAS	7050	Kingston	John St	29	-42.9738300000000066	147.310693799999996	\N	\N
2164	Australia	TAS	7000	West Hobart	Warwick St	166	-42.8815129999999982	147.315091999999993	\N	\N
2165	Australia	TAS	7008	New Town	Risdon Rd	6	-42.8549360000000021	147.303989999999999	\N	\N
2166	Australia	TAS	7250	Launceston	Charles St	194	-41.4415562000000008	147.140125899999987	\N	\N
2167	Australia	TAS	7250	East Launceston	Qv Tower - Suite 10 / 11 High Street		-41.4334220000000002	147.147703000000007	\N	\N
2169	Australia	TAS	7250	Newstead	Penquite Rd	15	-41.4432230000000033	147.162190900000013	\N	\N
1709	Australia	TAS	7250	Launceston	York St	76	-41.4368890000000007	147.142099999999999	\N	\N
2170	Australia	TAS	7315	Ulverstone	Reibey St	19	-41.1569029999999998	146.170621000000011	3	\N
2171	Australia	TAS	7000	Hobart	Macquarie St	176	-42.8862929999999878	147.326090999999991	\N	\N
2172	Australia	TAS	7000	Hobart	Murray St	221	-42.8791173999999984	147.319072599999998	\N	\N
2173	Australia	TAS	7000	Hobart	Argyle St	25	-42.8813679999999877	147.330594100000013	Ground Floor	\N
2175	Australia	TAS	7008	Lenah Valley	Augusta Rd	49	-42.866153599999997	147.304099100000002	\N	\N
2176	Australia	TAS	7109	Huonville	Wilmot Rd	16	-43.0297039999999882	147.047943000000004	\N	\N
2179	Australia	TAS	7000	Hobart	Macquarie St	176	-42.8862929999999878	147.326090999999991	\N	\N
2180	Australia	TAS	7018	Rosny Park	Bligh St	17	-42.8654399999999995	147.369917100000009	\N	\N
2181	Australia	TAS	7000	Hobart	Macquarie St	221	-42.8886717999999973	147.322415199999995	\N	\N
2183	Australia	TAS	7018	Howrah	Clarence St	273	-42.8807842000000008	147.406075499999986	\N	\N
2184	Australia	TAS	7018	Bellerive	Bayfield St	17	-42.8670767999999995	147.371220599999987	\N	\N
2186	Australia	TAS	7050	Kingston	Channel Hwy	29	-42.9765603999999968	147.309856700000012	\N	Channel Court Shopping Centre
2187	Australia	TAS	7140	New Norfolk	High St	2	-42.7811359000000024	147.061268100000007	\N	\N
2188	Australia	TAS	7018	Rosny Park	Bayfield St	6	-42.8661460000000005	147.37006199999999	\N	\N
2189	Australia	TAS	7000	West Hobart	Lansdowne Cres	73	-42.883581300000003	147.310442200000011	\N	\N
2120	Australia	TAS	7000	Hobart	Melville St	37-47	-42.8793482999999966	147.325024500000012	\N	\N
2191	Australia	TAS	7004	Battery Point	Salamanca Pl	33	-42.8870207999999877	147.331261799999993	Level 4, Suite 24	\N
2192	Australia	TAS	7112	Cygnet	George St	14	-43.1604485000000082	147.074087399999996	\N	\N
2194	Australia	TAS	7250	Launceston	Charles St	287	-41.4462149000000011	147.143491000000012	112	\N
2195	Australia	TAS	7250	East Launceston	High St	7	-41.433105999999988	147.147887999999995	1	\N
2196	Australia	TAS	7248	Mowbray	Invermay Rd	268	-41.4052669999999878	147.132664199999994	\N	\N
2197	Australia	TAS	7250	Launceston	Elphin Rd	55	-41.4325199999999967	147.150954000000013	\N	\N
2198	Australia	TAS	7250	Riverside	Cleghorn Ave	5	-41.4126467999999974	147.100702299999995	\N	\N
2199	Australia	TAS	7275	Exeter	Glen Ard Mohr Rd	7	-41.3001440000000031	146.954847000000001	\N	\N
2200	Australia	TAS	7253	George Town	Anne St	47	-41.1040009999999967	146.821427	\N	\N
2201	Australia	TAS	7322	Somerset	Back Cam Rd	130	-41.0532520000000076	145.830777000000012	\N	\N
2029	Australia	TAS	7307	Latrobe	Gilbert St	45	-41.2347371999999979	146.407827800000007	\N	\N
2203	Australia	TAS	7325	Wynyard	Jackson St	37	-40.9902269999999973	145.728903500000001	\N	\N
2204	Australia	TAS	7256	Currie	Edward St	35	-39.9298876000000007	143.858454200000011	\N	\N
2208	Australia	TAS	7000	Hobart	Macquarie St	315	-42.8908786999999876	147.319396000000012	\N	\N
2209	Australia	TAS	7018	Bellerive	Gordons Hill Rd	17	-42.864461900000002	147.372204799999992	\N	\N
2210	Australia	TAS	7000	Hobart	Campbell St	17	-42.8801512000000002	147.331713900000011	\N	\N
2211	Australia	TAS	7050	Kingston	Channel Hwy	40	-42.9755359999999982	147.308266000000003	\N	\N
2212	Australia	TAS	7000	Hobart	Elizabeth St	214	-42.8786211999999907	147.320696800000007	\N	\N
2214	Australia	TAS	7000	Hobart	Bathurst St	123	-42.8815983000000003	147.324352099999999	\N	\N
2215	Australia	TAS	7008	Lenah Valley	Giblin St	64	-42.8658943999999877	147.295083299999988	\N	\N
1661	Australia	TAS	7150	Alonnah	School Rd	16	-43.3177325999999994	147.244653499999998	\N	Bruny Island Community Health Centre
2217	Australia	TAS	7109	Huonville	Main St	15	-43.0318226999999993	147.047394999999995	\N	\N
2218	Australia	TAS	7011	Claremont	Main Rd	53	-42.7896073000000001	147.253750400000001	\N	\N
2219	Australia	TAS	7018	Howrah	Clarence St	214	-42.876925	147.393226999999996	\N	\N
2221	Australia	TAS	7000	Hobart	Davey St	25	-42.8847231000000022	147.329039499999993	Ground	\N
2222	Australia	TAS	7008	New Town	New Town Rd	210	-42.8566225000000003	147.303404599999993	\N	\N
2224	Australia	TAS	7250	Launceston	Elphin Rd	71	-41.4334109999999995	147.152941999999996	\N	\N
2227	Australia	TAS	7277	Legana	Legana Grove	8	-41.3641019000000085	147.042908399999988	Shop 6	\N
2230	Australia	TAS	7250	Newstead	Elphin Rd	169	-41.4414909999999992	147.161267100000003	\N	\N
2231	Australia	TAS	7249	Kings Meadows	Hobart Rd	84A	-41.4651059999999916	147.158819999999992	\N	\N
2232	Australia	TAS	7250	Launceston	Cameron St	59	-41.4354858000000021	147.138453300000009	\N	\N
2233	Australia	TAS	7310	Devonport	William St	26	-41.1870548999999997	146.349162199999995	\N	\N
2236	Australia	TAS	7320	South Burnie	Edwardes St	3	-41.0597270000000023	145.909513000000004	\N	\N
2237	Australia	TAS	7320	Camdale	Bass Hwy	371	-41.0405190000000033	145.848805999999996	\N	\N
2238	Australia	TAS	7325	Wynyard	Goldie St	138	-40.9905864999999991	145.724235499999992	\N	\N
2240	Australia	TAS	7330	Smithton	Nelson St	165	-40.8398030999999975	145.123992399999992	\N	\N
2241	Australia	TAS	7315	Ulverstone	Alexandra Rd	56	-41.158260399999989	146.175519100000002	\N	\N
2244	Australia	TAS	7000	Hobart	Elizabeth St	110	-42.8805043999999995	147.325072299999988	Studio 110	\N
2247	Australia	TAS	7018	Bellerive	Clarence St	9	-42.8747468999999981	147.369547799999992	\N	\N
2248	Australia	TAS	7018	Howrah	Somerset St		-42.902743000000001	147.419277800000003	\N	\N
2249	Australia	TAS	7250	Launceston	Elphin Rd	1	-41.432035599999999	147.145806999999991	\N	\N
2250	Australia	TAS	7250	Newstead	Amy Rd	59D	-41.4522034999999889	147.160153799999989	\N	\N
2251	Australia	TAS	7248	Invermay	Invermay Rd	197	-41.4196594000000076	147.134884499999998	\N	\N
2252	Australia	TAS	7310	Devonport	Winston Pl	16	-41.1695372000000006	146.348834100000005	\N	\N
2256	Australia	TAS	7320	South Burnie	Reeves St	3	-41.0637556000000004	145.914426200000008	1	\N
\.


--
-- Data for Name: clinics_organisation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clinics_organisation (id, description, name, size, image, email, website, headquarters_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-20 22:56:56.253562+10	670	Calvary Health Care - Lenah Valley	1	[{"added": {}}]	7	1
2	2020-05-20 23:03:46.977104+10	670	Calvary Health Care - Lenah Valley	3		7	1
3	2020-05-20 23:03:46.984575+10	669	Speech Pathology Tasmania - Devonport	3		7	1
4	2020-05-20 23:03:46.987397+10	668	Speech Pathology Tasmania - Burnie	3		7	1
5	2020-05-20 23:03:46.989759+10	667	Speech Pathology Cradle Coast	3		7	1
6	2020-05-20 23:03:46.992359+10	666	Talk A Lot Speech Pathology	3		7	1
7	2020-05-20 23:03:46.994851+10	665	Lynn Brooke Speech Pathology	3		7	1
8	2020-05-20 23:03:46.997362+10	664	Greer Maine - Speech Pathologist	3		7	1
9	2020-05-20 23:03:46.999677+10	663	Start Smart Tasmania	3		7	1
10	2020-05-20 23:03:47.001954+10	662	Step By Step Speech Pathology	3		7	1
11	2020-05-20 23:03:47.004203+10	661	Tanya Laugher Speech Pathologist - Howrah	3		7	1
12	2020-05-20 23:03:47.006481+10	660	The Therapy Network	3		7	1
13	2020-05-20 23:03:47.009996+10	659	David Emmett Speech Pathology	3		7	1
14	2020-05-20 23:03:47.012236+10	658	Nicole Cowles - Mobile Speech Pathology Service	3		7	1
15	2020-05-20 23:03:47.014298+10	657	Speech Pathology Tasmania - Hobart	3		7	1
16	2020-05-20 23:03:47.016442+10	656	Beswick Psychology Service	3		7	1
17	2020-05-20 23:03:47.018885+10	655	Footprints Podiatry - Ulverstone	3		7	1
18	2020-05-20 23:03:47.02107+10	654	Footprints Podiatry - Smithton	3		7	1
19	2020-05-20 23:03:47.023317+10	653	Feet Sp Podiatry - Wynyard	3		7	1
20	2020-05-20 23:03:47.025468+10	652	Footprints Podiatry - Wynyard	3		7	1
21	2020-05-20 23:03:47.027654+10	651	Camdale Podiatry	3		7	1
22	2020-05-20 23:03:47.029885+10	650	Feet Sp Podiatry - Burnie	3		7	1
23	2020-05-20 23:03:47.032119+10	649	Dc Podiatry - Devonport	3		7	1
24	2020-05-20 23:03:47.034283+10	648	St Johns Foot Clinic - Sheffield	3		7	1
25	2020-05-20 23:03:47.036327+10	647	My Footdr - Devonport	3		7	1
26	2020-05-20 23:03:47.038262+10	646	David Mckay And Associates	3		7	1
27	2020-05-20 23:03:47.040226+10	645	Kings Meadows Podiatry	3		7	1
28	2020-05-20 23:03:47.04221+10	644	Lightfoot Podiatry	3		7	1
29	2020-05-20 23:03:47.044139+10	643	Foot Ankle And Rehabilitation Clinics	3		7	1
30	2020-05-20 23:03:47.046104+10	642	St Johns Foot Clinic - Westbury	3		7	1
31	2020-05-20 23:03:47.04852+10	641	St Johns Foot Clinic - Legana	3		7	1
32	2020-05-20 23:03:47.050525+10	640	St Johns Foot Clinic - Launceston	3		7	1
33	2020-05-20 23:03:47.052419+10	639	St Johns Foot Clinic - Evandale	3		7	1
34	2020-05-20 23:03:47.054253+10	638	Launceston Podiatry Clinic	3		7	1
35	2020-05-20 23:03:47.056153+10	637	Claremont Top To Toe Health	3		7	1
36	2020-05-20 23:03:47.058076+10	636	New Town Podiatry	3		7	1
37	2020-05-20 23:03:47.060233+10	635	Hobart Mobile Podiatry	3		7	1
38	2020-05-20 23:03:47.062371+10	634	Sam Leitch Podiatry	3		7	1
39	2020-05-20 23:03:47.064379+10	633	Eastern Shore Podiatry	3		7	1
40	2020-05-20 23:03:47.06633+10	632	Claremont Podiatry	3		7	1
41	2020-05-20 23:03:47.068283+10	631	Southern Tas Podiatry Clinic - Huonville	3		7	1
42	2020-05-20 23:03:47.070208+10	630	Southern Tas Podiatry Clinic - Franklin	3		7	1
43	2020-05-20 23:03:47.072479+10	629	Tasmanian Foot & Ankle Clinic	3		7	1
44	2020-05-20 23:03:47.07439+10	628	Healthy Step Hobart	3		7	1
45	2020-05-20 23:03:47.076689+10	627	Gregory Street Podiatry	3		7	1
46	2020-05-20 23:03:47.07896+10	626	Hobart Biomechanics Clinic	3		7	1
47	2020-05-20 23:03:47.080864+10	625	Kingston Podiatry	3		7	1
48	2020-05-20 23:03:47.082905+10	624	Foot Systems & Sport & Exercise Podiatry	3		7	1
49	2020-05-20 23:03:47.084826+10	623	Tim Pain Podiatry	3		7	1
50	2020-05-20 23:03:47.086816+10	622	My Footdr - Ispahan	3		7	1
51	2020-05-20 23:03:47.088936+10	621	Physiotherapy & Industrial Solutions P/l (dev)	3		7	1
52	2020-05-20 23:03:47.090829+10	620	Tim Squire Physiotherapy Services	3		7	1
53	2020-05-20 23:03:47.092846+10	619	Physiotas - Shearwater	3		7	1
54	2020-05-20 23:03:47.09471+10	618	King Island Physiotherapy	3		7	1
55	2020-05-20 23:03:47.096581+10	617	Wynyard Physiotherapy	3		7	1
56	2020-05-20 23:03:47.098501+10	616	Ulverstone Physiotherapy	3		7	1
57	2020-05-20 23:03:47.100612+10	615	Burnie Physiotherapy And Sports Injury Clinic	3		7	1
58	2020-05-20 23:03:47.102901+10	614	Bass Coast Physiotherapy - George Town	3		7	1
59	2020-05-20 23:03:47.104849+10	613	West Tamar Physiotherapy	3		7	1
60	2020-05-20 23:03:47.106851+10	612	Riverside Physiotherapy	3		7	1
61	2020-05-20 23:03:47.108909+10	611	Elphin Road Physiotherapy	3		7	1
62	2020-05-20 23:03:47.110863+10	610	Mowbray Physiotherapy Services	3		7	1
63	2020-05-20 23:03:47.112696+10	609	Launceston Physiotherapy Services	3		7	1
64	2020-05-20 23:03:47.114563+10	608	Launceston Respiratory Physiotherapy	3		7	1
65	2020-05-20 23:03:47.116566+10	607	Maree Webber Rehabilitation Service	3		7	1
66	2020-05-20 23:03:47.118898+10	606	Cygnet Physio	3		7	1
67	2020-05-20 23:03:47.121216+10	605	The Pelvic Studio	3		7	1
68	2020-05-20 23:03:47.123092+10	604	Back In Motion - Sorell Connect	3		7	1
69	2020-05-20 23:03:47.125083+10	603	Elke Rudolph-move With Ease	3		7	1
70	2020-05-20 23:03:47.127017+10	602	Bellerive Physiotherapy And Sports Centre	3		7	1
71	2020-05-20 23:03:47.128827+10	601	Derwent Valley Physiotherapy & Sports Injury Clinic	3		7	1
72	2020-05-20 23:03:47.131019+10	600	Back In Motion - Kingston	3		7	1
73	2020-05-20 23:03:47.133036+10	599	Andrea Ireland Physiotherapist	3		7	1
74	2020-05-20 23:03:47.134945+10	598	Leap Health Physio & Sports Injury Centre - Rosny	3		7	1
75	2020-05-20 23:03:47.137076+10	597	Clarence Joint Therapy	3		7	1
76	2020-05-20 23:03:47.139585+10	596	Frances Elmer-james Physiotherapy	3		7	1
77	2020-05-20 23:03:47.141517+10	595	Flex Health Therapy	3		7	1
78	2020-05-20 23:03:47.14351+10	594	Back In Motion - Rosny Park	3		7	1
79	2020-05-20 23:03:47.14536+10	593	Tas Sports Physio	3		7	1
80	2020-05-20 23:03:47.147252+10	592	Tasmanian Spine Service - Physiotherapy Clinic	3		7	1
81	2020-05-20 23:03:47.149122+10	591	Antill Physiotherapy	3		7	1
82	2020-05-20 23:03:47.1512+10	590	Huon Physiotherapy	3		7	1
83	2020-05-20 23:03:47.153205+10	589	Jane Barker Pelvic Floor Clinic	3		7	1
84	2020-05-20 23:03:47.155107+10	588	Jennifer Ball Physiotherapy	3		7	1
85	2020-05-20 23:03:47.157254+10	587	(pelvic Physio) Rachel Andrew Apa Continence & Women's Health Physio	3		7	1
86	2020-05-20 23:03:47.159122+10	586	Back In Motion - Hobart On Murray	3		7	1
87	2020-05-20 23:03:47.161178+10	585	Hobart Home Physio Group	3		7	1
88	2020-05-20 23:03:47.163032+10	584	Island Osteopathy	3		7	1
89	2020-05-20 23:03:47.166187+10	583	Freshwater Osteopathy - Newstead	3		7	1
90	2020-05-20 23:03:47.168032+10	582	Freshwater Osteopathy - George Town	3		7	1
91	2020-05-20 23:03:47.170188+10	581	Lotus Osteopathy	3		7	1
92	2020-05-20 23:03:47.172292+10	580	Bodyfocus	3		7	1
93	2020-05-20 23:03:47.174197+10	579	Derwent Osteopathy & Natural Health	3		7	1
94	2020-05-20 23:03:47.176177+10	578	Connections Health	3		7	1
95	2020-05-20 23:03:47.178104+10	577	Osteopic - Bellerive	3		7	1
96	2020-05-20 23:03:47.180003+10	576	Rockhopper	3		7	1
97	2020-05-20 23:03:47.181894+10	575	North Hobart Osteopathy	3		7	1
98	2020-05-20 23:03:47.183838+10	574	Hobart Natural Health Clinic	3		7	1
99	2020-05-20 23:03:47.186022+10	573	New Town Osteopathy	3		7	1
100	2020-05-20 23:03:47.188066+10	572	Macquarie Osteopaths	3		7	1
101	2020-05-20 23:03:47.189966+10	571	Hobart Osteopathic Clinic	3		7	1
102	2020-05-20 23:03:47.191847+10	570	Latitude Therapy - Linda Barker	3		7	1
103	2020-05-20 23:03:47.193734+10	569	Adapt Occupational Therapy	3		7	1
104	2020-05-20 23:03:47.195681+10	568	Launceston Occupational Therapy	3		7	1
105	2020-05-20 23:03:47.197583+10	567	Ipar Rehab - Launceston	3		7	1
106	2020-05-20 23:03:47.199565+10	566	Otrehabservices	3		7	1
107	2020-05-20 23:03:47.201667+10	565	Janne Cowan Occupational Therapy	3		7	1
108	2020-05-20 23:03:47.203593+10	564	Visability Children's Therapy Centre	3		7	1
109	2020-05-20 23:03:47.205663+10	563	Susie Potito Paediatric Physiotherapy	3		7	1
110	2020-05-20 23:03:47.207611+10	562	Health Potential - Mobile Occupational Therapy	3		7	1
111	2020-05-20 23:03:47.20955+10	561	Join The Dots Occupational Therapy	3		7	1
112	2020-05-20 23:03:47.211457+10	560	Independent Kids - Occupational Therapy	3		7	1
113	2020-05-20 23:03:47.213353+10	559	Occupational Therapy Tas	3		7	1
114	2020-05-20 23:03:47.215283+10	558	Grow Occupational Therapy	3		7	1
115	2020-05-20 23:03:47.21721+10	557	Respect Occupational Therapy	3		7	1
116	2020-05-20 23:03:47.219216+10	556	Tasmanian Community Clinic	3		7	1
117	2020-05-20 23:03:47.221626+10	555	Hazel Bucher Nurse Practitioner Consultancy	3		7	1
118	2020-05-20 23:03:47.223566+10	554	Wynyard Rehab And Exercise Physiology	3		7	1
119	2020-05-20 23:03:47.225528+10	553	Coastal Physiotherapy - Burnie	3		7	1
120	2020-05-20 23:03:47.227467+10	552	Resolve Physiotherapy And Industrial Health Solutions	3		7	1
121	2020-05-20 23:03:47.229727+10	551	Regain Exercise Physiology	3		7	1
122	2020-05-20 23:03:47.231813+10	550	Activate Life Rehabilitation	3		7	1
123	2020-05-20 23:03:47.233759+10	549	Physiotas - Devonport	3		7	1
124	2020-05-20 23:03:47.235791+10	548	The Training Fix	3		7	1
125	2020-05-20 23:03:47.237758+10	547	Care Forward - North	3		7	1
126	2020-05-20 23:03:47.239731+10	546	The Active Health Company - Launceston	3		7	1
127	2020-05-20 23:03:47.241668+10	545	Physiofit	3		7	1
128	2020-05-20 23:03:47.243674+10	544	Njf Wellness Centres - Launceston	3		7	1
129	2020-05-20 23:03:47.245704+10	543	Exercise Physiology Services	3		7	1
130	2020-05-20 23:03:47.247607+10	542	Bodysystem	3		7	1
131	2020-05-20 23:03:47.249689+10	541	Optimum Health Solutions Tasmania	3		7	1
132	2020-05-20 23:03:47.251891+10	540	All About Fitness	3		7	1
133	2020-05-20 23:03:47.253822+10	539	Hobart Exercise Physiology	3		7	1
134	2020-05-20 23:03:47.255983+10	538	Healthy Horizons	3		7	1
135	2020-05-20 23:03:47.257939+10	537	Allcare Physiotherapy	3		7	1
136	2020-05-20 23:03:47.259852+10	536	Leap Health Body Tech Physiotherapy - Salamanca	3		7	1
137	2020-05-20 23:03:47.261799+10	535	Leap Health - Hobart	3		7	1
138	2020-05-20 23:03:47.263759+10	534	Mobile Health And Rehab - Ymca Glenorchy	3		7	1
139	2020-05-20 23:03:47.265645+10	533	Care Forward - South	3		7	1
140	2020-05-20 23:03:47.267709+10	532	Diabetes Management Options - Glenorchy	3		7	1
141	2020-05-20 23:03:47.269912+10	531	Diabetes Management Options	3		7	1
142	2020-05-20 23:03:47.272313+10	530	Nourishing Solutions	3		7	1
143	2020-05-20 23:03:47.274577+10	529	Dr Diane Fletcher-way Dietitian	3		7	1
144	2020-05-20 23:03:47.276765+10	528	Stagg Nutrition & Dietetics	3		7	1
145	2020-05-20 23:03:47.279003+10	527	Engage Therapy	3		7	1
146	2020-05-20 23:03:47.281164+10	526	Nutrition Solutions Tasmania	3		7	1
147	2020-05-20 23:03:47.283438+10	525	Launceston Dietetics	3		7	1
148	2020-05-20 23:03:47.285683+10	524	Physiotas - Launceston	3		7	1
149	2020-05-20 23:03:47.28783+10	523	Revive Motional Health	3		7	1
150	2020-05-20 23:03:47.289787+10	522	Your Path To Health - Rosny Park	3		7	1
151	2020-05-20 23:03:47.29175+10	521	Your Path To Health - Derwent Park	3		7	1
152	2020-05-20 23:03:47.293669+10	520	Participate Tasmania (incorporated)	3		7	1
153	2020-05-20 23:03:47.295542+10	519	Leap Health Physiotherapy & Sports Injury Centre - Huonville	3		7	1
154	2020-05-20 23:03:47.297352+10	518	Leap Health Physio & Sports Injury Centre - New Town	3		7	1
155	2020-05-20 23:03:47.299169+10	517	Leap Health Kingston	3		7	1
156	2020-05-20 23:03:47.30122+10	516	Nourish Tasmania	3		7	1
157	2020-05-20 23:03:47.30302+10	515	The Devonport Chiropractor	3		7	1
158	2020-05-20 23:03:47.304872+10	514	Devonport Chiropractic	3		7	1
159	2020-05-20 23:03:47.306721+10	513	Island Chiropractic	3		7	1
160	2020-05-20 23:03:47.308567+10	512	Healing Chiropractic	3		7	1
161	2020-05-20 23:03:47.310384+10	511	Launceston Chiropractic	3		7	1
162	2020-05-20 23:03:47.312259+10	510	Strive Chiropractors	3		7	1
163	2020-05-20 23:03:47.314131+10	509	Equilibrium Chiropractic	3		7	1
164	2020-05-20 23:03:47.316017+10	508	Central Chiropractic Clinic	3		7	1
165	2020-05-20 23:03:47.318033+10	507	Macquarie Practice	3		7	1
166	2020-05-20 23:03:47.320024+10	506	Combining Chiropractic	3		7	1
167	2020-05-20 23:03:47.322044+10	505	Tamar Chiropractic - Hobart Road	3		7	1
168	2020-05-20 23:03:47.323928+10	504	Tamar Chiropractic - Emu Bay Road	3		7	1
169	2020-05-20 23:03:47.32583+10	503	Tamar Chiropractic - Elphin Road	3		7	1
170	2020-05-20 23:03:47.327788+10	502	Chiropractic Works	3		7	1
171	2020-05-20 23:03:47.32966+10	501	Chirolife Chiropractic - Kingston	3		7	1
172	2020-05-20 23:03:47.331583+10	500	New Town Chiropractic	3		7	1
173	2020-05-20 23:03:47.333505+10	499	Chirolife Chiropractic - Hobart	3		7	1
174	2020-05-20 23:03:47.335408+10	498	Clarence Chiropractic Centre	3		7	1
175	2020-05-20 23:03:47.337297+10	497	Outback Chiropractic	3		7	1
176	2020-05-20 23:03:47.339319+10	496	Chiropractic On Collins	3		7	1
177	2020-05-20 23:03:47.341218+10	495	Derwent Valley Chiropractic	3		7	1
178	2020-05-20 23:03:47.343147+10	494	Howrah Chiropractic Centre	3		7	1
179	2020-05-20 23:03:47.345062+10	493	Kingston Chiropractic Centre	3		7	1
180	2020-05-20 23:03:47.347032+10	492	Hobart Chiropractic Centre	3		7	1
181	2020-05-20 23:03:47.348959+10	491	Backinbalance	3		7	1
182	2020-05-20 23:03:47.351076+10	490	Huonville Chiropractic Centre	3		7	1
183	2020-05-20 23:03:47.353077+10	489	Audioclinic Tasmania - Devonport	3		7	1
184	2020-05-20 23:03:47.35529+10	488	Hearing Australia - Burnie	3		7	1
185	2020-05-20 23:03:47.357233+10	487	Hearing Australia - Devonport	3		7	1
186	2020-05-20 23:03:47.35909+10	486	Audioclinic Tasmania - Launceston	3		7	1
187	2020-05-20 23:03:47.360987+10	485	Ear Clinic	3		7	1
188	2020-05-20 23:03:47.362911+10	484	Eastern Audiology Services	3		7	1
189	2020-05-20 23:03:47.364816+10	483	Hearing Australia - Glenorchy	3		7	1
190	2020-05-20 23:03:47.366738+10	482	Audioclinic Tasmania - Rosny	3		7	1
191	2020-05-20 23:03:47.368671+10	481	Audioclinic Tasmania - Kingston	3		7	1
192	2020-05-20 23:03:47.370732+10	480	Audioclinic Tasmania - Hobart	3		7	1
193	2020-05-20 23:03:47.372572+10	479	Audioclinic Tasmania - Glenorchy	3		7	1
194	2020-05-20 23:03:47.374411+10	478	Steven Hooper Hearing - Care Statewide	3		7	1
195	2020-05-20 23:03:47.376341+10	477	Hearing Australia - Bellerive	3		7	1
196	2020-05-20 23:03:47.378208+10	476	Chad Wuest - Acupuncture	3		7	1
197	2020-05-20 23:03:47.380094+10	475	Eastern Shore Acupuncture	3		7	1
198	2020-05-20 23:03:47.38195+10	474	Golden Lotus Acupuncture	3		7	1
199	2020-05-20 23:03:47.38406+10	473	Aboriginal Health Service Devonport - Tulaminakali	3		7	1
200	2020-05-20 23:03:47.385942+10	472	Zeehan General Practice	3		7	1
201	2020-05-20 23:03:47.387797+10	471	Rosebery General Practice	3		7	1
202	2020-05-20 23:03:47.389635+10	470	One Care - Umina Park	3		7	1
203	2020-05-20 23:03:47.391478+10	469	Aboriginal Health Service Burnie - Pataway	3		7	1
204	2020-05-20 23:03:47.393409+10	468	Port Sorell Medical Centre	3		7	1
205	2020-05-20 23:03:47.395564+10	467	Dr Merran Dyer Practice	3		7	1
206	2020-05-20 23:03:47.397435+10	466	Tasmanian Skin Clinic	3		7	1
207	2020-05-20 23:03:47.399318+10	465	Patrick Street Clinic Penguin	3		7	1
208	2020-05-20 23:03:47.401169+10	464	Queenstown General Practice	3		7	1
209	2020-05-20 23:03:47.402985+10	463	Ochre Health Medical Centre - King Island	3		7	1
210	2020-05-20 23:03:47.405073+10	462	Devonport Smartclinics Family Medical Centres - Wenvoe St	3		7	1
211	2020-05-20 23:03:47.406925+10	461	Valley Road Medical Centre	3		7	1
212	2020-05-20 23:03:47.408763+10	460	East Devonport Medical Centre	3		7	1
213	2020-05-20 23:03:47.410714+10	459	Strahan General Practice	3		7	1
214	2020-05-20 23:03:47.412755+10	458	Bass House Surgery	3		7	1
215	2020-05-20 23:03:47.414731+10	457	Patrick Street Clinic	3		7	1
216	2020-05-20 23:03:47.41662+10	456	Wynyard Medical Centre	3		7	1
217	2020-05-20 23:03:47.418456+10	455	Smithton Medical Services	3		7	1
218	2020-05-20 23:03:47.420538+10	454	Family Planning Tasmania - Burnie	3		7	1
219	2020-05-20 23:03:47.422635+10	453	Burnie General Practice	3		7	1
220	2020-05-20 23:03:47.424479+10	452	City Medical Practice	3		7	1
221	2020-05-20 23:03:47.426414+10	451	Victoria Street Clinic - Ulverstone	3		7	1
222	2020-05-20 23:03:47.42842+10	450	Don Medical Clinic - Family Practice	3		7	1
223	2020-05-20 23:03:47.430296+10	449	Latrobe Family Medical Practice	3		7	1
224	2020-05-20 23:03:47.432328+10	448	Launceston Aged Care Associates	3		7	1
225	2020-05-20 23:03:47.434628+10	447	Esk Family Health Care Centre	3		7	1
226	2020-05-20 23:03:47.436722+10	446	First Point Healthcare	3		7	1
227	2020-05-20 23:03:47.438709+10	445	General Practice (dr Kathy Maxwell)	3		7	1
228	2020-05-20 23:03:47.440879+10	444	Beaconsfield Medical Service	3		7	1
229	2020-05-20 23:03:47.442866+10	443	St Marys General Practice	3		7	1
230	2020-05-20 23:03:47.444818+10	442	Ravenswood Medical Centre	3		7	1
231	2020-05-20 23:03:47.446658+10	441	Legana Medical Centre	3		7	1
232	2020-05-20 23:03:47.448465+10	440	Mowbray Medical	3		7	1
233	2020-05-20 23:03:47.450306+10	439	Bicheno General Practice	3		7	1
234	2020-05-20 23:03:47.452243+10	438	Campbell Town Surgery	3		7	1
235	2020-05-20 23:03:47.454111+10	437	Northern Midlands Medical Services - Perth	3		7	1
236	2020-05-20 23:03:47.455976+10	436	Flinders Island Aboriginal Association Inc (fiaai)	3		7	1
237	2020-05-20 23:03:47.457833+10	435	Summerdale Medical Centre	3		7	1
238	2020-05-20 23:03:47.459656+10	434	Windmill Hill Medical	3		7	1
239	2020-05-20 23:03:47.46142+10	433	Lilydale Family Health Care	3		7	1
240	2020-05-20 23:03:47.463208+10	432	High Street Family Practice	3		7	1
241	2020-05-20 23:03:47.46524+10	431	Ochre Medical Centre Flinders Island	3		7	1
242	2020-05-20 23:03:47.467362+10	430	Civic Square Surgery	3		7	1
243	2020-05-20 23:03:47.469287+10	429	Exeter Medical Centre	3		7	1
244	2020-05-20 23:03:47.471269+10	428	Westbury Medical Centre	3		7	1
245	2020-05-20 23:03:47.473166+10	427	Deloraine Medical Centre	3		7	1
246	2020-05-20 23:03:47.475072+10	426	Northern Midlands Medical Services - Longford	3		7	1
247	2020-05-20 23:03:47.477023+10	425	Ochre Medical Centre Bridport	3		7	1
248	2020-05-20 23:03:47.478987+10	424	Family Planning Tasmania - Launceston	3		7	1
249	2020-05-20 23:03:47.480918+10	423	Family Doctor Service	3		7	1
250	2020-05-20 23:03:47.482823+10	422	Newstead Medical	3		7	1
251	2020-05-20 23:03:47.484778+10	421	Kings Meadows Medical Centre	3		7	1
252	2020-05-20 23:03:47.486686+10	420	Tamar Skin Cancer Clinic	3		7	1
253	2020-05-20 23:03:47.488721+10	419	Norwood Medical Centre	3		7	1
254	2020-05-20 23:03:47.490632+10	418	George Town Medical Centre	3		7	1
255	2020-05-20 23:03:47.492513+10	417	Northern Suburbs Medical Service	3		7	1
256	2020-05-20 23:03:47.49442+10	416	National Home Doctor Service - Launceston	3		7	1
257	2020-05-20 23:03:47.496355+10	415	Ochre Medical Centre Scottsdale	3		7	1
258	2020-05-20 23:03:47.498236+10	414	Launceston Medical Centre	3		7	1
259	2020-05-20 23:03:47.500147+10	413	Aboriginal Health Service Launceston	3		7	1
260	2020-05-20 23:03:47.502054+10	412	Ochre Medical Centre - St Helens	3		7	1
261	2020-05-20 23:03:47.504162+10	411	Medical Acupuncture Tasmania	3		7	1
262	2020-05-20 23:03:47.5061+10	410	North Hobart Medical Centre	3		7	1
263	2020-05-20 23:03:47.507997+10	409	Central Highlands General Practice	3		7	1
1717	2020-05-20 23:22:13.597291+10	853	Tasderm	3		7	1
264	2020-05-20 23:03:47.509923+10	408	Dr Monica Mylek-simpson - Private General Practice	3		7	1
265	2020-05-20 23:03:47.511875+10	407	Bupa Aged Care	3		7	1
266	2020-05-20 23:03:47.513833+10	406	Moreton Group Medical Services	3		7	1
267	2020-05-20 23:03:47.515718+10	405	Macquarie Medical	3		7	1
268	2020-05-20 23:03:47.517701+10	404	Bridge Street Surgery Richmond	3		7	1
269	2020-05-20 23:03:47.519644+10	403	Connewarre Clinic	3		7	1
270	2020-05-20 23:03:47.521724+10	402	Cygnet Family Practice	3		7	1
271	2020-05-20 23:03:47.523645+10	401	Huon Doctors Surgery	3		7	1
272	2020-05-20 23:03:47.525696+10	400	Dr Lad's Surgery	3		7	1
273	2020-05-20 23:03:47.527624+10	399	Dover Medical Centre	3		7	1
274	2020-05-20 23:03:47.529536+10	398	O'briens Bridge Medical Centre	3		7	1
275	2020-05-20 23:03:47.531425+10	397	Moonah Health Centre	3		7	1
276	2020-05-20 23:03:47.533322+10	396	General Practice Plus - Kingston Plaza	3		7	1
277	2020-05-20 23:03:47.535479+10	395	Dodges Ferry Medical	3		7	1
278	2020-05-20 23:03:47.537544+10	394	Respect Aged Care - Wellington Views	3		7	1
279	2020-05-20 23:03:47.539409+10	393	Hobart Aged Care	3		7	1
280	2020-05-20 23:03:47.541229+10	392	General Practice Plus - Gregory Street	3		7	1
281	2020-05-20 23:03:47.543088+10	391	Ht Health Group	3		7	1
282	2020-05-20 23:03:47.544924+10	390	Risdon Vale Family Practice	3		7	1
283	2020-05-20 23:03:47.546752+10	389	Barrack Street Practice	3		7	1
284	2020-05-20 23:03:47.548586+10	388	Brighton Doctors Surgery	3		7	1
285	2020-05-20 23:03:47.55051+10	387	Spring Bay Medical Centre	3		7	1
286	2020-05-20 23:03:47.552389+10	386	Bothwell Doctors	3		7	1
287	2020-05-20 23:03:47.554331+10	385	After Hours Doctor Hobart	3		7	1
288	2020-05-20 23:03:47.556238+10	384	General Practice (dr Roger Cox)	3		7	1
289	2020-05-20 23:03:47.558117+10	383	Anubha Anti-ageing Medicine	3		7	1
290	2020-05-20 23:03:47.560038+10	382	Call The Doctor - Afterhours Home Visiting Service	3		7	1
291	2020-05-20 23:03:47.561949+10	381	Claremont Medical Centre	3		7	1
292	2020-05-20 23:03:47.563866+10	380	Glebe Hill Family Practice	3		7	1
293	2020-05-20 23:03:47.565761+10	379	Sandy Bay Afterhours	3		7	1
294	2020-05-20 23:03:47.567728+10	378	Sorell Doctors Surgery	3		7	1
295	2020-05-20 23:03:47.569649+10	377	Snug Medical Centre	3		7	1
296	2020-05-20 23:03:47.571486+10	376	Health Change	3		7	1
297	2020-05-20 23:03:47.573381+10	375	Eastern Shore Doctors - Bellerive	3		7	1
298	2020-05-20 23:03:47.57527+10	374	Swansea General Practice	3		7	1
299	2020-05-20 23:03:47.577186+10	373	General Practice Plus - Mountain Retreat	3		7	1
300	2020-05-20 23:03:47.579147+10	372	Churchill Avenue Medical Centre	3		7	1
301	2020-05-20 23:03:47.581041+10	371	Tasman Medical Practice	3		7	1
302	2020-05-20 23:03:47.582945+10	370	Brighton Regional Doctors	3		7	1
303	2020-05-20 23:03:47.584812+10	369	General Practice Plus - Stoke Street	3		7	1
304	2020-05-20 23:03:47.58672+10	368	New Town Central Medical Centre	3		7	1
305	2020-05-20 23:03:47.588849+10	367	Augusta Road Medical Centre	3		7	1
306	2020-05-20 23:03:47.590748+10	366	Franklin Street Clinic	3		7	1
307	2020-05-20 23:03:47.59262+10	365	Clarence Gp Super Clinic	3		7	1
308	2020-05-20 23:03:47.594704+10	364	Eastern Shore Doctors - Lauderdale	3		7	1
309	2020-05-20 23:03:47.596608+10	363	Grosvenor Street General Practice	3		7	1
310	2020-05-20 23:03:47.598581+10	362	Collins Street General Practice	3		7	1
311	2020-05-20 23:03:47.600742+10	361	Eastern Shore Medical Centre	3		7	1
312	2020-05-20 23:03:47.603092+10	360	Long Beach Medical Centre	3		7	1
313	2020-05-20 23:03:47.605269+10	359	General Practice (dr Ilona Bewsher)	3		7	1
314	2020-05-20 23:03:47.607197+10	358	Eastern Shore Doctors - Shoreline	3		7	1
315	2020-05-20 23:03:47.609221+10	357	Glenorchy Medical Centre	3		7	1
316	2020-05-20 23:03:47.61114+10	356	Hobart Acupuncture	3		7	1
317	2020-05-20 23:03:47.613083+10	355	Hopkins Street Clinic	3		7	1
318	2020-05-20 23:03:47.614936+10	354	Argyle Medical	3		7	1
319	2020-05-20 23:03:47.61704+10	353	New Town Skin Cancer And Repair Clinic	3		7	1
320	2020-05-20 23:03:47.619113+10	352	Kingborough Medical Centre	3		7	1
321	2020-05-20 23:03:47.621161+10	351	Hobart Skin Cancer Clinic	3		7	1
322	2020-05-20 23:03:47.62312+10	350	Battery Point Medical	3		7	1
323	2020-05-20 23:03:47.625844+10	349	Greenpoint Medical Services	3		7	1
324	2020-05-20 23:03:47.627919+10	348	Sandy Bay Doctors	3		7	1
325	2020-05-20 23:03:47.629744+10	347	Rosny Doctors And Travel Clinic	3		7	1
326	2020-05-20 23:03:47.631601+10	346	City Doctors & Travel Clinic	3		7	1
327	2020-05-20 23:03:47.633731+10	345	Lenah Valley Medical Centre	3		7	1
328	2020-05-20 23:03:47.63563+10	344	Family Planning Tasmania - Glenorchy	3		7	1
329	2020-05-20 23:03:47.637613+10	343	Bellerive Doctors	3		7	1
330	2020-05-20 23:03:47.639545+10	342	Cambridge Park Medical Centre	3		7	1
331	2020-05-20 23:03:47.641409+10	341	Claremont Village Medical Centre	3		7	1
332	2020-05-20 23:03:47.643773+10	340	John Street Medical Centre	3		7	1
333	2020-05-20 23:03:47.645764+10	339	Dr Catherine (cathy) Thoo Private Specialist	3		7	1
334	2020-05-20 23:03:47.647636+10	338	Mr David Cottier Private Specialist - Launceston	3		7	1
335	2020-05-20 23:03:47.64958+10	337	North Tas Urology - Devonport	3		7	1
336	2020-05-20 23:03:47.651528+10	336	North Tas Urology - St Helens	3		7	1
337	2020-05-20 23:03:47.653719+10	335	North Tas Urology - Launceston	3		7	1
338	2020-05-20 23:03:47.655878+10	334	Mr Frank Redwig Private Medical Specialist	3		7	1
339	2020-05-20 23:03:47.658143+10	333	Mr Fadi Nuwayhid Private Specialist	3		7	1
340	2020-05-20 23:03:47.660284+10	332	Mr Ian Middleton Private Specialist	3		7	1
341	2020-05-20 23:03:47.662461+10	331	Urology Hobart	3		7	1
342	2020-05-20 23:03:47.664724+10	330	Mr Anthony Eaton Private Specialist	3		7	1
343	2020-05-20 23:03:47.666763+10	329	Steele Street Clinic - Private Hospital	3		7	1
344	2020-05-20 23:03:47.668689+10	328	Mr Sven Anders Private Specialist	3		7	1
345	2020-05-20 23:03:47.670606+10	327	Miss Amanda Young Private Specialist	3		7	1
346	2020-05-20 23:03:47.672674+10	326	Dr Girish Pande Private Specialist	3		7	1
347	2020-05-20 23:03:47.674481+10	325	Dr Fiona Lee Private Specialist	3		7	1
348	2020-05-20 23:03:47.676439+10	324	Dr Jacqui Slater Private Specialist	3		7	1
349	2020-05-20 23:03:47.678493+10	323	Mr Tony Patiniotis Private Specialist	3		7	1
350	2020-05-20 23:03:47.680631+10	322	Tasmania Anti Obesity Surgery Centre	3		7	1
351	2020-05-20 23:03:47.682806+10	321	Sports Medicine Practice	3		7	1
352	2020-05-20 23:03:47.685097+10	320	Lionheart Rheumatology	3		7	1
353	2020-05-20 23:03:47.688178+10	319	Dr Stewart Graham Private Specialist	3		7	1
354	2020-05-20 23:03:47.690414+10	318	Rheumatology Tasmania	3		7	1
355	2020-05-20 23:03:47.692333+10	317	Tas Ivf - Launceston Clinic	3		7	1
356	2020-05-20 23:03:47.694328+10	316	Dr James Markos Private Specialist	3		7	1
357	2020-05-20 23:03:47.696141+10	315	Tasmanian Lung Service - Launceston	3		7	1
358	2020-05-20 23:03:47.698031+10	314	Dr Rajesh Raj Private Specialist	3		7	1
359	2020-05-20 23:03:47.699894+10	313	Dr M C Mathew Private Specialist - Brickfields Specialist Group	3		7	1
360	2020-05-20 23:03:47.701976+10	312	Clin Assoc Prof Mark Slatyer Private Specialist	3		7	1
361	2020-05-20 23:03:47.704079+10	311	Precision Brain Spine And Pain Centre	3		7	1
362	2020-05-20 23:03:47.706089+10	310	Dr Mark Bell Private Specialist - Launceston	3		7	1
363	2020-05-20 23:03:47.708162+10	309	Dr Mark Bell Private Specialist - Burnie	3		7	1
364	2020-05-20 23:03:47.710354+10	308	Dr Eric Ratcliff Private Specialist	3		7	1
365	2020-05-20 23:03:47.712506+10	307	Dr George (robert) Hyde Private Specialist	3		7	1
366	2020-05-20 23:03:47.714533+10	306	The Swallows Centre	3		7	1
367	2020-05-20 23:03:47.716498+10	305	Kirkman Psychiatry And Telehealth Practice	3		7	1
368	2020-05-20 23:03:47.718912+10	304	Telepsychiatrist Online	3		7	1
369	2020-05-20 23:03:47.72082+10	303	Dr Natalie Glinka Private Specialist	3		7	1
370	2020-05-20 23:03:47.72284+10	302	The Hobart Clinic - Hobart	3		7	1
371	2020-05-20 23:03:47.724798+10	301	Dr Stephane Auchincloss Private Specialist	3		7	1
372	2020-05-20 23:03:47.726951+10	300	Mr Simon Thomson And Associates	3		7	1
373	2020-05-20 23:03:47.729028+10	299	Launceston Plastic And Cosmetic Surgery Unit	3		7	1
374	2020-05-20 23:03:47.731128+10	298	Hobart Institute Of Plastic Surgery	3		7	1
375	2020-05-20 23:03:47.733269+10	297	Centre For Hand Wrist Plastic Surgery	3		7	1
376	2020-05-20 23:03:47.735636+10	296	Macquarie Plastic Surgery	3		7	1
377	2020-05-20 23:03:47.737929+10	295	Dr Michael Jackson - Private Specialist	3		7	1
378	2020-05-20 23:03:47.740145+10	294	Dr Mark Pascoe Private Specialist	3		7	1
379	2020-05-20 23:03:47.742397+10	293	Dr Megan Corp - Private Specialist	3		7	1
380	2020-05-20 23:03:47.74447+10	292	Dr Christopher Bailey Private Specialist	3		7	1
381	2020-05-20 23:03:47.746704+10	291	Hobart Paediatric Group	3		7	1
382	2020-05-20 23:03:47.748834+10	290	Dr Paul Sillifant Private Specialist	3		7	1
383	2020-05-20 23:03:47.750795+10	289	Mr Daniel Player Private Specialist - Launceston	3		7	1
384	2020-05-20 23:03:47.752645+10	288	Tasmanian Oral Maxillofacial And Implant Surgery - Launceston	3		7	1
385	2020-05-20 23:03:47.754601+10	287	Tasmanian Oral Maxillofacial And Implant Surgery - Hobart	3		7	1
386	2020-05-20 23:03:47.756584+10	286	Tasmanian Oral Maxillofacial And Implant Surgery - Devonport	3		7	1
387	2020-05-20 23:03:47.758563+10	285	Hobart Specialist Dental Centre	3		7	1
388	2020-05-20 23:03:47.760508+10	284	Russell Furzer Orthopaedic Pty Ltd	3		7	1
389	2020-05-20 23:03:47.762617+10	283	Mr Peter Van Winden Private Specialist	3		7	1
390	2020-05-20 23:03:47.76483+10	282	Mr Gary Fettke Private Specialist	3		7	1
391	2020-05-20 23:03:47.767289+10	281	Dr Berni Einoder Private Specialist	3		7	1
392	2020-05-20 23:03:47.769623+10	280	Mr Roger Butorac Private Specialist	3		7	1
393	2020-05-20 23:03:47.774054+10	279	Dr Matthew Wilkinson - Private Specialist	3		7	1
394	2020-05-20 23:03:47.780892+10	278	Wellington Orthopaedics	3		7	1
395	2020-05-20 23:03:47.783609+10	277	Mr John Mills Private Specialist	3		7	1
396	2020-05-20 23:03:47.786566+10	276	Mr Richard Jamieson Private Specialist	3		7	1
397	2020-05-20 23:03:47.789409+10	275	Mr Greg Harvey Private Specialist	3		7	1
398	2020-05-20 23:03:47.791988+10	274	Mr Paul Einoder Private Specialist	3		7	1
399	2020-05-20 23:03:47.794508+10	273	Mr Miles Callahan Private Specialist	3		7	1
400	2020-05-20 23:03:47.797054+10	272	Launceston Eye Institute - Ulverstone	3		7	1
401	2020-05-20 23:03:47.799579+10	271	Dr Michael Haybittel Private Specialist	3		7	1
402	2020-05-20 23:03:47.802097+10	270	Devonport Eye Hospital	3		7	1
403	2020-05-20 23:03:47.804517+10	269	Launceston Eye Institute	3		7	1
404	2020-05-20 23:03:47.806864+10	268	Launceston Eye Doctors	3		7	1
405	2020-05-20 23:03:47.809519+10	267	Tasmanian Eye Clinics - Kingston	3		7	1
406	2020-05-20 23:03:47.811962+10	266	Tasmanian Eye Clinics - Hobart	3		7	1
407	2020-05-20 23:03:47.814393+10	265	Tasmanian Eye Clinics - Glenorchy	3		7	1
408	2020-05-20 23:03:47.816713+10	264	Derwent Eye Specialists	3		7	1
409	2020-05-20 23:03:47.82194+10	263	Precision Eye Clinic	3		7	1
410	2020-05-20 23:03:47.824633+10	262	Hobart Eye Surgeons - Hobart	3		7	1
411	2020-05-20 23:03:47.826964+10	261	Hobart Eye Surgeons - Eastern Shore	3		7	1
412	2020-05-20 23:03:47.829215+10	260	Dr Ian Byard Private Specialist	3		7	1
413	2020-05-20 23:03:47.831569+10	259	Tasoem	3		7	1
414	2020-05-20 23:03:47.833958+10	258	Hobart Occupational Medicine	3		7	1
415	2020-05-20 23:03:47.836542+10	257	Dr Andreas Ernst Private Specialist	3		7	1
416	2020-05-20 23:03:47.838735+10	256	Dr Kim Dobromilsky - Private Specialist	3		7	1
417	2020-05-20 23:03:47.841048+10	255	North West Private Hospital	3		7	1
418	2020-05-20 23:03:47.843254+10	254	Tasgynae Obstetricians & Gynaecologists	3		7	1
419	2020-05-20 23:03:47.84559+10	253	Launceston Obstetrics And Gynaecology	3		7	1
420	2020-05-20 23:03:47.847831+10	252	Dr Steve Sonneveld Private Specialist	3		7	1
421	2020-05-20 23:03:47.85008+10	251	Tas Ivf - Hobart Clinic	3		7	1
422	2020-05-20 23:03:47.852554+10	250	Fertility Tasmania	3		7	1
423	2020-05-20 23:03:47.854964+10	249	The Tabbot Foundation	3		7	1
424	2020-05-20 23:03:47.857252+10	248	Sorell Family Practice	3		7	1
425	2020-05-20 23:03:47.859527+10	247	Dr Brett Daniels Private Specialist	3		7	1
426	2020-05-20 23:03:47.861823+10	246	Eternal Women's Health	3		7	1
427	2020-05-20 23:03:47.864272+10	245	Hobart Obgyn	3		7	1
428	2020-05-20 23:03:47.866682+10	244	Women's Imaging	3		7	1
429	2020-05-20 23:03:47.869008+10	243	Tasmanian Spine Service - Lenah Valley	3		7	1
430	2020-05-20 23:03:47.871956+10	242	Tasmanian Spine Service - Launceston	3		7	1
431	2020-05-20 23:03:47.874486+10	241	Neurosurgery Tasmania	3		7	1
432	2020-05-20 23:03:47.876913+10	240	Calvary Consulting Suites - Practice 1	3		7	1
433	2020-05-20 23:03:47.879296+10	239	Dr Andrew Evans Private Specialist	3		7	1
434	2020-05-20 23:03:47.881752+10	238	Hobart Women's Specialists	3		7	1
435	2020-05-20 23:03:47.885158+10	237	Regal Elderly Medicine	3		7	1
436	2020-05-20 23:03:47.888535+10	236	Launceston Memory Centre	3		7	1
437	2020-05-20 23:03:47.891715+10	235	Dr Krishna Kalpurath - Private Specialist Geriatrician	3		7	1
438	2020-05-20 23:03:47.895524+10	234	Calvary Private Specialists	3		7	1
439	2020-05-20 23:03:47.900554+10	233	Dr Suneet Kohli - Private Specialist	3		7	1
440	2020-05-20 23:03:47.904707+10	232	Hobart Private Consulting Rooms	3		7	1
441	2020-05-20 23:03:47.908136+10	231	Dr Mark Veldhuis Private Specialist	3		7	1
442	2020-05-20 23:03:47.91064+10	230	Offspring Child Health	3		7	1
443	2020-05-20 23:03:47.913225+10	229	Dr Brent Mitchell Private Specialist	3		7	1
444	2020-05-20 23:03:47.915628+10	228	Dr Scott Fanning Private Specialist	3		7	1
445	2020-05-20 23:03:47.918062+10	227	Dr Mark Wilson Gastroenterology	3		7	1
446	2020-05-20 23:03:47.920411+10	226	Dr Jarrad Wilson Private Specialist	3		7	1
447	2020-05-20 23:03:47.922889+10	225	Central Gastroenterology Pty Ltd	3		7	1
448	2020-05-20 23:03:47.925359+10	224	Gastrohealth Hobart	3		7	1
449	2020-05-20 23:03:47.927604+10	223	Dr Stephen Chung Private Specialist	3		7	1
450	2020-05-20 23:03:47.929895+10	222	Dr Ana Naiman Private Specialist	3		7	1
451	2020-05-20 23:03:47.932233+10	221	Mr Philip Moore Private Specialist	3		7	1
452	2020-05-20 23:03:47.9349+10	220	Hobart Ent	3		7	1
453	2020-05-20 23:03:47.937359+10	219	Mr Danesh Irani Private Specialist	3		7	1
454	2020-05-20 23:03:47.94+10	218	Mr Magdi Ghali Private Specialist - Cradle Coast	3		7	1
455	2020-05-20 23:03:47.94241+10	217	Mr Magdi Ghali Private Specialist	3		7	1
456	2020-05-20 23:03:47.944779+10	216	Mr Warwick Brennan Private Specialist	3		7	1
457	2020-05-20 23:03:47.947051+10	215	Dr Simone Boardman Private Specialist	3		7	1
458	2020-05-20 23:03:47.949351+10	214	Hobart Private Specialists - Suite 5	3		7	1
459	2020-05-20 23:03:47.951874+10	213	Launceston Respiratory & Sleep Centre	3		7	1
460	2020-05-20 23:03:47.954453+10	212	Aboriginal Health Service Hobart - Nipluna	3		7	1
461	2020-05-20 23:03:47.956709+10	211	Regional Imaging Tasmania - St Vincent's Hospital	3		7	1
462	2020-05-20 23:03:47.958926+10	210	Tasderm	3		7	1
463	2020-05-20 23:03:47.961261+10	209	Dr Andrew Jevtic Private Specialist - Launceston	3		7	1
464	2020-05-20 23:03:47.963541+10	208	Dr Andrew Jevtic Private Specialist - Hobart	3		7	1
465	2020-05-20 23:03:47.965731+10	207	Launceston Dermatology	3		7	1
466	2020-05-20 23:03:47.967994+10	206	Dr Srini Yellapu Private Specialist	3		7	1
467	2020-05-20 23:03:47.970202+10	205	Mr Hung Nguyen Private Specialist	3		7	1
468	2020-05-20 23:03:47.972412+10	204	Dr David Lloyd Private Specialist	3		7	1
469	2020-05-20 23:03:47.974661+10	203	Tamar Surgical	3		7	1
470	2020-05-20 23:03:47.976894+10	202	Hobart Colorectal Surgeons	3		7	1
471	2020-05-20 23:03:47.979037+10	201	Hobart Medical Specialists	3		7	1
472	2020-05-20 23:03:47.981059+10	200	Specialist Care Australia - Ulverstone	3		7	1
473	2020-05-20 23:03:47.983039+10	199	Specialist Care Australia - Launceston	3		7	1
474	2020-05-20 23:03:47.985118+10	198	St John's Sessional Suites	3		7	1
475	2020-05-20 23:03:47.987264+10	197	Launceston Pathology Collection Centre - Launceston	3		7	1
476	2020-05-20 23:03:47.989674+10	196	Dr Keshav Bhattarai Private Specialist	3		7	1
477	2020-05-20 23:03:47.991852+10	195	Calvary Cardiac Centre Cardiothoracic Consulting Rooms	3		7	1
478	2020-05-20 23:03:47.993811+10	194	Charles Clinic - North West	3		7	1
479	2020-05-20 23:03:47.995785+10	193	Dr Bhuwan Singh Private Specialist	3		7	1
480	2020-05-20 23:03:47.997767+10	192	A/prof Donald Mctaggart Private Specialist	3		7	1
481	2020-05-20 23:03:47.999695+10	191	Dr George Koshy Private Specialist	3		7	1
482	2020-05-20 23:03:48.001588+10	190	Dr Brian Herman Private Specialist	3		7	1
483	2020-05-20 23:03:48.00362+10	189	Calvary Health Care Sessional Rooms	3		7	1
484	2020-05-20 23:03:48.00563+10	188	Charles Clinic - Launceston	3		7	1
485	2020-05-20 23:03:48.007614+10	187	Hobart Cardiology And Medical Specialists	3		7	1
486	2020-05-20 23:03:48.00966+10	186	Hobart Heart Centre	3		7	1
487	2020-05-20 23:03:48.01161+10	185	Calvary Cardiac Centre	3		7	1
488	2020-05-20 23:03:48.013599+10	184	Dr Rob Eadie Private Specialist	3		7	1
489	2020-05-20 23:03:48.015834+10	183	Old Vic Anaesthetists	3		7	1
490	2020-05-20 23:03:48.018011+10	182	Southern Pain Service	3		7	1
491	2020-05-20 23:03:48.02029+10	181	Tasmanian Anaesthesia	3		7	1
492	2020-05-20 23:03:48.022532+10	180	The Hobart Anaesthetic Group	3		7	1
493	2020-05-20 23:03:48.024873+10	179	Dr Malcolm Anderson Private Specialist	3		7	1
494	2020-05-20 23:03:48.027175+10	178	The Hobart Clinic	3		7	1
495	2020-05-20 23:03:48.029381+10	177	Care Forward - North West	3		7	1
496	2020-05-20 23:03:48.031555+10	176	Elpe Health - Wynyard	3		7	1
497	2020-05-20 23:03:48.033765+10	175	Eco Health Therapies	3		7	1
498	2020-05-20 23:03:48.035926+10	174	Andrew Mcclymont Psychologist	3		7	1
499	2020-05-20 23:03:48.038176+10	173	Sheffield Medical Centre	3		7	1
500	2020-05-20 23:03:48.040107+10	172	North West Psychology	3		7	1
501	2020-05-20 23:03:48.042025+10	171	Vivien Henderson Psychological Services	3		7	1
502	2020-05-20 23:03:48.044001+10	170	Anna De La Rue Psychological And Counselling Services	3		7	1
503	2020-05-20 23:03:48.045972+10	169	Psychology Caffe - Smithton	3		7	1
504	2020-05-20 23:03:48.047977+10	168	Christina Chamley Psychologist	3		7	1
505	2020-05-20 23:03:48.049982+10	167	Burnie Gp Super Clinic	3		7	1
506	2020-05-20 23:03:48.051887+10	166	Saunders Street Clinic	3		7	1
507	2020-05-20 23:03:48.053898+10	165	Southside Family Medical - Burnie	3		7	1
508	2020-05-20 23:03:48.055939+10	164	Psychology Plus	3		7	1
509	2020-05-20 23:03:48.057791+10	163	Psychology Caffe - Latrobe	3		7	1
510	2020-05-20 23:03:48.059816+10	162	Psychology Caffe - Devonport	3		7	1
511	2020-05-20 23:03:48.061706+10	161	Robyn Mckinnon Consultancy And Counselling Services - King Island	3		7	1
512	2020-05-20 23:03:48.063556+10	160	Psychology Caffe - Burnie	3		7	1
513	2020-05-20 23:03:48.06543+10	159	Psychology Caffe - Ulverstone	3		7	1
514	2020-05-20 23:03:48.067385+10	158	Elpe Health - Zeehan	3		7	1
515	2020-05-20 23:03:48.069255+10	157	Psychology Caffe - West Coast	3		7	1
516	2020-05-20 23:03:48.071215+10	156	Elpe Health - Somerset	3		7	1
517	2020-05-20 23:03:48.073139+10	155	Elpe Health - Sheffield	3		7	1
518	2020-05-20 23:03:48.074976+10	154	Elpe Health - Ulverstone	3		7	1
519	2020-05-20 23:03:48.076965+10	153	Michael Marriot Clinical Psychologist	3		7	1
520	2020-05-20 23:03:48.078818+10	152	Coastal Psychology	3		7	1
521	2020-05-20 23:03:48.080644+10	151	Maureen Doherty - Psychologist	3		7	1
522	2020-05-20 23:03:48.082756+10	150	Somerset Medical Centre	3		7	1
523	2020-05-20 23:03:48.084685+10	149	Rubicon Psychology	3		7	1
524	2020-05-20 23:03:48.086533+10	148	Lyndon Walker Psychologist	3		7	1
525	2020-05-20 23:03:48.088667+10	147	Tess Crawley & Associates - Launceston	3		7	1
526	2020-05-20 23:03:48.090531+10	146	Janis Richards Psychologist - Mowbray	3		7	1
527	2020-05-20 23:03:48.09239+10	145	Janis Richards Psychologist - Campbell Town	3		7	1
528	2020-05-20 23:03:48.094953+10	144	Prospect Allied Health	3		7	1
529	2020-05-20 23:03:48.098371+10	143	Lesley Osenieks - Psychologist	3		7	1
530	2020-05-20 23:03:48.100889+10	142	Evandale Doctors Surgery	3		7	1
531	2020-05-20 23:03:48.103721+10	141	Westbury Doctors Surgery	3		7	1
532	2020-05-20 23:03:48.106278+10	140	Rose Cottage Medical Centre	3		7	1
533	2020-05-20 23:03:48.108686+10	139	Beaconsfield Doctors Surgery	3		7	1
534	2020-05-20 23:03:48.111173+10	138	Psychology Caffe - Deloraine	3		7	1
535	2020-05-20 23:03:48.113676+10	137	Wendy Gall Psychologist	3		7	1
536	2020-05-20 23:03:48.116236+10	136	Tim Feely And Associates	3		7	1
537	2020-05-20 23:03:48.118811+10	135	Rising Strong Psychology & Consulting Services	3		7	1
538	2020-05-20 23:03:48.121437+10	134	Bernadette Zeeman Accredited Mental Hlth Social Worker	3		7	1
539	2020-05-20 23:03:48.123719+10	133	Rob Pearce - Social Worker	3		7	1
540	2020-05-20 23:03:48.125878+10	132	Robyn Mckinnon Consultancy And Counselling Services - Longford	3		7	1
541	2020-05-20 23:03:48.128058+10	131	Robyn Mckinnon Consultancy And Counselling Services - Launceston	3		7	1
542	2020-05-20 23:03:48.130337+10	130	Robyn Mckinnon Consultancy And Counselling Services - Flinders Island	3		7	1
543	2020-05-20 23:03:48.132721+10	129	Russell Mccashney Social Worker	3		7	1
544	2020-05-20 23:03:48.135067+10	128	Deborah Klye Mental Health Social Worker - The Blue Door	3		7	1
545	2020-05-20 23:03:48.137397+10	127	Headspace Launceston	3		7	1
546	2020-05-20 23:03:48.139746+10	126	Coaching Access Management Systems	3		7	1
547	2020-05-20 23:03:48.142107+10	125	Forpsych	3		7	1
548	2020-05-20 23:03:48.14466+10	124	Megan Smoak Clinical Psychologist	3		7	1
549	2020-05-20 23:03:48.147506+10	123	Emerge Allied Health	3		7	1
550	2020-05-20 23:03:48.149709+10	122	Ruth Paul Clinical Psychologist	3		7	1
551	2020-05-20 23:03:48.152051+10	121	Lib Heyward Clinical Psychologist	3		7	1
552	2020-05-20 23:03:48.154295+10	120	Holly M Guest And Associates Psychological Services	3		7	1
553	2020-05-20 23:03:48.156516+10	119	Joe Freeman	3		7	1
554	2020-05-20 23:03:48.158669+10	118	Windsor Psychology - Riverside	3		7	1
555	2020-05-20 23:03:48.16125+10	117	Patrick Fleming And Associates	3		7	1
556	2020-05-20 23:03:48.163834+10	116	Launceston Therapy Clinic	3		7	1
557	2020-05-20 23:03:48.166767+10	115	Healthy Mind Centre	3		7	1
558	2020-05-20 23:03:48.169417+10	114	Helen Bindoff Clinical Psychologist	3		7	1
559	2020-05-20 23:03:48.171843+10	113	Launceston Integrated Pain Service (lips)	3		7	1
560	2020-05-20 23:03:48.174068+10	112	Vanessa Bakker Clinical Psychologist	3		7	1
561	2020-05-20 23:03:48.1763+10	111	Mrs Shane Cavanagh Social Worker	3		7	1
562	2020-05-20 23:03:48.178529+10	110	Ashley Wong Hoy Psychologist - Sorell	3		7	1
563	2020-05-20 23:03:48.180766+10	109	Ashley Wong Hoy Psychologist - Nubeena	3		7	1
564	2020-05-20 23:03:48.183268+10	108	Ashley Wong Hoy Psychologist - Richmond	3		7	1
565	2020-05-20 23:03:48.185826+10	107	Angela Waite Psychology	3		7	1
566	2020-05-20 23:03:48.188055+10	106	University Psychology Clinic	3		7	1
567	2020-05-20 23:03:48.190241+10	105	Counselling And Psychology Tasmania	3		7	1
568	2020-05-20 23:03:48.192354+10	104	Davey Street Medical Centre	3		7	1
569	2020-05-20 23:03:48.194535+10	103	The Lindisfarne Clinic	3		7	1
570	2020-05-20 23:03:48.19664+10	102	Sandy Bay Clinic	3		7	1
571	2020-05-20 23:03:48.198879+10	101	Amiens Clinic	3		7	1
572	2020-05-20 23:03:48.201156+10	100	Rosny Park Family Practice	3		7	1
573	2020-05-20 23:03:48.203405+10	99	Ernest Schall Psychologist	3		7	1
574	2020-05-20 23:03:48.205668+10	98	Emily Parkinson - Psychologist	3		7	1
575	2020-05-20 23:03:48.207889+10	97	Derwent Valley Medical Centre	3		7	1
576	2020-05-20 23:03:48.210056+10	96	Newdegate Street Health Centre	3		7	1
577	2020-05-20 23:03:48.212178+10	95	Jasmin Mandari Psychologist	3		7	1
578	2020-05-20 23:03:48.214333+10	94	Jan Lee Psychologist	3		7	1
579	2020-05-20 23:03:48.216489+10	93	Louise King Psychologist	3		7	1
580	2020-05-20 23:03:48.21866+10	92	Jones & Co Psychology	3		7	1
581	2020-05-20 23:03:48.220546+10	91	Huon Valley Health Centre - Huonville	3		7	1
582	2020-05-20 23:03:48.222422+10	90	Bruny Island Medical	3		7	1
583	2020-05-20 23:03:48.224362+10	89	Richmond Therapy Practice	3		7	1
584	2020-05-20 23:03:48.226253+10	88	Gore Street Medical	3		7	1
585	2020-05-20 23:03:48.229153+10	87	Ipar Rehab - Hobart	3		7	1
586	2020-05-20 23:03:48.231393+10	86	Dr Trevor Crowe Pyschologist - Huonville	3		7	1
587	2020-05-20 23:03:48.233524+10	85	Windsor Psychology - Hobart	3		7	1
588	2020-05-20 23:03:48.235717+10	84	Gp2u Telehealth Pty Ltd	3		7	1
589	2020-05-20 23:03:48.237889+10	83	Cecilia Bendall Psychologist	3		7	1
590	2020-05-20 23:03:48.240067+10	82	Lindisfarne Psychology & Wellbeing Centre	3		7	1
591	2020-05-20 23:03:48.242209+10	81	The Narrative Centre - Bellerive	3		7	1
592	2020-05-20 23:03:48.244369+10	80	All Round Health And Community Care	3		7	1
593	2020-05-20 23:03:48.246558+10	79	Southern Beaches Counselling	3		7	1
594	2020-05-20 23:03:48.248666+10	78	Lorraine's Place	3		7	1
595	2020-05-20 23:03:48.250885+10	77	Health-wise Counselling And Consultancy Service	3		7	1
596	2020-05-20 23:03:48.253087+10	76	Helen Fryer Counselling And Psychotherapy	3		7	1
597	2020-05-20 23:03:48.255346+10	75	The Stress Clinic Of Hobart	3		7	1
598	2020-05-20 23:03:48.257381+10	74	Tasmanian Obstetrics And Gynaecology Specialists (tasogs)	3		7	1
599	2020-05-20 23:03:48.259323+10	73	Hill Street Psychology	3		7	1
600	2020-05-20 23:03:48.261301+10	72	Family Psychological Services	3		7	1
601	2020-05-20 23:03:48.263339+10	71	Dr Harry Stanton Clinical Psychologist	3		7	1
602	2020-05-20 23:03:48.265308+10	70	Balanced - Mind Body Life	3		7	1
603	2020-05-20 23:03:48.267768+10	69	St Helen's Private Consulting Suites	3		7	1
604	2020-05-20 23:03:48.269879+10	68	Eastern Shore Psychology	3		7	1
605	2020-05-20 23:03:48.272481+10	67	Kelly Pettit - Clinical Psychological Services	3		7	1
606	2020-05-20 23:03:48.274618+10	66	Kingston Psychology	3		7	1
607	2020-05-20 23:03:48.276749+10	65	Peter Nelson Clinical Psychologist	3		7	1
608	2020-05-20 23:03:48.278983+10	64	After Hours Doctor	3		7	1
609	2020-05-20 23:03:48.281124+10	63	Michaela Morgan Clinical Psychologist	3		7	1
610	2020-05-20 23:03:48.283414+10	62	Adjusting Futures	3		7	1
611	2020-05-20 23:03:48.285898+10	61	Federal Street Pain Clinic	3		7	1
612	2020-05-20 23:03:48.28831+10	60	Julian Mcgarry Clinical Psychologist - Kingston	3		7	1
613	2020-05-20 23:03:48.290636+10	59	Psych2u	3		7	1
614	2020-05-20 23:03:48.29293+10	58	Sabina Lane - Clinical Psychologist	3		7	1
615	2020-05-20 23:03:48.295173+10	57	Knopwood Medical Centre	3		7	1
616	2020-05-20 23:03:48.297554+10	56	New Town Psychology Practice	3		7	1
617	2020-05-20 23:03:48.299819+10	55	Kristy Hill Clinical Psychologist	3		7	1
618	2020-05-20 23:03:48.302124+10	54	Scaling Your Mountains	3		7	1
619	2020-05-20 23:03:48.304451+10	53	Your Health Hub	3		7	1
620	2020-05-20 23:03:48.30677+10	52	Newchoices - John Street	3		7	1
621	2020-05-20 23:03:48.308993+10	51	Newchoices - Elizabeth Street	3		7	1
622	2020-05-20 23:03:48.311147+10	50	Newchoices - Ferguson Court	3		7	1
623	2020-05-20 23:03:48.313219+10	49	Headspace Hobart	3		7	1
624	2020-05-20 23:03:48.315198+10	48	Rohini Gore Clinical Psychologist	3		7	1
625	2020-05-20 23:03:48.317122+10	47	Brad Freeman Clinical Psychologist	3		7	1
626	2020-05-20 23:03:48.31913+10	46	Psychologyworks	3		7	1
627	2020-05-20 23:03:48.321138+10	45	Eclectic Consulting Ltd	3		7	1
628	2020-05-20 23:03:48.323155+10	44	Kingston Beach Health Centre	3		7	1
629	2020-05-20 23:03:48.325279+10	43	Tobias Croft - Clinical Psychologist - Geeveston	3		7	1
630	2020-05-20 23:03:48.32742+10	42	Tobias Croft - Clinical Psychologist - Cygnet	3		7	1
631	2020-05-20 23:03:48.329466+10	41	Tess Crawley & Associates - Hobart	3		7	1
632	2020-05-20 23:03:48.331428+10	40	Marie-louise Craske - Clinical Psychologist	3		7	1
633	2020-05-20 23:03:48.333487+10	39	Christine Clifford Clinical Psychologist	3		7	1
634	2020-05-20 23:03:48.33556+10	38	Parinda Chiranakorn Clinical Psychologist	3		7	1
635	2020-05-20 23:03:48.337647+10	37	Karen Chilcott Clinical Psychologist	3		7	1
636	2020-05-20 23:03:48.339732+10	36	Macquarie Psychology	3		7	1
637	2020-05-20 23:03:48.341923+10	35	The Psychology Centre	3		7	1
638	2020-05-20 23:03:48.344104+10	34	Archer Street Health Pty Ltd	3		7	1
639	2020-05-20 23:03:48.346286+10	33	Salamanca Psychology	3		7	1
640	2020-05-20 23:03:48.348454+10	32	Roslyn Badcock & Associates - Sorell	3		7	1
641	2020-05-20 23:03:48.350642+10	31	Roslyn Badcock & Associates - Bellerive	3		7	1
642	2020-05-20 23:03:48.352979+10	30	The Practice (psychology Services) - Kingston	3		7	1
643	2020-05-20 23:03:48.355164+10	29	Christina Anderson - Clinical Psychologist	3		7	1
644	2020-05-20 23:03:48.357463+10	28	Gregory Street Psychology	3		7	1
645	2020-05-20 23:04:08.535291+10	638	113 William Street Devonport, TAS, Australia	3		9	1
646	2020-05-20 23:04:08.538474+10	637	9 Arnold Street Burnie, TAS, Australia	3		9	1
647	2020-05-20 23:04:08.54049+10	636	9 Arnold Street Penguin, TAS, Australia	3		9	1
648	2020-05-20 23:04:08.542476+10	635	8 Highfield Cresent Ulverstone, TAS, Australia	3		9	1
649	2020-05-20 23:04:08.544719+10	634	16 Winston Place Devonport, TAS, Australia	3		9	1
650	2020-05-20 23:04:08.546675+10	633	59d Amy Road Invermay, TAS, Australia	3		9	1
651	2020-05-20 23:04:08.548675+10	632	59d Amy Road Newstead, TAS, Australia	3		9	1
652	2020-05-20 23:04:08.550723+10	631	110 Elizabeth Street Launceston, TAS, Australia	3		9	1
653	2020-05-20 23:04:08.552578+10	630	110 Elizabeth Street Howrah, TAS, Australia	3		9	1
654	2020-05-20 23:04:08.554605+10	629	9 Clarence Street Bellerive, TAS, Australia	3		9	1
655	2020-05-20 23:04:08.556458+10	628	30 Lincoln Street South Hobart, TAS, Australia	3		9	1
656	2020-05-20 23:04:08.558376+10	627	110 Elizabeth Street Hobart, TAS, Australia	3		9	1
657	2020-05-20 23:04:08.560494+10	626	Suite 3/81 Cimitiere Street Launceston, TAS, Australia	3		9	1
658	2020-05-20 23:04:08.562464+10	625	56 Alexandra Rd Ulverstone, TAS, Australia	3		9	1
659	2020-05-20 23:04:08.564404+10	624	165 Nelson St Smithton, TAS, Australia	3		9	1
660	2020-05-20 23:04:08.566275+10	623	49 Jackson Street Wynyard, TAS, Australia	3		9	1
661	2020-05-20 23:04:08.568127+10	622	3 Edwardes Street Wynyard, TAS, Australia	3		9	1
662	2020-05-20 23:04:08.570214+10	621	371 Bass Highway Burnie, TAS, Australia	3		9	1
663	2020-05-20 23:04:08.573101+10	620	3 Edwardes Street Burnie, TAS, Australia	3		9	1
664	2020-05-20 23:04:08.574955+10	619	26 William Street Sheffield, TAS, Australia	3		9	1
665	2020-05-20 23:04:08.576879+10	618	26 William Street Devonport, TAS, Australia	3		9	1
666	2020-05-20 23:04:08.578889+10	617	59 Cameron Street Launceston, TAS, Australia	3		9	1
667	2020-05-20 23:04:08.580914+10	616	84a Hobart Road Kings Meadows, TAS, Australia	3		9	1
668	2020-05-20 23:04:08.582772+10	615	169 Elphin Road Newstead Newstead, TAS, Australia	3		9	1
669	2020-05-20 23:04:08.584544+10	614	318 West Tamar Road Riverside, TAS, Australia	3		9	1
670	2020-05-20 23:04:08.586344+10	613	Shop 6/8 Legana Grove Westbury, TAS, Australia	3		9	1
671	2020-05-20 23:04:08.588399+10	612	Shop 6/8 Legana Grove Legana, TAS, Australia	3		9	1
672	2020-05-20 23:04:08.590333+10	611	71 Elphin Road Evandale, TAS, Australia	3		9	1
673	2020-05-20 23:04:08.592204+10	610	71 Elphin Road Launceston, TAS, Australia	3		9	1
674	2020-05-20 23:04:08.594066+10	609	33a Main Road Claremont, TAS, Australia	3		9	1
675	2020-05-20 23:04:08.595899+10	608	210 New Town Road New Town, TAS, Australia	3		9	1
676	2020-05-20 23:04:08.597738+10	607	214 Clarence Street Hobart, TAS, Australia	3		9	1
677	2020-05-20 23:04:08.599589+10	606	214 Clarence Street Howrah, TAS, Australia	3		9	1
678	2020-05-20 23:04:08.601705+10	605	53 Main Road Claremont, TAS, Australia	3		9	1
679	2020-05-20 23:04:08.604363+10	604	Shop 3 Huon Arcade - 13 Main Street Huonville, TAS, Australia	3		9	1
680	2020-05-20 23:04:08.606481+10	603	16 School Road Franklin, TAS, Australia	3		9	1
681	2020-05-20 23:04:08.6083+10	602	64 Giblin Street Lenah Valley, TAS, Australia	3		9	1
682	2020-05-20 23:04:08.610091+10	601	12 Gregory Street Hobart, TAS, Australia	3		9	1
683	2020-05-20 23:04:08.611885+10	600	12 Gregory Street Sandy Bay, TAS, Australia	3		9	1
684	2020-05-20 23:04:08.613724+10	599	214 Elzabeth Street Hobart, TAS, Australia	3		9	1
685	2020-05-20 23:04:08.615577+10	598	40 Channel Highway Kingston, TAS, Australia	3		9	1
686	2020-05-20 23:04:08.617717+10	597	17 Campbell Street Hobart, TAS, Australia	3		9	1
687	2020-05-20 23:04:08.619862+10	596	17a Gordons Hill Road Rosny Park, TAS, Australia	3		9	1
688	2020-05-20 23:04:08.622077+10	595	315 Macquarie Street Hobart, TAS, Australia	3		9	1
689	2020-05-20 23:04:08.624103+10	594	108 Best Street Devonport, TAS, Australia	3		9	1
690	2020-05-20 23:04:08.625997+10	593	21 The Esplanade Turners Beach, TAS, Australia	3		9	1
691	2020-05-20 23:04:08.627921+10	592	3/11 Poyston Drive Shearwater, TAS, Australia	3		9	1
692	2020-05-20 23:04:08.629765+10	591	15 Main Street Currie, TAS, Australia	3		9	1
693	2020-05-20 23:04:08.631619+10	590	6 Patrick Street Wynyard, TAS, Australia	3		9	1
694	2020-05-20 23:04:08.633633+10	589	48 Victoria Street Ulverstone, TAS, Australia	3		9	1
695	2020-05-20 23:04:08.635808+10	588	130 Back Cam Road Somerset, TAS, Australia	3		9	1
696	2020-05-20 23:04:08.637994+10	587	47 Anne Street George Town, TAS, Australia	3		9	1
697	2020-05-20 23:04:08.639877+10	586	7 Glen Ard Mohr Road Exeter, TAS, Australia	3		9	1
698	2020-05-20 23:04:08.641741+10	585	5 Cleghorn Avenue Riverside, TAS, Australia	3		9	1
699	2020-05-20 23:04:08.643591+10	584	55 Elphin Road Launceston, TAS, Australia	3		9	1
700	2020-05-20 23:04:08.645593+10	583	268 Invermay Road Mowbray, TAS, Australia	3		9	1
701	2020-05-20 23:04:08.647458+10	582	Level 1 - 112/287 Charles Street Launceston, TAS, Australia	3		9	1
702	2020-05-20 23:04:08.64933+10	581	Level 1 254 Main Road Sandy Bay, TAS, Australia	3		9	1
703	2020-05-20 23:04:08.651226+10	580	67 Hopkins Street Cygnet, TAS, Australia	3		9	1
704	2020-05-20 23:04:08.65316+10	579	Level 1/17 Bayfield Street Battery Point, TAS, Australia	3		9	1
705	2020-05-20 23:04:08.655228+10	578	22 Gordon Street Sorell, TAS, Australia	3		9	1
706	2020-05-20 23:04:08.657612+10	577	73 Lansdowne Cresent West Hobart, TAS, Australia	3		9	1
707	2020-05-20 23:04:08.659583+10	576	6 Bayfield Street Rosny Park, TAS, Australia	3		9	1
708	2020-05-20 23:04:08.661429+10	575	2 High Street New Norfolk, TAS, Australia	3		9	1
709	2020-05-20 23:04:08.663328+10	574	Shop 67/68 Channel Crt Shopping Centre / 29 Channel Highway Kingston, TAS, Australia	3		9	1
710	2020-05-20 23:04:08.665294+10	573	Suite 6/221 Macquarie Street Blackmans Bay, TAS, Australia	3		9	1
711	2020-05-20 23:04:08.667204+10	572	Level 1/17 Bayfield Street Rosny Park, TAS, Australia	3		9	1
712	2020-05-20 23:04:08.669163+10	571	273 Clarence Street Howrah, TAS, Australia	3		9	1
713	2020-05-20 23:04:08.671134+10	570	221 Murray Street West Hobart, TAS, Australia	3		9	1
714	2020-05-20 23:04:08.673417+10	569	Suite 6/221 Macquarie Street Hobart, TAS, Australia	3		9	1
715	2020-05-20 23:04:08.67537+10	568	17 Bligh Street Rosny Park, TAS, Australia	3		9	1
716	2020-05-20 23:04:08.677246+10	567	176 Macquarie Street Hobart, TAS, Australia	3		9	1
717	2020-05-20 23:04:08.679116+10	566	26 Antill Street Lenah Valley, TAS, Australia	3		9	1
718	2020-05-20 23:04:08.681003+10	565	26 Antill Street Hobart, TAS, Australia	3		9	1
719	2020-05-20 23:04:08.682898+10	564	16 Wilmot Road Huonville, TAS, Australia	3		9	1
720	2020-05-20 23:04:08.685089+10	563	171 Macquarie Street Lenah Valley, TAS, Australia	3		9	1
721	2020-05-20 23:04:08.687107+10	562	171 Macquarie Street Hobart, TAS, Australia	3		9	1
722	2020-05-20 23:04:08.689039+10	561	4/11 Hill Street West Hobart, TAS, Australia	3		9	1
723	2020-05-20 23:04:08.69089+10	560	221 Murray Street Hobart, TAS, Australia	3		9	1
724	2020-05-20 23:04:08.692725+10	559	Suite 3/19 Reibey Street Hobart, TAS, Australia	3		9	1
725	2020-05-20 23:04:08.695003+10	558	Suite 3/19 Reibey Street Ulverstone, TAS, Australia	3		9	1
726	2020-05-20 23:04:08.696955+10	557	15 Penquite Road Newstead, TAS, Australia	3		9	1
727	2020-05-20 23:04:08.698798+10	556	194 Charles Street George Town, TAS, Australia	3		9	1
728	2020-05-20 23:04:08.700841+10	555	194 Charles Street Launceston, TAS, Australia	3		9	1
729	2020-05-20 23:04:08.703018+10	554	6 Risdon Road New Town, TAS, Australia	3		9	1
730	2020-05-20 23:04:08.705174+10	553	Suite 1/166 Warwick Street Hobart, TAS, Australia	3		9	1
731	2020-05-20 23:04:08.707029+10	552	2/8 Percy Street Bellerive, TAS, Australia	3		9	1
732	2020-05-20 23:04:08.708876+10	551	385 Argyle Street Hobart, TAS, Australia	3		9	1
733	2020-05-20 23:04:08.710741+10	550	385 Argyle Street Hobart, TAS, Australia	3		9	1
734	2020-05-20 23:04:08.712681+10	549	161 Macquarie Street Hobart, TAS, Australia	3		9	1
735	2020-05-20 23:04:08.714509+10	548	67 Pedder Street New Town, TAS, Australia	3		9	1
736	2020-05-20 23:04:08.716347+10	547	73 Burnett Street North Hobart, TAS, Australia	3		9	1
737	2020-05-20 23:04:08.71836+10	546	2 Fitzroy Place Hobart, TAS, Australia	3		9	1
738	2020-05-20 23:04:08.720456+10	545	Suite 2 / 10-14 Paterson Street Penguin, TAS, Australia	3		9	1
739	2020-05-20 23:04:08.722373+10	544	Suite 2 / 10-14 Paterson Street Launceston, TAS, Australia	3		9	1
740	2020-05-20 23:04:08.724486+10	543	Level 1/233 Charles Street Newstead, TAS, Australia	3		9	1
741	2020-05-20 23:04:08.726464+10	542	24 Bettina Avenue Norwood, TAS, Australia	3		9	1
742	2020-05-20 23:04:08.728339+10	541	Shop 3/31 Cambridge Road Bellerive, TAS, Australia	3		9	1
743	2020-05-20 23:04:08.730184+10	540	Suite 4 / Palfreymanns Arcade - 340 Elizabeth Street Lenah Valley, TAS, Australia	3		9	1
744	2020-05-20 23:04:08.732042+10	539	Suite 4 / Palfreymanns Arcade - 340 Elizabeth Street North Hobart, TAS, Australia	3		9	1
745	2020-05-20 23:04:08.733894+10	538	62 Beach Road Margate, TAS, Australia	3		9	1
746	2020-05-20 23:04:08.735788+10	537	30 Lincoln Street Battery Point, TAS, Australia	3		9	1
747	2020-05-20 23:04:08.737732+10	536	30 Lincoln Street Lenah Valley, TAS, Australia	3		9	1
748	2020-05-20 23:04:08.739729+10	535	13 High Street Sorell, TAS, Australia	3		9	1
749	2020-05-20 23:04:08.741636+10	534	13 High Street Hobart, TAS, Australia	3		9	1
750	2020-05-20 23:04:08.743574+10	533	2 Birdwood Avenue Moonah, TAS, Australia	3		9	1
751	2020-05-20 23:04:08.745436+10	532	41 Auburn Road Kingston Beach, TAS, Australia	3		9	1
752	2020-05-20 23:04:08.747286+10	531	45 Goldie Street Wynyard, TAS, Australia	3		9	1
753	2020-05-20 23:04:08.749139+10	530	3 King Street Burnie, TAS, Australia	3		9	1
754	2020-05-20 23:04:08.751046+10	529	81 Oldaker Street Devonport, TAS, Australia	3		9	1
755	2020-05-20 23:04:08.753052+10	528	11 Macfie Street Devonport, TAS, Australia	3		9	1
756	2020-05-20 23:04:08.755098+10	527	260 Steele Street Devonport, TAS, Australia	3		9	1
757	2020-05-20 23:04:08.757166+10	526	75 Best Street Devonport, TAS, Australia	3		9	1
758	2020-05-20 23:04:08.759015+10	525	305 Wellington Street Ulverstone, TAS, Australia	3		9	1
759	2020-05-20 23:04:08.761039+10	524	305 Wellington Street Riverside, TAS, Australia	3		9	1
760	2020-05-20 23:04:08.763029+10	523	305 Wellington Street Launceston, TAS, Australia	3		9	1
761	2020-05-20 23:04:08.764907+10	522	44/46 Howick Street East Launceston, TAS, Australia	3		9	1
762	2020-05-20 23:04:08.766883+10	521	65 Corinth Street Howrah, TAS, Australia	3		9	1
763	2020-05-20 23:04:08.769255+10	520	38 Collins Street Hobart, TAS, Australia	3		9	1
764	2020-05-20 23:04:08.771348+10	519	4 Mittara Crescent Mornington, TAS, Australia	3		9	1
765	2020-05-20 23:04:08.776757+10	518	4 Mittara Crescent Berriedale, TAS, Australia	3		9	1
766	2020-05-20 23:04:08.782629+10	517	37/47 Melville Street Hobart, TAS, Australia	3		9	1
767	2020-05-20 23:04:08.785236+10	516	Lot 1/517 Old Forcett Road Dodges Ferry, TAS, Australia	3		9	1
768	2020-05-20 23:04:08.788399+10	515	68 Sandy Bay Road Sandy Bay, TAS, Australia	3		9	1
769	2020-05-20 23:04:08.790945+10	514	33 Salamanca Square Battery Point, TAS, Australia	3		9	1
770	2020-05-20 23:04:08.793481+10	513	Level 1/6 Bayfield Street Hobart, TAS, Australia	3		9	1
771	2020-05-20 23:04:08.796067+10	512	Level 1/6 Bayfield Street Rosny Park, TAS, Australia	3		9	1
772	2020-05-20 23:04:08.79877+10	511	16 Cabernet Drive Glenorchy, TAS, Australia	3		9	1
773	2020-05-20 23:04:08.801297+10	510	16 Cabernet Drive Berriedale, TAS, Australia	3		9	1
774	2020-05-20 23:04:08.803875+10	509	60 Haberles Road Currie, TAS, Australia	3		9	1
775	2020-05-20 23:04:08.806506+10	508	60 Haberles Road Sheffield, TAS, Australia	3		9	1
776	2020-05-20 23:04:08.809309+10	507	Shop 2a / 139-143 Hobart Road Deloraine, TAS, Australia	3		9	1
777	2020-05-20 23:04:08.812016+10	506	Shop 2a / 139-143 Hobart Road Kings Meadows, TAS, Australia	3		9	1
778	2020-05-20 23:04:08.814613+10	505	Shop 3/282 Invermay Road Launceston, TAS, Australia	3		9	1
779	2020-05-20 23:04:08.817094+10	504	44/46 Howick Street Launceston, TAS, Australia	3		9	1
780	2020-05-20 23:04:08.820702+10	503	444 South Arm Road Glenorchy, TAS, Australia	3		9	1
781	2020-05-20 23:04:08.823983+10	502	Level 1 254 Main Road Rosny Park, TAS, Australia	3		9	1
782	2020-05-20 23:04:08.827832+10	501	Level 1 254 Main Road Derwent Park, TAS, Australia	3		9	1
783	2020-05-20 23:04:08.831301+10	500	394 Macquarie Street South Hobart, TAS, Australia	3		9	1
784	2020-05-20 23:04:08.84251+10	499	Shop 3/56 Main Road Huonville, TAS, Australia	3		9	1
785	2020-05-20 23:04:08.845471+10	498	117 Swanston Street New Town, TAS, Australia	3		9	1
786	2020-05-20 23:04:08.84805+10	497	10 Hutchins Street Kingston, TAS, Australia	3		9	1
787	2020-05-20 23:04:08.850545+10	496	2 Gregory Street Sandy Bay, TAS, Australia	3		9	1
788	2020-05-20 23:04:08.853328+10	495	82 Steele Street Devonport, TAS, Australia	3		9	1
789	2020-05-20 23:04:08.855872+10	494	4 Queen Street Devonport, TAS, Australia	3		9	1
790	2020-05-20 23:04:08.858304+10	493	4 Queen Street Burnie, TAS, Australia	3		9	1
791	2020-05-20 23:04:08.860682+10	492	Shop 5 - Jimmy's Complex / 216 Charles Street Launceston, TAS, Australia	3		9	1
792	2020-05-20 23:04:08.863133+10	491	1 Cypress Street Launceston, TAS, Australia	3		9	1
793	2020-05-20 23:04:08.865573+10	490	39 Elphin Road Launceston, TAS, Australia	3		9	1
794	2020-05-20 23:04:08.868126+10	489	34 Abbott Street East Launceston, TAS, Australia	3		9	1
795	2020-05-20 23:04:08.8706+10	488	1/93 Brisbane Street Launceston, TAS, Australia	3		9	1
796	2020-05-20 23:04:08.873018+10	487	2 Seascape Avenue Bicheno, TAS, Australia	3		9	1
797	2020-05-20 23:04:08.875534+10	486	98 Talbot Road South Launceston, TAS, Australia	3		9	1
798	2020-05-20 23:04:08.877863+10	485	149 Hobart Road Kings Meadows, TAS, Australia	3		9	1
799	2020-05-20 23:04:08.880357+10	484	4 Emu Bay Road Deloraine, TAS, Australia	3		9	1
800	2020-05-20 23:04:08.882635+10	483	60 Elphin Road Launceston, TAS, Australia	3		9	1
801	2020-05-20 23:04:08.885017+10	482	17 Freshwater Point Road Legana, TAS, Australia	3		9	1
802	2020-05-20 23:04:08.887346+10	481	30 Channel Highway Kingston, TAS, Australia	3		9	1
803	2020-05-20 23:04:08.889603+10	480	198 New Town Road New Town, TAS, Australia	3		9	1
804	2020-05-20 23:04:08.891694+10	479	3/26 Bayfield Street Hobart, TAS, Australia	3		9	1
805	2020-05-20 23:04:08.893948+10	478	3/26 Bayfield Street Rosny Park, TAS, Australia	3		9	1
806	2020-05-20 23:04:08.895952+10	477	263 Elizabeth Street Hobart, TAS, Australia	3		9	1
807	2020-05-20 23:04:08.897926+10	476	174 Collins Street Hobart, TAS, Australia	3		9	1
808	2020-05-20 23:04:08.899841+10	475	39 High Street New Norfolk, TAS, Australia	3		9	1
809	2020-05-20 23:04:08.901731+10	474	1/277 Clarence Street Howrah, TAS, Australia	3		9	1
810	2020-05-20 23:04:08.903737+10	473	3/7 John Street Kingston, TAS, Australia	3		9	1
811	2020-05-20 23:04:08.905608+10	472	181 Harrington Street Hobart, TAS, Australia	3		9	1
812	2020-05-20 23:04:08.90758+10	471	13 Percy Street Bellerive, TAS, Australia	3		9	1
813	2020-05-20 23:04:08.90957+10	470	63 Main Street Huonville, TAS, Australia	3		9	1
814	2020-05-20 23:04:08.911463+10	469	42 Formby Road Devonport, TAS, Australia	3		9	1
815	2020-05-20 23:04:08.913363+10	468	Shop 1 87-91 Wilson Street Burnie, TAS, Australia	3		9	1
816	2020-05-20 23:04:08.915303+10	467	Shop 1/39 Steele Street Devonport, TAS, Australia	3		9	1
817	2020-05-20 23:04:08.917237+10	466	Shop 10/216 Charles Street Launceston, TAS, Australia	3		9	1
818	2020-05-20 23:04:08.91915+10	465	264 Charles Street Launceston, TAS, Australia	3		9	1
819	2020-05-20 23:04:08.921061+10	464	1a / 120 Cambridge Road Bellerive, TAS, Australia	3		9	1
820	2020-05-20 23:04:08.922969+10	463	Shop 62 - Northgate Shopping Centre - 387-391 Main Road Glenorchy, TAS, Australia	3		9	1
821	2020-05-20 23:04:08.924871+10	462	Shop 1 Eastlands Shopping Centre / Bligh Street Rosny Park, TAS, Australia	3		9	1
822	2020-05-20 23:04:08.926783+10	461	Shop 78 Channel Court Shopping Centre Kingston, TAS, Australia	3		9	1
823	2020-05-20 23:04:08.928742+10	460	86 Murray Street Hobart, TAS, Australia	3		9	1
824	2020-05-20 23:04:08.930641+10	459	353a Main Road Glenorchy, TAS, Australia	3		9	1
825	2020-05-20 23:04:08.93252+10	458	6 Sunderland Street Moonah, TAS, Australia	3		9	1
826	2020-05-20 23:04:08.934509+10	457	30 Bayfield Street Bellerive, TAS, Australia	3		9	1
827	2020-05-20 23:04:08.936501+10	456	3a Pitt Street North Hobart, TAS, Australia	3		9	1
828	2020-05-20 23:04:08.938647+10	455	71 Liverpool Street Rosny, TAS, Australia	3		9	1
829	2020-05-20 23:04:08.940844+10	454	71 Liverpool Street Hobart, TAS, Australia	3		9	1
830	2020-05-20 23:04:08.942801+10	453	106 Best Street Devonport, TAS, Australia	3		9	1
831	2020-05-20 23:04:08.944665+10	452	100 Main Street Zeehan, TAS, Australia	3		9	1
832	2020-05-20 23:04:08.946545+10	451	1 Hospital Road Rosebery, TAS, Australia	3		9	1
833	2020-05-20 23:04:08.948427+10	450	22/42 Mooreville Road Burnie, TAS, Australia	3		9	1
834	2020-05-20 23:04:08.950331+10	449	53 Alexander Street Burnie, TAS, Australia	3		9	1
835	2020-05-20 23:04:08.952311+10	448	81 Club Drive Shearwater, TAS, Australia	3		9	1
836	2020-05-20 23:04:08.95438+10	447	12 Duff Drive Sheffield, TAS, Australia	3		9	1
837	2020-05-20 23:04:08.95634+10	446	64 Oldaker Street Devonport, TAS, Australia	3		9	1
838	2020-05-20 23:04:08.958366+10	445	19 Ironcliffe Road Penguin, TAS, Australia	3		9	1
839	2020-05-20 23:04:08.960226+10	444	6 Patrick Street Queenstown, TAS, Australia	3		9	1
840	2020-05-20 23:04:08.962179+10	443	35 Edward Street Currie, TAS, Australia	3		9	1
841	2020-05-20 23:04:08.964077+10	442	8 Wenvoe Street Devonport, TAS, Australia	3		9	1
842	2020-05-20 23:04:08.965992+10	441	37 Valley Road Devonport, TAS, Australia	3		9	1
843	2020-05-20 23:04:08.968135+10	440	13 Stephen Street East Devonport, TAS, Australia	3		9	1
844	2020-05-20 23:04:08.970108+10	439	3 Bay Street Strahan, TAS, Australia	3		9	1
845	2020-05-20 23:04:08.972216+10	438	83 Wilmot Street Burnie, TAS, Australia	3		9	1
846	2020-05-20 23:04:08.974191+10	437	6 Patrick Street Ulverstone, TAS, Australia	3		9	1
847	2020-05-20 23:04:08.976126+10	436	138 Goldie Street Wynyard, TAS, Australia	3		9	1
848	2020-05-20 23:04:08.978195+10	435	14 King Street Smithton, TAS, Australia	3		9	1
849	2020-05-20 23:04:08.98006+10	434	199 Mount Street Burnie, TAS, Australia	3		9	1
850	2020-05-20 23:04:08.982022+10	433	35/37 Mount Street Burnie, TAS, Australia	3		9	1
851	2020-05-20 23:04:08.983889+10	432	Suite 7/8 Level 10 / 10 Marine Terrace Burnie, TAS, Australia	3		9	1
852	2020-05-20 23:04:08.985767+10	431	39 Victoria Street Ulverstone, TAS, Australia	3		9	1
853	2020-05-20 23:04:08.987779+10	430	45b Gilbert Street Devonport, TAS, Australia	3		9	1
854	2020-05-20 23:04:08.98964+10	429	45b Gilbert Street Latrobe, TAS, Australia	3		9	1
855	2020-05-20 23:04:08.991565+10	428	137 Hobart Road Launceston, TAS, Australia	3		9	1
856	2020-05-20 23:04:08.993441+10	427	33 Brisbane Street Launceston, TAS, Australia	3		9	1
857	2020-05-20 23:04:08.995325+10	426	22 Pine Avenue Newstead, TAS, Australia	3		9	1
858	2020-05-20 23:04:08.997191+10	425	134 Elphin Road Launceston, TAS, Australia	3		9	1
859	2020-05-20 23:04:08.999108+10	424	146 Weld Street Beaconsfield, TAS, Australia	3		9	1
860	2020-05-20 23:04:09.00099+10	423	13 Gardiners Creek Road St Marys, TAS, Australia	3		9	1
861	2020-05-20 23:04:09.002959+10	422	39/41 Lambert Street Ravenswood, TAS, Australia	3		9	1
862	2020-05-20 23:04:09.00518+10	421	86 Meander Valley Road Legana, TAS, Australia	3		9	1
863	2020-05-20 23:04:09.006987+10	420	Shop 3/282 Invermay Road Mowbray Heights, TAS, Australia	3		9	1
864	2020-05-20 23:04:09.008933+10	419	94 Foster Street Bicheno, TAS, Australia	3		9	1
865	2020-05-20 23:04:09.010871+10	418	70 High Street Campbell Town, TAS, Australia	3		9	1
866	2020-05-20 23:04:09.012906+10	417	180 Fairtlough Street Perth, TAS, Australia	3		9	1
867	2020-05-20 23:04:09.014823+10	416	16 West Street Lady Barron, TAS, Australia	3		9	1
868	2020-05-20 23:04:09.016803+10	415	13 High Street Summerhill, TAS, Australia	3		9	1
869	2020-05-20 23:04:09.019086+10	414	13 High Street Launceston, TAS, Australia	3		9	1
870	2020-05-20 23:04:09.021113+10	413	1977 Main Road Lilydale, TAS, Australia	3		9	1
871	2020-05-20 23:04:09.023012+10	412	49 Anne Street Launceston, TAS, Australia	3		9	1
872	2020-05-20 23:04:09.024857+10	411	4 James Street Whitemark, TAS, Australia	3		9	1
873	2020-05-20 23:04:09.026726+10	410	77 Cameron Street Launceston, TAS, Australia	3		9	1
874	2020-05-20 23:04:09.028767+10	409	102 Main Road Exeter, TAS, Australia	3		9	1
875	2020-05-20 23:04:09.030731+10	408	80 Meander Valley Road Westbury, TAS, Australia	3		9	1
876	2020-05-20 23:04:09.03272+10	407	22 Tower Hill Street Deloraine, TAS, Australia	3		9	1
877	2020-05-20 23:04:09.034959+10	406	28 George Street Longford, TAS, Australia	3		9	1
878	2020-05-20 23:04:09.037124+10	405	123 Main Street Bridport, TAS, Australia	3		9	1
879	2020-05-20 23:04:09.039102+10	404	269 Wellington Street Launceston, TAS, Australia	3		9	1
880	2020-05-20 23:04:09.040991+10	403	137 Hobart Road Kings Meadows, TAS, Australia	3		9	1
881	2020-05-20 23:04:09.042865+10	402	165 Elphin Road Newstead, TAS, Australia	3		9	1
882	2020-05-20 23:04:09.0449+10	401	86c Hobart Road Kings Meadows, TAS, Australia	3		9	1
883	2020-05-20 23:04:09.04693+10	400	54/58 Invermay Road Invermay, TAS, Australia	3		9	1
884	2020-05-20 23:04:09.048783+10	399	212 Penquite Road Norwood, TAS, Australia	3		9	1
885	2020-05-20 23:04:09.050899+10	398	49 Anne Street George Town, TAS, Australia	3		9	1
886	2020-05-20 23:04:09.052849+10	397	278 Invermay Road Mowbray Heights, TAS, Australia	3		9	1
887	2020-05-20 23:04:09.054814+10	396	2 Fosters Road Scottsdale, TAS, Australia	3		9	1
888	2020-05-20 23:04:09.056697+10	395	247 Wellington Street Launceston, TAS, Australia	3		9	1
889	2020-05-20 23:04:09.05875+10	394	182 Charles Street Launceston, TAS, Australia	3		9	1
890	2020-05-20 23:04:09.060707+10	393	11 Pendrigh Place St Helens, TAS, Australia	3		9	1
891	2020-05-20 23:04:09.062592+10	392	66 Giblin Street Lenah Valley, TAS, Australia	3		9	1
892	2020-05-20 23:04:09.06461+10	391	408 Elizabeth Street North Hobart, TAS, Australia	3		9	1
893	2020-05-20 23:04:09.066527+10	390	6896 Lyell Highway Ouse, TAS, Australia	3		9	1
894	2020-05-20 23:04:09.06839+10	389	188 Collins Street Kingston, TAS, Australia	3		9	1
895	2020-05-20 23:04:09.070233+10	388	14 Gore Street South Hobart, TAS, Australia	3		9	1
896	2020-05-20 23:04:09.072322+10	387	98 New Town Road New Town, TAS, Australia	3		9	1
897	2020-05-20 23:04:09.074218+10	386	333 Macquarie Street South Hobart, TAS, Australia	3		9	1
898	2020-05-20 23:04:09.076124+10	385	2/25a Bridge Street Richmond, TAS, Australia	3		9	1
899	2020-05-20 23:04:09.078117+10	384	711 Main Road Berriedale, TAS, Australia	3		9	1
900	2020-05-20 23:04:09.079983+10	383	5 Thorp Street Cygnet, TAS, Australia	3		9	1
901	2020-05-20 23:04:09.08206+10	382	49 Main Street Huonville, TAS, Australia	3		9	1
902	2020-05-20 23:04:09.083921+10	381	421 Main Road Blackmans Bay, TAS, Australia	3		9	1
903	2020-05-20 23:04:09.085768+10	380	15 Chapman Avenue Dover, TAS, Australia	3		9	1
904	2020-05-20 23:04:09.087826+10	379	502 Main Road Montrose, TAS, Australia	3		9	1
905	2020-05-20 23:04:09.089724+10	378	16 Main Road Moonah, TAS, Australia	3		9	1
906	2020-05-20 23:04:09.091625+10	377	Shop 12a / 20 Channel Highway Kingston, TAS, Australia	3		9	1
907	2020-05-20 23:04:09.093519+10	376	Shop 1/52 Carlton Beach Road Dodges Ferry, TAS, Australia	3		9	1
908	2020-05-20 23:04:09.095603+10	375	24 Stanfield Drive Old Beach, TAS, Australia	3		9	1
909	2020-05-20 23:04:09.097563+10	374	46a Cambridge Road Bellerive, TAS, Australia	3		9	1
910	2020-05-20 23:04:09.099448+10	373	18 Gregory Street Sandy Bay, TAS, Australia	3		9	1
911	2020-05-20 23:04:09.101946+10	372	46 Cambridge Road Sandy Bay, TAS, Australia	3		9	1
912	2020-05-20 23:04:09.103886+10	371	32 Sugarloaf Road Risdon Vale, TAS, Australia	3		9	1
913	2020-05-20 23:04:09.106082+10	370	5a Barrack Street Hobart, TAS, Australia	3		9	1
914	2020-05-20 23:04:09.107956+10	369	1 Bedford Street Brighton, TAS, Australia	3		9	1
915	2020-05-20 23:04:09.109809+10	368	3 Stoke Street Triabunna, TAS, Australia	3		9	1
916	2020-05-20 23:04:09.111748+10	367	13 Patrick Street Bothwell, TAS, Australia	3		9	1
917	2020-05-20 23:04:09.113614+10	366	71 Bathurst Street Hobart, TAS, Australia	3		9	1
918	2020-05-20 23:04:09.11553+10	365	156 Warwick Street West Hobart, TAS, Australia	3		9	1
919	2020-05-20 23:04:09.117488+10	364	680 Summerleas Road Fern Tree, TAS, Australia	3		9	1
920	2020-05-20 23:04:09.119891+10	363	67 Hopkins Street Hobart, TAS, Australia	3		9	1
921	2020-05-20 23:04:09.122202+10	362	12 Box Hill Road Claremont, TAS, Australia	3		9	1
922	2020-05-20 23:04:09.124052+10	361	45 Hance Road Howrah, TAS, Australia	3		9	1
923	2020-05-20 23:04:09.125874+10	360	Level 2/57 King Street Sandy Bay, TAS, Australia	3		9	1
924	2020-05-20 23:04:09.127835+10	359	31 Gordon Street Sorell, TAS, Australia	3		9	1
925	2020-05-20 23:04:09.129756+10	358	7 Beach Road Snug, TAS, Australia	3		9	1
926	2020-05-20 23:04:09.131704+10	357	272 Clarence Street Howrah, TAS, Australia	3		9	1
927	2020-05-20 23:04:09.133663+10	356	48 Cambridge Road Bellerive, TAS, Australia	3		9	1
928	2020-05-20 23:04:09.135635+10	355	37 Wellington Street Swansea, TAS, Australia	3		9	1
929	2020-05-20 23:04:09.137632+10	354	430 Macquarie Street South Hobart, TAS, Australia	3		9	1
930	2020-05-20 23:04:09.139633+10	353	2 Churchill Avenue Sandy Bay, TAS, Australia	3		9	1
931	2020-05-20 23:04:09.141452+10	352	1614 Nubeena Road Nubeena, TAS, Australia	3		9	1
932	2020-05-20 23:04:09.143263+10	351	174 Brighton Road Brighton, TAS, Australia	3		9	1
933	2020-05-20 23:04:09.145095+10	350	3 Stoke Street New Town, TAS, Australia	3		9	1
934	2020-05-20 23:04:09.146909+10	349	127 New Town Road New Town, TAS, Australia	3		9	1
935	2020-05-20 23:04:09.148716+10	348	120 Augusta Road Lenah Valley, TAS, Australia	3		9	1
936	2020-05-20 23:04:09.150752+10	347	15 Franklin Street Lindisfarne, TAS, Australia	3		9	1
937	2020-05-20 23:04:09.152709+10	346	16/22 Bayfield Street Rosny Park, TAS, Australia	3		9	1
938	2020-05-20 23:04:09.154665+10	345	444 South Arm Road Lauderdale, TAS, Australia	3		9	1
939	2020-05-20 23:04:09.156579+10	344	57 Grosvenor Street Sandy Bay, TAS, Australia	3		9	1
940	2020-05-20 23:04:09.158436+10	343	Level 3/117 Collins Street Hobart, TAS, Australia	3		9	1
941	2020-05-20 23:04:09.160379+10	342	31 Lincoln Street Lindisfarne, TAS, Australia	3		9	1
942	2020-05-20 23:04:09.162489+10	341	3 Beach Road Sandy Bay, TAS, Australia	3		9	1
943	2020-05-20 23:04:09.164465+10	340	20 Shoobridge Street Glebe, TAS, Australia	3		9	1
944	2020-05-20 23:04:09.166737+10	339	346 Main Road Howrah, TAS, Australia	3		9	1
945	2020-05-20 23:04:09.168945+10	338	346 Main Road Glenorchy, TAS, Australia	3		9	1
946	2020-05-20 23:04:09.171244+10	337	186 Macquarie Street Hobart, TAS, Australia	3		9	1
947	2020-05-20 23:04:09.173569+10	336	67 Hopkins Street Moonah, TAS, Australia	3		9	1
948	2020-05-20 23:04:09.176256+10	335	252 Main Road Hobart, TAS, Australia	3		9	1
949	2020-05-20 23:04:09.178717+10	334	137 New Town Road New Town, TAS, Australia	3		9	1
950	2020-05-20 23:04:09.181192+10	333	9/11 John Street Kingston, TAS, Australia	3		9	1
951	2020-05-20 23:04:09.183583+10	332	46 Cambridge Road Bellerive, TAS, Australia	3		9	1
952	2020-05-20 23:04:09.186223+10	331	252 Main Road Battery Point, TAS, Australia	3		9	1
953	2020-05-20 23:04:09.188595+10	330	9/11 Hurst Street Bridgewater, TAS, Australia	3		9	1
954	2020-05-20 23:04:09.190754+10	329	7 Ross Avenue Sandy Bay, TAS, Australia	3		9	1
955	2020-05-20 23:04:09.192962+10	328	7 Ross Avenue Rosny Park, TAS, Australia	3		9	1
956	2020-05-20 23:04:09.195136+10	327	188 Collins Street Hobart, TAS, Australia	3		9	1
957	2020-05-20 23:04:09.197401+10	326	95 Augusta Road Lenah Valley, TAS, Australia	3		9	1
958	2020-05-20 23:04:09.199629+10	325	421 Main Road Glenorchy, TAS, Australia	3		9	1
959	2020-05-20 23:04:09.201958+10	324	112 Cambridge Road Bellerive, TAS, Australia	3		9	1
960	2020-05-20 23:04:09.20431+10	323	5/1 Stanton Place Cambridge, TAS, Australia	3		9	1
961	2020-05-20 23:04:09.206581+10	322	46 South Arm Road Claremont, TAS, Australia	3		9	1
962	2020-05-20 23:04:09.208684+10	321	5 John Street Kingston, TAS, Australia	3		9	1
963	2020-05-20 23:04:09.210747+10	320	166 Steele Street Hobart, TAS, Australia	3		9	1
964	2020-05-20 23:04:09.212728+10	319	27 Canning Street Devonport, TAS, Australia	3		9	1
965	2020-05-20 23:04:09.214581+10	318	27 Canning Street St Helens, TAS, Australia	3		9	1
966	2020-05-20 23:04:09.216449+10	317	27 Canning Street Launceston, TAS, Australia	3		9	1
967	2020-05-20 23:04:09.218444+10	316	Suite 3 - Hobart Private Hospital - 33 Argyle Street Hobart, TAS, Australia	3		9	1
968	2020-05-20 23:04:09.220413+10	315	Level 2/85 Collins Street Hobart, TAS, Australia	3		9	1
969	2020-05-20 23:04:09.222573+10	314	10 Joynton Street Lenah Valley, TAS, Australia	3		9	1
970	2020-05-20 23:04:09.224421+10	313	Suite 8 Ground Flr / 33 Argyle Street Hobart, TAS, Australia	3		9	1
971	2020-05-20 23:04:09.226297+10	312	12 Joynton Street Lenah Valley, TAS, Australia	3		9	1
972	2020-05-20 23:04:09.228199+10	311	166 Steele Street Devonport, TAS, Australia	3		9	1
973	2020-05-20 23:04:09.230035+10	310	1 Dowling Street Burnie, TAS, Australia	3		9	1
974	2020-05-20 23:04:09.232009+10	309	1 Dowling Street Launceston, TAS, Australia	3		9	1
975	2020-05-20 23:04:09.234006+10	308	Suite 4/170 George Street Launceston, TAS, Australia	3		9	1
976	2020-05-20 23:04:09.236312+10	307	Suite 1/170 George Street Launceston, TAS, Australia	3		9	1
977	2020-05-20 23:04:09.238322+10	306	Suite 2b / Level 2 - 34 Argyle Street Hobart, TAS, Australia	3		9	1
978	2020-05-20 23:04:09.240151+10	305	71 Federal Street Hobart, TAS, Australia	3		9	1
979	2020-05-20 23:04:09.24219+10	304	36 Collins Street Hobart, TAS, Australia	3		9	1
980	2020-05-20 23:04:09.24467+10	303	71 Davey Street Hobart, TAS, Australia	3		9	1
981	2020-05-20 23:04:09.247154+10	302	38 Thistle Street West South Launceston, TAS, Australia	3		9	1
982	2020-05-20 23:04:09.249369+10	301	4 Warneford Street Hobart, TAS, Australia	3		9	1
983	2020-05-20 23:04:09.251586+10	300	Level 4/11 High Street Launceston, TAS, Australia	3		9	1
984	2020-05-20 23:04:09.253905+10	299	168 St John Street Launceston, TAS, Australia	3		9	1
985	2020-05-20 23:04:09.256357+10	298	101 Canning Street Launceston, TAS, Australia	3		9	1
986	2020-05-20 23:04:09.258837+10	297	8 Collins Street Hobart, TAS, Australia	3		9	1
987	2020-05-20 23:04:09.261087+10	296	Suite 111/287 Charles Street Launceston, TAS, Australia	3		9	1
988	2020-05-20 23:04:09.263321+10	295	Suite 9/5 Frederick Street Launceston, TAS, Australia	3		9	1
989	2020-05-20 23:04:09.265521+10	294	2 Melville Street Burnie, TAS, Australia	3		9	1
990	2020-05-20 23:04:09.268007+10	293	155 George Street Launceston, TAS, Australia	3		9	1
991	2020-05-20 23:04:09.270417+10	292	137 Elphin Road Newstead, TAS, Australia	3		9	1
992	2020-05-20 23:04:09.272807+10	291	37b Brisbane Street Launceston, TAS, Australia	3		9	1
993	2020-05-20 23:04:09.275169+10	290	31 Chipmans Road Sandy Bay, TAS, Australia	3		9	1
994	2020-05-20 23:04:09.277471+10	289	10 Mount Stuart Road Mount Stuart, TAS, Australia	3		9	1
995	2020-05-20 23:04:09.279711+10	288	Level 4/33 Salamanca Place Hobart, TAS, Australia	3		9	1
996	2020-05-20 23:04:09.281985+10	287	295 Macquarie Street Hobart, TAS, Australia	3		9	1
997	2020-05-20 23:04:09.284175+10	286	54 Elphin Road Launceston, TAS, Australia	3		9	1
998	2020-05-20 23:04:09.286434+10	285	Level 2/34 Argyle Street Hobart, TAS, Australia	3		9	1
999	2020-05-20 23:04:09.288967+10	284	22 Liverpool Street Hobart, TAS, Australia	3		9	1
1000	2020-05-20 23:04:09.296069+10	283	322 Macquarie Street Hobart, TAS, Australia	3		9	1
1001	2020-05-20 23:04:09.298949+10	282	59 Augusta Road Launceston, TAS, Australia	3		9	1
1002	2020-05-20 23:04:09.301511+10	281	24 Canning Street Launceston, TAS, Australia	3		9	1
1003	2020-05-20 23:04:09.303916+10	280	59 Augusta Road Lenah Valley, TAS, Australia	3		9	1
1004	2020-05-20 23:04:09.306326+10	279	Suite 10/33 Argyle Street Hobart, TAS, Australia	3		9	1
1005	2020-05-20 23:04:09.30859+10	278	Suite 3/170 George Street Launceston, TAS, Australia	3		9	1
1006	2020-05-20 23:04:09.311188+10	277	16 Canning Street Launceston, TAS, Australia	3		9	1
1007	2020-05-20 23:04:09.315099+10	276	61 Oldaker Street South Hobart, TAS, Australia	3		9	1
1008	2020-05-20 23:04:09.317835+10	275	61 Oldaker Street Devonport, TAS, Australia	3		9	1
1009	2020-05-20 23:04:09.320165+10	274	30a Cascade Road South Hobart, TAS, Australia	3		9	1
1010	2020-05-20 23:04:09.322642+10	273	50 Elphin Road Burnie, TAS, Australia	3		9	1
1011	2020-05-20 23:04:09.325054+10	272	50 Elphin Road Launceston, TAS, Australia	3		9	1
1012	2020-05-20 23:04:09.327843+10	271	1/11 High Street Launceston, TAS, Australia	3		9	1
1013	2020-05-20 23:04:09.330255+10	270	4/23 Brisbane Street Launceston, TAS, Australia	3		9	1
1014	2020-05-20 23:04:09.332784+10	269	71 Federal Street South Hobart, TAS, Australia	3		9	1
1015	2020-05-20 23:04:09.335157+10	268	49 Augusta Road South Hobart, TAS, Australia	3		9	1
1016	2020-05-20 23:04:09.33765+10	267	71 Federal Street North Hobart, TAS, Australia	3		9	1
1017	2020-05-20 23:04:09.34026+10	266	Level 3/34 Argyle Street Lenah Valley, TAS, Australia	3		9	1
1018	2020-05-20 23:04:09.342574+10	265	268 Macquarie Street Hobart, TAS, Australia	3		9	1
1019	2020-05-20 23:04:09.345055+10	264	69 Davey Street Hobart, TAS, Australia	3		9	1
1020	2020-05-20 23:04:09.347643+10	263	Level 1 St Johns Hospital South Hobart, TAS, Australia	3		9	1
1021	2020-05-20 23:04:09.350527+10	262	4 Eastland Drive Ulverstone, TAS, Australia	3		9	1
1022	2020-05-20 23:04:09.353153+10	261	62 Oldaker Street Burnie, TAS, Australia	3		9	1
1023	2020-05-20 23:04:09.355634+10	260	62 Oldaker Street Devonport, TAS, Australia	3		9	1
1024	2020-05-20 23:04:09.358086+10	259	36 Thistle Street West Launceston, TAS, Australia	3		9	1
1025	2020-05-20 23:04:09.360447+10	258	262 Charles Street Launceston, TAS, Australia	3		9	1
1026	2020-05-20 23:04:09.362696+10	257	Shop 77 Channel Court Shopping Centre Kingston, TAS, Australia	3		9	1
1027	2020-05-20 23:04:09.365033+10	256	Grd Floor 2/4 Kirksway Place Hobart, TAS, Australia	3		9	1
1028	2020-05-20 23:04:09.367287+10	255	3/370 Main Road Glenorchy, TAS, Australia	3		9	1
1029	2020-05-20 23:04:09.369812+10	254	Suite 2 Ground Floor - 99 Bathurst Street Hobart, TAS, Australia	3		9	1
1030	2020-05-20 23:04:09.372184+10	253	80 Queen Street Sandy Bay, TAS, Australia	3		9	1
1031	2020-05-20 23:04:09.374474+10	252	182 Argyle Street Hobart, TAS, Australia	3		9	1
1032	2020-05-20 23:04:09.376746+10	251	11 Bayfield Street Rosny Park, TAS, Australia	3		9	1
1033	2020-05-20 23:04:09.379011+10	250	199 Campbell Street South Hobart, TAS, Australia	3		9	1
1034	2020-05-20 23:04:09.383899+10	249	199 Campbell Street North Hobart, TAS, Australia	3		9	1
1035	2020-05-20 23:04:09.386687+10	248	201 Davey Street Hobart, TAS, Australia	3		9	1
1036	2020-05-20 23:04:09.389262+10	247	14 Elizabeth Street Launceston, TAS, Australia	3		9	1
1037	2020-05-20 23:04:09.391675+10	246	21 Brickport Road Burnie, TAS, Australia	3		9	1
1038	2020-05-20 23:04:09.393994+10	245	19 Lyttleton Street East Launceston, TAS, Australia	3		9	1
1039	2020-05-20 23:04:09.396277+10	244	16 Clare Street New Town, TAS, Australia	3		9	1
1040	2020-05-20 23:04:09.398605+10	243	2 Melville Street Hobart, TAS, Australia	3		9	1
1041	2020-05-20 23:04:09.402209+10	242	Level 4/81 Elizabeth Street Hobart, TAS, Australia	3		9	1
1042	2020-05-20 23:04:09.404809+10	241	Level 1/2 Melville Street Hobart, TAS, Australia	3		9	1
1043	2020-05-20 23:04:09.407086+10	240	Shop 11/12 Cole Street Sorell, TAS, Australia	3		9	1
1044	2020-05-20 23:04:09.409412+10	239	1 Warneford Street South Hobart, TAS, Australia	3		9	1
1045	2020-05-20 23:04:09.411781+10	238	Level 1/2 Melville Street Hobart, TAS, Australia	3		9	1
1046	2020-05-20 23:04:09.414097+10	237	18 Main Road Lenah Valley, TAS, Australia	3		9	1
1047	2020-05-20 23:04:09.41632+10	236	18 Main Road Moonah, TAS, Australia	3		9	1
1048	2020-05-20 23:04:09.418584+10	235	438 Elizabeth Street Launceston, TAS, Australia	3		9	1
1049	2020-05-20 23:04:09.420888+10	234	438 Elizabeth Street Lenah Valley, TAS, Australia	3		9	1
1050	2020-05-20 23:04:09.423167+10	233	438 Elizabeth Street North Hobart, TAS, Australia	3		9	1
1051	2020-05-20 23:04:09.425405+10	232	Suite 6/7 High Street - Qv Building Hobart, TAS, Australia	3		9	1
1052	2020-05-20 23:04:09.427705+10	231	Suite 6/7 High Street - Qv Building East Launceston, TAS, Australia	3		9	1
1053	2020-05-20 23:04:09.430113+10	230	228 Relbia Road Launceston, TAS, Australia	3		9	1
1054	2020-05-20 23:04:09.432382+10	229	31 Chipmans Road Launceston, TAS, Australia	3		9	1
1055	2020-05-20 23:04:09.434812+10	228	31 Chipmans Road Lenah Valley, TAS, Australia	3		9	1
1056	2020-05-20 23:04:09.437116+10	227	Suite 7 / St Vincent's Hospital / 5 Frederick Street Launceston, TAS, Australia	3		9	1
1057	2020-05-20 23:04:09.439549+10	226	Level 3/34 Argyle Street Hobart, TAS, Australia	3		9	1
1058	2020-05-20 23:04:09.442049+10	225	Suite 2/170 George Street Launceston, TAS, Australia	3		9	1
1059	2020-05-20 23:04:09.444348+10	224	Suite 5/5 Frederick Street Launceston, TAS, Australia	3		9	1
1060	2020-05-20 23:04:09.446629+10	223	Level 3/25 Argyle Street Lenah Valley, TAS, Australia	3		9	1
1061	2020-05-20 23:04:09.448903+10	222	Level 3/25 Argyle Street Hobart, TAS, Australia	3		9	1
1062	2020-05-20 23:04:09.451243+10	221	30 Cascade Road South Hobart, TAS, Australia	3		9	1
1063	2020-05-20 23:04:09.453641+10	220	324 Macquarie Street Hobart, TAS, Australia	3		9	1
1064	2020-05-20 23:04:09.456377+10	219	324 Macquarie Street South Hobart, TAS, Australia	3		9	1
1065	2020-05-20 23:04:09.458675+10	218	5 Warneford Street South Hobart, TAS, Australia	3		9	1
1066	2020-05-20 23:04:09.460888+10	217	170 St John Street South Hobart, TAS, Australia	3		9	1
1067	2020-05-20 23:04:09.463059+10	216	170 St John Street Launceston, TAS, Australia	3		9	1
1068	2020-05-20 23:04:09.465107+10	215	11 Alexandra Road Ulverstone, TAS, Australia	3		9	1
1069	2020-05-20 23:04:09.46717+10	214	194 Wilson Street Burnie, TAS, Australia	3		9	1
1070	2020-05-20 23:04:09.469156+10	213	149 Davey Street Hobart, TAS, Australia	3		9	1
1071	2020-05-20 23:04:09.471179+10	212	77 Elphin Road Newstead, TAS, Australia	3		9	1
1072	2020-05-20 23:04:09.473167+10	211	Suite 5/33 Argyle Street Hobart, TAS, Australia	3		9	1
1073	2020-05-20 23:04:09.475292+10	210	Suite 112/287 Charles Street Launceston, TAS, Australia	3		9	1
1074	2020-05-20 23:04:09.477303+10	209	56 Patrick Street Hobart, TAS, Australia	3		9	1
1075	2020-05-20 23:04:09.479402+10	208	5 Frederick Street Launceston, TAS, Australia	3		9	1
1076	2020-05-20 23:04:09.481631+10	207	13 Wilson Street South Launceston, TAS, Australia	3		9	1
1077	2020-05-20 23:04:09.483921+10	206	1/7 High Street Launceston, TAS, Australia	3		9	1
1078	2020-05-20 23:04:09.48602+10	205	97 King Street Sandy Bay, TAS, Australia	3		9	1
1079	2020-05-20 23:04:09.488108+10	204	46 Elphin Road Launceston, TAS, Australia	3		9	1
1080	2020-05-20 23:04:09.490112+10	203	26 Lyttleton Street Hobart, TAS, Australia	3		9	1
1081	2020-05-20 23:04:09.492234+10	202	26 Lyttleton Street Launceston, TAS, Australia	3		9	1
1082	2020-05-20 23:04:09.494307+10	201	56 Elphin Road Launceston, TAS, Australia	3		9	1
1083	2020-05-20 23:04:09.496667+10	200	1/247 Wellington Street Launceston, TAS, Australia	3		9	1
1084	2020-05-20 23:04:09.49934+10	199	5 Innes Street Lenah Valley, TAS, Australia	3		9	1
1085	2020-05-20 23:04:09.501803+10	198	121 Hampden Road Hobart, TAS, Australia	3		9	1
1086	2020-05-20 23:04:09.504329+10	197	35a Queen Street Ulverstone, TAS, Australia	3		9	1
1087	2020-05-20 23:04:09.506711+10	196	30f Cascade Road Launceston, TAS, Australia	3		9	1
1088	2020-05-20 23:04:09.508947+10	195	30f Cascade Road South Hobart, TAS, Australia	3		9	1
1089	2020-05-20 23:04:09.511138+10	194	71 Frederick Street Launceston, TAS, Australia	3		9	1
1090	2020-05-20 23:04:09.513247+10	193	48 Liverpool Street Hobart, TAS, Australia	3		9	1
1091	2020-05-20 23:04:09.515401+10	192	49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
1092	2020-05-20 23:04:09.517588+10	191	Suite 110/287 Charles Street Cooee, TAS, Australia	3		9	1
1093	2020-05-20 23:04:09.519754+10	190	12 Frederick Street Launceston, TAS, Australia	3		9	1
1094	2020-05-20 23:04:09.521896+10	189	18 Clarence Street East Launceston, TAS, Australia	3		9	1
1095	2020-05-20 23:04:09.523999+10	188	9 Frederick Street Launceston, TAS, Australia	3		9	1
1096	2020-05-20 23:04:09.526143+10	187	12 Penquite Road Newstead, TAS, Australia	3		9	1
1097	2020-05-20 23:04:09.528539+10	186	Suite 110/287 Charles Street Launceston, TAS, Australia	3		9	1
1098	2020-05-20 23:04:09.53088+10	185	Suite 1/25 Argyle Street Hobart, TAS, Australia	3		9	1
1099	2020-05-20 23:04:09.533181+10	184	Grd Floor 49 Augusta Road Hobart, TAS, Australia	3		9	1
1100	2020-05-20 23:04:09.5355+10	183	Grd Floor 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
1101	2020-05-20 23:04:09.537874+10	182	36 Thistle Street Launceston, TAS, Australia	3		9	1
1102	2020-05-20 23:04:09.540221+10	181	Suite 11/5 Frederick Street Launceston, TAS, Australia	3		9	1
1103	2020-05-20 23:04:09.542618+10	180	1 Patrick Street Hobart, TAS, Australia	3		9	1
1104	2020-05-20 23:04:09.544845+10	179	Level 1/73 Federal Street North Hobart, TAS, Australia	3		9	1
1105	2020-05-20 23:04:09.547209+10	178	303 Macquarie Street Hobart, TAS, Australia	3		9	1
1106	2020-05-20 23:04:09.549446+10	177	31 Chipmans Road Hobart, TAS, Australia	3		9	1
1107	2020-05-20 23:04:09.55178+10	176	31 Chipmans Road Rokeby, TAS, Australia	3		9	1
1108	2020-05-20 23:04:09.554241+10	175	11 Steele Street Devonport, TAS, Australia	3		9	1
1109	2020-05-20 23:04:09.556475+10	174	47 King Edward Street Wynyard, TAS, Australia	3		9	1
1110	2020-05-20 23:04:09.558739+10	173	107 Main Road Ulverstone, TAS, Australia	3		9	1
1111	2020-05-20 23:04:09.561151+10	172	107 Main Road Penguin, TAS, Australia	3		9	1
1112	2020-05-20 23:04:09.563925+10	171	1 Henry Street Sheffield, TAS, Australia	3		9	1
1113	2020-05-20 23:04:09.566354+10	170	152 Wilson Street Burnie, TAS, Australia	3		9	1
1114	2020-05-20 23:04:09.56872+10	169	22 Kingsley Avenue Burnie, TAS, Australia	3		9	1
1115	2020-05-20 23:04:09.570954+10	168	68 Oldaker Street Currie, TAS, Australia	3		9	1
1116	2020-05-20 23:04:09.573172+10	167	120 Gilbert Street Smithton, TAS, Australia	3		9	1
1117	2020-05-20 23:04:09.575381+10	166	52/56 Bass Highway Burnie, TAS, Australia	3		9	1
1118	2020-05-20 23:04:09.577723+10	165	52/56 Bass Highway Cooee, TAS, Australia	3		9	1
1119	2020-05-20 23:04:09.580002+10	164	37 Jackson Street Wynyard, TAS, Australia	3		9	1
1120	2020-05-20 23:04:09.582129+10	163	1/3 Reeve Street Burnie, TAS, Australia	3		9	1
1121	2020-05-20 23:04:09.584253+10	162	12 Hale Street Burnie, TAS, Australia	3		9	1
1122	2020-05-20 23:04:09.586375+10	161	120 Gilbert Street Latrobe, TAS, Australia	3		9	1
1123	2020-05-20 23:04:09.588682+10	160	9 Oldaker Street Devonport, TAS, Australia	3		9	1
1124	2020-05-20 23:04:09.590869+10	159	22 King Edward Street Currie, TAS, Australia	3		9	1
1125	2020-05-20 23:04:09.592967+10	158	22 King Edward Street Burnie, TAS, Australia	3		9	1
1126	2020-05-20 23:04:09.594913+10	157	22 King Edward Street Ulverstone, TAS, Australia	3		9	1
1127	2020-05-20 23:04:09.59682+10	156	47 King Edward Street Zeehan, TAS, Australia	3		9	1
1128	2020-05-20 23:04:09.598732+10	155	47 King Edward Street Queenstown, TAS, Australia	3		9	1
1129	2020-05-20 23:04:09.60064+10	154	47 King Edward Street Somerset, TAS, Australia	3		9	1
1130	2020-05-20 23:04:09.602573+10	153	47 King Edward Street Sheffield, TAS, Australia	3		9	1
1131	2020-05-20 23:04:09.604537+10	152	47 King Edward Street Ulverstone, TAS, Australia	3		9	1
1132	2020-05-20 23:04:09.60642+10	151	68 Oldaker Street Burnie, TAS, Australia	3		9	1
1133	2020-05-20 23:04:09.608375+10	150	68 Oldaker Street Devonport, TAS, Australia	3		9	1
1134	2020-05-20 23:04:09.610289+10	149	35 Frederick Street Wynyard, TAS, Australia	3		9	1
1135	2020-05-20 23:04:09.612354+10	148	33 Falmouth Street Somerset, TAS, Australia	3		9	1
1136	2020-05-20 23:04:09.614584+10	147	22 Shearwater Boulevard Shearwater, TAS, Australia	3		9	1
1137	2020-05-20 23:04:09.616801+10	146	Suite 17 - Level 2 Holyman House / 52 Brisbane Street Launceston, TAS, Australia	3		9	1
1138	2020-05-20 23:04:09.619151+10	145	Level 2/63 St John Street Launceston, TAS, Australia	3		9	1
1139	2020-05-20 23:04:09.62155+10	144	4 Trotters Lane Mowbray, TAS, Australia	3		9	1
1140	2020-05-20 23:04:09.623682+10	143	4 Trotters Lane Campbell Town, TAS, Australia	3		9	1
1141	2020-05-20 23:04:09.626424+10	142	4 Trotters Lane Prospect, TAS, Australia	3		9	1
1142	2020-05-20 23:04:09.628374+10	141	8a High Street Launceston, TAS, Australia	3		9	1
1143	2020-05-20 23:04:09.630415+10	140	8a High Street Evandale, TAS, Australia	3		9	1
1144	2020-05-20 23:04:09.632561+10	139	86 Meander Valley Road Westbury, TAS, Australia	3		9	1
1145	2020-05-20 23:04:09.634835+10	138	5 Innes Street Launceston, TAS, Australia	3		9	1
1146	2020-05-20 23:04:09.637125+10	137	144 Weld Street Beaconsfield, TAS, Australia	3		9	1
1147	2020-05-20 23:04:09.639526+10	136	112 Emu Bay Road Deloraine, TAS, Australia	3		9	1
1148	2020-05-20 23:04:09.641735+10	135	337 St Leonards Road Launceston, TAS, Australia	3		9	1
1149	2020-05-20 23:04:09.643874+10	134	337 St Leonards Road St Leonards, TAS, Australia	3		9	1
1150	2020-05-20 23:04:09.645994+10	133	Level 1 / Launceston Health Hub - 247 Wellington Street Launceston, TAS, Australia	3		9	1
1151	2020-05-20 23:04:09.647949+10	132	169 Elphin Road Newstead, TAS, Australia	3		9	1
1152	2020-05-20 23:04:09.649979+10	131	Level 1/14 Wentworth Street Longford, TAS, Australia	3		9	1
1153	2020-05-20 23:04:09.652116+10	130	Level 1/14 Wentworth Street Newstead, TAS, Australia	3		9	1
1154	2020-05-20 23:04:09.654224+10	129	Level 2/39 Paterson St Whitemark, TAS, Australia	3		9	1
1155	2020-05-20 23:04:09.656242+10	128	Level 2/39 Paterson St Launceston, TAS, Australia	3		9	1
1156	2020-05-20 23:04:09.658125+10	127	64 Invermay Road Invermay, TAS, Australia	3		9	1
1157	2020-05-20 23:04:09.660007+10	126	67 Elphin Road Launceston, TAS, Australia	3		9	1
1158	2020-05-20 23:04:09.661923+10	125	67 Elphin Road East Launceston, TAS, Australia	3		9	1
1159	2020-05-20 23:04:09.663837+10	124	1/116 York Street Launceston, TAS, Australia	3		9	1
1160	2020-05-20 23:04:09.665743+10	123	124 Talbot Road Launceston, TAS, Australia	3		9	1
1161	2020-05-20 23:04:09.667678+10	122	124 Talbot Road South Launceston, TAS, Australia	3		9	1
1162	2020-05-20 23:04:09.669598+10	121	Level 2 Holyman House / 52 Brisbane Street Launceston, TAS, Australia	3		9	1
1163	2020-05-20 23:04:09.671466+10	120	Level 2/39 Paterson Street Launceston, TAS, Australia	3		9	1
1164	2020-05-20 23:04:09.673264+10	119	68 Paterson Street Launceston, TAS, Australia	3		9	1
1165	2020-05-20 23:04:09.675245+10	118	1 Elphin Road Launceston, TAS, Australia	3		9	1
1166	2020-05-20 23:04:09.677283+10	117	1 Windsor Drive Riverside, TAS, Australia	3		9	1
1167	2020-05-20 23:04:09.679305+10	116	Suite 21/76 York Street Launceston, TAS, Australia	3		9	1
1168	2020-05-20 23:04:09.681345+10	115	54 Canning Street Launceston, TAS, Australia	3		9	1
1169	2020-05-20 23:04:09.68342+10	114	455 Wellington Street South Launceston, TAS, Australia	3		9	1
1170	2020-05-20 23:04:09.685681+10	113	50a Frankland Street Launceston, TAS, Australia	3		9	1
1171	2020-05-20 23:04:09.687903+10	112	Level 1/233 Charles Street Launceston, TAS, Australia	3		9	1
1172	2020-05-20 23:04:09.689996+10	111	85 Main Road Launceston, TAS, Australia	3		9	1
1173	2020-05-20 23:04:09.691962+10	110	2 Recreation Street Kingston, TAS, Australia	3		9	1
1174	2020-05-20 23:04:09.693821+10	109	Shop 3/5 Station Lane Sorell, TAS, Australia	3		9	1
1175	2020-05-20 23:04:09.695683+10	108	12 Bridge Street Nubeena, TAS, Australia	3		9	1
1176	2020-05-20 23:04:09.697505+10	107	12 Bridge Street Richmond, TAS, Australia	3		9	1
1177	2020-05-20 23:04:09.69933+10	106	2 Edward Street Glebe, TAS, Australia	3		9	1
1178	2020-05-20 23:04:09.701458+10	105	71 Murray Street Sandy Bay, TAS, Australia	3		9	1
1179	2020-05-20 23:04:09.703417+10	104	71 Murray Street Glebe, TAS, Australia	3		9	1
1180	2020-05-20 23:04:09.705396+10	103	25 Davey Street Hobart, TAS, Australia	3		9	1
1181	2020-05-20 23:04:09.707189+10	102	30 Lincoln Street Lindisfarne, TAS, Australia	3		9	1
1182	2020-05-20 23:04:09.708968+10	101	270 Sandy Bay Road Sandy Bay, TAS, Australia	3		9	1
1183	2020-05-20 23:04:09.710807+10	100	254 Main Road Derwent Park, TAS, Australia	3		9	1
1184	2020-05-20 23:04:09.712739+10	99	10 Bayfield Street Rosny Park, TAS, Australia	3		9	1
1185	2020-05-20 23:04:09.714622+10	98	70 Sandy Bay Road New Town, TAS, Australia	3		9	1
1186	2020-05-20 23:04:09.716674+10	97	11 Burnett Street New Norfolk, TAS, Australia	3		9	1
1187	2020-05-20 23:04:09.718558+10	96	107 Newdegate Street West Hobart, TAS, Australia	3		9	1
1188	2020-05-20 23:04:09.72047+10	95	Suite 105/86 Murray Street Hobart, TAS, Australia	3		9	1
1189	2020-05-20 23:04:09.72243+10	94	Suite 105/86 Murray Street Hobart, TAS, Australia	3		9	1
1190	2020-05-20 23:04:09.724267+10	93	58 Melville Street Hobart, TAS, Australia	3		9	1
1191	2020-05-20 23:04:09.726214+10	92	85 Main Road North Hobart, TAS, Australia	3		9	1
1192	2020-05-20 23:04:09.72826+10	91	85 Main Road Huonville, TAS, Australia	3		9	1
1193	2020-05-20 23:04:09.730093+10	90	16 School Road Alonnah, TAS, Australia	3		9	1
1194	2020-05-20 23:04:09.73201+10	89	28 Franklin Street Richmond, TAS, Australia	3		9	1
1195	2020-05-20 23:04:09.734096+10	88	2 Gore Street South Hobart, TAS, Australia	3		9	1
1196	2020-05-20 23:04:09.736109+10	87	21 Bathurst Street Hobart, TAS, Australia	3		9	1
1197	2020-05-20 23:04:09.738202+10	86	Level 1/8 Brooke Street Huonville, TAS, Australia	3		9	1
1198	2020-05-20 23:04:09.740449+10	85	70 Sandy Bay Road Battery Point, TAS, Australia	3		9	1
1199	2020-05-20 23:04:09.742694+10	84	Level 2/38 Montpelier Retreat Hobart, TAS, Australia	3		9	1
1200	2020-05-20 23:04:09.744765+10	83	111 Montagu Street New Town, TAS, Australia	3		9	1
1201	2020-05-20 23:04:09.746694+10	82	44a Lincoln Street Lindisfarne, TAS, Australia	3		9	1
1202	2020-05-20 23:04:09.748554+10	81	26 Waverley Street Bellerive, TAS, Australia	3		9	1
1203	2020-05-20 23:04:09.750477+10	80	71 Murray Street Hobart, TAS, Australia	3		9	1
1204	2020-05-20 23:04:09.752502+10	79	32 Ormond Street Hobart, TAS, Australia	3		9	1
1205	2020-05-20 23:04:09.754567+10	78	32 Ormond Street Bellerive, TAS, Australia	3		9	1
1206	2020-05-20 23:04:09.756525+10	77	Suite 15b / L3 Galleria Building 33 Salamanca Place Hobart, TAS, Australia	3		9	1
1207	2020-05-20 23:04:09.758578+10	76	235 Carella Street Howrah, TAS, Australia	3		9	1
1208	2020-05-20 23:04:09.760706+10	75	202 Davey Street North Hobart, TAS, Australia	3		9	1
1209	2020-05-20 23:04:09.762907+10	74	25 Argyle Street Hobart, TAS, Australia	3		9	1
1210	2020-05-20 23:04:09.765099+10	73	93 Hill Street West Hobart, TAS, Australia	3		9	1
1211	2020-05-20 23:04:09.767451+10	72	205 Davey Street Hobart, TAS, Australia	3		9	1
1212	2020-05-20 23:04:09.770211+10	71	12 Sonning Cresent Sandy Bay, TAS, Australia	3		9	1
1213	2020-05-20 23:04:09.774358+10	70	Level 1/121 Collins Street Hobart, TAS, Australia	3		9	1
1214	2020-05-20 23:04:09.779757+10	69	Suite 9/2 Bayfield Street Hobart, TAS, Australia	3		9	1
1215	2020-05-20 23:04:09.783726+10	68	Suite 9/2 Bayfield Street Rosny, TAS, Australia	3		9	1
1216	2020-05-20 23:04:09.786638+10	67	Suite 7/326 Elizabeth St North Hobart, TAS, Australia	3		9	1
1217	2020-05-20 23:04:09.789528+10	66	6 Freeman Street Kingston, TAS, Australia	3		9	1
1218	2020-05-20 23:04:09.792328+10	65	86 Hampden Road Battery Point, TAS, Australia	3		9	1
1219	2020-05-20 23:04:09.795005+10	64	252 Main Road Derwent Park, TAS, Australia	3		9	1
1220	2020-05-20 23:04:09.79764+10	63	8 Thelma Drive Hobart, TAS, Australia	3		9	1
1221	2020-05-20 23:04:09.800215+10	62	63/83 Creek Road New Town, TAS, Australia	3		9	1
1222	2020-05-20 23:04:09.802861+10	61	73 Federal Street North Hobart, TAS, Australia	3		9	1
1223	2020-05-20 23:04:09.806566+10	60	277 Macquarie Street Kingston, TAS, Australia	3		9	1
1224	2020-05-20 23:04:09.809618+10	59	Level 2/38 Montpelier Retreat Battery Point, TAS, Australia	3		9	1
1225	2020-05-20 23:04:09.812785+10	58	202 Davey Street Hobart, TAS, Australia	3		9	1
1226	2020-05-20 23:04:09.816057+10	57	46 South Arm Road Rokeby, TAS, Australia	3		9	1
1227	2020-05-20 23:04:09.820785+10	56	160 New Town Road New Town, TAS, Australia	3		9	1
1228	2020-05-20 23:04:09.827099+10	55	Suite 6/340 Elizabeth Street North Hobart, TAS, Australia	3		9	1
1229	2020-05-20 23:04:09.830382+10	54	11 Gregory Street Sandy Bay, TAS, Australia	3		9	1
1230	2020-05-20 23:04:09.833144+10	53	Level 3 / 31-33 Cambridge Road Bellerive, TAS, Australia	3		9	1
1231	2020-05-20 23:04:09.835777+10	52	Shop 4/7 John Street Kingston, TAS, Australia	3		9	1
1232	2020-05-20 23:04:09.838586+10	51	436 Elizabeth Street North Hobart, TAS, Australia	3		9	1
1233	2020-05-20 23:04:09.84115+10	50	13 Ferguson Court Kingston, TAS, Australia	3		9	1
1234	2020-05-20 23:04:09.843797+10	49	49 Liverpool Street Hobart, TAS, Australia	3		9	1
1235	2020-05-20 23:04:09.846911+10	48	Level 1/14 Molle Street Hobart, TAS, Australia	3		9	1
1236	2020-05-20 23:04:09.849382+10	47	87 Princes Street Sandy Bay, TAS, Australia	3		9	1
1237	2020-05-20 23:04:09.851822+10	46	8/39 Murray Street Hobart, TAS, Australia	3		9	1
1238	2020-05-20 23:04:09.854459+10	45	2 Recreation Street Hobart, TAS, Australia	3		9	1
1239	2020-05-20 23:04:09.85702+10	44	2 Recreation Street Kingston Beach, TAS, Australia	3		9	1
1240	2020-05-20 23:04:09.859388+10	43	19 Arve Road Geeveston, TAS, Australia	3		9	1
1241	2020-05-20 23:04:09.861781+10	42	14 George Street Cygnet, TAS, Australia	3		9	1
1242	2020-05-20 23:04:09.864136+10	41	Floor 1/14 Molle Street Battery Point, TAS, Australia	3		9	1
1243	2020-05-20 23:04:09.866528+10	40	Floor 1/14 Molle Street Hobart, TAS, Australia	3		9	1
1244	2020-05-20 23:04:09.868843+10	39	159 Campbell Street Hobart, TAS, Australia	3		9	1
1245	2020-05-20 23:04:09.871238+10	38	Level 1/2 Churchill Avenue Sandy Bay, TAS, Australia	3		9	1
1246	2020-05-20 23:04:09.873499+10	37	277 Macquarie Street Rosny Park, TAS, Australia	3		9	1
1247	2020-05-20 23:04:09.875792+10	36	277 Macquarie Street Hobart, TAS, Australia	3		9	1
1248	2020-05-20 23:04:09.878076+10	35	81 Princes Street Sandy Bay, TAS, Australia	3		9	1
1249	2020-05-20 23:04:09.880323+10	34	16 Archer Street New Town, TAS, Australia	3		9	1
1250	2020-05-20 23:04:09.882565+10	33	Level 1/8 Brooke Street Hobart, TAS, Australia	3		9	1
1251	2020-05-20 23:04:09.884821+10	32	29 John Street Sorell, TAS, Australia	3		9	1
1252	2020-05-20 23:04:09.886967+10	31	29 John Street Bellerive, TAS, Australia	3		9	1
1253	2020-05-20 23:04:09.888948+10	30	29 John Street Kingston, TAS, Australia	3		9	1
1254	2020-05-20 23:04:09.890906+10	29	287 Macquarie Street Hobart, TAS, Australia	3		9	1
1255	2020-05-20 23:04:09.892862+10	28	16a Gregory Street Sandy Bay, TAS, Australia	3		9	1
1256	2020-05-20 23:22:12.640852+10	1314	Speech Pathology Tasmania - Devonport	3		7	1
1257	2020-05-20 23:22:12.645075+10	1313	Speech Pathology Tasmania - Burnie	3		7	1
1258	2020-05-20 23:22:12.647114+10	1312	Speech Pathology Cradle Coast	3		7	1
1259	2020-05-20 23:22:12.649078+10	1311	Talk A Lot Speech Pathology	3		7	1
1260	2020-05-20 23:22:12.651076+10	1310	Lynn Brooke Speech Pathology	3		7	1
1261	2020-05-20 23:22:12.653302+10	1309	Greer Maine - Speech Pathologist	3		7	1
1262	2020-05-20 23:22:12.655333+10	1308	Start Smart Tasmania	3		7	1
1263	2020-05-20 23:22:12.657414+10	1307	Step By Step Speech Pathology	3		7	1
1264	2020-05-20 23:22:12.659384+10	1306	Tanya Laugher Speech Pathologist - Howrah	3		7	1
1265	2020-05-20 23:22:12.661244+10	1305	The Therapy Network	3		7	1
1266	2020-05-20 23:22:12.663115+10	1304	David Emmett Speech Pathology	3		7	1
1267	2020-05-20 23:22:12.665084+10	1303	Nicole Cowles - Mobile Speech Pathology Service	3		7	1
1268	2020-05-20 23:22:12.666963+10	1302	Speech Pathology Tasmania - Hobart	3		7	1
1269	2020-05-20 23:22:12.669144+10	1301	Beswick Psychology Service	3		7	1
1270	2020-05-20 23:22:12.671041+10	1300	Footprints Podiatry - Ulverstone	3		7	1
1271	2020-05-20 23:22:12.673004+10	1299	Footprints Podiatry - Smithton	3		7	1
1272	2020-05-20 23:22:12.675256+10	1298	Footprints Podiatry - Cooee	3		7	1
1273	2020-05-20 23:22:12.677214+10	1297	Feet Sp Podiatry - Wynyard	3		7	1
1274	2020-05-20 23:22:12.679066+10	1296	Footprints Podiatry - Wynyard	3		7	1
1275	2020-05-20 23:22:12.680936+10	1295	Camdale Podiatry	3		7	1
1276	2020-05-20 23:22:12.682993+10	1294	Feet Sp Podiatry - Burnie	3		7	1
1277	2020-05-20 23:22:12.684865+10	1293	Dc Podiatry - Devonport	3		7	1
1278	2020-05-20 23:22:12.686923+10	1292	St Johns Foot Clinic - Sheffield	3		7	1
1279	2020-05-20 23:22:12.688802+10	1291	My Footdr - Devonport	3		7	1
1280	2020-05-20 23:22:12.690667+10	1290	David Mckay And Associates	3		7	1
1281	2020-05-20 23:22:12.692601+10	1289	Kings Meadows Podiatry	3		7	1
1282	2020-05-20 23:22:12.694462+10	1288	Lightfoot Podiatry	3		7	1
1283	2020-05-20 23:22:12.696325+10	1287	Foot Ankle And Rehabilitation Clinics	3		7	1
1284	2020-05-20 23:22:12.698233+10	1286	St Johns Foot Clinic - Westbury	3		7	1
1285	2020-05-20 23:22:12.700176+10	1285	St Johns Foot Clinic - Legana	3		7	1
1286	2020-05-20 23:22:12.702457+10	1284	St Johns Foot Clinic - Launceston	3		7	1
1287	2020-05-20 23:22:12.704656+10	1283	St Johns Foot Clinic - Evandale	3		7	1
1288	2020-05-20 23:22:12.706617+10	1282	Launceston Podiatry Clinic	3		7	1
1289	2020-05-20 23:22:12.708498+10	1281	Claremont Top To Toe Health	3		7	1
1290	2020-05-20 23:22:12.710488+10	1280	New Town Podiatry	3		7	1
1291	2020-05-20 23:22:12.712362+10	1279	Hobart Mobile Podiatry	3		7	1
1292	2020-05-20 23:22:12.714258+10	1278	Sam Leitch Podiatry	3		7	1
1293	2020-05-20 23:22:12.71615+10	1277	Eastern Shore Podiatry	3		7	1
1294	2020-05-20 23:22:12.718142+10	1276	Claremont Podiatry	3		7	1
1295	2020-05-20 23:22:12.72001+10	1275	Southern Tas Podiatry Clinic - Huonville	3		7	1
1296	2020-05-20 23:22:12.721853+10	1274	Southern Tas Podiatry Clinic - Franklin	3		7	1
1297	2020-05-20 23:22:12.723811+10	1273	Tasmanian Foot & Ankle Clinic	3		7	1
1298	2020-05-20 23:22:12.725678+10	1272	Healthy Step Hobart	3		7	1
1299	2020-05-20 23:22:12.727526+10	1271	Gregory Street Podiatry	3		7	1
1300	2020-05-20 23:22:12.729461+10	1270	Hobart Biomechanics Clinic	3		7	1
1301	2020-05-20 23:22:12.731424+10	1269	Kingston Podiatry	3		7	1
1302	2020-05-20 23:22:12.733691+10	1268	Foot Systems & Sport & Exercise Podiatry	3		7	1
1303	2020-05-20 23:22:12.735599+10	1267	Tim Pain Podiatry	3		7	1
1304	2020-05-20 23:22:12.737864+10	1266	My Footdr - Ispahan	3		7	1
1305	2020-05-20 23:22:12.73973+10	1265	Physiotherapy & Industrial Solutions P/l (dev)	3		7	1
1306	2020-05-20 23:22:12.741668+10	1264	Tim Squire Physiotherapy Services	3		7	1
1307	2020-05-20 23:22:12.74352+10	1263	Physiotas - Shearwater	3		7	1
1308	2020-05-20 23:22:12.745384+10	1262	King Island Physiotherapy	3		7	1
1309	2020-05-20 23:22:12.747257+10	1261	Wynyard Physiotherapy	3		7	1
1310	2020-05-20 23:22:12.749113+10	1260	Ulverstone Physiotherapy	3		7	1
1311	2020-05-20 23:22:12.750977+10	1259	Burnie Physiotherapy And Sports Injury Clinic	3		7	1
1312	2020-05-20 23:22:12.752985+10	1258	Bass Coast Physiotherapy - George Town	3		7	1
1313	2020-05-20 23:22:12.754872+10	1257	West Tamar Physiotherapy	3		7	1
1314	2020-05-20 23:22:12.756773+10	1256	Riverside Physiotherapy	3		7	1
1315	2020-05-20 23:22:12.758658+10	1255	Elphin Road Physiotherapy	3		7	1
1316	2020-05-20 23:22:12.760625+10	1254	Mowbray Physiotherapy Services	3		7	1
1317	2020-05-20 23:22:12.762666+10	1253	Launceston Physiotherapy Services	3		7	1
1318	2020-05-20 23:22:12.76472+10	1252	Launceston Respiratory Physiotherapy	3		7	1
1319	2020-05-20 23:22:12.766597+10	1251	Maree Webber Rehabilitation Service	3		7	1
1320	2020-05-20 23:22:12.76846+10	1250	Cygnet Physio	3		7	1
1321	2020-05-20 23:22:12.770706+10	1249	The Pelvic Studio	3		7	1
1322	2020-05-20 23:22:12.772564+10	1248	Back In Motion - Sorell Connect	3		7	1
1323	2020-05-20 23:22:12.774402+10	1247	Elke Rudolph-move With Ease	3		7	1
1324	2020-05-20 23:22:12.776342+10	1246	Bellerive Physiotherapy And Sports Centre	3		7	1
1325	2020-05-20 23:22:12.778227+10	1245	Derwent Valley Physiotherapy & Sports Injury Clinic	3		7	1
1326	2020-05-20 23:22:12.78007+10	1244	Back In Motion - Kingston	3		7	1
1327	2020-05-20 23:22:12.781969+10	1243	Andrea Ireland Physiotherapist	3		7	1
1328	2020-05-20 23:22:12.783816+10	1242	Leap Health Physio & Sports Injury Centre - Rosny	3		7	1
1329	2020-05-20 23:22:12.785868+10	1241	Clarence Joint Therapy	3		7	1
1330	2020-05-20 23:22:12.787789+10	1240	Frances Elmer-james Physiotherapy	3		7	1
1331	2020-05-20 23:22:12.789792+10	1239	Flex Health Therapy	3		7	1
1332	2020-05-20 23:22:12.791723+10	1238	Back In Motion - Rosny Park	3		7	1
1333	2020-05-20 23:22:12.793779+10	1237	Tas Sports Physio	3		7	1
1334	2020-05-20 23:22:12.796384+10	1236	Tasmanian Spine Service - Physiotherapy Clinic	3		7	1
1335	2020-05-20 23:22:12.80129+10	1235	Antill Physiotherapy	3		7	1
1336	2020-05-20 23:22:12.805803+10	1234	Huon Physiotherapy	3		7	1
1337	2020-05-20 23:22:12.808291+10	1233	Jane Barker Pelvic Floor Clinic	3		7	1
1338	2020-05-20 23:22:12.810636+10	1232	Jennifer Ball Physiotherapy	3		7	1
1339	2020-05-20 23:22:12.813042+10	1231	(pelvic Physio) Rachel Andrew Apa Continence & Women's Health Physio	3		7	1
1340	2020-05-20 23:22:12.815513+10	1230	Back In Motion - Hobart On Murray	3		7	1
1341	2020-05-20 23:22:12.817829+10	1229	Hobart Home Physio Group	3		7	1
1342	2020-05-20 23:22:12.820213+10	1228	Island Osteopathy	3		7	1
1343	2020-05-20 23:22:12.822576+10	1227	Freshwater Osteopathy - Newstead	3		7	1
1344	2020-05-20 23:22:12.825431+10	1226	Freshwater Osteopathy - George Town	3		7	1
1345	2020-05-20 23:22:12.828176+10	1225	Lotus Osteopathy	3		7	1
1346	2020-05-20 23:22:12.830628+10	1224	Bodyfocus	3		7	1
1347	2020-05-20 23:22:12.833088+10	1223	Derwent Osteopathy & Natural Health	3		7	1
1348	2020-05-20 23:22:12.83568+10	1222	Connections Health	3		7	1
1349	2020-05-20 23:22:12.840119+10	1221	Osteopic - Bellerive	3		7	1
1350	2020-05-20 23:22:12.843273+10	1220	Rockhopper	3		7	1
1351	2020-05-20 23:22:12.846506+10	1219	North Hobart Osteopathy	3		7	1
1352	2020-05-20 23:22:12.850473+10	1218	Hobart Natural Health Clinic	3		7	1
1353	2020-05-20 23:22:12.856043+10	1217	New Town Osteopathy	3		7	1
1354	2020-05-20 23:22:12.861671+10	1216	Macquarie Osteopaths	3		7	1
1355	2020-05-20 23:22:12.864565+10	1215	Hobart Osteopathic Clinic	3		7	1
1356	2020-05-20 23:22:12.8671+10	1214	Latitude Therapy - Linda Barker	3		7	1
1357	2020-05-20 23:22:12.869631+10	1213	Adapt Occupational Therapy	3		7	1
1358	2020-05-20 23:22:12.872146+10	1212	Launceston Occupational Therapy	3		7	1
1359	2020-05-20 23:22:12.874611+10	1211	Ipar Rehab - Launceston	3		7	1
1360	2020-05-20 23:22:12.876934+10	1210	Otrehabservices	3		7	1
1361	2020-05-20 23:22:12.879191+10	1209	Janne Cowan Occupational Therapy	3		7	1
1362	2020-05-20 23:22:12.881465+10	1208	Visability Children's Therapy Centre	3		7	1
1363	2020-05-20 23:22:12.883804+10	1207	Susie Potito Paediatric Physiotherapy	3		7	1
1364	2020-05-20 23:22:12.886161+10	1206	Health Potential - Mobile Occupational Therapy	3		7	1
1365	2020-05-20 23:22:12.888611+10	1205	Join The Dots Occupational Therapy	3		7	1
1366	2020-05-20 23:22:12.89088+10	1204	Independent Kids - Occupational Therapy	3		7	1
1367	2020-05-20 23:22:12.893174+10	1203	Occupational Therapy Tas	3		7	1
1368	2020-05-20 23:22:12.895356+10	1202	Grow Occupational Therapy	3		7	1
1369	2020-05-20 23:22:12.897515+10	1201	Respect Occupational Therapy	3		7	1
1370	2020-05-20 23:22:12.899504+10	1200	Tasmanian Community Clinic	3		7	1
1459	2020-05-20 23:22:13.077267+10	1111	Dr Merran Dyer Practice	3		7	1
1371	2020-05-20 23:22:12.90152+10	1199	Hazel Bucher Nurse Practitioner Consultancy	3		7	1
1372	2020-05-20 23:22:12.903483+10	1198	Wynyard Rehab And Exercise Physiology	3		7	1
1373	2020-05-20 23:22:12.905384+10	1197	Coastal Physiotherapy - Burnie	3		7	1
1374	2020-05-20 23:22:12.907299+10	1196	Resolve Physiotherapy And Industrial Health Solutions	3		7	1
1375	2020-05-20 23:22:12.909266+10	1195	Regain Exercise Physiology	3		7	1
1376	2020-05-20 23:22:12.911177+10	1194	Activate Life Rehabilitation	3		7	1
1377	2020-05-20 23:22:12.913134+10	1193	Physiotas - Devonport	3		7	1
1378	2020-05-20 23:22:12.915082+10	1192	The Training Fix	3		7	1
1379	2020-05-20 23:22:12.917114+10	1191	Care Forward - North	3		7	1
1380	2020-05-20 23:22:12.919124+10	1190	The Active Health Company - Launceston	3		7	1
1381	2020-05-20 23:22:12.921258+10	1189	Physiofit	3		7	1
1382	2020-05-20 23:22:12.923149+10	1188	Njf Wellness Centres - Launceston	3		7	1
1383	2020-05-20 23:22:12.925044+10	1187	Exercise Physiology Services	3		7	1
1384	2020-05-20 23:22:12.92693+10	1186	Bodysystem	3		7	1
1385	2020-05-20 23:22:12.928816+10	1185	Optimum Health Solutions Tasmania	3		7	1
1386	2020-05-20 23:22:12.930716+10	1184	All About Fitness	3		7	1
1387	2020-05-20 23:22:12.932621+10	1183	Hobart Exercise Physiology	3		7	1
1388	2020-05-20 23:22:12.934516+10	1182	Healthy Horizons	3		7	1
1389	2020-05-20 23:22:12.936458+10	1181	Allcare Physiotherapy	3		7	1
1390	2020-05-20 23:22:12.93838+10	1180	Leap Health Body Tech Physiotherapy - Salamanca	3		7	1
1391	2020-05-20 23:22:12.940278+10	1179	Leap Health - Hobart	3		7	1
1392	2020-05-20 23:22:12.942111+10	1178	Mobile Health And Rehab - Ymca Glenorchy	3		7	1
1393	2020-05-20 23:22:12.943946+10	1177	Care Forward - South	3		7	1
1394	2020-05-20 23:22:12.945947+10	1176	Diabetes Management Options - Glenorchy	3		7	1
1395	2020-05-20 23:22:12.947852+10	1175	Diabetes Management Options	3		7	1
1396	2020-05-20 23:22:12.94973+10	1174	Nourishing Solutions	3		7	1
1397	2020-05-20 23:22:12.951596+10	1173	Dr Diane Fletcher-way Dietitian	3		7	1
1398	2020-05-20 23:22:12.953538+10	1172	Stagg Nutrition & Dietetics	3		7	1
1399	2020-05-20 23:22:12.955409+10	1171	Engage Therapy	3		7	1
1400	2020-05-20 23:22:12.957359+10	1170	Nutrition Solutions Tasmania	3		7	1
1401	2020-05-20 23:22:12.959442+10	1169	Launceston Dietetics	3		7	1
1402	2020-05-20 23:22:12.961471+10	1168	Physiotas - Launceston	3		7	1
1403	2020-05-20 23:22:12.963852+10	1167	Revive Motional Health	3		7	1
1404	2020-05-20 23:22:12.966036+10	1166	Your Path To Health - Rosny Park	3		7	1
1405	2020-05-20 23:22:12.968202+10	1165	Your Path To Health - Derwent Park	3		7	1
1406	2020-05-20 23:22:12.970403+10	1164	Participate Tasmania (incorporated)	3		7	1
1407	2020-05-20 23:22:12.972771+10	1163	Leap Health Physiotherapy & Sports Injury Centre - Huonville	3		7	1
1408	2020-05-20 23:22:12.975015+10	1162	Leap Health Physio & Sports Injury Centre - New Town	3		7	1
1409	2020-05-20 23:22:12.977169+10	1161	Leap Health Kingston	3		7	1
1410	2020-05-20 23:22:12.979425+10	1160	Nourish Tasmania	3		7	1
1411	2020-05-20 23:22:12.981603+10	1159	The Devonport Chiropractor	3		7	1
1412	2020-05-20 23:22:12.983735+10	1158	Devonport Chiropractic	3		7	1
1413	2020-05-20 23:22:12.985898+10	1157	Island Chiropractic	3		7	1
1414	2020-05-20 23:22:12.988158+10	1156	Healing Chiropractic	3		7	1
1415	2020-05-20 23:22:12.990382+10	1155	Launceston Chiropractic	3		7	1
1416	2020-05-20 23:22:12.992519+10	1154	Strive Chiropractors	3		7	1
1417	2020-05-20 23:22:12.994579+10	1153	Equilibrium Chiropractic	3		7	1
1418	2020-05-20 23:22:12.99646+10	1152	Central Chiropractic Clinic	3		7	1
1419	2020-05-20 23:22:12.99842+10	1151	Macquarie Practice	3		7	1
1420	2020-05-20 23:22:13.000382+10	1150	Combining Chiropractic	3		7	1
1421	2020-05-20 23:22:13.002329+10	1149	Tamar Chiropractic - Hobart Road	3		7	1
1422	2020-05-20 23:22:13.00424+10	1148	Tamar Chiropractic - Emu Bay Road	3		7	1
1423	2020-05-20 23:22:13.006541+10	1147	Tamar Chiropractic - Elphin Road	3		7	1
1424	2020-05-20 23:22:13.009051+10	1146	Chiropractic Works	3		7	1
1425	2020-05-20 23:22:13.011095+10	1145	Chirolife Chiropractic - Kingston	3		7	1
1426	2020-05-20 23:22:13.013067+10	1144	New Town Chiropractic	3		7	1
1427	2020-05-20 23:22:13.015031+10	1143	Chirolife Chiropractic - Hobart	3		7	1
1428	2020-05-20 23:22:13.01705+10	1142	Clarence Chiropractic Centre	3		7	1
1429	2020-05-20 23:22:13.018961+10	1141	Outback Chiropractic	3		7	1
1430	2020-05-20 23:22:13.020967+10	1140	Chiropractic On Collins	3		7	1
1431	2020-05-20 23:22:13.023029+10	1139	Derwent Valley Chiropractic	3		7	1
1432	2020-05-20 23:22:13.024873+10	1138	Howrah Chiropractic Centre	3		7	1
1433	2020-05-20 23:22:13.026785+10	1137	Kingston Chiropractic Centre	3		7	1
1434	2020-05-20 23:22:13.028871+10	1136	Hobart Chiropractic Centre	3		7	1
1435	2020-05-20 23:22:13.030847+10	1135	Backinbalance	3		7	1
1436	2020-05-20 23:22:13.032729+10	1134	Huonville Chiropractic Centre	3		7	1
1437	2020-05-20 23:22:13.034673+10	1133	Audioclinic Tasmania - Devonport	3		7	1
1438	2020-05-20 23:22:13.036711+10	1132	Hearing Australia - Burnie	3		7	1
1439	2020-05-20 23:22:13.038652+10	1131	Hearing Australia - Devonport	3		7	1
1440	2020-05-20 23:22:13.040699+10	1130	Audioclinic Tasmania - Launceston	3		7	1
1441	2020-05-20 23:22:13.042659+10	1129	Ear Clinic	3		7	1
1442	2020-05-20 23:22:13.044661+10	1128	Eastern Audiology Services	3		7	1
1443	2020-05-20 23:22:13.046551+10	1127	Hearing Australia - Glenorchy	3		7	1
1444	2020-05-20 23:22:13.048442+10	1126	Audioclinic Tasmania - Rosny	3		7	1
1445	2020-05-20 23:22:13.050345+10	1125	Audioclinic Tasmania - Kingston	3		7	1
1446	2020-05-20 23:22:13.05226+10	1124	Audioclinic Tasmania - Hobart	3		7	1
1447	2020-05-20 23:22:13.054188+10	1123	Audioclinic Tasmania - Glenorchy	3		7	1
1448	2020-05-20 23:22:13.05613+10	1122	Steven Hooper Hearing - Care Statewide	3		7	1
1449	2020-05-20 23:22:13.05804+10	1121	Hearing Australia - Bellerive	3		7	1
1450	2020-05-20 23:22:13.059947+10	1120	Chad Wuest - Acupuncture	3		7	1
1451	2020-05-20 23:22:13.061889+10	1119	Eastern Shore Acupuncture	3		7	1
1452	2020-05-20 23:22:13.063751+10	1118	Golden Lotus Acupuncture	3		7	1
1453	2020-05-20 23:22:13.065638+10	1117	Aboriginal Health Service Devonport - Tulaminakali	3		7	1
1454	2020-05-20 23:22:13.067528+10	1116	Zeehan General Practice	3		7	1
1455	2020-05-20 23:22:13.069495+10	1115	Rosebery General Practice	3		7	1
1456	2020-05-20 23:22:13.071403+10	1114	One Care - Umina Park	3		7	1
1457	2020-05-20 23:22:13.073345+10	1113	Aboriginal Health Service Burnie - Pataway	3		7	1
1458	2020-05-20 23:22:13.075283+10	1112	Port Sorell Medical Centre	3		7	1
1460	2020-05-20 23:22:13.079252+10	1110	Tasmanian Skin Clinic	3		7	1
1461	2020-05-20 23:22:13.081174+10	1109	Patrick Street Clinic Penguin	3		7	1
1462	2020-05-20 23:22:13.083083+10	1108	Queenstown General Practice	3		7	1
1463	2020-05-20 23:22:13.085088+10	1107	Ochre Health Medical Centre - King Island	3		7	1
1464	2020-05-20 23:22:13.087178+10	1106	Devonport Smartclinics Family Medical Centres - Wenvoe St	3		7	1
1465	2020-05-20 23:22:13.089242+10	1105	Valley Road Medical Centre	3		7	1
1466	2020-05-20 23:22:13.091145+10	1104	East Devonport Medical Centre	3		7	1
1467	2020-05-20 23:22:13.093106+10	1103	Strahan General Practice	3		7	1
1468	2020-05-20 23:22:13.094998+10	1102	Bass House Surgery	3		7	1
1469	2020-05-20 23:22:13.096892+10	1101	Patrick Street Clinic	3		7	1
1470	2020-05-20 23:22:13.098809+10	1100	Wynyard Medical Centre	3		7	1
1471	2020-05-20 23:22:13.100849+10	1099	Smithton Medical Services	3		7	1
1472	2020-05-20 23:22:13.103076+10	1098	Family Planning Tasmania - Burnie	3		7	1
1473	2020-05-20 23:22:13.104994+10	1097	Burnie General Practice	3		7	1
1474	2020-05-20 23:22:13.106831+10	1096	City Medical Practice	3		7	1
1475	2020-05-20 23:22:13.108735+10	1095	Victoria Street Clinic - Ulverstone	3		7	1
1476	2020-05-20 23:22:13.110611+10	1094	Don Medical Clinic - Family Practice	3		7	1
1477	2020-05-20 23:22:13.112543+10	1093	Latrobe Family Medical Practice	3		7	1
1478	2020-05-20 23:22:13.114455+10	1092	Launceston Aged Care Associates	3		7	1
1479	2020-05-20 23:22:13.116321+10	1091	Esk Family Health Care Centre	3		7	1
1480	2020-05-20 23:22:13.118284+10	1090	First Point Healthcare	3		7	1
1481	2020-05-20 23:22:13.120164+10	1089	General Practice (dr Kathy Maxwell)	3		7	1
1482	2020-05-20 23:22:13.122042+10	1088	Beaconsfield Medical Service	3		7	1
1483	2020-05-20 23:22:13.124054+10	1087	St Marys General Practice	3		7	1
1484	2020-05-20 23:22:13.125906+10	1086	Ravenswood Medical Centre	3		7	1
1485	2020-05-20 23:22:13.127771+10	1085	Legana Medical Centre	3		7	1
1486	2020-05-20 23:22:13.12982+10	1084	Mowbray Medical	3		7	1
1487	2020-05-20 23:22:13.131699+10	1083	Bicheno General Practice	3		7	1
1488	2020-05-20 23:22:13.133545+10	1082	Campbell Town Surgery	3		7	1
1489	2020-05-20 23:22:13.135397+10	1081	Northern Midlands Medical Services - Perth	3		7	1
1490	2020-05-20 23:22:13.137263+10	1080	Flinders Island Aboriginal Association Inc (fiaai)	3		7	1
1491	2020-05-20 23:22:13.139123+10	1079	Summerdale Medical Centre	3		7	1
1492	2020-05-20 23:22:13.141081+10	1078	Windmill Hill Medical	3		7	1
1493	2020-05-20 23:22:13.143106+10	1077	Lilydale Family Health Care	3		7	1
1494	2020-05-20 23:22:13.145154+10	1076	High Street Family Practice	3		7	1
1495	2020-05-20 23:22:13.147016+10	1075	Ochre Medical Centre Flinders Island	3		7	1
1496	2020-05-20 23:22:13.148976+10	1074	Civic Square Surgery	3		7	1
1497	2020-05-20 23:22:13.150829+10	1073	Exeter Medical Centre	3		7	1
1498	2020-05-20 23:22:13.153317+10	1072	Westbury Medical Centre	3		7	1
1499	2020-05-20 23:22:13.155244+10	1071	Deloraine Medical Centre	3		7	1
1500	2020-05-20 23:22:13.157118+10	1070	Northern Midlands Medical Services - Longford	3		7	1
1501	2020-05-20 23:22:13.159069+10	1069	Ochre Medical Centre Bridport	3		7	1
1502	2020-05-20 23:22:13.161226+10	1068	Family Planning Tasmania - Launceston	3		7	1
1503	2020-05-20 23:22:13.163221+10	1067	Family Doctor Service	3		7	1
1504	2020-05-20 23:22:13.16516+10	1066	Newstead Medical	3		7	1
1505	2020-05-20 23:22:13.167015+10	1065	Kings Meadows Medical Centre	3		7	1
1506	2020-05-20 23:22:13.169025+10	1064	Tamar Skin Cancer Clinic	3		7	1
1507	2020-05-20 23:22:13.172126+10	1063	Norwood Medical Centre	3		7	1
1508	2020-05-20 23:22:13.174066+10	1062	George Town Medical Centre	3		7	1
1509	2020-05-20 23:22:13.176029+10	1061	Northern Suburbs Medical Service	3		7	1
1510	2020-05-20 23:22:13.178023+10	1060	National Home Doctor Service - Launceston	3		7	1
1511	2020-05-20 23:22:13.179879+10	1059	Ochre Medical Centre Scottsdale	3		7	1
1512	2020-05-20 23:22:13.181778+10	1058	Launceston Medical Centre	3		7	1
1513	2020-05-20 23:22:13.183723+10	1057	Aboriginal Health Service Launceston	3		7	1
1514	2020-05-20 23:22:13.185764+10	1056	Ochre Medical Centre - St Helens	3		7	1
1515	2020-05-20 23:22:13.187784+10	1055	Medical Acupuncture Tasmania	3		7	1
1516	2020-05-20 23:22:13.189685+10	1054	North Hobart Medical Centre	3		7	1
1517	2020-05-20 23:22:13.191694+10	1053	Central Highlands General Practice	3		7	1
1518	2020-05-20 23:22:13.193826+10	1052	Dr Monica Mylek-simpson - Private General Practice	3		7	1
1519	2020-05-20 23:22:13.195676+10	1051	Bupa Aged Care	3		7	1
1520	2020-05-20 23:22:13.197599+10	1050	Moreton Group Medical Services	3		7	1
1521	2020-05-20 23:22:13.199507+10	1049	Macquarie Medical	3		7	1
1522	2020-05-20 23:22:13.201372+10	1048	Bridge Street Surgery Richmond	3		7	1
1523	2020-05-20 23:22:13.203528+10	1047	Connewarre Clinic	3		7	1
1524	2020-05-20 23:22:13.205359+10	1046	Cygnet Family Practice	3		7	1
1525	2020-05-20 23:22:13.207417+10	1045	Huon Doctors Surgery	3		7	1
1526	2020-05-20 23:22:13.209367+10	1044	Dr Lad's Surgery	3		7	1
1527	2020-05-20 23:22:13.211257+10	1043	Dover Medical Centre	3		7	1
1528	2020-05-20 23:22:13.213153+10	1042	O'briens Bridge Medical Centre	3		7	1
1529	2020-05-20 23:22:13.214991+10	1041	Moonah Health Centre	3		7	1
1530	2020-05-20 23:22:13.216955+10	1040	General Practice Plus - Kingston Plaza	3		7	1
1531	2020-05-20 23:22:13.218947+10	1039	Dodges Ferry Medical	3		7	1
1532	2020-05-20 23:22:13.220945+10	1038	Respect Aged Care - Wellington Views	3		7	1
1533	2020-05-20 23:22:13.22278+10	1037	Hobart Aged Care	3		7	1
1534	2020-05-20 23:22:13.224774+10	1036	General Practice Plus - Gregory Street	3		7	1
1535	2020-05-20 23:22:13.226761+10	1035	Ht Health Group	3		7	1
1536	2020-05-20 23:22:13.228637+10	1034	Risdon Vale Family Practice	3		7	1
1537	2020-05-20 23:22:13.230512+10	1033	Barrack Street Practice	3		7	1
1538	2020-05-20 23:22:13.232518+10	1032	Brighton Doctors Surgery	3		7	1
1539	2020-05-20 23:22:13.234386+10	1031	Spring Bay Medical Centre	3		7	1
1540	2020-05-20 23:22:13.23642+10	1030	Bothwell Doctors	3		7	1
1541	2020-05-20 23:22:13.238619+10	1029	After Hours Doctor Hobart	3		7	1
1542	2020-05-20 23:22:13.24062+10	1028	General Practice (dr Roger Cox)	3		7	1
1543	2020-05-20 23:22:13.242599+10	1027	Anubha Anti-ageing Medicine	3		7	1
1544	2020-05-20 23:22:13.244558+10	1026	Call The Doctor - Afterhours Home Visiting Service	3		7	1
1545	2020-05-20 23:22:13.246437+10	1025	Claremont Medical Centre	3		7	1
1546	2020-05-20 23:22:13.248379+10	1024	Glebe Hill Family Practice	3		7	1
1547	2020-05-20 23:22:13.250263+10	1023	Sandy Bay Afterhours	3		7	1
1548	2020-05-20 23:22:13.252353+10	1022	Sorell Doctors Surgery	3		7	1
1549	2020-05-20 23:22:13.255153+10	1021	Snug Medical Centre	3		7	1
1550	2020-05-20 23:22:13.257062+10	1020	Health Change	3		7	1
1551	2020-05-20 23:22:13.258972+10	1019	Eastern Shore Doctors - Bellerive	3		7	1
1552	2020-05-20 23:22:13.261086+10	1018	Swansea General Practice	3		7	1
1553	2020-05-20 23:22:13.263027+10	1017	General Practice Plus - Mountain Retreat	3		7	1
1554	2020-05-20 23:22:13.264873+10	1016	Churchill Avenue Medical Centre	3		7	1
1555	2020-05-20 23:22:13.266953+10	1015	Tasman Medical Practice	3		7	1
1556	2020-05-20 23:22:13.268818+10	1014	Brighton Regional Doctors	3		7	1
1557	2020-05-20 23:22:13.270703+10	1013	General Practice Plus - Stoke Street	3		7	1
1558	2020-05-20 23:22:13.27257+10	1012	New Town Central Medical Centre	3		7	1
1559	2020-05-20 23:22:13.274531+10	1011	Augusta Road Medical Centre	3		7	1
1560	2020-05-20 23:22:13.276463+10	1010	Franklin Street Clinic	3		7	1
1561	2020-05-20 23:22:13.278388+10	1009	Clarence Gp Super Clinic	3		7	1
1562	2020-05-20 23:22:13.280345+10	1008	Eastern Shore Doctors - Lauderdale	3		7	1
1563	2020-05-20 23:22:13.282361+10	1007	Grosvenor Street General Practice	3		7	1
1564	2020-05-20 23:22:13.284296+10	1006	Collins Street General Practice	3		7	1
1565	2020-05-20 23:22:13.286183+10	1005	Eastern Shore Medical Centre	3		7	1
1566	2020-05-20 23:22:13.288105+10	1004	Long Beach Medical Centre	3		7	1
1567	2020-05-20 23:22:13.289895+10	1003	General Practice (dr Ilona Bewsher)	3		7	1
1568	2020-05-20 23:22:13.291809+10	1002	Eastern Shore Doctors - Shoreline	3		7	1
1569	2020-05-20 23:22:13.293813+10	1001	Glenorchy Medical Centre	3		7	1
1570	2020-05-20 23:22:13.295826+10	1000	Hobart Acupuncture	3		7	1
1571	2020-05-20 23:22:13.297748+10	999	Hopkins Street Clinic	3		7	1
1572	2020-05-20 23:22:13.299646+10	998	Argyle Medical	3		7	1
1573	2020-05-20 23:22:13.301634+10	997	New Town Skin Cancer And Repair Clinic	3		7	1
1574	2020-05-20 23:22:13.304076+10	996	Kingborough Medical Centre	3		7	1
1575	2020-05-20 23:22:13.306016+10	995	Hobart Skin Cancer Clinic	3		7	1
1576	2020-05-20 23:22:13.307898+10	994	Battery Point Medical	3		7	1
1577	2020-05-20 23:22:13.309809+10	993	Greenpoint Medical Services	3		7	1
1578	2020-05-20 23:22:13.311887+10	992	Sandy Bay Doctors	3		7	1
1579	2020-05-20 23:22:13.313982+10	991	Rosny Doctors And Travel Clinic	3		7	1
1580	2020-05-20 23:22:13.315889+10	990	City Doctors & Travel Clinic	3		7	1
1581	2020-05-20 23:22:13.317881+10	989	Lenah Valley Medical Centre	3		7	1
1582	2020-05-20 23:22:13.320064+10	988	Family Planning Tasmania - Glenorchy	3		7	1
1583	2020-05-20 23:22:13.321989+10	987	Bellerive Doctors	3		7	1
1584	2020-05-20 23:22:13.323958+10	986	Cambridge Park Medical Centre	3		7	1
1585	2020-05-20 23:22:13.325881+10	985	Claremont Village Medical Centre	3		7	1
1586	2020-05-20 23:22:13.327873+10	984	John Street Medical Centre	3		7	1
1587	2020-05-20 23:22:13.329806+10	983	Dr Catherine (cathy) Thoo Private Specialist	3		7	1
1588	2020-05-20 23:22:13.331927+10	982	Mr David Cottier Private Specialist - Launceston	3		7	1
1589	2020-05-20 23:22:13.334158+10	981	North Tas Urology - Devonport	3		7	1
1590	2020-05-20 23:22:13.336478+10	980	North Tas Urology - St Helens	3		7	1
1591	2020-05-20 23:22:13.338659+10	979	North Tas Urology - Launceston	3		7	1
1592	2020-05-20 23:22:13.340789+10	978	Mr Frank Redwig Private Medical Specialist	3		7	1
1593	2020-05-20 23:22:13.343045+10	977	Mr Fadi Nuwayhid Private Specialist	3		7	1
1594	2020-05-20 23:22:13.34525+10	976	Mr Ian Middleton Private Specialist	3		7	1
1595	2020-05-20 23:22:13.347423+10	975	Urology Hobart	3		7	1
1596	2020-05-20 23:22:13.349608+10	974	Mr Anthony Eaton Private Specialist	3		7	1
1597	2020-05-20 23:22:13.351784+10	973	Steele Street Clinic - Private Hospital	3		7	1
1598	2020-05-20 23:22:13.353973+10	972	Mr Sven Anders Private Specialist	3		7	1
1599	2020-05-20 23:22:13.356132+10	971	Miss Amanda Young Private Specialist	3		7	1
1600	2020-05-20 23:22:13.35821+10	970	Dr Girish Pande Private Specialist	3		7	1
1601	2020-05-20 23:22:13.360321+10	969	Dr Fiona Lee Private Specialist	3		7	1
1602	2020-05-20 23:22:13.362439+10	968	Dr Jacqui Slater Private Specialist	3		7	1
1603	2020-05-20 23:22:13.364612+10	967	Mr Tony Patiniotis Private Specialist	3		7	1
1604	2020-05-20 23:22:13.366689+10	966	Mr David Finkelde Private Specialist	3		7	1
1605	2020-05-20 23:22:13.36872+10	965	Tasmania Anti Obesity Surgery Centre	3		7	1
1606	2020-05-20 23:22:13.370834+10	964	Sports Medicine Practice	3		7	1
1607	2020-05-20 23:22:13.372777+10	963	Lionheart Rheumatology	3		7	1
1608	2020-05-20 23:22:13.374632+10	962	Dr Stewart Graham Private Specialist	3		7	1
1609	2020-05-20 23:22:13.376575+10	961	Rheumatology Tasmania	3		7	1
1610	2020-05-20 23:22:13.378408+10	960	Tas Ivf - Launceston Clinic	3		7	1
1611	2020-05-20 23:22:13.380214+10	959	Dr James Markos Private Specialist	3		7	1
1612	2020-05-20 23:22:13.382144+10	958	Tasmanian Lung Service - Launceston	3		7	1
1613	2020-05-20 23:22:13.384286+10	957	Dr Rajesh Raj Private Specialist	3		7	1
1614	2020-05-20 23:22:13.386383+10	956	Dr M C Mathew Private Specialist - Brickfields Specialist Group	3		7	1
1615	2020-05-20 23:22:13.388331+10	955	Clin Assoc Prof Mark Slatyer Private Specialist	3		7	1
1616	2020-05-20 23:22:13.390426+10	954	Precision Brain Spine And Pain Centre	3		7	1
1617	2020-05-20 23:22:13.392555+10	953	Dr Mark Bell Private Specialist - Launceston	3		7	1
1618	2020-05-20 23:22:13.394751+10	952	Dr Mark Bell Private Specialist - Burnie	3		7	1
1619	2020-05-20 23:22:13.396915+10	951	Dr Eric Ratcliff Private Specialist	3		7	1
1620	2020-05-20 23:22:13.399042+10	950	Dr George (robert) Hyde Private Specialist	3		7	1
1621	2020-05-20 23:22:13.401102+10	949	The Swallows Centre	3		7	1
1622	2020-05-20 23:22:13.403108+10	948	Kirkman Psychiatry And Telehealth Practice	3		7	1
1623	2020-05-20 23:22:13.405016+10	947	Telepsychiatrist Online	3		7	1
1624	2020-05-20 23:22:13.406987+10	946	Dr Natalie Glinka Private Specialist	3		7	1
1625	2020-05-20 23:22:13.408847+10	945	The Hobart Clinic - Hobart	3		7	1
1626	2020-05-20 23:22:13.41069+10	944	Dr Stephane Auchincloss Private Specialist	3		7	1
1627	2020-05-20 23:22:13.41254+10	943	Mr Simon Thomson And Associates	3		7	1
1628	2020-05-20 23:22:13.414438+10	942	Launceston Plastic And Cosmetic Surgery Unit	3		7	1
1629	2020-05-20 23:22:13.416307+10	941	Hobart Institute Of Plastic Surgery	3		7	1
1630	2020-05-20 23:22:13.418233+10	940	Centre For Hand Wrist Plastic Surgery	3		7	1
1631	2020-05-20 23:22:13.42022+10	939	Macquarie Plastic Surgery	3		7	1
1632	2020-05-20 23:22:13.422131+10	938	Dr Michael Jackson - Private Specialist	3		7	1
1633	2020-05-20 23:22:13.424012+10	937	Dr Mark Pascoe Private Specialist	3		7	1
1634	2020-05-20 23:22:13.42606+10	936	Dr Megan Corp - Private Specialist	3		7	1
1635	2020-05-20 23:22:13.428224+10	935	Dr Christopher Bailey Private Specialist	3		7	1
1636	2020-05-20 23:22:13.430566+10	934	Hobart Paediatric Group	3		7	1
1637	2020-05-20 23:22:13.433154+10	933	Dr Paul Sillifant Private Specialist	3		7	1
1638	2020-05-20 23:22:13.435544+10	932	Mr Daniel Player Private Specialist - Launceston	3		7	1
1639	2020-05-20 23:22:13.437873+10	931	Tasmanian Oral Maxillofacial And Implant Surgery - Launceston	3		7	1
1640	2020-05-20 23:22:13.440086+10	930	Tasmanian Oral Maxillofacial And Implant Surgery - Hobart	3		7	1
1641	2020-05-20 23:22:13.442269+10	929	Tasmanian Oral Maxillofacial And Implant Surgery - Devonport	3		7	1
1642	2020-05-20 23:22:13.444509+10	928	Hobart Specialist Dental Centre	3		7	1
1643	2020-05-20 23:22:13.446718+10	927	Russell Furzer Orthopaedic Pty Ltd	3		7	1
1644	2020-05-20 23:22:13.448855+10	926	Mr Peter Van Winden Private Specialist	3		7	1
1645	2020-05-20 23:22:13.450923+10	925	Mr Gary Fettke Private Specialist	3		7	1
1646	2020-05-20 23:22:13.45293+10	924	Dr Berni Einoder Private Specialist	3		7	1
1647	2020-05-20 23:22:13.454956+10	923	Mr Roger Butorac Private Specialist	3		7	1
1648	2020-05-20 23:22:13.456829+10	922	Dr Matthew Wilkinson - Private Specialist	3		7	1
1649	2020-05-20 23:22:13.458733+10	921	Wellington Orthopaedics	3		7	1
1650	2020-05-20 23:22:13.46065+10	920	Mr John Mills Private Specialist	3		7	1
1651	2020-05-20 23:22:13.462538+10	919	Mr Richard Jamieson Private Specialist	3		7	1
1652	2020-05-20 23:22:13.464757+10	918	Mr Greg Harvey Private Specialist	3		7	1
1653	2020-05-20 23:22:13.466875+10	917	Mr Paul Einoder Private Specialist	3		7	1
1654	2020-05-20 23:22:13.468844+10	916	Mr Miles Callahan Private Specialist	3		7	1
1655	2020-05-20 23:22:13.47076+10	915	Launceston Eye Institute - Ulverstone	3		7	1
1656	2020-05-20 23:22:13.472673+10	914	Dr Michael Haybittel Private Specialist	3		7	1
1657	2020-05-20 23:22:13.474552+10	913	Devonport Eye Hospital	3		7	1
1658	2020-05-20 23:22:13.476603+10	912	Launceston Eye Institute	3		7	1
1659	2020-05-20 23:22:13.478535+10	911	Launceston Eye Doctors	3		7	1
1660	2020-05-20 23:22:13.480393+10	910	Tasmanian Eye Clinics - Kingston	3		7	1
1661	2020-05-20 23:22:13.482304+10	909	Tasmanian Eye Clinics - Hobart	3		7	1
1662	2020-05-20 23:22:13.484191+10	908	Tasmanian Eye Clinics - Glenorchy	3		7	1
1663	2020-05-20 23:22:13.486312+10	907	Derwent Eye Specialists	3		7	1
1664	2020-05-20 23:22:13.488309+10	906	Precision Eye Clinic	3		7	1
1665	2020-05-20 23:22:13.490326+10	905	Hobart Eye Surgeons - Hobart	3		7	1
1666	2020-05-20 23:22:13.492454+10	904	Hobart Eye Surgeons - Eastern Shore	3		7	1
1667	2020-05-20 23:22:13.49462+10	903	Dr Ian Byard Private Specialist	3		7	1
1668	2020-05-20 23:22:13.496779+10	902	Tasoem	3		7	1
1669	2020-05-20 23:22:13.499936+10	901	Hobart Occupational Medicine	3		7	1
1670	2020-05-20 23:22:13.502387+10	900	Dr Andreas Ernst Private Specialist	3		7	1
1671	2020-05-20 23:22:13.504834+10	899	Dr Kim Dobromilsky - Private Specialist	3		7	1
1672	2020-05-20 23:22:13.50706+10	898	North West Private Hospital	3		7	1
1673	2020-05-20 23:22:13.509628+10	897	Tasgynae Obstetricians & Gynaecologists	3		7	1
1674	2020-05-20 23:22:13.511789+10	896	Launceston Obstetrics And Gynaecology	3		7	1
1675	2020-05-20 23:22:13.513922+10	895	Dr Steve Sonneveld Private Specialist	3		7	1
1676	2020-05-20 23:22:13.516254+10	894	Tas Ivf - Hobart Clinic	3		7	1
1677	2020-05-20 23:22:13.518503+10	893	Fertility Tasmania	3		7	1
1678	2020-05-20 23:22:13.520606+10	892	The Tabbot Foundation	3		7	1
1679	2020-05-20 23:22:13.523621+10	891	Sorell Family Practice	3		7	1
1680	2020-05-20 23:22:13.525775+10	890	Dr Brett Daniels Private Specialist	3		7	1
1681	2020-05-20 23:22:13.527736+10	889	Eternal Women's Health	3		7	1
1682	2020-05-20 23:22:13.529568+10	888	Hobart Obgyn	3		7	1
1683	2020-05-20 23:22:13.531389+10	887	Women's Imaging	3		7	1
1684	2020-05-20 23:22:13.533211+10	886	Tasmanian Spine Service - Lenah Valley	3		7	1
1685	2020-05-20 23:22:13.535033+10	885	Tasmanian Spine Service - Launceston	3		7	1
1686	2020-05-20 23:22:13.537145+10	884	Neurosurgery Tasmania	3		7	1
1687	2020-05-20 23:22:13.539049+10	883	Calvary Consulting Suites - Practice 1	3		7	1
1688	2020-05-20 23:22:13.54094+10	882	Dr Andrew Evans Private Specialist	3		7	1
1689	2020-05-20 23:22:13.542852+10	881	Hobart Women's Specialists	3		7	1
1690	2020-05-20 23:22:13.544736+10	880	Regal Elderly Medicine	3		7	1
1691	2020-05-20 23:22:13.546568+10	879	Launceston Memory Centre	3		7	1
1692	2020-05-20 23:22:13.548446+10	878	Dr Krishna Kalpurath - Private Specialist Geriatrician	3		7	1
1693	2020-05-20 23:22:13.550318+10	877	Calvary Private Specialists	3		7	1
1694	2020-05-20 23:22:13.552255+10	876	Dr Suneet Kohli - Private Specialist	3		7	1
1695	2020-05-20 23:22:13.554167+10	875	Hobart Private Consulting Rooms	3		7	1
1696	2020-05-20 23:22:13.556689+10	874	Dr Mark Veldhuis Private Specialist	3		7	1
1697	2020-05-20 23:22:13.558806+10	873	Offspring Child Health	3		7	1
1698	2020-05-20 23:22:13.560721+10	872	Dr Brent Mitchell Private Specialist	3		7	1
1699	2020-05-20 23:22:13.562627+10	871	Dr Scott Fanning Private Specialist	3		7	1
1700	2020-05-20 23:22:13.564552+10	870	Dr Mark Wilson Gastroenterology	3		7	1
1701	2020-05-20 23:22:13.566441+10	869	Dr Jarrad Wilson Private Specialist	3		7	1
1702	2020-05-20 23:22:13.568295+10	868	Central Gastroenterology Pty Ltd	3		7	1
1703	2020-05-20 23:22:13.570461+10	867	Gastrohealth Hobart	3		7	1
1704	2020-05-20 23:22:13.5724+10	866	Dr Stephen Chung Private Specialist	3		7	1
1705	2020-05-20 23:22:13.574277+10	865	Dr Ana Naiman Private Specialist	3		7	1
1706	2020-05-20 23:22:13.576135+10	864	Mr Philip Moore Private Specialist	3		7	1
1707	2020-05-20 23:22:13.57804+10	863	Hobart Ent	3		7	1
1708	2020-05-20 23:22:13.579914+10	862	Mr Danesh Irani Private Specialist	3		7	1
1709	2020-05-20 23:22:13.581832+10	861	Mr Magdi Ghali Private Specialist - Cradle Coast	3		7	1
1710	2020-05-20 23:22:13.583735+10	860	Mr Magdi Ghali Private Specialist	3		7	1
1711	2020-05-20 23:22:13.5857+10	859	Mr Warwick Brennan Private Specialist	3		7	1
1712	2020-05-20 23:22:13.587834+10	858	Dr Simone Boardman Private Specialist	3		7	1
1713	2020-05-20 23:22:13.589831+10	857	Hobart Private Specialists - Suite 5	3		7	1
1714	2020-05-20 23:22:13.591656+10	856	Launceston Respiratory & Sleep Centre	3		7	1
1715	2020-05-20 23:22:13.593495+10	855	Aboriginal Health Service Hobart - Nipluna	3		7	1
1716	2020-05-20 23:22:13.59529+10	854	Regional Imaging Tasmania - St Vincent's Hospital	3		7	1
1718	2020-05-20 23:22:13.599271+10	852	Dr Andrew Jevtic Private Specialist - Launceston	3		7	1
1719	2020-05-20 23:22:13.601224+10	851	Dr Andrew Jevtic Private Specialist - Hobart	3		7	1
1720	2020-05-20 23:22:13.603243+10	850	Launceston Dermatology	3		7	1
1721	2020-05-20 23:22:13.605242+10	849	Dr Srini Yellapu Private Specialist	3		7	1
1722	2020-05-20 23:22:13.607149+10	848	Mr Hung Nguyen Private Specialist	3		7	1
1723	2020-05-20 23:22:13.609105+10	847	Dr David Lloyd Private Specialist	3		7	1
1724	2020-05-20 23:22:13.611024+10	846	Tamar Surgical	3		7	1
1725	2020-05-20 23:22:13.613063+10	845	Hobart Colorectal Surgeons	3		7	1
1726	2020-05-20 23:22:13.614976+10	844	Hobart Medical Specialists	3		7	1
1727	2020-05-20 23:22:13.61683+10	843	Specialist Care Australia - Ulverstone	3		7	1
1728	2020-05-20 23:22:13.618909+10	842	Specialist Care Australia - Launceston	3		7	1
1729	2020-05-20 23:22:13.621171+10	841	St John's Sessional Suites	3		7	1
1730	2020-05-20 23:22:13.623313+10	840	Launceston Pathology Collection Centre - Launceston	3		7	1
1731	2020-05-20 23:22:13.625413+10	839	Dr Keshav Bhattarai Private Specialist	3		7	1
1732	2020-05-20 23:22:13.627692+10	838	Calvary Cardiac Centre Cardiothoracic Consulting Rooms	3		7	1
1733	2020-05-20 23:22:13.629884+10	837	Charles Clinic - North West	3		7	1
1734	2020-05-20 23:22:13.632062+10	836	Dr Bhuwan Singh Private Specialist	3		7	1
1735	2020-05-20 23:22:13.634265+10	835	A/prof Donald Mctaggart Private Specialist	3		7	1
1736	2020-05-20 23:22:13.636377+10	834	Dr George Koshy Private Specialist	3		7	1
1737	2020-05-20 23:22:13.638512+10	833	Dr Brian Herman Private Specialist	3		7	1
1738	2020-05-20 23:22:13.640625+10	832	Calvary Health Care Sessional Rooms	3		7	1
1739	2020-05-20 23:22:13.642583+10	831	Charles Clinic - Launceston	3		7	1
1740	2020-05-20 23:22:13.644565+10	830	Hobart Cardiology And Medical Specialists	3		7	1
1741	2020-05-20 23:22:13.646426+10	829	Hobart Heart Centre	3		7	1
1742	2020-05-20 23:22:13.64828+10	828	Calvary Cardiac Centre	3		7	1
1743	2020-05-20 23:22:13.650257+10	827	Dr Rob Eadie Private Specialist	3		7	1
1744	2020-05-20 23:22:13.652158+10	826	Old Vic Anaesthetists	3		7	1
1745	2020-05-20 23:22:13.654198+10	825	Southern Pain Service	3		7	1
1746	2020-05-20 23:22:13.656041+10	824	Tasmanian Anaesthesia	3		7	1
1747	2020-05-20 23:22:13.658015+10	823	The Hobart Anaesthetic Group	3		7	1
1748	2020-05-20 23:22:13.659888+10	822	Dr Malcolm Anderson Private Specialist	3		7	1
1749	2020-05-20 23:22:13.661983+10	821	The Hobart Clinic	3		7	1
1750	2020-05-20 23:22:13.663817+10	820	Care Forward - North West	3		7	1
1751	2020-05-20 23:22:13.665612+10	819	Elpe Health - Wynyard	3		7	1
1752	2020-05-20 23:22:13.667464+10	818	Eco Health Therapies	3		7	1
1753	2020-05-20 23:22:13.669581+10	817	Andrew Mcclymont Psychologist	3		7	1
1754	2020-05-20 23:22:13.671462+10	816	Sheffield Medical Centre	3		7	1
1755	2020-05-20 23:22:13.67338+10	815	North West Psychology	3		7	1
1756	2020-05-20 23:22:13.675288+10	814	Vivien Henderson Psychological Services	3		7	1
1757	2020-05-20 23:22:13.677156+10	813	Anna De La Rue Psychological And Counselling Services	3		7	1
1758	2020-05-20 23:22:13.679069+10	812	Psychology Caffe - Smithton	3		7	1
1759	2020-05-20 23:22:13.681218+10	811	Christina Chamley Psychologist	3		7	1
1760	2020-05-20 23:22:13.683093+10	810	Burnie Gp Super Clinic	3		7	1
1761	2020-05-20 23:22:13.684975+10	809	Saunders Street Clinic	3		7	1
1762	2020-05-20 23:22:13.68701+10	808	Southside Family Medical - Burnie	3		7	1
1763	2020-05-20 23:22:13.688878+10	807	Psychology Plus	3		7	1
1764	2020-05-20 23:22:13.690816+10	806	Psychology Caffe - Latrobe	3		7	1
1765	2020-05-20 23:22:13.692888+10	805	Psychology Caffe - Devonport	3		7	1
1766	2020-05-20 23:22:13.6952+10	804	Robyn Mckinnon Consultancy And Counselling Services - King Island	3		7	1
1767	2020-05-20 23:22:13.697868+10	803	Psychology Caffe - Burnie	3		7	1
1768	2020-05-20 23:22:13.700394+10	802	Psychology Caffe - Ulverstone	3		7	1
1769	2020-05-20 23:22:13.703117+10	801	Elpe Health - Zeehan	3		7	1
1770	2020-05-20 23:22:13.705629+10	800	Psychology Caffe - West Coast	3		7	1
1771	2020-05-20 23:22:13.708268+10	799	Elpe Health - Somerset	3		7	1
1772	2020-05-20 23:22:13.710819+10	798	Elpe Health - Sheffield	3		7	1
1773	2020-05-20 23:22:13.71331+10	797	Elpe Health - Ulverstone	3		7	1
1774	2020-05-20 23:22:13.71548+10	796	Michael Marriot Clinical Psychologist	3		7	1
1775	2020-05-20 23:22:13.718671+10	795	Coastal Psychology	3		7	1
1776	2020-05-20 23:22:13.721343+10	794	Maureen Doherty - Psychologist	3		7	1
1777	2020-05-20 23:22:13.723674+10	793	Somerset Medical Centre	3		7	1
1778	2020-05-20 23:22:13.725968+10	792	Rubicon Psychology	3		7	1
1779	2020-05-20 23:22:13.72839+10	791	Lyndon Walker Psychologist	3		7	1
1780	2020-05-20 23:22:13.731092+10	790	Tess Crawley & Associates - Launceston	3		7	1
1781	2020-05-20 23:22:13.733602+10	789	Janis Richards Psychologist - Mowbray	3		7	1
1782	2020-05-20 23:22:13.735981+10	788	Janis Richards Psychologist - Campbell Town	3		7	1
1783	2020-05-20 23:22:13.73824+10	787	Prospect Allied Health	3		7	1
1784	2020-05-20 23:22:13.740474+10	786	Lesley Osenieks - Psychologist	3		7	1
1785	2020-05-20 23:22:13.742681+10	785	Evandale Doctors Surgery	3		7	1
1786	2020-05-20 23:22:13.744864+10	784	Westbury Doctors Surgery	3		7	1
1787	2020-05-20 23:22:13.747065+10	783	Rose Cottage Medical Centre	3		7	1
1788	2020-05-20 23:22:13.749282+10	782	Beaconsfield Doctors Surgery	3		7	1
1789	2020-05-20 23:22:13.751672+10	781	Psychology Caffe - Deloraine	3		7	1
1790	2020-05-20 23:22:13.753886+10	780	Wendy Gall Psychologist	3		7	1
1791	2020-05-20 23:22:13.75605+10	779	Tim Feely And Associates	3		7	1
1792	2020-05-20 23:22:13.758176+10	778	Rising Strong Psychology & Consulting Services	3		7	1
1793	2020-05-20 23:22:13.760355+10	777	Bernadette Zeeman Accredited Mental Hlth Social Worker	3		7	1
1794	2020-05-20 23:22:13.76255+10	776	Rob Pearce - Social Worker	3		7	1
1795	2020-05-20 23:22:13.764757+10	775	Robyn Mckinnon Consultancy And Counselling Services - Longford	3		7	1
1796	2020-05-20 23:22:13.766856+10	774	Robyn Mckinnon Consultancy And Counselling Services - Launceston	3		7	1
1797	2020-05-20 23:22:13.768914+10	773	Robyn Mckinnon Consultancy And Counselling Services - Flinders Island	3		7	1
1798	2020-05-20 23:22:13.770814+10	772	Russell Mccashney Social Worker	3		7	1
1799	2020-05-20 23:22:13.772754+10	771	Deborah Klye Mental Health Social Worker - The Blue Door	3		7	1
1800	2020-05-20 23:22:13.77464+10	770	Headspace Launceston	3		7	1
1801	2020-05-20 23:22:13.776625+10	769	Coaching Access Management Systems	3		7	1
1802	2020-05-20 23:22:13.778531+10	768	Forpsych	3		7	1
1803	2020-05-20 23:22:13.780361+10	767	Megan Smoak Clinical Psychologist	3		7	1
1804	2020-05-20 23:22:13.782332+10	766	Emerge Allied Health	3		7	1
1805	2020-05-20 23:22:13.784471+10	765	Ruth Paul Clinical Psychologist	3		7	1
1806	2020-05-20 23:22:13.786597+10	764	Lib Heyward Clinical Psychologist	3		7	1
1807	2020-05-20 23:22:13.788648+10	763	Holly M Guest And Associates Psychological Services	3		7	1
1808	2020-05-20 23:22:13.790703+10	762	Joe Freeman	3		7	1
1809	2020-05-20 23:22:13.792793+10	761	Windsor Psychology - Riverside	3		7	1
1810	2020-05-20 23:22:13.794812+10	760	Patrick Fleming And Associates	3		7	1
1811	2020-05-20 23:22:13.796824+10	759	Launceston Therapy Clinic	3		7	1
1812	2020-05-20 23:22:13.798709+10	758	Healthy Mind Centre	3		7	1
1813	2020-05-20 23:22:13.805994+10	757	Helen Bindoff Clinical Psychologist	3		7	1
1814	2020-05-20 23:22:13.810726+10	756	Launceston Integrated Pain Service (lips)	3		7	1
1815	2020-05-20 23:22:13.81319+10	755	Vanessa Bakker Clinical Psychologist	3		7	1
1816	2020-05-20 23:22:13.81618+10	754	Mrs Shane Cavanagh Social Worker	3		7	1
1817	2020-05-20 23:22:13.819421+10	753	Ashley Wong Hoy Psychologist - Sorell	3		7	1
1818	2020-05-20 23:22:13.823404+10	752	Ashley Wong Hoy Psychologist - Nubeena	3		7	1
1819	2020-05-20 23:22:13.827413+10	751	Ashley Wong Hoy Psychologist - Richmond	3		7	1
1820	2020-05-20 23:22:13.830144+10	750	Angela Waite Psychology	3		7	1
1821	2020-05-20 23:22:13.833013+10	749	University Psychology Clinic	3		7	1
1822	2020-05-20 23:22:13.836428+10	748	Counselling And Psychology Tasmania	3		7	1
1823	2020-05-20 23:22:13.838956+10	747	Davey Street Medical Centre	3		7	1
1824	2020-05-20 23:22:13.84171+10	746	The Lindisfarne Clinic	3		7	1
1825	2020-05-20 23:22:13.844458+10	745	Sandy Bay Clinic	3		7	1
1826	2020-05-20 23:22:13.846996+10	744	Amiens Clinic	3		7	1
1827	2020-05-20 23:22:13.849476+10	743	Rosny Park Family Practice	3		7	1
1828	2020-05-20 23:22:13.851953+10	742	Ernest Schall Psychologist	3		7	1
1829	2020-05-20 23:22:13.85468+10	741	Emily Parkinson - Psychologist	3		7	1
1830	2020-05-20 23:22:13.857031+10	740	Derwent Valley Medical Centre	3		7	1
1831	2020-05-20 23:22:13.859335+10	739	Newdegate Street Health Centre	3		7	1
1832	2020-05-20 23:22:13.861744+10	738	Jasmin Mandari Psychologist	3		7	1
1833	2020-05-20 23:22:13.864153+10	737	Jan Lee Psychologist	3		7	1
1834	2020-05-20 23:22:13.866501+10	736	Louise King Psychologist	3		7	1
1835	2020-05-20 23:22:13.868832+10	735	Jones & Co Psychology	3		7	1
1836	2020-05-20 23:22:13.871378+10	734	Huon Valley Health Centre - Huonville	3		7	1
1837	2020-05-20 23:22:13.873697+10	733	Bruny Island Medical	3		7	1
1838	2020-05-20 23:22:13.87602+10	732	Richmond Therapy Practice	3		7	1
1839	2020-05-20 23:22:13.87839+10	731	Gore Street Medical	3		7	1
1840	2020-05-20 23:22:13.880697+10	730	Ipar Rehab - Hobart	3		7	1
1841	2020-05-20 23:22:13.882974+10	729	Dr Trevor Crowe Pyschologist - Huonville	3		7	1
1842	2020-05-20 23:22:13.885357+10	728	Windsor Psychology - Hobart	3		7	1
1843	2020-05-20 23:22:13.887544+10	727	Gp2u Telehealth Pty Ltd	3		7	1
1844	2020-05-20 23:22:13.889794+10	726	Cecilia Bendall Psychologist	3		7	1
1845	2020-05-20 23:22:13.892099+10	725	Lindisfarne Psychology & Wellbeing Centre	3		7	1
1846	2020-05-20 23:22:13.894426+10	724	The Narrative Centre - Bellerive	3		7	1
1847	2020-05-20 23:22:13.896653+10	723	All Round Health And Community Care	3		7	1
1848	2020-05-20 23:22:13.898861+10	722	Southern Beaches Counselling	3		7	1
1849	2020-05-20 23:22:13.90108+10	721	Lorraine's Place	3		7	1
1850	2020-05-20 23:22:13.903432+10	720	Health-wise Counselling And Consultancy Service	3		7	1
1851	2020-05-20 23:22:13.905705+10	719	Helen Fryer Counselling And Psychotherapy	3		7	1
1852	2020-05-20 23:22:13.90787+10	718	The Stress Clinic Of Hobart	3		7	1
1853	2020-05-20 23:22:13.910098+10	717	Tasmanian Obstetrics And Gynaecology Specialists (tasogs)	3		7	1
1854	2020-05-20 23:22:13.912336+10	716	Hill Street Psychology	3		7	1
1855	2020-05-20 23:22:13.914454+10	715	Family Psychological Services	3		7	1
1856	2020-05-20 23:22:13.916619+10	714	Dr Harry Stanton Clinical Psychologist	3		7	1
1857	2020-05-20 23:22:13.9189+10	713	Balanced - Mind Body Life	3		7	1
1858	2020-05-20 23:22:13.921015+10	712	St Helen's Private Consulting Suites	3		7	1
1859	2020-05-20 23:22:13.923088+10	711	Eastern Shore Psychology	3		7	1
1860	2020-05-20 23:22:13.925238+10	710	Kelly Pettit - Clinical Psychological Services	3		7	1
1861	2020-05-20 23:22:13.927366+10	709	Kingston Psychology	3		7	1
1862	2020-05-20 23:22:13.929406+10	708	Peter Nelson Clinical Psychologist	3		7	1
1863	2020-05-20 23:22:13.931522+10	707	After Hours Doctor	3		7	1
1864	2020-05-20 23:22:13.933719+10	706	Michaela Morgan Clinical Psychologist	3		7	1
1865	2020-05-20 23:22:13.935874+10	705	Adjusting Futures	3		7	1
1866	2020-05-20 23:22:13.938283+10	704	Federal Street Pain Clinic	3		7	1
1867	2020-05-20 23:22:13.940458+10	703	Julian Mcgarry Clinical Psychologist - Kingston	3		7	1
1868	2020-05-20 23:22:13.942626+10	702	Psych2u	3		7	1
1869	2020-05-20 23:22:13.944781+10	701	Sabina Lane - Clinical Psychologist	3		7	1
1870	2020-05-20 23:22:13.946943+10	700	Knopwood Medical Centre	3		7	1
1871	2020-05-20 23:22:13.949128+10	699	New Town Psychology Practice	3		7	1
1872	2020-05-20 23:22:13.951348+10	698	Kristy Hill Clinical Psychologist	3		7	1
1873	2020-05-20 23:22:13.953742+10	697	Scaling Your Mountains	3		7	1
1874	2020-05-20 23:22:13.955946+10	696	Your Health Hub	3		7	1
1875	2020-05-20 23:22:13.958113+10	695	Newchoices - John Street	3		7	1
1876	2020-05-20 23:22:13.960241+10	694	Newchoices - Elizabeth Street	3		7	1
1877	2020-05-20 23:22:13.962353+10	693	Newchoices - Ferguson Court	3		7	1
1878	2020-05-20 23:22:13.964472+10	692	Headspace Hobart	3		7	1
1879	2020-05-20 23:22:13.966845+10	691	Rohini Gore Clinical Psychologist	3		7	1
1880	2020-05-20 23:22:13.969032+10	690	Brad Freeman Clinical Psychologist	3		7	1
1881	2020-05-20 23:22:13.971454+10	689	Psychologyworks	3		7	1
1882	2020-05-20 23:22:13.973654+10	688	Eclectic Consulting Ltd	3		7	1
1883	2020-05-20 23:22:13.975752+10	687	Kingston Beach Health Centre	3		7	1
1884	2020-05-20 23:22:13.977771+10	686	Tobias Croft - Clinical Psychologist - Geeveston	3		7	1
1885	2020-05-20 23:22:13.979805+10	685	Tobias Croft - Clinical Psychologist - Cygnet	3		7	1
1886	2020-05-20 23:22:13.981844+10	684	Tess Crawley & Associates - Hobart	3		7	1
1887	2020-05-20 23:22:13.983916+10	683	Marie-louise Craske - Clinical Psychologist	3		7	1
1888	2020-05-20 23:22:13.986133+10	682	Christine Clifford Clinical Psychologist	3		7	1
1889	2020-05-20 23:22:13.988266+10	681	Parinda Chiranakorn Clinical Psychologist	3		7	1
1890	2020-05-20 23:22:13.990229+10	680	Karen Chilcott Clinical Psychologist	3		7	1
1891	2020-05-20 23:22:13.992138+10	679	Macquarie Psychology	3		7	1
1892	2020-05-20 23:22:13.994011+10	678	The Psychology Centre	3		7	1
1893	2020-05-20 23:22:13.995936+10	677	Archer Street Health Pty Ltd	3		7	1
1894	2020-05-20 23:22:13.997831+10	676	Salamanca Psychology	3		7	1
1895	2020-05-20 23:22:13.999902+10	675	Roslyn Badcock & Associates - Sorell	3		7	1
1896	2020-05-20 23:22:14.002069+10	674	Roslyn Badcock & Associates - Bellerive	3		7	1
1897	2020-05-20 23:22:14.004204+10	673	The Practice (psychology Services) - Kingston	3		7	1
1898	2020-05-20 23:22:14.006345+10	672	Christina Anderson - Clinical Psychologist	3		7	1
1899	2020-05-20 23:22:14.008368+10	671	Gregory Street Psychology	3		7	1
1900	2020-05-20 23:24:07.816933+10	1280	113 William Street Devonport, TAS, Australia	3		9	1
1901	2020-05-20 23:24:07.821524+10	1279	 Ruhamah Court - Romaine Burnie, TAS, Australia	3		9	1
1902	2020-05-20 23:24:07.824243+10	1278	9 Arnold Street Penguin, TAS, Australia	3		9	1
1903	2020-05-20 23:24:07.826738+10	1277	8 Highfield Cresent Ulverstone, TAS, Australia	3		9	1
1904	2020-05-20 23:24:07.829375+10	1276	16 Winston Place Devonport, TAS, Australia	3		9	1
1905	2020-05-20 23:24:07.831872+10	1275	 Invermay Allied Health - 197 Invermay Road Invermay, TAS, Australia	3		9	1
1906	2020-05-20 23:24:07.834317+10	1274	59d Amy Road Newstead, TAS, Australia	3		9	1
1907	2020-05-20 23:24:07.836635+10	1273	 Lower Level / 1 Elphin Road Launceston, TAS, Australia	3		9	1
1908	2020-05-20 23:24:07.838919+10	1272	 Po Box 2119 Howrah, TAS, Australia	3		9	1
1909	2020-05-20 23:24:07.841312+10	1271	9 Clarence Street Bellerive, TAS, Australia	3		9	1
1910	2020-05-20 23:24:07.843661+10	1270	 Unit 7/4a Colville Street Battery Point, TAS, Australia	3		9	1
1911	2020-05-20 23:24:07.845918+10	1269	 Po Box 304 South Hobart, TAS, Australia	3		9	1
1912	2020-05-20 23:24:07.848099+10	1268	110 Elizabeth Street Hobart, TAS, Australia	3		9	1
1913	2020-05-20 23:24:07.850334+10	1267	Suite 3/81 Cimitiere Street Launceston, TAS, Australia	3		9	1
1914	2020-05-20 23:24:07.852434+10	1266	56 Alexandra Rd Ulverstone, TAS, Australia	3		9	1
1915	2020-05-20 23:24:07.854434+10	1265	165 Nelson St Smithton, TAS, Australia	3		9	1
1916	2020-05-20 23:24:07.856655+10	1264	49 Jackson Street Wynyard, TAS, Australia	3		9	1
1917	2020-05-20 23:24:07.85891+10	1263	 C/- Wynyard Medical Centre - 138 Goldie Street Wynyard, TAS, Australia	3		9	1
1918	2020-05-20 23:24:07.861153+10	1262	371 Bass Highway Burnie, TAS, Australia	3		9	1
1919	2020-05-20 23:24:07.863207+10	1261	3 Edwardes Street Burnie, TAS, Australia	3		9	1
1920	2020-05-20 23:24:07.865237+10	1260	 Devonport Smartclinic Family Medical Centre / 8 Wenvoe Stree Devonport, TAS, Australia	3		9	1
1921	2020-05-20 23:24:07.867172+10	1259	 Sheffield Medical Centre - 1 Henry Street Sheffield, TAS, Australia	3		9	1
1922	2020-05-20 23:24:07.869071+10	1258	26 William Street Devonport, TAS, Australia	3		9	1
1923	2020-05-20 23:24:07.871252+10	1257	59 Cameron Street Launceston, TAS, Australia	3		9	1
1924	2020-05-20 23:24:07.873157+10	1256	84a Hobart Road Kings Meadows, TAS, Australia	3		9	1
1925	2020-05-20 23:24:07.874942+10	1255	169 Elphin Road Newstead Newstead, TAS, Australia	3		9	1
1926	2020-05-20 23:24:07.876724+10	1254	318 West Tamar Road Riverside, TAS, Australia	3		9	1
1927	2020-05-20 23:24:07.878498+10	1253	 Westbury Doctors Surgery - 86 Meander Valley Road Westbury, TAS, Australia	3		9	1
1928	2020-05-20 23:24:07.880278+10	1252	Shop 6/8 Legana Grove Legana, TAS, Australia	3		9	1
1929	2020-05-20 23:24:07.882051+10	1251	 Launceston Medical Centre - 247 Wellington Street Launceston, TAS, Australia	3		9	1
1930	2020-05-20 23:24:07.883835+10	1250	 Evandale Doctors Surgery - 8a High Street Evandale, TAS, Australia	3		9	1
1931	2020-05-20 23:24:07.886336+10	1249	71 Elphin Road Launceston, TAS, Australia	3		9	1
1932	2020-05-20 23:24:07.888735+10	1248	33a Main Road Claremont, TAS, Australia	3		9	1
1933	2020-05-20 23:24:07.890603+10	1247	210 New Town Road New Town, TAS, Australia	3		9	1
1934	2020-05-20 23:24:07.892858+10	1246	 Mobile Podiatry Home Visit Service Hobart, TAS, Australia	3		9	1
1935	2020-05-20 23:24:07.895073+10	1245	 Mobile Podiatry Service Hobart, TAS, Australia	3		9	1
1936	2020-05-20 23:24:07.896868+10	1244	214 Clarence Street Howrah, TAS, Australia	3		9	1
1937	2020-05-20 23:24:07.898695+10	1243	53 Main Road Claremont, TAS, Australia	3		9	1
1938	2020-05-20 23:24:07.900596+10	1242	Shop 3 Huon Arcade - 13 Main Street Huonville, TAS, Australia	3		9	1
1939	2020-05-20 23:24:07.902569+10	1241	 C/- Huon Regional Care - Franklin / 3278 Huon Hwy Franklin, TAS, Australia	3		9	1
1940	2020-05-20 23:24:07.904674+10	1240	64 Giblin Street Lenah Valley, TAS, Australia	3		9	1
1941	2020-05-20 23:24:07.906674+10	1239	 Ground Floor / 123 Bathurst Street Hobart, TAS, Australia	3		9	1
1942	2020-05-20 23:24:07.908545+10	1238	12 Gregory Street Sandy Bay, TAS, Australia	3		9	1
1943	2020-05-20 23:24:07.910433+10	1237	214 Elzabeth Street Hobart, TAS, Australia	3		9	1
1944	2020-05-20 23:24:07.912334+10	1236	40 Channel Highway Kingston, TAS, Australia	3		9	1
1945	2020-05-20 23:24:07.914241+10	1235	17 Campbell Street Hobart, TAS, Australia	3		9	1
1946	2020-05-20 23:24:07.916185+10	1234	17a Gordons Hill Road Rosny Park, TAS, Australia	3		9	1
1947	2020-05-20 23:24:07.918123+10	1233	315 Macquarie Street Hobart, TAS, Australia	3		9	1
1948	2020-05-20 23:24:07.921393+10	1232	108 Best Street Devonport, TAS, Australia	3		9	1
1949	2020-05-20 23:24:07.923785+10	1231	21 The Esplanade Turners Beach, TAS, Australia	3		9	1
1950	2020-05-20 23:24:07.925982+10	1230	3/11 Poyston Drive Shearwater, TAS, Australia	3		9	1
1951	2020-05-20 23:24:07.928234+10	1229	15 Main Street Currie, TAS, Australia	3		9	1
1952	2020-05-20 23:24:07.930633+10	1228	 Saunders Street Clinic / 37 Jackson Street Wynyard, TAS, Australia	3		9	1
1953	2020-05-20 23:24:07.933325+10	1227	48 Victoria Street Ulverstone, TAS, Australia	3		9	1
1954	2020-05-20 23:24:07.935726+10	1226	130 Back Cam Road Somerset, TAS, Australia	3		9	1
1955	2020-05-20 23:24:07.938064+10	1225	47 Anne Street George Town, TAS, Australia	3		9	1
1956	2020-05-20 23:24:07.940253+10	1224	7 Glen Ard Mohr Road Exeter, TAS, Australia	3		9	1
1957	2020-05-20 23:24:07.942539+10	1223	5 Cleghorn Avenue Riverside, TAS, Australia	3		9	1
1958	2020-05-20 23:24:07.944825+10	1222	55 Elphin Road Launceston, TAS, Australia	3		9	1
1959	2020-05-20 23:24:07.947516+10	1221	268 Invermay Road Mowbray, TAS, Australia	3		9	1
1960	2020-05-20 23:24:07.950008+10	1220	 Qv Centre - Suite 1 / 7 High Street Launceston, TAS, Australia	3		9	1
1961	2020-05-20 23:24:07.952727+10	1219	Level 1 - 112/287 Charles Street Launceston, TAS, Australia	3		9	1
1962	2020-05-20 23:24:07.955534+10	1218	 Po Box 440 Sandy Bay, TAS, Australia	3		9	1
1963	2020-05-20 23:24:07.958093+10	1217	 Mary Street Clinic - 2/23 Mary Street Cygnet, TAS, Australia	3		9	1
1964	2020-05-20 23:24:07.960568+10	1216	 Galleria Building - Suite 24 / 33 Salamanca Place Battery Point, TAS, Australia	3		9	1
1965	2020-05-20 23:24:07.963516+10	1215	22 Gordon Street Sorell, TAS, Australia	3		9	1
1966	2020-05-20 23:24:07.966006+10	1214	73 Lansdowne Cresent West Hobart, TAS, Australia	3		9	1
1967	2020-05-20 23:24:07.968498+10	1213	6 Bayfield Street Rosny Park, TAS, Australia	3		9	1
1968	2020-05-20 23:24:07.970729+10	1212	2 High Street New Norfolk, TAS, Australia	3		9	1
1969	2020-05-20 23:24:07.972849+10	1211	Shop 67/68 Channel Crt Shopping Centre / 29 Channel Highway Kingston, TAS, Australia	3		9	1
1970	2020-05-20 23:24:07.975235+10	1210	 Po Box 115 Blackmans Bay, TAS, Australia	3		9	1
1971	2020-05-20 23:24:07.977777+10	1209	Level 1/17 Bayfield Street Rosny Park, TAS, Australia	3		9	1
1972	2020-05-20 23:24:07.980131+10	1208	273 Clarence Street Howrah, TAS, Australia	3		9	1
1973	2020-05-20 23:24:07.982532+10	1207	 The Rejuve Centre - 111 Hill Street West Hobart, TAS, Australia	3		9	1
1974	2020-05-20 23:24:07.985691+10	1206	Suite 6/221 Macquarie Street Hobart, TAS, Australia	3		9	1
1975	2020-05-20 23:24:07.987986+10	1205	17 Bligh Street Rosny Park, TAS, Australia	3		9	1
1976	2020-05-20 23:24:07.990209+10	1204	176 Macquarie Street Hobart, TAS, Australia	3		9	1
1977	2020-05-20 23:24:07.992445+10	1203	 Marian House - Calvary Hospital - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
1978	2020-05-20 23:24:07.994704+10	1202	26 Antill Street Hobart, TAS, Australia	3		9	1
1979	2020-05-20 23:24:07.996863+10	1201	16 Wilmot Road Huonville, TAS, Australia	3		9	1
1980	2020-05-20 23:24:07.998903+10	1200	 C/- Hobart Obgyn / 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
1981	2020-05-20 23:24:08.00086+10	1199	171 Macquarie Street Hobart, TAS, Australia	3		9	1
1982	2020-05-20 23:24:08.002848+10	1198	4/11 Hill Street West Hobart, TAS, Australia	3		9	1
1983	2020-05-20 23:24:08.004943+10	1197	221 Murray Street Hobart, TAS, Australia	3		9	1
1984	2020-05-20 23:24:08.00713+10	1196	 Mobile Service - Hobart Region Hobart, TAS, Australia	3		9	1
1985	2020-05-20 23:24:08.00906+10	1195	Suite 3/19 Reibey Street Ulverstone, TAS, Australia	3		9	1
1986	2020-05-20 23:24:08.01095+10	1194	15 Penquite Road Newstead, TAS, Australia	3		9	1
1987	2020-05-20 23:24:08.013093+10	1193	 C/- George Town District Hospital - 47 Anne Street George Town, TAS, Australia	3		9	1
1988	2020-05-20 23:24:08.014953+10	1192	 Qv Tower - Suite 10 / 11 High Street Launceston, TAS, Australia	3		9	1
1989	2020-05-20 23:24:08.017299+10	1191	194 Charles Street Launceston, TAS, Australia	3		9	1
1990	2020-05-20 23:24:08.019193+10	1190	6 Risdon Road New Town, TAS, Australia	3		9	1
1991	2020-05-20 23:24:08.021154+10	1189	Suite 1/166 Warwick Street Hobart, TAS, Australia	3		9	1
1992	2020-05-20 23:24:08.023234+10	1188	2/8 Percy Street Bellerive, TAS, Australia	3		9	1
1993	2020-05-20 23:24:08.025174+10	1187	 Galleria Building - Suite 20 / 31 - 35 Salamanca Place Hobart, TAS, Australia	3		9	1
1994	2020-05-20 23:24:08.027047+10	1186	385 Argyle Street Hobart, TAS, Australia	3		9	1
1995	2020-05-20 23:24:08.028933+10	1185	161 Macquarie Street Hobart, TAS, Australia	3		9	1
1996	2020-05-20 23:24:08.030802+10	1184	67 Pedder Street New Town, TAS, Australia	3		9	1
1997	2020-05-20 23:24:08.03281+10	1183	73 Burnett Street North Hobart, TAS, Australia	3		9	1
1998	2020-05-20 23:24:08.034687+10	1182	2 Fitzroy Place Hobart, TAS, Australia	3		9	1
1999	2020-05-20 23:24:08.036631+10	1181	 Mobile Service Only Penguin, TAS, Australia	3		9	1
2000	2020-05-20 23:24:08.03891+10	1180	 Visiting Mobile Service Launceston, TAS, Australia	3		9	1
2001	2020-05-20 23:24:08.041082+10	1179	 C/- City Mill Business Centre - 76 York Street Launceston, TAS, Australia	3		9	1
2002	2020-05-20 23:24:08.042959+10	1178	Suite 2 / 10-14 Paterson Street Launceston, TAS, Australia	3		9	1
2003	2020-05-20 23:24:08.044816+10	1177	 Home Visits Newstead, TAS, Australia	3		9	1
2004	2020-05-20 23:24:08.046702+10	1176	24 Bettina Avenue Norwood, TAS, Australia	3		9	1
2005	2020-05-20 23:24:08.048567+10	1175	Shop 3/31 Cambridge Road Bellerive, TAS, Australia	3		9	1
2006	2020-05-20 23:24:08.050434+10	1174	 C/- Hobart Paediatric Group - 59 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2007	2020-05-20 23:24:08.052297+10	1173	Suite 4 / Palfreymanns Arcade - 340 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2008	2020-05-20 23:24:08.054338+10	1172	62 Beach Road Margate, TAS, Australia	3		9	1
2009	2020-05-20 23:24:08.056317+10	1171	 Ground Floor / 2 Castray Esplanade Battery Point, TAS, Australia	3		9	1
2010	2020-05-20 23:24:08.058138+10	1170	 Po Box 311 Lenah Valley, TAS, Australia	3		9	1
2011	2020-05-20 23:24:08.060023+10	1169	 Sorell Allied Health Centre - 42 Cole Street Sorell, TAS, Australia	3		9	1
2012	2020-05-20 23:24:08.061878+10	1168	 Home Visits Only - Southern Area Hobart, TAS, Australia	3		9	1
2013	2020-05-20 23:24:08.063736+10	1167	2 Birdwood Avenue Moonah, TAS, Australia	3		9	1
2014	2020-05-20 23:24:08.065601+10	1166	41 Auburn Road Kingston Beach, TAS, Australia	3		9	1
2015	2020-05-20 23:24:08.067651+10	1165	45 Goldie Street Wynyard, TAS, Australia	3		9	1
2016	2020-05-20 23:24:08.069751+10	1164	3 King Street Burnie, TAS, Australia	3		9	1
2017	2020-05-20 23:24:08.071868+10	1163	81 Oldaker Street Devonport, TAS, Australia	3		9	1
2018	2020-05-20 23:24:08.073821+10	1162	11 Macfie Street Devonport, TAS, Australia	3		9	1
2019	2020-05-20 23:24:08.075731+10	1161	260 Steele Street Devonport, TAS, Australia	3		9	1
2020	2020-05-20 23:24:08.077616+10	1160	75 Best Street Devonport, TAS, Australia	3		9	1
2021	2020-05-20 23:24:08.079478+10	1159	 Westside Shopping Centre - Shop 15 / 12 Alice Street Ulverstone, TAS, Australia	3		9	1
2022	2020-05-20 23:24:08.081828+10	1158	 Ground Floor - 403 West Tamar Road Riverside, TAS, Australia	3		9	1
2023	2020-05-20 23:24:08.083777+10	1157	 C/- Caledonian Medical Service / 54 Invermay Road Launceston, TAS, Australia	3		9	1
2024	2020-05-20 23:24:08.085695+10	1156	305 Wellington Street Launceston, TAS, Australia	3		9	1
2025	2020-05-20 23:24:08.087805+10	1155	 Aquatic Centre / 18a High Street East Launceston, TAS, Australia	3		9	1
2026	2020-05-20 23:24:08.089735+10	1154	65 Corinth Street Howrah, TAS, Australia	3		9	1
2027	2020-05-20 23:24:08.091595+10	1153	38 Collins Street Hobart, TAS, Australia	3		9	1
2028	2020-05-20 23:24:08.093471+10	1152	 Oceana Aquatic And Fitness / 49 Electra Place Mornington, TAS, Australia	3		9	1
2029	2020-05-20 23:24:08.095423+10	1151	4 Mittara Crescent Berriedale, TAS, Australia	3		9	1
2030	2020-05-20 23:24:08.097475+10	1150	37/47 Melville Street Hobart, TAS, Australia	3		9	1
2031	2020-05-20 23:24:08.09942+10	1149	Lot 1/517 Old Forcett Road Dodges Ferry, TAS, Australia	3		9	1
2032	2020-05-20 23:24:08.101357+10	1148	68 Sandy Bay Road Sandy Bay, TAS, Australia	3		9	1
2033	2020-05-20 23:24:08.103329+10	1147	33 Salamanca Square Battery Point, TAS, Australia	3		9	1
2034	2020-05-20 23:24:08.105502+10	1146	 Ground Floor - 25 Davey Street Hobart, TAS, Australia	3		9	1
2035	2020-05-20 23:24:08.107455+10	1145	 Mobile Service Hobart Region Hobart, TAS, Australia	3		9	1
2036	2020-05-20 23:24:08.109299+10	1144	Level 1/6 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2037	2020-05-20 23:24:08.111185+10	1143	 C/- Glenorchy Medical Centre / 346 Main Road Glenorchy, TAS, Australia	3		9	1
2038	2020-05-20 23:24:08.113052+10	1142	16 Cabernet Drive Berriedale, TAS, Australia	3		9	1
2039	2020-05-20 23:24:08.114894+10	1141	 C/- King Island Hospital And Health Care Centre 35 Edward St Currie, TAS, Australia	3		9	1
2040	2020-05-20 23:24:08.116744+10	1140	60 Haberles Road Sheffield, TAS, Australia	3		9	1
2041	2020-05-20 23:24:08.118591+10	1139	 C/- Deloraine Medical Centre - 22 Tower Hill Street Deloraine, TAS, Australia	3		9	1
2042	2020-05-20 23:24:08.120516+10	1138	Shop 2a / 139-143 Hobart Road Kings Meadows, TAS, Australia	3		9	1
2043	2020-05-20 23:24:08.122569+10	1137	 Mobile Service Launceston, TAS, Australia	3		9	1
2044	2020-05-20 23:24:08.124595+10	1136	 C/- Rose Cottage Medical Centre / 5 Innes Street Launceston, TAS, Australia	3		9	1
2045	2020-05-20 23:24:08.126462+10	1135	44/46 Howick Street Launceston, TAS, Australia	3		9	1
2046	2020-05-20 23:24:08.128332+10	1134	 Kgv Sports And Community Complex / 1a Anfield Street Glenorchy, TAS, Australia	3		9	1
2047	2020-05-20 23:24:08.130194+10	1133	 Ground Floor / 17 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2048	2020-05-20 23:24:08.132195+10	1132	Level 1 254 Main Road Derwent Park, TAS, Australia	3		9	1
2049	2020-05-20 23:24:08.134046+10	1131	394 Macquarie Street South Hobart, TAS, Australia	3		9	1
2050	2020-05-20 23:24:08.135914+10	1130	Shop 3/56 Main Road Huonville, TAS, Australia	3		9	1
2051	2020-05-20 23:24:08.137992+10	1129	117 Swanston Street New Town, TAS, Australia	3		9	1
2052	2020-05-20 23:24:08.139996+10	1128	10 Hutchins Street Kingston, TAS, Australia	3		9	1
2053	2020-05-20 23:24:08.141874+10	1127	2 Gregory Street Sandy Bay, TAS, Australia	3		9	1
2054	2020-05-20 23:24:08.143736+10	1126	82 Steele Street Devonport, TAS, Australia	3		9	1
2055	2020-05-20 23:24:08.145619+10	1125	 Palmer House - 99 Forbes Street Devonport, TAS, Australia	3		9	1
2056	2020-05-20 23:24:08.147538+10	1124	4 Queen Street Burnie, TAS, Australia	3		9	1
2057	2020-05-20 23:24:08.149417+10	1123	Shop 5 - Jimmy's Complex / 216 Charles Street Launceston, TAS, Australia	3		9	1
2058	2020-05-20 23:24:08.151256+10	1122	1 Cypress Street Launceston, TAS, Australia	3		9	1
2059	2020-05-20 23:24:08.153101+10	1121	39 Elphin Road Launceston, TAS, Australia	3		9	1
2060	2020-05-20 23:24:08.155085+10	1120	34 Abbott Street East Launceston, TAS, Australia	3		9	1
2061	2020-05-20 23:24:08.157033+10	1119	1/93 Brisbane Street Launceston, TAS, Australia	3		9	1
2062	2020-05-20 23:24:08.159182+10	1118	2 Seascape Avenue Bicheno, TAS, Australia	3		9	1
2063	2020-05-20 23:24:08.161243+10	1117	98 Talbot Road South Launceston, TAS, Australia	3		9	1
2064	2020-05-20 23:24:08.163109+10	1116	149 Hobart Road Kings Meadows, TAS, Australia	3		9	1
2065	2020-05-20 23:24:08.164961+10	1115	4 Emu Bay Road Deloraine, TAS, Australia	3		9	1
2066	2020-05-20 23:24:08.166964+10	1114	60 Elphin Road Launceston, TAS, Australia	3		9	1
2067	2020-05-20 23:24:08.168793+10	1113	17 Freshwater Point Road Legana, TAS, Australia	3		9	1
2068	2020-05-20 23:24:08.171197+10	1112	30 Channel Highway Kingston, TAS, Australia	3		9	1
2069	2020-05-20 23:24:08.173049+10	1111	198 New Town Road New Town, TAS, Australia	3		9	1
2070	2020-05-20 23:24:08.174986+10	1110	 Fitzgerald Offices / Level 2 - 85 Collins Street Hobart, TAS, Australia	3		9	1
2071	2020-05-20 23:24:08.176834+10	1109	3/26 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2072	2020-05-20 23:24:08.178699+10	1108	263 Elizabeth Street Hobart, TAS, Australia	3		9	1
2073	2020-05-20 23:24:08.180639+10	1107	174 Collins Street Hobart, TAS, Australia	3		9	1
2074	2020-05-20 23:24:08.182503+10	1106	39 High Street New Norfolk, TAS, Australia	3		9	1
2075	2020-05-20 23:24:08.184344+10	1105	1/277 Clarence Street Howrah, TAS, Australia	3		9	1
2076	2020-05-20 23:24:08.186177+10	1104	3/7 John Street Kingston, TAS, Australia	3		9	1
2077	2020-05-20 23:24:08.188528+10	1103	181 Harrington Street Hobart, TAS, Australia	3		9	1
2078	2020-05-20 23:24:08.191115+10	1102	13 Percy Street Bellerive, TAS, Australia	3		9	1
2079	2020-05-20 23:24:08.193393+10	1101	63 Main Street Huonville, TAS, Australia	3		9	1
2080	2020-05-20 23:24:08.195295+10	1100	42 Formby Road Devonport, TAS, Australia	3		9	1
2081	2020-05-20 23:24:08.197321+10	1099	Shop 1 87-91 Wilson Street Burnie, TAS, Australia	3		9	1
2082	2020-05-20 23:24:08.199156+10	1098	Shop 1/39 Steele Street Devonport, TAS, Australia	3		9	1
2083	2020-05-20 23:24:08.201071+10	1097	Shop 10/216 Charles Street Launceston, TAS, Australia	3		9	1
2084	2020-05-20 23:24:08.202944+10	1096	264 Charles Street Launceston, TAS, Australia	3		9	1
2085	2020-05-20 23:24:08.204922+10	1095	1a / 120 Cambridge Road Bellerive, TAS, Australia	3		9	1
2086	2020-05-20 23:24:08.206791+10	1094	Shop 62 - Northgate Shopping Centre - 387-391 Main Road Glenorchy, TAS, Australia	3		9	1
2087	2020-05-20 23:24:08.208648+10	1093	Shop 1 Eastlands Shopping Centre / Bligh Street Rosny Park, TAS, Australia	3		9	1
2088	2020-05-20 23:24:08.210547+10	1092	Shop 78 Channel Court Shopping Centre Kingston, TAS, Australia	3		9	1
2089	2020-05-20 23:24:08.212403+10	1091	86 Murray Street Hobart, TAS, Australia	3		9	1
2090	2020-05-20 23:24:08.214769+10	1090	353a Main Road Glenorchy, TAS, Australia	3		9	1
2091	2020-05-20 23:24:08.216621+10	1089	6 Sunderland Street Moonah, TAS, Australia	3		9	1
2092	2020-05-20 23:24:08.218472+10	1088	30 Bayfield Street Bellerive, TAS, Australia	3		9	1
2093	2020-05-20 23:24:08.220913+10	1087	3a Pitt Street North Hobart, TAS, Australia	3		9	1
2094	2020-05-20 23:24:08.223006+10	1086	 C/- Rosny Doctors - 7 Ross Avenue Rosny, TAS, Australia	3		9	1
2095	2020-05-20 23:24:08.224879+10	1085	71 Liverpool Street Hobart, TAS, Australia	3		9	1
2096	2020-05-20 23:24:08.226748+10	1084	106 Best Street Devonport, TAS, Australia	3		9	1
2097	2020-05-20 23:24:08.228578+10	1083	100 Main Street Zeehan, TAS, Australia	3		9	1
2098	2020-05-20 23:24:08.230564+10	1082	1 Hospital Road Rosebery, TAS, Australia	3		9	1
2099	2020-05-20 23:24:08.232396+10	1081	22/42 Mooreville Road Burnie, TAS, Australia	3		9	1
2100	2020-05-20 23:24:08.234231+10	1080	53 Alexander Street Burnie, TAS, Australia	3		9	1
2101	2020-05-20 23:24:08.236177+10	1079	81 Club Drive Shearwater, TAS, Australia	3		9	1
2102	2020-05-20 23:24:08.238286+10	1078	12 Duff Drive Sheffield, TAS, Australia	3		9	1
2103	2020-05-20 23:24:08.240261+10	1077	64 Oldaker Street Devonport, TAS, Australia	3		9	1
2104	2020-05-20 23:24:08.242112+10	1076	19 Ironcliffe Road Penguin, TAS, Australia	3		9	1
2105	2020-05-20 23:24:08.24407+10	1075	 Gaitley Hall 60-64 Orr Street Queenstown, TAS, Australia	3		9	1
2106	2020-05-20 23:24:08.245909+10	1074	35 Edward Street Currie, TAS, Australia	3		9	1
2107	2020-05-20 23:24:08.247897+10	1073	8 Wenvoe Street Devonport, TAS, Australia	3		9	1
2108	2020-05-20 23:24:08.249786+10	1072	37 Valley Road Devonport, TAS, Australia	3		9	1
2109	2020-05-20 23:24:08.251767+10	1071	13 Stephen Street East Devonport, TAS, Australia	3		9	1
2110	2020-05-20 23:24:08.253635+10	1070	3 Bay Street Strahan, TAS, Australia	3		9	1
2111	2020-05-20 23:24:08.255769+10	1069	83 Wilmot Street Burnie, TAS, Australia	3		9	1
2112	2020-05-20 23:24:08.257657+10	1068	6 Patrick Street Ulverstone, TAS, Australia	3		9	1
2113	2020-05-20 23:24:08.259523+10	1067	138 Goldie Street Wynyard, TAS, Australia	3		9	1
2114	2020-05-20 23:24:08.261379+10	1066	14 King Street Smithton, TAS, Australia	3		9	1
2115	2020-05-20 23:24:08.263221+10	1065	199 Mount Street Burnie, TAS, Australia	3		9	1
2116	2020-05-20 23:24:08.265124+10	1064	35/37 Mount Street Burnie, TAS, Australia	3		9	1
2117	2020-05-20 23:24:08.266967+10	1063	Suite 7/8 Level 10 / 10 Marine Terrace Burnie, TAS, Australia	3		9	1
2118	2020-05-20 23:24:08.268856+10	1062	39 Victoria Street Ulverstone, TAS, Australia	3		9	1
2119	2020-05-20 23:24:08.270822+10	1061	 7/48-54 Oldaker Street Devonport, TAS, Australia	3		9	1
2120	2020-05-20 23:24:08.272808+10	1060	45b Gilbert Street Latrobe, TAS, Australia	3		9	1
2121	2020-05-20 23:24:08.274671+10	1059	 Nursing Home Visiting Service Only Launceston, TAS, Australia	3		9	1
2122	2020-05-20 23:24:08.276517+10	1058	33 Brisbane Street Launceston, TAS, Australia	3		9	1
2123	2020-05-20 23:24:08.278424+10	1057	22 Pine Avenue Newstead, TAS, Australia	3		9	1
2124	2020-05-20 23:24:08.280511+10	1056	134 Elphin Road Launceston, TAS, Australia	3		9	1
2125	2020-05-20 23:24:08.282748+10	1055	146 Weld Street Beaconsfield, TAS, Australia	3		9	1
2126	2020-05-20 23:24:08.284622+10	1054	13 Gardiners Creek Road St Marys, TAS, Australia	3		9	1
2127	2020-05-20 23:24:08.286575+10	1053	39/41 Lambert Street Ravenswood, TAS, Australia	3		9	1
2128	2020-05-20 23:24:08.288723+10	1052	 Unit 1/16 Freshwater Point Road Legana, TAS, Australia	3		9	1
2129	2020-05-20 23:24:08.290649+10	1051	Shop 3/282 Invermay Road Mowbray Heights, TAS, Australia	3		9	1
2130	2020-05-20 23:24:08.292698+10	1050	94 Foster Street Bicheno, TAS, Australia	3		9	1
2131	2020-05-20 23:24:08.294561+10	1049	70 High Street Campbell Town, TAS, Australia	3		9	1
2132	2020-05-20 23:24:08.296471+10	1048	180 Fairtlough Street Perth, TAS, Australia	3		9	1
2133	2020-05-20 23:24:08.298515+10	1047	16 West Street Lady Barron, TAS, Australia	3		9	1
2134	2020-05-20 23:24:08.300516+10	1046	 Cnr Peel And Stanley Street Summerhill, TAS, Australia	3		9	1
2135	2020-05-20 23:24:08.302375+10	1045	13 High Street Launceston, TAS, Australia	3		9	1
2136	2020-05-20 23:24:08.304346+10	1044	1977 Main Road Lilydale, TAS, Australia	3		9	1
2137	2020-05-20 23:24:08.3062+10	1043	 Qv Centre - Suite 7 / 7 High Street Launceston, TAS, Australia	3		9	1
2138	2020-05-20 23:24:08.308087+10	1042	4 James Street Whitemark, TAS, Australia	3		9	1
2139	2020-05-20 23:24:08.309983+10	1041	77 Cameron Street Launceston, TAS, Australia	3		9	1
2140	2020-05-20 23:24:08.312015+10	1040	102 Main Road Exeter, TAS, Australia	3		9	1
2141	2020-05-20 23:24:08.314+10	1039	80 Meander Valley Road Westbury, TAS, Australia	3		9	1
2142	2020-05-20 23:24:08.31584+10	1038	22 Tower Hill Street Deloraine, TAS, Australia	3		9	1
2143	2020-05-20 23:24:08.317801+10	1037	28 George Street Longford, TAS, Australia	3		9	1
2144	2020-05-20 23:24:08.319726+10	1036	123 Main Street Bridport, TAS, Australia	3		9	1
2145	2020-05-20 23:24:08.321872+10	1035	269 Wellington Street Launceston, TAS, Australia	3		9	1
2146	2020-05-20 23:24:08.323835+10	1034	137 Hobart Road Kings Meadows, TAS, Australia	3		9	1
2147	2020-05-20 23:24:08.32569+10	1033	165 Elphin Road Newstead, TAS, Australia	3		9	1
2148	2020-05-20 23:24:08.327621+10	1032	86c Hobart Road Kings Meadows, TAS, Australia	3		9	1
2149	2020-05-20 23:24:08.329452+10	1031	54/58 Invermay Road Invermay, TAS, Australia	3		9	1
2150	2020-05-20 23:24:08.331303+10	1030	212 Penquite Road Norwood, TAS, Australia	3		9	1
2151	2020-05-20 23:24:08.333265+10	1029	49 Anne Street George Town, TAS, Australia	3		9	1
2152	2020-05-20 23:24:08.335108+10	1028	278 Invermay Road Mowbray Heights, TAS, Australia	3		9	1
2153	2020-05-20 23:24:08.337041+10	1027	 Launceston Area Launceston, TAS, Australia	3		9	1
2154	2020-05-20 23:24:08.339026+10	1026	2 Fosters Road Scottsdale, TAS, Australia	3		9	1
2155	2020-05-20 23:24:08.34104+10	1025	247 Wellington Street Launceston, TAS, Australia	3		9	1
2156	2020-05-20 23:24:08.343033+10	1024	182 Charles Street Launceston, TAS, Australia	3		9	1
2157	2020-05-20 23:24:08.344978+10	1023	11 Pendrigh Place St Helens, TAS, Australia	3		9	1
2158	2020-05-20 23:24:08.346869+10	1022	66 Giblin Street Lenah Valley, TAS, Australia	3		9	1
2159	2020-05-20 23:24:08.348702+10	1021	408 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2160	2020-05-20 23:24:08.350551+10	1020	6896 Lyell Highway Ouse, TAS, Australia	3		9	1
2161	2020-05-20 23:24:08.352473+10	1019	 Nursing Home Visiting Service Kingston, TAS, Australia	3		9	1
2162	2020-05-20 23:24:08.354392+10	1018	14 Gore Street South Hobart, TAS, Australia	3		9	1
2163	2020-05-20 23:24:08.356531+10	1017	98 New Town Road New Town, TAS, Australia	3		9	1
2164	2020-05-20 23:24:08.358458+10	1016	333 Macquarie Street South Hobart, TAS, Australia	3		9	1
2165	2020-05-20 23:24:08.360429+10	1015	2/25a Bridge Street Richmond, TAS, Australia	3		9	1
2166	2020-05-20 23:24:08.362314+10	1014	711 Main Road Berriedale, TAS, Australia	3		9	1
2167	2020-05-20 23:24:08.36415+10	1013	5 Thorp Street Cygnet, TAS, Australia	3		9	1
2168	2020-05-20 23:24:08.366+10	1012	49 Main Street Huonville, TAS, Australia	3		9	1
2169	2020-05-20 23:24:08.367895+10	1011	 Bayview Market / 1 Opal Drive Blackmans Bay, TAS, Australia	3		9	1
2170	2020-05-20 23:24:08.369743+10	1010	15 Chapman Avenue Dover, TAS, Australia	3		9	1
2171	2020-05-20 23:24:08.372005+10	1009	502 Main Road Montrose, TAS, Australia	3		9	1
2172	2020-05-20 23:24:08.374202+10	1008	16 Main Road Moonah, TAS, Australia	3		9	1
2173	2020-05-20 23:24:08.376057+10	1007	Shop 12a / 20 Channel Highway Kingston, TAS, Australia	3		9	1
2174	2020-05-20 23:24:08.378002+10	1006	Shop 1/52 Carlton Beach Road Dodges Ferry, TAS, Australia	3		9	1
2175	2020-05-20 23:24:08.379873+10	1005	24 Stanfield Drive Old Beach, TAS, Australia	3		9	1
2176	2020-05-20 23:24:08.381859+10	1004	46a Cambridge Road Bellerive, TAS, Australia	3		9	1
2177	2020-05-20 23:24:08.383772+10	1003	18 Gregory Street Sandy Bay, TAS, Australia	3		9	1
2178	2020-05-20 23:24:08.385623+10	1002	 Wrest Point Health Club / 410 Sandy Bay Road Sandy Bay, TAS, Australia	3		9	1
2179	2020-05-20 23:24:08.387731+10	1001	32 Sugarloaf Road Risdon Vale, TAS, Australia	3		9	1
2180	2020-05-20 23:24:08.389873+10	1000	5a Barrack Street Hobart, TAS, Australia	3		9	1
2181	2020-05-20 23:24:08.391993+10	999	1 Bedford Street Brighton, TAS, Australia	3		9	1
2182	2020-05-20 23:24:08.394023+10	998	 C/- East Coast Health / 1 Victoria Street Triabunna, TAS, Australia	3		9	1
2183	2020-05-20 23:24:08.395887+10	997	13 Patrick Street Bothwell, TAS, Australia	3		9	1
2184	2020-05-20 23:24:08.397726+10	996	71 Bathurst Street Hobart, TAS, Australia	3		9	1
2185	2020-05-20 23:24:08.399617+10	995	156 Warwick Street West Hobart, TAS, Australia	3		9	1
2186	2020-05-20 23:24:08.401726+10	994	680 Summerleas Road Fern Tree, TAS, Australia	3		9	1
2187	2020-05-20 23:24:08.404154+10	993	 Greater Hobart Hobart, TAS, Australia	3		9	1
2188	2020-05-20 23:24:08.406141+10	992	12 Box Hill Road Claremont, TAS, Australia	3		9	1
2189	2020-05-20 23:24:08.408024+10	991	45 Hance Road Howrah, TAS, Australia	3		9	1
2190	2020-05-20 23:24:08.409871+10	990	Level 2/57 King Street Sandy Bay, TAS, Australia	3		9	1
2191	2020-05-20 23:24:08.411728+10	989	31 Gordon Street Sorell, TAS, Australia	3		9	1
2192	2020-05-20 23:24:08.413557+10	988	7 Beach Road Snug, TAS, Australia	3		9	1
2193	2020-05-20 23:24:08.415461+10	987	272 Clarence Street Howrah, TAS, Australia	3		9	1
2194	2020-05-20 23:24:08.417373+10	986	48 Cambridge Road Bellerive, TAS, Australia	3		9	1
2195	2020-05-20 23:24:08.419323+10	985	37 Wellington Street Swansea, TAS, Australia	3		9	1
2196	2020-05-20 23:24:08.42136+10	984	430 Macquarie Street South Hobart, TAS, Australia	3		9	1
2197	2020-05-20 23:24:08.423232+10	983	2 Churchill Avenue Sandy Bay, TAS, Australia	3		9	1
2198	2020-05-20 23:24:08.425081+10	982	1614 Nubeena Road Nubeena, TAS, Australia	3		9	1
2199	2020-05-20 23:24:08.426976+10	981	174 Brighton Road Brighton, TAS, Australia	3		9	1
2200	2020-05-20 23:24:08.428885+10	980	3 Stoke Street New Town, TAS, Australia	3		9	1
2201	2020-05-20 23:24:08.430757+10	979	127 New Town Road New Town, TAS, Australia	3		9	1
2202	2020-05-20 23:24:08.432804+10	978	120 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2203	2020-05-20 23:24:08.434772+10	977	15 Franklin Street Lindisfarne, TAS, Australia	3		9	1
2204	2020-05-20 23:24:08.436668+10	976	16/22 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2205	2020-05-20 23:24:08.43883+10	975	444 South Arm Road Lauderdale, TAS, Australia	3		9	1
2206	2020-05-20 23:24:08.440813+10	974	57 Grosvenor Street Sandy Bay, TAS, Australia	3		9	1
2207	2020-05-20 23:24:08.442812+10	973	Level 3/117 Collins Street Hobart, TAS, Australia	3		9	1
2208	2020-05-20 23:24:08.44463+10	972	31 Lincoln Street Lindisfarne, TAS, Australia	3		9	1
2209	2020-05-20 23:24:08.446494+10	971	3 Beach Road Sandy Bay, TAS, Australia	3		9	1
2210	2020-05-20 23:24:08.448353+10	970	20 Shoobridge Street Glebe, TAS, Australia	3		9	1
2211	2020-05-20 23:24:08.450187+10	969	 Shoreline Shopping Centre - Shop 16 / 6 Shoreline Drive Howrah, TAS, Australia	3		9	1
2212	2020-05-20 23:24:08.452179+10	968	346 Main Road Glenorchy, TAS, Australia	3		9	1
2213	2020-05-20 23:24:08.454265+10	967	186 Macquarie Street Hobart, TAS, Australia	3		9	1
2214	2020-05-20 23:24:08.456296+10	966	67 Hopkins Street Moonah, TAS, Australia	3		9	1
2215	2020-05-20 23:24:08.458171+10	965	 Ground Floor / 34 Argyle Street Hobart, TAS, Australia	3		9	1
2216	2020-05-20 23:24:08.460014+10	964	137 New Town Road New Town, TAS, Australia	3		9	1
2217	2020-05-20 23:24:08.461864+10	963	9/11 John Street Kingston, TAS, Australia	3		9	1
2218	2020-05-20 23:24:08.464108+10	962	46 Cambridge Road Bellerive, TAS, Australia	3		9	1
2219	2020-05-20 23:24:08.466454+10	961	 Gattonside - 53 Sandy Bay Road Battery Point, TAS, Australia	3		9	1
2220	2020-05-20 23:24:08.468363+10	960	9/11 Hurst Street Bridgewater, TAS, Australia	3		9	1
2221	2020-05-20 23:24:08.470236+10	959	 L2 57 King Street Sandy Bay, TAS, Australia	3		9	1
2222	2020-05-20 23:24:08.472359+10	958	7 Ross Avenue Rosny Park, TAS, Australia	3		9	1
2223	2020-05-20 23:24:08.47434+10	957	188 Collins Street Hobart, TAS, Australia	3		9	1
2224	2020-05-20 23:24:08.476262+10	956	95 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2225	2020-05-20 23:24:08.478356+10	955	421 Main Road Glenorchy, TAS, Australia	3		9	1
2226	2020-05-20 23:24:08.480212+10	954	112 Cambridge Road Bellerive, TAS, Australia	3		9	1
2227	2020-05-20 23:24:08.482064+10	953	5/1 Stanton Place Cambridge, TAS, Australia	3		9	1
2228	2020-05-20 23:24:08.483947+10	952	 Claremont Village Shop 24-25 / 35 Main Road Claremont, TAS, Australia	3		9	1
2229	2020-05-20 23:24:08.485949+10	951	5 John Street Kingston, TAS, Australia	3		9	1
2230	2020-05-20 23:24:08.487977+10	950	 Unit 233 / 19a Hunter Street Hobart, TAS, Australia	3		9	1
2231	2020-05-20 23:24:08.489879+10	949	 St Luke's Consulting Suites - 16 Lyttleton Street Launceston, TAS, Australia	3		9	1
2232	2020-05-20 23:24:08.491745+10	948	 C/- Smartclinics - 8 Wenvoe Street Devonport, TAS, Australia	3		9	1
2233	2020-05-20 23:24:08.493712+10	947	 C/- St Helens Hospital - Annie Street St Helens, TAS, Australia	3		9	1
2234	2020-05-20 23:24:08.495695+10	946	27 Canning Street Launceston, TAS, Australia	3		9	1
2235	2020-05-20 23:24:08.49748+10	945	Suite 3 - Hobart Private Hospital - 33 Argyle Street Hobart, TAS, Australia	3		9	1
2236	2020-05-20 23:24:08.499368+10	944	Level 2/85 Collins Street Hobart, TAS, Australia	3		9	1
2237	2020-05-20 23:24:08.501361+10	943	10 Joynton Street Lenah Valley, TAS, Australia	3		9	1
2238	2020-05-20 23:24:08.503229+10	942	Suite 8 Ground Flr / 33 Argyle Street Hobart, TAS, Australia	3		9	1
2239	2020-05-20 23:24:08.5057+10	941	12 Joynton Street Lenah Valley, TAS, Australia	3		9	1
2240	2020-05-20 23:24:08.507608+10	940	166 Steele Street Devonport, TAS, Australia	3		9	1
2241	2020-05-20 23:24:08.509465+10	939	 North West Medical Centre - Suite 1 / 21 Brickport Road Burnie, TAS, Australia	3		9	1
2242	2020-05-20 23:24:08.511329+10	938	1 Dowling Street Launceston, TAS, Australia	3		9	1
2243	2020-05-20 23:24:08.513182+10	937	Suite 4/170 George Street Launceston, TAS, Australia	3		9	1
2244	2020-05-20 23:24:08.515033+10	936	Suite 1/170 George Street Launceston, TAS, Australia	3		9	1
2245	2020-05-20 23:24:08.517644+10	935	Suite 2b / Level 2 - 34 Argyle Street Hobart, TAS, Australia	3		9	1
2246	2020-05-20 23:24:08.51951+10	934	 Hobart Private Hospital - Suite 8 / 33 Argyle Street Hobart, TAS, Australia	3		9	1
2247	2020-05-20 23:24:08.521457+10	933	 Hobart Private Hospital - Suite 1/33 Argyle Street Hobart, TAS, Australia	3		9	1
2248	2020-05-20 23:24:08.523317+10	932	36 Collins Street Hobart, TAS, Australia	3		9	1
2249	2020-05-20 23:24:08.525269+10	931	71 Davey Street Hobart, TAS, Australia	3		9	1
2250	2020-05-20 23:24:08.527263+10	930	38 Thistle Street West South Launceston, TAS, Australia	3		9	1
2251	2020-05-20 23:24:08.529107+10	929	4 Warneford Street Hobart, TAS, Australia	3		9	1
2252	2020-05-20 23:24:08.531027+10	928	Level 4/11 High Street Launceston, TAS, Australia	3		9	1
2253	2020-05-20 23:24:08.532904+10	927	168 St John Street Launceston, TAS, Australia	3		9	1
2254	2020-05-20 23:24:08.534798+10	926	 Launceston Lung Centre - 9 Frederick Street Launceston, TAS, Australia	3		9	1
2255	2020-05-20 23:24:08.536687+10	925	 Launceston Health Hub - Level 1 / 247 Wellington Street Launceston, TAS, Australia	3		9	1
2256	2020-05-20 23:24:08.538572+10	924	101 Canning Street Launceston, TAS, Australia	3		9	1
2257	2020-05-20 23:24:08.540612+10	923	8 Collins Street Hobart, TAS, Australia	3		9	1
2258	2020-05-20 23:24:08.542559+10	922	Suite 111/287 Charles Street Launceston, TAS, Australia	3		9	1
2259	2020-05-20 23:24:08.544455+10	921	Suite 9/5 Frederick Street Launceston, TAS, Australia	3		9	1
2260	2020-05-20 23:24:08.546356+10	920	 C/- Heart Care Clinic - Medical Centre - 22 Brickport Road Burnie, TAS, Australia	3		9	1
2261	2020-05-20 23:24:08.548306+10	919	155 George Street Launceston, TAS, Australia	3		9	1
2262	2020-05-20 23:24:08.55021+10	918	137 Elphin Road Newstead, TAS, Australia	3		9	1
2263	2020-05-20 23:24:08.552074+10	917	37b Brisbane Street Launceston, TAS, Australia	3		9	1
2264	2020-05-20 23:24:08.554117+10	916	 No Address Telehealth Service Sandy Bay, TAS, Australia	3		9	1
2265	2020-05-20 23:24:08.556485+10	915	 Statewide Telehealth Service Hobart, TAS, Australia	3		9	1
2266	2020-05-20 23:24:08.558639+10	914	10 Mount Stuart Road Mount Stuart, TAS, Australia	3		9	1
2267	2020-05-20 23:24:08.560525+10	913	 Level 1/suite 2 - Mind Hub City 175 Collins Street Hobart, TAS, Australia	3		9	1
2268	2020-05-20 23:24:08.562362+10	912	Level 4/33 Salamanca Place Hobart, TAS, Australia	3		9	1
2269	2020-05-20 23:24:08.564226+10	911	295 Macquarie Street Hobart, TAS, Australia	3		9	1
2270	2020-05-20 23:24:08.566129+10	910	54 Elphin Road Launceston, TAS, Australia	3		9	1
2271	2020-05-20 23:24:08.568567+10	909	Level 2/34 Argyle Street Hobart, TAS, Australia	3		9	1
2272	2020-05-20 23:24:08.570606+10	908	22 Liverpool Street Hobart, TAS, Australia	3		9	1
2273	2020-05-20 23:24:08.572674+10	907	322 Macquarie Street Hobart, TAS, Australia	3		9	1
2274	2020-05-20 23:24:08.574536+10	906	 Hobart Corporate Centre - L3/85 Macquarie Street Hobart, TAS, Australia	3		9	1
2275	2020-05-20 23:24:08.576436+10	905	 Calvary Hospital 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2276	2020-05-20 23:24:08.578391+10	904	 C/- Launceston Health Hub - 247 Wellington Street Launceston, TAS, Australia	3		9	1
2277	2020-05-20 23:24:08.580242+10	903	24 Canning Street Launceston, TAS, Australia	3		9	1
2278	2020-05-20 23:24:08.582155+10	902	59 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2279	2020-05-20 23:24:08.584019+10	901	Suite 10/33 Argyle Street Hobart, TAS, Australia	3		9	1
2280	2020-05-20 23:24:08.586082+10	900	Suite 3/170 George Street Launceston, TAS, Australia	3		9	1
2281	2020-05-20 23:24:08.588403+10	899	16 Canning Street Launceston, TAS, Australia	3		9	1
2282	2020-05-20 23:24:08.590299+10	898	 Falconer House / St John's Hospital - 30 Cascade Road South Hobart, TAS, Australia	3		9	1
2283	2020-05-20 23:24:08.592156+10	897	61 Oldaker Street Devonport, TAS, Australia	3		9	1
2284	2020-05-20 23:24:08.593956+10	896	30a Cascade Road South Hobart, TAS, Australia	3		9	1
2285	2020-05-20 23:24:08.595787+10	895	 North West Medical Centre - Orthopaedic Suite / 21 Brickport Burnie, TAS, Australia	3		9	1
2286	2020-05-20 23:24:08.597612+10	894	50 Elphin Road Launceston, TAS, Australia	3		9	1
2287	2020-05-20 23:24:08.599441+10	893	 The New Joint - 19 Lyttleton Street Launceston, TAS, Australia	3		9	1
2288	2020-05-20 23:24:08.60135+10	892	1/11 High Street Launceston, TAS, Australia	3		9	1
2289	2020-05-20 23:24:08.603318+10	891	4/23 Brisbane Street Launceston, TAS, Australia	3		9	1
2290	2020-05-20 23:24:08.605461+10	890	 C/- St Johns Hospital - 30 Cascade Road South Hobart, TAS, Australia	3		9	1
2291	2020-05-20 23:24:08.607733+10	889	 Wellington Grange - 30 Cascade Road South Hobart, TAS, Australia	3		9	1
2292	2020-05-20 23:24:08.609593+10	888	71 Federal Street North Hobart, TAS, Australia	3		9	1
2293	2020-05-20 23:24:08.611489+10	887	 C/- Calvary Hospital Campus - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2294	2020-05-20 23:24:08.613357+10	886	268 Macquarie Street Hobart, TAS, Australia	3		9	1
2295	2020-05-20 23:24:08.615223+10	885	69 Davey Street Hobart, TAS, Australia	3		9	1
2296	2020-05-20 23:24:08.617116+10	884	Level 1 St Johns Hospital South Hobart, TAS, Australia	3		9	1
2297	2020-05-20 23:24:08.61898+10	883	4 Eastland Drive Ulverstone, TAS, Australia	3		9	1
2298	2020-05-20 23:24:08.620893+10	882	 North West Medical Centre - Suite 2 / 21 Brickport Road Burnie, TAS, Australia	3		9	1
2299	2020-05-20 23:24:08.622854+10	881	62 Oldaker Street Devonport, TAS, Australia	3		9	1
2300	2020-05-20 23:24:08.624841+10	880	36 Thistle Street West Launceston, TAS, Australia	3		9	1
2301	2020-05-20 23:24:08.626769+10	879	262 Charles Street Launceston, TAS, Australia	3		9	1
2302	2020-05-20 23:24:08.628737+10	878	Shop 77 Channel Court Shopping Centre Kingston, TAS, Australia	3		9	1
2303	2020-05-20 23:24:08.630671+10	877	Grd Floor 2/4 Kirksway Place Hobart, TAS, Australia	3		9	1
2304	2020-05-20 23:24:08.633399+10	876	3/370 Main Road Glenorchy, TAS, Australia	3		9	1
2305	2020-05-20 23:24:08.635743+10	875	Suite 2 Ground Floor - 99 Bathurst Street Hobart, TAS, Australia	3		9	1
2306	2020-05-20 23:24:08.63793+10	874	80 Queen Street Sandy Bay, TAS, Australia	3		9	1
2307	2020-05-20 23:24:08.640167+10	873	182 Argyle Street Hobart, TAS, Australia	3		9	1
2308	2020-05-20 23:24:08.642356+10	872	11 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2309	2020-05-20 23:24:08.644633+10	871	 St Johns Hospital - 30a Cascade Road South Hobart, TAS, Australia	3		9	1
2310	2020-05-20 23:24:08.646818+10	870	199 Campbell Street North Hobart, TAS, Australia	3		9	1
2311	2020-05-20 23:24:08.64911+10	869	201 Davey Street Hobart, TAS, Australia	3		9	1
2312	2020-05-20 23:24:08.651496+10	868	14 Elizabeth Street Launceston, TAS, Australia	3		9	1
2313	2020-05-20 23:24:08.653814+10	867	 North West Private Hospital / 21 Brickport Road Burnie, TAS, Australia	3		9	1
2314	2020-05-20 23:24:08.656137+10	866	21 Brickport Road Burnie, TAS, Australia	3		9	1
2315	2020-05-20 23:24:08.658572+10	865	 Ashton Gate House - 32 High Street East Launceston, TAS, Australia	3		9	1
2316	2020-05-20 23:24:08.66088+10	864	19 Lyttleton Street East Launceston, TAS, Australia	3		9	1
2317	2020-05-20 23:24:08.66306+10	863	16 Clare Street New Town, TAS, Australia	3		9	1
2318	2020-05-20 23:24:08.665374+10	862	2 Melville Street Hobart, TAS, Australia	3		9	1
2319	2020-05-20 23:24:08.667932+10	861	Level 4/81 Elizabeth Street Hobart, TAS, Australia	3		9	1
2320	2020-05-20 23:24:08.670461+10	860	 State Wide Telephone Service Hobart, TAS, Australia	3		9	1
2321	2020-05-20 23:24:08.672743+10	859	Shop 11/12 Cole Street Sorell, TAS, Australia	3		9	1
2322	2020-05-20 23:24:08.674918+10	858	1 Warneford Street South Hobart, TAS, Australia	3		9	1
2323	2020-05-20 23:24:08.677059+10	857	Level 1/2 Melville Street Hobart, TAS, Australia	3		9	1
2324	2020-05-20 23:24:08.679399+10	856	 Calvary Medical Centre - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2325	2020-05-20 23:24:08.68205+10	855	18 Main Road Moonah, TAS, Australia	3		9	1
2326	2020-05-20 23:24:08.68452+10	854	 Marian House - Calvary Hospital Gnd Flr 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2327	2020-05-20 23:24:08.686788+10	853	 Launceston Health Hub - 247 Wellington Street Launceston, TAS, Australia	3		9	1
2328	2020-05-20 23:24:08.689001+10	852	 Montagu House - Calvary Hospital - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2329	2020-05-20 23:24:08.691244+10	851	438 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2330	2020-05-20 23:24:08.69369+10	850	 C/- Mr Penn's Rooms / 19 Lyttleton Street Launceston, TAS, Australia	3		9	1
2331	2020-05-20 23:24:08.695946+10	849	 6th Floor / 18 Elizabeth Street Hobart, TAS, Australia	3		9	1
2332	2020-05-20 23:24:08.698165+10	848	Suite 6/7 High Street - Qv Building East Launceston, TAS, Australia	3		9	1
2333	2020-05-20 23:24:08.700549+10	847	228 Relbia Road Launceston, TAS, Australia	3		9	1
2334	2020-05-20 23:24:08.702789+10	846	 Calvary St Vincents Hospital / 4 Frederick Street Launceston, TAS, Australia	3		9	1
2335	2020-05-20 23:24:08.704971+10	845	 Calvary Hospital - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2336	2020-05-20 23:24:08.707211+10	844	Suite 7 / St Vincent's Hospital / 5 Frederick Street Launceston, TAS, Australia	3		9	1
2337	2020-05-20 23:24:08.70964+10	843	Level 3/34 Argyle Street Hobart, TAS, Australia	3		9	1
2338	2020-05-20 23:24:08.712044+10	842	Suite 2/170 George Street Launceston, TAS, Australia	3		9	1
2339	2020-05-20 23:24:08.714895+10	841	 Launceston Health Hub - L1/247 Wellington Street Launceston, TAS, Australia	3		9	1
2340	2020-05-20 23:24:08.717328+10	840	 Barclay House - 24 Lyttleton Street Launceston, TAS, Australia	3		9	1
2341	2020-05-20 23:24:08.719855+10	839	Suite 5/5 Frederick Street Launceston, TAS, Australia	3		9	1
2342	2020-05-20 23:24:08.722135+10	838	 Lower Level 2 / Calvary Medical Centre / 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2343	2020-05-20 23:24:08.724304+10	837	 Joynton House - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2344	2020-05-20 23:24:08.726468+10	836	Level 3/25 Argyle Street Hobart, TAS, Australia	3		9	1
2345	2020-05-20 23:24:08.728718+10	835	30 Cascade Road South Hobart, TAS, Australia	3		9	1
2346	2020-05-20 23:24:08.731061+10	834	 Hobart Private Specialists - Suite 6/33 Argyle Street Hobart, TAS, Australia	3		9	1
2347	2020-05-20 23:24:08.733304+10	833	324 Macquarie Street South Hobart, TAS, Australia	3		9	1
2348	2020-05-20 23:24:08.735646+10	832	5 Warneford Street South Hobart, TAS, Australia	3		9	1
2349	2020-05-20 23:24:08.73804+10	831	 Wentworth Cottage - St Johns Hospital - 30 Cascade Road South Hobart, TAS, Australia	3		9	1
2350	2020-05-20 23:24:08.740192+10	830	170 St John Street Launceston, TAS, Australia	3		9	1
2351	2020-05-20 23:24:08.742419+10	829	11 Alexandra Road Ulverstone, TAS, Australia	3		9	1
2352	2020-05-20 23:24:08.744784+10	828	194 Wilson Street Burnie, TAS, Australia	3		9	1
2353	2020-05-20 23:24:08.747134+10	827	149 Davey Street Hobart, TAS, Australia	3		9	1
2354	2020-05-20 23:24:08.749814+10	826	77 Elphin Road Newstead, TAS, Australia	3		9	1
2355	2020-05-20 23:24:08.752276+10	825	Suite 5/33 Argyle Street Hobart, TAS, Australia	3		9	1
2356	2020-05-20 23:24:08.754561+10	824	Suite 112/287 Charles Street Launceston, TAS, Australia	3		9	1
2357	2020-05-20 23:24:08.756865+10	823	56 Patrick Street Hobart, TAS, Australia	3		9	1
2358	2020-05-20 23:24:08.75903+10	822	5 Frederick Street Launceston, TAS, Australia	3		9	1
2359	2020-05-20 23:24:08.761214+10	821	13 Wilson Street South Launceston, TAS, Australia	3		9	1
2360	2020-05-20 23:24:08.763517+10	820	1/7 High Street Launceston, TAS, Australia	3		9	1
2361	2020-05-20 23:24:08.766122+10	819	97 King Street Sandy Bay, TAS, Australia	3		9	1
2362	2020-05-20 23:24:08.768471+10	818	46 Elphin Road Launceston, TAS, Australia	3		9	1
2363	2020-05-20 23:24:08.770908+10	817	 Hobart Private Specialists - Suite 9/33 Argyle Street Hobart, TAS, Australia	3		9	1
2364	2020-05-20 23:24:08.773187+10	816	26 Lyttleton Street Launceston, TAS, Australia	3		9	1
2365	2020-05-20 23:24:08.77544+10	815	56 Elphin Road Launceston, TAS, Australia	3		9	1
2366	2020-05-20 23:24:08.777838+10	814	1/247 Wellington Street Launceston, TAS, Australia	3		9	1
2367	2020-05-20 23:24:08.780193+10	813	 Marian House - 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2368	2020-05-20 23:24:08.78291+10	812	121 Hampden Road Hobart, TAS, Australia	3		9	1
2369	2020-05-20 23:24:08.785465+10	811	35a Queen Street Ulverstone, TAS, Australia	3		9	1
2370	2020-05-20 23:24:08.78834+10	810	 U2 / 127-129 Wellington Street Launceston, TAS, Australia	3		9	1
2371	2020-05-20 23:24:08.790874+10	809	30f Cascade Road South Hobart, TAS, Australia	3		9	1
2372	2020-05-20 23:24:08.793756+10	808	71 Frederick Street Launceston, TAS, Australia	3		9	1
2373	2020-05-20 23:24:08.796993+10	807	48 Liverpool Street Hobart, TAS, Australia	3		9	1
2374	2020-05-20 23:24:08.803638+10	806	49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2375	2020-05-20 23:24:08.809113+10	805	 North West Medical Centre - 21 Brickport Road Cooee, TAS, Australia	3		9	1
2376	2020-05-20 23:24:08.811867+10	804	12 Frederick Street Launceston, TAS, Australia	3		9	1
2377	2020-05-20 23:24:08.814409+10	803	18 Clarence Street East Launceston, TAS, Australia	3		9	1
2378	2020-05-20 23:24:08.817017+10	802	9 Frederick Street Launceston, TAS, Australia	3		9	1
2379	2020-05-20 23:24:08.819473+10	801	12 Penquite Road Newstead, TAS, Australia	3		9	1
2380	2020-05-20 23:24:08.822162+10	800	 St Lukes Campus / 16 Lyttleton Street Launceston, TAS, Australia	3		9	1
2381	2020-05-20 23:24:08.824641+10	799	Suite 110/287 Charles Street Launceston, TAS, Australia	3		9	1
2382	2020-05-20 23:24:08.827087+10	798	Suite 1/25 Argyle Street Hobart, TAS, Australia	3		9	1
2383	2020-05-20 23:24:08.829734+10	797	 Hobart Private Hospital / Suite 2 33 Argyle Street Hobart, TAS, Australia	3		9	1
2384	2020-05-20 23:24:08.832303+10	796	Grd Floor 49 Augusta Road Lenah Valley, TAS, Australia	3		9	1
2385	2020-05-20 23:24:08.834738+10	795	36 Thistle Street Launceston, TAS, Australia	3		9	1
2386	2020-05-20 23:24:08.837309+10	794	Suite 11/5 Frederick Street Launceston, TAS, Australia	3		9	1
2387	2020-05-20 23:24:08.839641+10	793	1 Patrick Street Hobart, TAS, Australia	3		9	1
2388	2020-05-20 23:24:08.841919+10	792	Level 1/73 Federal Street North Hobart, TAS, Australia	3		9	1
2389	2020-05-20 23:24:08.844204+10	791	303 Macquarie Street Hobart, TAS, Australia	3		9	1
2390	2020-05-20 23:24:08.846481+10	790	 Hobart Private Specialists - Suite 7/33 Argyle Street Hobart, TAS, Australia	3		9	1
2391	2020-05-20 23:24:08.848821+10	789	31 Chipmans Road Rokeby, TAS, Australia	3		9	1
2392	2020-05-20 23:24:08.85142+10	788	11 Steele Street Devonport, TAS, Australia	3		9	1
2393	2020-05-20 23:24:08.853893+10	787	 Wynyard Medical Centre / 138 Goldie Street Wynyard, TAS, Australia	3		9	1
2394	2020-05-20 23:24:08.856275+10	786	 Statewide Service Ulverstone, TAS, Australia	3		9	1
2395	2020-05-20 23:24:08.858626+10	785	107 Main Road Penguin, TAS, Australia	3		9	1
2396	2020-05-20 23:24:08.862637+10	784	1 Henry Street Sheffield, TAS, Australia	3		9	1
2397	2020-05-20 23:24:08.86554+10	783	152 Wilson Street Burnie, TAS, Australia	3		9	1
2398	2020-05-20 23:24:08.868541+10	782	22 Kingsley Avenue Burnie, TAS, Australia	3		9	1
2399	2020-05-20 23:24:08.871698+10	781	 Currie Library / Meech Street Currie, TAS, Australia	3		9	1
2400	2020-05-20 23:24:08.876019+10	780	 Rural Health Centre - 68 Emmett Street Smithton, TAS, Australia	3		9	1
2401	2020-05-20 23:24:08.882063+10	779	 North West Private Hospital - 21 Brickport Road Burnie, TAS, Australia	3		9	1
2402	2020-05-20 23:24:08.886282+10	778	52/56 Bass Highway Cooee, TAS, Australia	3		9	1
2403	2020-05-20 23:24:08.888814+10	777	37 Jackson Street Wynyard, TAS, Australia	3		9	1
2404	2020-05-20 23:24:08.891381+10	776	1/3 Reeve Street Burnie, TAS, Australia	3		9	1
2405	2020-05-20 23:24:08.893708+10	775	12 Hale Street Burnie, TAS, Australia	3		9	1
2406	2020-05-20 23:24:08.89597+10	774	120 Gilbert Street Latrobe, TAS, Australia	3		9	1
2407	2020-05-20 23:24:08.898213+10	773	9 Oldaker Street Devonport, TAS, Australia	3		9	1
2408	2020-05-20 23:24:08.900493+10	772	 King Island Hospital And Health Centre 35 Edward Street Currie, TAS, Australia	3		9	1
2409	2020-05-20 23:24:08.90272+10	771	 Tas Family Medical / 1-3 Reeve Street Burnie, TAS, Australia	3		9	1
2410	2020-05-20 23:24:08.904903+10	770	22 King Edward Street Ulverstone, TAS, Australia	3		9	1
2411	2020-05-20 23:24:08.907139+10	769	 Zeehan Neighbourhood Centre / 27 Belshead Street Zeehan, TAS, Australia	3		9	1
2412	2020-05-20 23:24:08.909403+10	768	 Medical Union Health Centre - 14-16 Orr Street Queenstown, TAS, Australia	3		9	1
2413	2020-05-20 23:24:08.911676+10	767	 Somerset Medical Centre / 33 Falmouth Street Somerset, TAS, Australia	3		9	1
2414	2020-05-20 23:24:08.914759+10	766	 Kentish Family Support House / 5 Austin Place Sheffield, TAS, Australia	3		9	1
2415	2020-05-20 23:24:08.91702+10	765	47 King Edward Street Ulverstone, TAS, Australia	3		9	1
2416	2020-05-20 23:24:08.919252+10	764	 Aberdeen - 10 Bourke Street Burnie, TAS, Australia	3		9	1
2417	2020-05-20 23:24:08.921612+10	763	68 Oldaker Street Devonport, TAS, Australia	3		9	1
2418	2020-05-20 23:24:08.923944+10	762	35 Frederick Street Wynyard, TAS, Australia	3		9	1
2419	2020-05-20 23:24:08.926203+10	761	33 Falmouth Street Somerset, TAS, Australia	3		9	1
2420	2020-05-20 23:24:08.928458+10	760	22 Shearwater Boulevard Shearwater, TAS, Australia	3		9	1
2421	2020-05-20 23:24:08.930698+10	759	Suite 17 - Level 2 Holyman House / 52 Brisbane Street Launceston, TAS, Australia	3		9	1
2422	2020-05-20 23:24:08.93286+10	758	Level 2/63 St John Street Launceston, TAS, Australia	3		9	1
2423	2020-05-20 23:24:08.934887+10	757	 C/- Mowbray Medical - 3/282 Invermay Road Mowbray, TAS, Australia	3		9	1
2424	2020-05-20 23:24:08.936757+10	756	 C/- Campbell Town Doctors Surgery - High Street Campbell Town, TAS, Australia	3		9	1
2425	2020-05-20 23:24:08.938845+10	755	4 Trotters Lane Prospect, TAS, Australia	3		9	1
2426	2020-05-20 23:24:08.940684+10	754	 Your Health Hub - 247 Wellington Street Launceston, TAS, Australia	3		9	1
2427	2020-05-20 23:24:08.942556+10	753	8a High Street Evandale, TAS, Australia	3		9	1
2428	2020-05-20 23:24:08.944468+10	752	86 Meander Valley Road Westbury, TAS, Australia	3		9	1
2429	2020-05-20 23:24:08.946412+10	751	5 Innes Street Launceston, TAS, Australia	3		9	1
2430	2020-05-20 23:24:08.94852+10	750	144 Weld Street Beaconsfield, TAS, Australia	3		9	1
2431	2020-05-20 23:24:08.950762+10	749	112 Emu Bay Road Deloraine, TAS, Australia	3		9	1
2432	2020-05-20 23:24:08.95297+10	748	 City Mill Business Centre - 76 York Street Launceston, TAS, Australia	3		9	1
2433	2020-05-20 23:24:08.955237+10	747	337 St Leonards Road St Leonards, TAS, Australia	3		9	1
2434	2020-05-20 23:24:08.957433+10	746	Level 1 / Launceston Health Hub - 247 Wellington Street Launceston, TAS, Australia	3		9	1
2435	2020-05-20 23:24:08.959489+10	745	 Crab Tree Chambers / 1st Floor / 96-102 St John Street Launceston, TAS, Australia	3		9	1
2436	2020-05-20 23:24:08.961631+10	744	169 Elphin Road Newstead, TAS, Australia	3		9	1
2437	2020-05-20 23:24:08.963791+10	743	 Riverlands Centre 159 Wellington Street Longford, TAS, Australia	3		9	1
2438	2020-05-20 23:24:08.965912+10	742	Level 1/14 Wentworth Street Newstead, TAS, Australia	3		9	1
2439	2020-05-20 23:24:08.96812+10	741	 Flinders Island Mpc 4 James Street  Whitemark, TAS, Australia	3		9	1
2440	2020-05-20 23:24:08.970331+10	740	Level 2/39 Paterson St Launceston, TAS, Australia	3		9	1
2441	2020-05-20 23:24:08.972453+10	739	64 Invermay Road Invermay, TAS, Australia	3		9	1
2442	2020-05-20 23:24:08.974614+10	738	 Corner Brisbane And Wellington Street Launceston, TAS, Australia	3		9	1
2443	2020-05-20 23:24:08.976767+10	737	67 Elphin Road East Launceston, TAS, Australia	3		9	1
2444	2020-05-20 23:24:08.978982+10	736	1/116 York Street Launceston, TAS, Australia	3		9	1
2445	2020-05-20 23:24:08.981213+10	735	 Launceston Health Hub 247 Wellington Street Launceston, TAS, Australia	3		9	1
2446	2020-05-20 23:24:08.983412+10	734	124 Talbot Road South Launceston, TAS, Australia	3		9	1
2447	2020-05-20 23:24:08.985514+10	733	Level 2 Holyman House / 52 Brisbane Street Launceston, TAS, Australia	3		9	1
2448	2020-05-20 23:24:08.987713+10	732	Level 2/39 Paterson Street Launceston, TAS, Australia	3		9	1
2449	2020-05-20 23:24:08.989776+10	731	68 Paterson Street Launceston, TAS, Australia	3		9	1
2450	2020-05-20 23:24:08.991802+10	730	1 Elphin Road Launceston, TAS, Australia	3		9	1
2451	2020-05-20 23:24:08.993652+10	729	1 Windsor Drive Riverside, TAS, Australia	3		9	1
2452	2020-05-20 23:24:08.995554+10	728	Suite 21/76 York Street Launceston, TAS, Australia	3		9	1
2453	2020-05-20 23:24:08.997498+10	727	54 Canning Street Launceston, TAS, Australia	3		9	1
2454	2020-05-20 23:24:08.999471+10	726	455 Wellington Street South Launceston, TAS, Australia	3		9	1
2455	2020-05-20 23:24:09.001378+10	725	50a Frankland Street Launceston, TAS, Australia	3		9	1
2456	2020-05-20 23:24:09.003563+10	724	Level 1/233 Charles Street Launceston, TAS, Australia	3		9	1
2457	2020-05-20 23:24:09.005696+10	723	 C/- In-balance - Level 1 / 233b Charles Street Launceston, TAS, Australia	3		9	1
2458	2020-05-20 23:24:09.007757+10	722	 Po Box 650 Kingston, TAS, Australia	3		9	1
2459	2020-05-20 23:24:09.009886+10	721	Shop 3/5 Station Lane Sorell, TAS, Australia	3		9	1
2460	2020-05-20 23:24:09.01215+10	720	 C/- Tasman Medical Practice - 1614 Nubeena Road Nubeena, TAS, Australia	3		9	1
2461	2020-05-20 23:24:09.014561+10	719	12 Bridge Street Richmond, TAS, Australia	3		9	1
2462	2020-05-20 23:24:09.016751+10	718	2 Edward Street Glebe, TAS, Australia	3		9	1
2463	2020-05-20 23:24:09.018896+10	717	 University Of Tasmania / Clarke Road Sandy Bay, TAS, Australia	3		9	1
2464	2020-05-20 23:24:09.021148+10	716	 Philip Smith Centre / 2 Edward Street Glebe, TAS, Australia	3		9	1
2465	2020-05-20 23:24:09.023535+10	715	25 Davey Street Hobart, TAS, Australia	3		9	1
2466	2020-05-20 23:24:09.025672+10	714	30 Lincoln Street Lindisfarne, TAS, Australia	3		9	1
2467	2020-05-20 23:24:09.027687+10	713	270 Sandy Bay Road Sandy Bay, TAS, Australia	3		9	1
2468	2020-05-20 23:24:09.029656+10	712	254 Main Road Derwent Park, TAS, Australia	3		9	1
2469	2020-05-20 23:24:09.031686+10	711	10 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2470	2020-05-20 23:24:09.033816+10	710	 Highfield House Rooms 26-28 / 114 Bathurst Street Hobart, TAS, Australia	3		9	1
2471	2020-05-20 23:24:09.035951+10	709	 Room 3 - The Old Parsonage / 160 New Town Road New Town, TAS, Australia	3		9	1
2472	2020-05-20 23:24:09.038022+10	708	11 Burnett Street New Norfolk, TAS, Australia	3		9	1
2473	2020-05-20 23:24:09.040003+10	707	107 Newdegate Street West Hobart, TAS, Australia	3		9	1
2474	2020-05-20 23:24:09.042165+10	706	 Outreach Service Only Hobart, TAS, Australia	3		9	1
2475	2020-05-20 23:24:09.044351+10	705	Suite 105/86 Murray Street Hobart, TAS, Australia	3		9	1
2476	2020-05-20 23:24:09.04655+10	704	58 Melville Street Hobart, TAS, Australia	3		9	1
2477	2020-05-20 23:24:09.0487+10	703	 Room 2 - 326 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2478	2020-05-20 23:24:09.050795+10	702	85 Main Road Huonville, TAS, Australia	3		9	1
2479	2020-05-20 23:24:09.052826+10	701	16 School Road Alonnah, TAS, Australia	3		9	1
2480	2020-05-20 23:24:09.054803+10	700	28 Franklin Street Richmond, TAS, Australia	3		9	1
2481	2020-05-20 23:24:09.056888+10	699	2 Gore Street South Hobart, TAS, Australia	3		9	1
2482	2020-05-20 23:24:09.059129+10	698	21 Bathurst Street Hobart, TAS, Australia	3		9	1
2483	2020-05-20 23:24:09.061522+10	697	 Huon Consult Rooms / 6 Skinner Drive Huonville, TAS, Australia	3		9	1
2484	2020-05-20 23:24:09.063878+10	696	70 Sandy Bay Road Battery Point, TAS, Australia	3		9	1
2485	2020-05-20 23:24:09.066572+10	695	 Telehealth Service Hobart, TAS, Australia	3		9	1
2486	2020-05-20 23:24:09.069107+10	694	111 Montagu Street New Town, TAS, Australia	3		9	1
2487	2020-05-20 23:24:09.071703+10	693	44a Lincoln Street Lindisfarne, TAS, Australia	3		9	1
2488	2020-05-20 23:24:09.074238+10	692	26 Waverley Street Bellerive, TAS, Australia	3		9	1
2489	2020-05-20 23:24:09.076684+10	691	71 Murray Street Hobart, TAS, Australia	3		9	1
2490	2020-05-20 23:24:09.079049+10	690	 Outreach Services Hobart, TAS, Australia	3		9	1
2491	2020-05-20 23:24:09.081422+10	689	32 Ormond Street Bellerive, TAS, Australia	3		9	1
2492	2020-05-20 23:24:09.083972+10	688	Suite 15b / L3 Galleria Building 33 Salamanca Place Hobart, TAS, Australia	3		9	1
2493	2020-05-20 23:24:09.086514+10	687	235 Carella Street Howrah, TAS, Australia	3		9	1
2494	2020-05-20 23:24:09.089015+10	686	 Avalon / 436 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2495	2020-05-20 23:24:09.091485+10	685	25 Argyle Street Hobart, TAS, Australia	3		9	1
2496	2020-05-20 23:24:09.093865+10	684	93 Hill Street West Hobart, TAS, Australia	3		9	1
2497	2020-05-20 23:24:09.09621+10	683	205 Davey Street Hobart, TAS, Australia	3		9	1
2498	2020-05-20 23:24:09.098895+10	682	12 Sonning Cresent Sandy Bay, TAS, Australia	3		9	1
2499	2020-05-20 23:24:09.101271+10	681	Level 1/121 Collins Street Hobart, TAS, Australia	3		9	1
2500	2020-05-20 23:24:09.10391+10	680	 St Helen's Private Hospital - 186 Macquarie Street Hobart, TAS, Australia	3		9	1
2501	2020-05-20 23:24:09.106189+10	679	Suite 9/2 Bayfield Street Rosny, TAS, Australia	3		9	1
2502	2020-05-20 23:24:09.108513+10	678	Suite 7/326 Elizabeth St North Hobart, TAS, Australia	3		9	1
2503	2020-05-20 23:24:09.111274+10	677	6 Freeman Street Kingston, TAS, Australia	3		9	1
2504	2020-05-20 23:24:09.113315+10	676	86 Hampden Road Battery Point, TAS, Australia	3		9	1
2505	2020-05-20 23:24:09.115387+10	675	252 Main Road Derwent Park, TAS, Australia	3		9	1
2506	2020-05-20 23:24:09.117542+10	674	8 Thelma Drive Hobart, TAS, Australia	3		9	1
2507	2020-05-20 23:24:09.119559+10	673	63/83 Creek Road New Town, TAS, Australia	3		9	1
2508	2020-05-20 23:24:09.121428+10	672	73 Federal Street North Hobart, TAS, Australia	3		9	1
2509	2020-05-20 23:24:09.123255+10	671	 John Street Medical Centre - 5 John Street Kingston, TAS, Australia	3		9	1
2510	2020-05-20 23:24:09.125224+10	670	Level 2/38 Montpelier Retreat Battery Point, TAS, Australia	3		9	1
2511	2020-05-20 23:24:09.127151+10	669	202 Davey Street Hobart, TAS, Australia	3		9	1
2512	2020-05-20 23:24:09.141625+10	668	46 South Arm Road Rokeby, TAS, Australia	3		9	1
2513	2020-05-20 23:24:09.146706+10	667	160 New Town Road New Town, TAS, Australia	3		9	1
2514	2020-05-20 23:24:09.150009+10	666	Suite 6/340 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2515	2020-05-20 23:24:09.152707+10	665	11 Gregory Street Sandy Bay, TAS, Australia	3		9	1
2516	2020-05-20 23:24:09.155241+10	664	Level 3 / 31-33 Cambridge Road Bellerive, TAS, Australia	3		9	1
2517	2020-05-20 23:24:09.157747+10	663	Shop 4/7 John Street Kingston, TAS, Australia	3		9	1
2518	2020-05-20 23:24:09.160165+10	662	436 Elizabeth Street North Hobart, TAS, Australia	3		9	1
2519	2020-05-20 23:24:09.164107+10	661	13 Ferguson Court Kingston, TAS, Australia	3		9	1
2520	2020-05-20 23:24:09.166639+10	660	49 Liverpool Street Hobart, TAS, Australia	3		9	1
2521	2020-05-20 23:24:09.16921+10	659	Level 1/14 Molle Street Hobart, TAS, Australia	3		9	1
2522	2020-05-20 23:24:09.171813+10	658	87 Princes Street Sandy Bay, TAS, Australia	3		9	1
2523	2020-05-20 23:24:09.174265+10	657	8/39 Murray Street Hobart, TAS, Australia	3		9	1
2524	2020-05-20 23:24:09.176625+10	656	 Highfield House - 114 Bathurst Street Hobart, TAS, Australia	3		9	1
2525	2020-05-20 23:24:09.179022+10	655	2 Recreation Street Kingston Beach, TAS, Australia	3		9	1
2526	2020-05-20 23:24:09.182577+10	654	19 Arve Road Geeveston, TAS, Australia	3		9	1
2527	2020-05-20 23:24:09.18523+10	653	14 George Street Cygnet, TAS, Australia	3		9	1
2528	2020-05-20 23:24:09.187562+10	652	 S16 L3 Galleria Building 33 Salamanca Place Battery Point, TAS, Australia	3		9	1
2529	2020-05-20 23:24:09.189856+10	651	Floor 1/14 Molle Street Hobart, TAS, Australia	3		9	1
2530	2020-05-20 23:24:09.192172+10	650	159 Campbell Street Hobart, TAS, Australia	3		9	1
2531	2020-05-20 23:24:09.194455+10	649	Level 1/2 Churchill Avenue Sandy Bay, TAS, Australia	3		9	1
2532	2020-05-20 23:24:09.196694+10	648	 C/- Clarence Gp Super Clinic / 16-22 Bayfield Street Rosny Park, TAS, Australia	3		9	1
2533	2020-05-20 23:24:09.199084+10	647	277 Macquarie Street Hobart, TAS, Australia	3		9	1
2534	2020-05-20 23:24:09.201736+10	646	81 Princes Street Sandy Bay, TAS, Australia	3		9	1
2535	2020-05-20 23:24:09.204176+10	645	16 Archer Street New Town, TAS, Australia	3		9	1
2536	2020-05-20 23:24:09.2066+10	644	Level 1/8 Brooke Street Hobart, TAS, Australia	3		9	1
2537	2020-05-20 23:24:09.208988+10	643	 C/- Sorell Doctors Surgery - 31 Gordon Street Sorell, TAS, Australia	3		9	1
2538	2020-05-20 23:24:09.21128+10	642	 C/- Eastern Shore Audiology Services - 1a/120 Cambridge Road Bellerive, TAS, Australia	3		9	1
2539	2020-05-20 23:24:09.213501+10	641	29 John Street Kingston, TAS, Australia	3		9	1
2540	2020-05-20 23:24:09.215907+10	640	287 Macquarie Street Hobart, TAS, Australia	3		9	1
2541	2020-05-20 23:24:09.218655+10	639	16a Gregory Street Sandy Bay, TAS, Australia	3		9	1
2542	2020-05-25 21:08:33.503521+10	5321	None Anna De La Rue	2	[{"changed": {"fields": ["First name", "Last name"]}}]	13	1
2543	2020-05-25 21:08:50.155146+10	5320	None John De Jong	2	[{"changed": {"fields": ["First name", "Last name"]}}]	13	1
2547	2020-05-25 21:14:44.521967+10	4801	None Leon Yipeng Li	2	[{"changed": {"fields": ["First name", "Last name"]}}]	13	1
2548	2020-05-25 21:29:43.633293+10	103	Psychologists	3		24	1
2549	2020-06-14 15:04:13.334329+10	1	User object (1)	3		30	1
2550	2020-06-14 17:07:37.231933+10	3	User object (3)	3		30	1
2551	2020-06-14 17:07:37.241356+10	2	User object (2)	3		30	1
2552	2020-06-14 17:54:33.914778+10	7	User object (7)	3		30	1
2553	2020-06-14 17:54:33.92564+10	6	User object (6)	3		30	1
2554	2020-06-14 17:54:33.928643+10	5	User object (5)	3		30	1
2555	2020-06-14 17:54:33.932935+10	4	User object (4)	3		30	1
2556	2020-06-16 15:19:51.607837+10	8	User object (8)	3		30	1
2557	2020-07-03 19:25:08.051157+10	9	User object (9)	1	[{"added": {}}]	30	1
2558	2020-07-03 19:26:36.578057+10	1	ProfessionalGroup object (1)	1	[{"added": {}}]	26	1
2559	2020-07-03 19:26:51.429435+10	1	ProfessionalGroup object (1)	2	[{"changed": {"fields": ["Description"]}}]	26	1
2560	2020-07-03 19:32:30.37517+10	1	Favourites - UK4BSGB9 -  Lucy Alexander	1	[{"added": {}}]	27	1
2561	2020-07-03 19:32:59.271885+10	2	Favourites - UK4BSGB9 -  Nick Atwell	1	[{"added": {}}]	27	1
2562	2020-07-03 19:33:42.939488+10	2	Cardiologists - UK4BSGB9	1	[{"added": {}}]	26	1
2563	2020-07-03 19:34:03.465229+10	3	Cardiologists - UK4BSGB9 -  John Beadle	1	[{"added": {}}]	27	1
2564	2020-07-04 14:44:16.14258+10	17	adadaad - UK4BSGB9	3		26	1
2565	2020-07-04 14:44:16.153476+10	16	adaaad - UK4BSGB9	3		26	1
2566	2020-07-04 14:44:16.156527+10	15	adaa - UK4BSGB9	3		26	1
2567	2020-07-04 14:44:16.159304+10	14	ada - UK4BSGB9	3		26	1
2568	2020-07-04 14:44:16.16205+10	12	ad - UK4BSGB9	3		26	1
2569	2020-07-04 14:44:16.164637+10	11	a - UK4BSGB9	3		26	1
2570	2020-07-04 14:44:16.167305+10	10	Newsddfd - UK4BSGB9	3		26	1
2571	2020-07-04 14:44:16.169819+10	9	Newsdfd - UK4BSGB9	3		26	1
2572	2020-07-04 14:44:16.172268+10	8	Newsd - UK4BSGB9	3		26	1
2573	2020-07-04 14:44:16.174832+10	7	News - UK4BSGB9	3		26	1
2574	2020-07-04 14:44:16.17727+10	6	New - UK4BSGB9	3		26	1
2575	2020-07-04 14:44:16.179593+10	3	New Group - UK4BSGB9	3		26	1
2576	2020-07-05 18:36:17.749997+10	26	ddd - UK4BSGB9	3		26	1
2577	2020-07-05 18:36:17.762247+10	25	a - UK4BSGB9	3		26	1
2578	2020-07-05 18:36:17.765716+10	24	asdfasdfasdf - UK4BSGB9	3		26	1
2579	2020-07-05 18:36:17.768453+10	23	Mal's Group - UK4BSGB9	3		26	1
2580	2020-07-05 18:36:17.771213+10	22	New Grp - UK4BSGB9	3		26	1
2581	2020-07-05 18:36:17.773915+10	21	asdfas - UK4BSGB9	3		26	1
2582	2020-07-05 18:36:17.776604+10	19	afsdfasdf - UK4BSGB9	3		26	1
2583	2020-07-05 18:36:17.780259+10	18	asdf - UK4BSGB9	3		26	1
2584	2020-10-06 14:21:42.641371+11	34	asdfasdfasdf - UK4BSGB9	3		26	1
2585	2020-10-06 14:21:42.678891+11	32	Hi - UK4BSGB9	3		26	1
2586	2020-10-06 14:21:42.681454+11	31	Corrected Again List - UK4BSGB9	3		26	1
2587	2020-10-06 14:21:42.682944+11	30	Favourites - UK4BSGB9	3		26	1
2588	2020-10-06 14:21:42.684363+11	29	Another One - UK4BSGB9	3		26	1
2589	2020-10-06 14:21:42.685813+11	28	New Group - UK4BSGB9	3		26	1
2590	2020-10-06 14:21:42.687306+11	27	asdfasd - UK4BSGB9	3		26	1
2591	2020-10-06 14:21:42.688679+11	2	cardiologists - UK4BSGB9	3		26	1
2592	2020-10-06 14:21:42.690051+11	1	A Favourites List - UK4BSGB9	3		26	1
2593	2020-10-06 14:22:03.880283+11	47	A Favourites List - UK4BSGB9 -  Rima Aalto	3		27	1
2594	2020-10-06 14:22:03.883065+11	46	A Favourites List - UK4BSGB9 -  Mafada Abduallah	3		27	1
2595	2020-10-06 14:22:03.884619+11	45	A Favourites List - UK4BSGB9 -  Mehrdad Abbasianasl	3		27	1
2596	2020-10-06 14:22:03.886104+11	44	A Favourites List - UK4BSGB9 -  Michael Bremner	3		27	1
2597	2020-10-06 14:22:03.887615+11	30	asdfasd - UK4BSGB9 -  Michael Bremner	3		27	1
2598	2020-10-06 14:22:03.889075+11	15	cardiologists - UK4BSGB9 -  Di Burgess	3		27	1
2599	2020-10-06 14:22:03.890626+11	9	Favourites - UK4BSGB9 -  John Carney	3		27	1
2600	2020-10-06 14:22:03.892053+11	7	New Group - UK4BSGB9 -  Gregory Austin	3		27	1
2601	2020-10-06 14:22:03.893514+11	6	New Group - UK4BSGB9 -  Malcolm Anderson	3		27	1
2602	2020-10-06 14:22:15.673175+11	34	asdfasdfasdf - UK4BSGB9	3		26	1
2603	2020-10-06 14:22:15.675883+11	32	Hi - UK4BSGB9	3		26	1
2604	2020-10-06 14:22:15.67883+11	31	Corrected Again List - UK4BSGB9	3		26	1
2605	2020-10-06 14:22:15.680423+11	30	Favourites - UK4BSGB9	3		26	1
2606	2020-10-06 14:22:15.68188+11	29	Another One - UK4BSGB9	3		26	1
2607	2020-10-06 14:22:15.683351+11	28	New Group - UK4BSGB9	3		26	1
2608	2020-10-06 14:22:15.684845+11	27	asdfasd - UK4BSGB9	3		26	1
2609	2020-10-06 14:22:15.686266+11	2	cardiologists - UK4BSGB9	3		26	1
2610	2020-10-06 14:22:15.688706+11	1	A Favourites List - UK4BSGB9	3		26	1
2611	2020-10-07 21:44:42.25806+11	66	Dad's Groups - UK4BSGB9 -  Di Burgess	3		27	1
2612	2020-10-07 21:44:42.265192+11	65	Dad's Groups - UK4BSGB9 -  Clare Combey	3		27	1
2613	2020-10-07 21:44:42.266828+11	64	Dad's Groups - UK4BSGB9 -  Colin Chilvers	3		27	1
2614	2020-10-07 21:44:42.269163+11	63	Dad's Groups - UK4BSGB9 -  Michael Bremner	3		27	1
2615	2020-10-07 21:44:42.270976+11	62	Dad's Groups - UK4BSGB9 -  John Carney	3		27	1
2616	2020-10-07 21:44:42.272826+11	61	Dad's Groups - UK4BSGB9 -  Gregory Austin	3		27	1
2617	2020-10-07 21:44:42.274365+11	60	Dad's Groups - UK4BSGB9 -  Malcolm Anderson	3		27	1
2618	2020-10-07 21:44:42.275786+11	59	Dad's Groups - UK4BSGB9 -  Patricia Aitken	3		27	1
2619	2020-10-07 21:44:42.277301+11	58	Dad's Groups - UK4BSGB9 -  Baxter Adams	3		27	1
2620	2020-10-07 21:44:42.278696+11	57	Dad's Groups - UK4BSGB9 -  Mawgoshia-Annia (Meg) Baron	3		27	1
2621	2020-10-07 21:44:42.280091+11	56	Dad's Groups - UK4BSGB9 -  Jeremy Adams	3		27	1
2622	2020-10-07 21:44:42.282368+11	55	Hello there - UK4BSGB9 -  Patricia Aitken	3		27	1
2623	2020-10-07 21:44:42.28385+11	54	Hello there - UK4BSGB9 -  Baxter Adams	3		27	1
2624	2020-10-07 21:44:42.285227+11	53	Hello there - UK4BSGB9 -  Jeremy Adams	3		27	1
2625	2020-10-07 21:44:42.287041+11	52	asdfdfd - UK4BSGB9 -  Gregory Austin	3		27	1
2626	2020-10-07 21:44:42.288463+11	51	asdfdfd - UK4BSGB9 -  Malcolm Anderson	3		27	1
2627	2020-10-07 21:44:53.623279+11	43	Another One - UK4BSGB9	3		26	1
2628	2020-10-07 21:44:53.626121+11	42	New Group Time! - UK4BSGB9	3		26	1
2629	2020-10-07 21:44:53.627656+11	41	Dad's Groups - UK4BSGB9	3		26	1
2630	2020-10-07 21:44:53.629059+11	40	Hello there - UK4BSGB9	3		26	1
2631	2020-10-07 21:44:53.630422+11	39	fasfasd - UK4BSGB9	3		26	1
2632	2020-10-07 21:44:53.631785+11	38	asdfas - UK4BSGB9	3		26	1
2633	2020-10-07 21:44:53.633043+11	37	NewGroup - UK4BSGB9	3		26	1
2634	2020-10-07 21:44:53.634342+11	36	Favourites - UK4BSGB9	3		26	1
2635	2020-10-07 21:44:53.635613+11	35	asdfdfd - UK4BSGB9	3		26	1
2636	2020-10-10 10:45:41.23082+11	68	Pain Management - UK4BSGB9 -  Brad Mertens	3		27	1
2637	2020-10-10 10:45:41.237382+11	67	Pain Management - UK4BSGB9 -  Kerry Merse	3		27	1
2638	2020-10-10 10:45:51.037632+11	46	Pain Management - UK4BSGB9	3		26	1
2639	2020-10-10 10:45:51.040426+11	45	Elliot - UK4BSGB9	3		26	1
2640	2020-10-10 10:45:51.042054+11	44	New Group - UK4BSGB9	3		26	1
2641	2020-10-25 19:00:02.218688+11	47	Favourites - UK4BSGB9	2	[{"changed": {"fields": ["Name"]}}]	26	1
2642	2020-11-02 23:27:39.83715+11	108	Favourites - UHY4RC6D -  Brian Herman	3		27	1
2643	2020-11-02 23:27:39.847903+11	104	Favourites - UHY4RC6D -  Ai Vee Ng	3		27	1
2644	2020-11-02 23:27:39.84997+11	103	Favourites - UK4BSGB9 -  Bronwyn Fitzgerald	3		27	1
2645	2020-11-02 23:27:39.852183+11	102	Favourites - UK4BSGB9 -  Ben Nind	3		27	1
2646	2020-11-02 23:27:39.854476+11	100	Favourites - UK4BSGB9 -  Bruno Cayoun	3		27	1
2647	2020-11-02 23:27:39.855942+11	99	Favourites - UK4BSGB9 -  Adela Marrone	3		27	1
2648	2020-11-02 23:27:39.857592+11	84	Favourites - UK4BSGB9 -  Alexandra Hunn	3		27	1
2649	2020-11-02 23:27:39.859671+11	74	Pain Management - UK4BSGB9 -  Christina Anderson	3		27	1
2650	2020-11-02 23:27:39.861688+11	73	Pain Management - UK4BSGB9 -  Mark Andersen	3		27	1
2651	2020-11-02 23:27:39.863073+11	72	Pain Management - UK4BSGB9 -  Heath Adams	3		27	1
2652	2020-11-02 23:27:39.864395+11	70	Favourites - UK4BSGB9 -  Saheb Al-Daher	3		27	1
2653	2020-11-02 23:27:39.865879+11	69	Favourites - UK4BSGB9 -  Heath Adams	3		27	1
2654	2020-11-02 23:27:54.762231+11	128	Favourites - UK4BSGB9 -  Ai Vee Ng	3		27	1
2655	2020-11-02 23:27:54.765605+11	126	Favourites - UK4BSGB9 -  Andrew Black	3		27	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	clinics	clinic
8	clinics	clinicflaggedclinic
9	clinics	location
10	clinics	organisation
11	clinics	clinicflaggedprofessional
12	professionals	area
13	professionals	professional
14	professionals	rate
15	professionals	role
16	professionals	professionalflaggedprofessional
17	professionals	professionalflaggedclinic
18	questions	choice
19	questions	position
20	questions	questionnaire
21	questions	question
22	questions	professionalanswer
23	questions	clinicanswer
24	professionals	professiontype
25	professionals	profession
26	professionals	professionalgroup
27	professionals	professionalgroupmapping
28	users	usernotesclinic
29	users	usernotesprofessional
30	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-20 20:02:38.089028+10
2	auth	0001_initial	2020-05-20 20:02:38.131528+10
3	admin	0001_initial	2020-05-20 20:02:38.175501+10
4	admin	0002_logentry_remove_auto_add	2020-05-20 20:02:38.194242+10
5	admin	0003_logentry_add_action_flag_choices	2020-05-20 20:02:38.206613+10
6	contenttypes	0002_remove_content_type_name	2020-05-20 20:02:38.232099+10
7	auth	0002_alter_permission_name_max_length	2020-05-20 20:02:38.239035+10
8	auth	0003_alter_user_email_max_length	2020-05-20 20:02:38.253477+10
9	auth	0004_alter_user_username_opts	2020-05-20 20:02:38.266012+10
10	auth	0005_alter_user_last_login_null	2020-05-20 20:02:38.279285+10
11	auth	0006_require_contenttypes_0002	2020-05-20 20:02:38.28155+10
12	auth	0007_alter_validators_add_error_messages	2020-05-20 20:02:38.296075+10
13	auth	0008_alter_user_username_max_length	2020-05-20 20:02:38.314584+10
14	auth	0009_alter_user_last_name_max_length	2020-05-20 20:02:38.327904+10
15	auth	0010_alter_group_name_max_length	2020-05-20 20:02:38.339723+10
16	auth	0011_update_proxy_permissions	2020-05-20 20:02:38.350817+10
17	clinics	0001_initial	2020-05-20 20:02:38.391047+10
18	professionals	0001_initial	2020-05-20 20:02:38.454981+10
20	questions	0001_initial	2020-05-20 20:02:38.656972+10
21	sessions	0001_initial	2020-05-20 20:02:38.696767+10
24	professionals	0002_auto_20200520_1103	2020-05-20 21:03:39.297622+10
27	professionals	0003_auto_20200520_1206	2020-05-20 22:06:37.691003+10
34	clinics	0002_auto_20200520_1002	2020-05-20 23:25:01.86708+10
35	clinics	0003_auto_20200520_1011	2020-05-20 23:25:01.889827+10
36	clinics	0004_auto_20200520_1305	2020-05-20 23:25:01.951164+10
37	clinics	0005_import_clinic_database	2020-05-20 23:27:56.485926+10
38	professionals	0004_import_professionals_database	2020-05-20 23:41:47.558072+10
39	clinics	0006_auto_20200524_0338	2020-05-24 13:38:23.837551+10
40	clinics	0007_location_subpremise	2020-05-24 16:27:18.719111+10
42	clinics	0008_location_premise	2020-05-24 18:06:44.50076+10
43	clinics	0009_calculate_latitude_and_longitude	2020-05-24 18:21:23.392737+10
44	clinics	0010_calculate_latitude_and_longitude_altered	2020-05-24 20:03:22.835613+10
45	professionals	0005_auto_20200525_1042	2020-05-25 20:42:35.479969+10
46	professionals	0006_import_clinical_psychologists_database	2020-05-25 21:03:55.331833+10
47	professionals	0007_remove_duplicate_psychologist_profession_type	2020-05-25 21:28:32.449277+10
48	professionals	0008_auto_20200610_0619	2020-06-12 14:56:28.495228+10
49	users	0001_initial	2020-06-12 14:56:28.620964+10
50	professionals	0009_professionalgroup_user	2020-06-12 14:56:28.664846+10
51	users	0002_user_email	2020-06-14 14:56:10.935914+10
52	users	0003_user_uid	2020-06-14 15:03:52.602524+10
53	users	0004_auto_20200614_0706	2020-06-14 17:06:27.918824+10
54	users	0005_auto_20200614_0706	2020-06-14 17:07:00.828597+10
55	users	0006_auto_20200614_0709	2020-06-14 17:09:20.247791+10
56	professionals	0010_auto_20200703_0242	2020-07-03 12:43:04.006773+10
57	professionals	0011_professionalgroup_display_name	2020-07-03 19:23:55.641891+10
59	professionals	0012_remove_professionalgroup_display_name	2020-07-04 13:48:03.634559+10
64	professionals	0013_auto_20200704_0510	2020-07-04 20:04:31.81942+10
68	users	0007_auto_20200703_0528	2020-07-04 20:11:22.310606+10
69	users	0008_auto_20200704_0510	2020-07-04 20:11:46.007008+10
70	professionals	0014_auto_20200704_1013	2020-07-04 20:13:49.134583+10
71	users	0009_auto_20200704_1013	2020-07-04 20:13:49.17901+10
72	professionals	0015_auto_20200704_1110	2020-07-04 21:10:57.066931+10
73	users	0010_auto_20200704_1110	2020-07-04 21:10:57.101262+10
74	professionals	0016_auto_20200704_1126	2020-07-04 21:36:10.284114+10
75	users	0011_auto_20200704_1126	2020-07-04 21:36:10.417605+10
76	users	0012_auto_20201029_0417	2020-10-29 15:17:38.795412+11
77	users	0013_auto_20201030_0237	2020-10-30 13:37:46.268761+11
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ahn6p9k154e7oagxomw989erxwqdgd8h	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-06-03 22:33:11.105684+10
t8p1pqilglyyen8vto31qo69qcux5b3i	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-06-09 21:58:45.158333+10
pd0mxnkqg7wsmmq77gozv85gbqqvabp9	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-06-28 14:58:36.181158+10
c7q4np6o7kfp6pw22h7o2q1km18mqywy	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-07-16 20:31:59.62485+10
q69tj4rbta2ckolba1t5f5mn7q9jzffg	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-10-01 13:08:39.538754+10
1rovvsw5q1qqxmuhp8t10qa4a58589zx	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-10-08 18:04:27.068509+11
92n70ww9xpywjdfoled2ppbk9ggifdod	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-10-21 21:44:29.310213+11
9tj0ver23jtkzfnobwjaajmmuu76zcxh	NTdjMTFkNGYwZGUyNzMzNzEzOWNjZGFmNzUxMzM2OWMxMjIxODhmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM0ZWU3ZDA1NWEwMzNjYjFhY2Q5NGMwNDY3MWQyNmIyNTc5MTQwIn0=	2020-11-08 18:59:48.348623+11
\.


--
-- Data for Name: professionals_area; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_area (id, postcode, country, state, city) FROM stdin;
\.


--
-- Data for Name: professionals_profession; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_profession (id, description, active, profession_type_id, professional_id, uid) FROM stdin;
3102	\N	t	41	3103	5e417fa7e47c4422ae86fb35ac9eca4b
3103	\N	t	41	3104	3d41c8baa9cd4f818e088f5ed44cf153
3104	\N	t	41	3105	892151d4a5bf472e906ba251d9bd70fb
3105	\N	t	41	3106	d7899fcf7b064b12a645be48cc6e67c8
3106	\N	t	41	3107	0f65de33213b441b8b4aa52b5e275234
3107	\N	t	41	3108	903cec73eb2d4c119c83dc02ef52fff6
3108	\N	t	41	3109	ab14818a7cc341d0a6b5a882f0b86c05
3109	\N	t	41	3110	a30fc2d16cdc47f2a43b18aca78c169e
3110	\N	t	41	3111	206f4cd1a6ce41d6b539d10dedbd339b
3111	\N	t	41	3112	8ba3bfebca334a57bc9483765d291748
3112	\N	t	41	3113	b87ab2cd0821426dbe917280148a9752
3113	\N	t	41	3114	e7b1b27026764beaaf8eeb33d8230bec
3114	\N	t	41	3115	fcfd042398174902a7c7e03c751be962
3115	\N	t	41	3116	dda025205ee44beeb66a0c946f4babb6
3116	\N	t	41	3117	1eda242db9994f20aa280e52f5e42d36
3117	\N	t	41	3118	563ada10bfdd41868dd7624adcc01d65
3118	\N	t	41	3119	bc98dd690a1d479185c2f89cbca4d2cd
3119	\N	t	41	3120	5217f461f21a4bd498a010d4d5123bb5
3120	\N	t	41	3121	fa061a5b41a54df094de922c03e2b358
3121	\N	t	41	3122	e0c64731e91c4b98b292e673c3b31b12
3122	\N	t	41	3123	888862e9e2164b3694e0d339879a6671
3123	\N	t	41	3124	ae69eff0f59b4ddd9071167bfcdcfa00
3124	\N	t	41	3125	eec592b98e79479e9e7a0a27eada6413
3125	\N	t	41	3126	385662dcc0f6457bb73ae8f9b0d550c8
3126	\N	t	41	3127	15243f3eac2d4243b618a20155751415
3127	\N	t	41	3128	0602ca15a5ce4595a047bc087cbf37fd
3128	\N	t	41	3129	ce0d3b2c6f12413c8a8684da311e0273
3129	\N	t	41	3130	fa6a2d5233c44625ba76ba39fb3fc680
3130	\N	t	41	3131	729f1071db0c492ab2ed87a3d2acb872
3131	\N	t	41	3132	8943a6ffc2524a5dbec012c2f2375e89
3132	\N	t	41	3133	3b9ff3abd2504546b85664926c18c5c6
3133	\N	t	41	3134	8589fc9e38e14bb29cbd5665e763095c
3134	\N	t	41	3135	b0924301e7f04b3086c75ed9b75944ea
3135	\N	t	41	3136	6c13f28f3e074c10a3150c13665fa3b8
3136	\N	t	41	3137	46be78cba9704b14b2a8b5e1fb2354d0
3137	\N	t	41	3138	c55d3345677c4e65b2aaf287db76bec5
3138	\N	t	41	3139	0542136f6eec44ca840e9e47fa5d6ce2
3139	\N	t	41	3140	14cf6f19a5884765b4b9fd1aa7e49274
3140	\N	t	41	3141	4414cd218d544e039aeb3dc61ea53a9e
3141	\N	t	41	3142	486c3e97a8fa4e9b841002d8239d95e5
3142	\N	t	41	3143	6ffa3e6a566b4fb582a0ac497ae64775
3143	\N	t	41	3144	9899afbb759f4a20a7eb35ff650bf91d
3144	\N	t	41	3145	bffa3537d604488bb019e5b73f10271f
3145	\N	t	41	3146	422a5aaab7e24739ad1eeeee950511c7
3146	\N	t	41	3147	d0ff1a93d7a04b35a19b463515e46806
3147	\N	t	41	3148	c307ecd30bec468c8c56d2568f84aabf
3148	\N	t	41	3149	c571dd3518914352a005dc1e0ebeadbc
3149	\N	t	41	3150	0d4fa40472fe49de939b9b2f6a58f49e
3150	\N	t	41	3151	4d2196eae48345ed82f41bd6003eba84
3151	\N	t	41	3152	a7f17fa2b109499e9541c988646f4d99
3152	\N	t	41	3153	1ef937e4fbb34463b9d0b506ce2067b6
3153	\N	t	41	3154	8cdcb05e610141d48ea80bbe7403b103
3154	\N	t	41	3155	c261a900d8b64c04ba542f638108fdff
3155	\N	t	41	3156	d16bf6f33344461fbf3264ad97c5803a
3156	\N	t	41	3157	d6b19c99819744ffb775fa7d04992309
3157	\N	t	41	3158	ac3bccc17e684778b461c8baf1b7c72b
3158	\N	t	41	3159	b7ef32bc27d641339dd0d9f843c90043
3159	\N	t	41	3160	be9f5849b2514fd1b2fe22ca913df3ce
3160	\N	t	41	3161	0a446948e1a742a2b0e996d489d195e6
3161	\N	t	41	3162	5ff76c1a9b7c4e4d80e22464cd49beaf
3162	\N	t	41	3163	d25905eacb7e471e94a595fe6db361b0
3163	\N	t	41	3164	805d1c90a7d24880a2dcd5c064ea6e7a
3164	\N	t	41	3165	61f091f342bd48ddaf989b6f36633ebd
3165	\N	t	41	3166	1d1edc56b04b4b1583515b2e5f7e1cc7
3166	\N	t	41	3167	45e1428cdbe843888e08cefe953488ac
3167	\N	t	41	3168	b689f24e700c4c06bd5091c1e61338d7
3168	\N	t	41	3169	ca45b462a4f54ce98433e82baca69f13
3169	\N	t	41	3170	0edbb63dc8c649dd9b16a60d60f24938
3170	\N	t	41	3171	25c56481b100472db9ff4d944b6cd4dc
3171	\N	t	41	3172	b22c8d9c6fd842cdab1b317a5a9137d4
3172	\N	t	41	3173	b84e08aa23b4422e8d6bf2020033d1c1
3173	\N	t	41	3174	95115a765baa46a482a0cf65c7fa6dc7
3174	\N	t	41	3175	5b2579cc5f6b40f2a97ac8b03b2c3c23
3175	\N	t	41	3176	d729c0f10721410bb3d7f70ba39333f5
3176	\N	t	41	3177	49fa1fc74f304fc090ed8abd959f51c6
3177	\N	t	41	3178	c9f4d3fd57c247eeb02275247d13dc06
3178	\N	t	41	3179	aa3204e6e62241dc9f7479a565035f39
3179	\N	t	41	3180	1bf52fc8088940a494eceb7ec65a67cf
3180	\N	t	41	3181	64d03746edc24afd8e2e83a9e20f5ca3
3181	\N	t	41	3182	50d1af130e654d6a9798c3e2b1cb7de7
3182	\N	t	41	3183	21dd3f9dd9714eacb56ee16f316c7371
3183	\N	t	41	3184	55cb9286fb7e4aacb5c6bbccb525ecf0
3184	\N	t	41	3185	c55bfe83e7944513b1b20cc5368c8222
3185	\N	t	41	3186	688b4a2623d9484fbb58c1e5226cedbc
3186	\N	t	41	3187	762633497a664751ab39e1ae2af30681
3187	\N	t	41	3188	c360d5102d5148c3a4824735e969e178
3188	\N	t	41	3189	8edd2d3000e64a19adc51c1ca00fe9d1
3189	\N	t	41	3190	b7a1db5a219c474dba4cd5fdba7dbc35
3190	\N	t	41	3191	885233ff2fda4154a51a24fcd989c739
3191	\N	t	41	3192	cc62b2fe511d4f5c8dcb9c223eb0b770
3192	\N	t	41	3193	f267ee5228604fba9fced67efff903d5
3193	\N	t	41	3194	4f351e87e0f14d26b885aadfd97a6624
3194	\N	t	41	3195	2e44914b06444aaf95f0f4b533b823aa
3195	\N	t	41	3196	09db8a137e4043b1beb99b6456cecf28
3196	\N	t	41	3197	b8132cf800bd4765bbe85e391d0e9bbb
3197	\N	t	41	3198	591d2640a0d1480ebc933c11a1f50b48
3198	\N	t	41	3199	659974d1766249a7a72e8b6ef08eed3d
3199	\N	t	41	3200	0b7af0fcc0cf4e16a101a3c524e262aa
3200	\N	t	41	3201	5f2a3f633c364e7597d64ffea9fe8b85
3201	\N	t	41	3202	66dc66e660164d92bb56dbc8fd940119
3202	\N	t	41	3203	c987ed95a5284985b347b3674d9e907c
3203	\N	t	41	3204	cfa4fb76f6564512bb237f5ca431a076
3204	\N	t	41	3205	29f6d352811f431d92e779678339e753
3205	\N	t	41	3206	84b35de86d364ca6b543ccb7e14be315
3206	\N	t	41	3207	0982c193066e4bec8008618792d72deb
3207	\N	t	41	3208	5f652a89ff3d47c09caf17f8eeef99e7
3208	\N	t	41	3209	39512e4ca4b441c49aaba120a7a55d33
3209	\N	t	41	3210	ee5bea0ef20d4457af2fa26cdb0ddcc7
3210	\N	t	41	3211	b4ef8b9df1944d69a362d63984c83ea1
3211	\N	t	41	3212	0632312001db495196484ff4e0fd3e9a
3212	\N	t	41	3213	b2af5438699c45ed9e4a3d9f53d204dd
3213	\N	t	41	3214	a74dd448e67147e885ea8ed7c89be451
3214	\N	t	41	3215	1e17bc957e6f46fa91d9acbf5a935902
3215	\N	t	41	3216	ab38175ed5a849a3af753a53ca3477c7
3216	\N	t	41	3217	49069fb04d794d43be91394585ab99a5
3217	\N	t	41	3218	15d437d88a414358949cd4d348c15f5d
3218	\N	t	41	3219	26bf378a14144297b9791b2b3f76895e
3219	\N	t	41	3220	b38404e87e554e438fe745248647d8ec
3220	\N	t	41	3221	11b5d6e6cc6a4385b8616408f321cae6
3221	\N	t	41	3222	ac67e0457f844d68b6df029eab47cd30
3222	\N	t	41	3223	bbcb599b87474e7390dd96aa4389954e
3223	\N	t	41	3224	57b9b846635247278463374fdea7d2da
3224	\N	t	41	3225	2f09e79744e649f383c6716c11e91119
3225	\N	t	41	3226	df47e521982d4496bd9309fd378ae28d
3226	\N	t	41	3227	fa980839b6f54da4a4a34b72be6b5d4f
3227	\N	t	41	3228	5333109cf2c14136bc1e169ce6f35e6f
3228	\N	t	41	3229	b40aa790135c40dd885aba909c4fdadb
3229	\N	t	41	3230	dc6c595074e9434882cfa9a6c7cb3737
3230	\N	t	41	3231	f358d43c35364fd9b3dffc97144e963f
3231	\N	t	41	3232	0362267fcc744aa79b9390db1cd6509b
3232	\N	t	41	3233	b2148f5ffb57456abfb88459d486abd3
3233	\N	t	41	3234	7a246e736ce345f28d2c46de1dec1275
3234	\N	t	41	3235	74a9b72feea9462a86f40cb344478f91
3235	\N	t	41	3236	d8edd826ac6c425db45ac2903df17168
3236	\N	t	41	3237	ac2961b39335448ba21b933a8c3e3187
3237	\N	t	41	3238	d7530309f71b489fa2e1a92ec1800b2b
3238	\N	t	41	3239	701e98d219c14fe4880b5d81bd642fff
3239	\N	t	41	3240	60bfbf9bac9347f6b4be3019d7570e30
3240	\N	t	41	3241	3bf03e5d769f4592a589a5b105b60a27
3241	\N	t	41	3242	e9ef8d9e09f14383918233aa1e7bdbef
3242	\N	t	41	3243	156f2f8b0f5348ae88a2bcbe0587f492
3243	\N	t	41	3244	c8eb717a455744c280a106ec750f503f
3244	\N	t	41	3245	14352fffbe5248f78f1e6c8b1702f9d9
3245	\N	t	41	3246	c3ebd1ad412f434a890a924bca330078
3246	\N	t	41	3247	8f5056aff31249ce830ef84c2d8a7d97
3247	\N	t	41	3248	9b5738f9df7740fa9e58ce3418ca97f9
3248	\N	t	41	3249	492f3db08e364944aeb2985dd0ca7ae0
3249	\N	t	41	3250	dc188dadc28d420397710c7c5afef354
3250	\N	t	41	3251	a8584707fa6d45649f20fd078623a5d5
3251	\N	t	41	3252	62b20d49426740959000aad3c72ab998
3252	\N	t	41	3253	2532626471184dfbb1f7e02ff6988acd
3253	\N	t	41	3254	2a1cd05253ff420fa9f7daaab405bdf0
3254	\N	t	41	3255	ddefbd4c81bb46b795fedbf7f938d408
3255	\N	t	41	3256	c8461c6412dc4526bd7bf2a0a2c9d411
3256	\N	t	41	3257	7958fb595d094aaa9fce3fa4b4948371
3257	\N	t	41	3258	bfe416aaa1cb4bfb891b0f119acdf963
3258	\N	t	41	3259	70a75fe5688e4d968fbabb6f5aaa97a3
3259	\N	t	41	3260	e33d2f87749e46edac81e19327786ce2
3260	\N	t	41	3261	9b8dfe79c1e74bcf8ab75ac3cf149e2f
3261	\N	t	41	3262	702a06117a9845669b43c6f3acdbb25a
3262	\N	t	41	3263	400715569b4445bc8c0030314d206437
3263	\N	t	41	3264	3284ed1c9cd14ec9b3815495fc13b53a
3264	\N	t	41	3265	a7f575479eab4f9eb35602ce742205db
3265	\N	t	41	3266	b286a6e8f1854af98b1446f958c047a9
3266	\N	t	41	3267	0c87b34f6931401a92e7490e8531a90e
3267	\N	t	41	3268	ac33d438c5654876b108150275ba5eaf
3268	\N	t	41	3269	e053931fb8c74d6791f0bebfbbc71795
3269	\N	t	41	3270	e9ae7516bffc40f9b961eb6c113847ab
3270	\N	t	41	3271	de04b63336814da187eb7b2b3e5328eb
3271	\N	t	41	3272	c0201182722947e6b67544ebf5dafba2
3272	\N	t	41	3273	f68baf10f78f45e180b7a95e6c4d0288
3273	\N	t	41	3274	56219ae684cf43779c9357c7bdd38afb
3274	\N	t	41	3275	e316d330d0164dff9bad99fddc4494e4
3275	\N	t	41	3276	60f9729e803a4cf1b9d906939c8e76af
3276	\N	t	41	3277	e330e471e46f4925af4aacdbdae0b69d
3277	\N	t	41	3278	98afd40294c74351997cb980ac283287
3278	\N	t	41	3279	d8968788188e430481025883ec265da3
3279	\N	t	41	3280	dce24b3c4047414c8fc713db293478e0
3280	\N	t	41	3281	6b6c599e62404c0ea4b8b64a8e38e57e
3281	\N	t	41	3282	d8a81e90de064539a40cd05a9a8a5820
3282	\N	t	41	3283	2382e0dda889438fa9a5466521de9173
3283	\N	t	41	3284	91ba2f95072840aba9c733d4c6230145
3284	\N	t	41	3285	5a80c7dd83b94277b634f1a5b66684bb
3285	\N	t	41	3286	4d0cafb709734e2185ada892a3ca8693
3286	\N	t	41	3287	8d54779096eb4e7494702ea741d4fc45
3287	\N	t	41	3288	5365a680968d4e4289e21cb696095c72
3288	\N	t	41	3289	29fcaabde5074d5fa403d15cfce9e452
3289	\N	t	41	3290	7a91a2b80a01422cbc8c1352c0c9e0e7
3290	\N	t	41	3291	97d982a0ef07434abd3feda5ef1b7caf
3291	\N	t	41	3292	20bbad19deef4581b83c9f841fde5f5c
3292	\N	t	41	3293	d62763a46db3417eb98d35ef01471a24
3293	\N	t	41	3294	ea323a5d10a14f5f8215c024d5d57385
3294	\N	t	41	3295	6f818e31d46e44c68dc5cba0615f222d
3295	\N	t	41	3296	89c2b41853b341e184ff1ef50d57c365
3296	\N	t	41	3297	cb454e47b468401b89ff8ce29aad879b
3297	\N	t	41	3298	13d8ff29c2bc40f5809aadb38cccf41f
3298	\N	t	41	3299	6cdcd9156a4b4754a8428ffa1d262969
3299	\N	t	41	3300	9e7490799d8b4d499a25e9a475d75f54
3300	\N	t	41	3301	e84a78d94e8b4c00a930786ac0b180c9
3301	\N	t	41	3302	5f77546552ac4eef9d4fc674a35311b6
3302	\N	t	41	3303	72d8eece444a4b1a891f87978116fd3a
3303	\N	t	41	3304	6bfeb106789c415f9a5cc84d3558e6fd
3304	\N	t	41	3305	b4008a93977b4a27abcbb61b710c40e0
3305	\N	t	41	3306	a90232a11bcf4b7bac32e3a68a5b8b23
3306	\N	t	41	3307	5514f39ebef440b6be500fd1c963d2b1
3307	\N	t	41	3308	22afee4ea73045a3b0e6ba7aa87c2a3d
3308	\N	t	41	3309	0527560967e844d392ce6fe21a9eaec1
3309	\N	t	41	3310	ff05bc575f2b4a34ba8d7bbb82e674e7
3310	\N	t	41	3311	52f75efb86344e928c730e5441f5f094
3311	\N	t	41	3312	7e1c8edc536d4c18aa4d1c05047575cb
3312	\N	t	41	3313	1210411ce3c24b84ba38c32f05d6a2b9
3313	\N	t	41	3314	d1d64f8fceba4b89bd0d5255a430cb89
3314	\N	t	41	3315	d80ed218056a46a58314f6d3411c0c48
3315	\N	t	41	3316	799a629a79db4bd682d4ef0c6d9bfb0f
3316	\N	t	41	3317	0d3befa0d64b4aa199a9a40358b49e0f
3317	\N	t	41	3318	79fa43da7dd0451496e31a33f124505b
3318	\N	t	41	3319	b8375489fb5a4908946632291fdf97b8
3319	\N	t	41	3320	94ddcd6dbc224bf5a8598c8115b3a7d8
3320	\N	t	41	3321	2df6f75f7a224a9c94f59a15f1e622a4
3321	\N	t	41	3322	c66d5717db2b47dab013dc847cf30787
3322	\N	t	41	3323	8247393f2819454bbc6f211ff51ea3d1
3323	\N	t	41	3324	8800af048af34a3badf61c16c57ca102
3324	\N	t	41	3325	5c9712e16d9f49f1ba3a909fe62b517e
3325	\N	t	41	3326	6338f5afd871467a8b078963e8bcaeb2
3326	\N	t	41	3327	1800061fe32d404ebe43627260800a23
3327	\N	t	41	3328	1cd04718acf44399ae4ec32f10a50b7b
3328	\N	t	41	3329	b45989f87ae742aa957fb4ab16db4820
3329	\N	t	41	3330	14c9038e14914037b843f9baf1c6bdad
3330	\N	t	41	3331	a5644faf144742d8a004939bcaecee0b
3331	\N	t	41	3332	ee49168a22ee4d2eba1f7ded7f063b92
3332	\N	t	41	3333	28e660983d3c4bdc811d5a9c8b0f70a2
3333	\N	t	41	3334	2049bd5ae0a14fa8a8b14164404a62a0
3334	\N	t	41	3335	d7c645faca0f491db52abe63bc983238
3335	\N	t	41	3336	2cc44d33e35749359d2a74b677a6008f
3336	\N	t	41	3337	2ff2e1cbb0f04f368da642b73c6dbc42
3337	\N	t	41	3338	bb1bd7168db841348b804ce7e03b1c08
3338	\N	t	41	3339	491e4145c98940308b7e815cb76b94ab
3339	\N	t	41	3340	83e1661956cb4816a99860b8553444d3
3340	\N	t	41	3341	efb4b3491a9949e494d33065ce161812
3341	\N	t	41	3342	a5d4745da35c45d8901a34986413d5cb
3342	\N	t	41	3343	37319485d87243939b69e37433c3c4d8
3343	\N	t	41	3344	b50a60484a774f43bedffd500361d7f5
3344	\N	t	41	3345	23250e2d5d9a4f44bda8bee6619cebd6
3345	\N	t	41	3346	8233ed12905b4b4e9e15561ceb7aedb9
3346	\N	t	41	3347	5055500a42164738b233094204a93708
3347	\N	t	41	3348	647d267c3a2c4fe89c36cf657f87b0be
3348	\N	t	41	3349	c4a835f45e384d8cbfc13b0e4c0bc0ed
3349	\N	t	41	3350	7ee578e25f654d3a96c461c204382334
3350	\N	t	41	3351	d7e7b7f384f34733944a168ffb2ac965
3351	\N	t	41	3352	54f40e479d5241418546e6609a34cdd0
3352	\N	t	41	3353	4d0ac751e4bc44fcbe6e8f1d1ae20c01
3353	\N	t	41	3354	170127c6abc348c1a863428e7fbaf888
3354	\N	t	41	3355	98323d26d1cb467d8f96ff35c29259fa
3355	\N	t	41	3356	ac1b037e352e4262a4f7403606988f8e
3356	\N	t	41	3357	9a0b11a2cda24d4ca77915e148be35bc
3357	\N	t	41	3358	63ca33b4802a455299e2f910e5d0ca1b
3358	\N	t	41	3359	77b9cc6ea8274d24a85f9d59eb5c0a80
3359	\N	t	41	3360	73c0d0ef49294ec7b93d3f2afa227c47
3360	\N	t	41	3361	eb8950207f0b4ce9ac063769241708c0
3361	\N	t	41	3362	101068c0d56341918a58ade6bc6c26c8
3362	\N	t	41	3363	a90a47fbd22548c5b165609b0eb0c3de
3363	\N	t	41	3364	f084604a310c4a7d9097b34cb96eb572
3364	\N	t	41	3365	5a0cb32f2edd41f4a0599def6666ef2b
3365	\N	t	41	3366	bfafadf297a94758a129cc529d016067
3366	\N	t	41	3367	b1d90f9206d14824be6139c1a23077a1
3367	\N	t	41	3368	d99474d88d4c4f71be970fa579fa1e4f
3368	\N	t	41	3369	ea48d04466a542739a05cc326fe23e00
3369	\N	t	41	3370	409eea3da43e4c5395aa10267018626f
3370	\N	t	41	3371	d5f50ca837d445b49b733e10ff0a408e
3371	\N	t	41	3372	5008aa0a7aba4dd2b8cde40ddab76c17
3372	\N	t	41	3373	7301d9c4b4704678934a34e17f948b83
3373	\N	t	41	3374	ceb704311f834a84a08cbcef552a5440
3374	\N	t	41	3375	8dd35d9d4d144a379bb799ddac64484a
3375	\N	t	41	3376	06ac4fb787a34d78a6d6132761226e9e
3376	\N	t	41	3377	f2f55f20952f48a7beea697923a76a64
3377	\N	t	41	3378	d4bf3c5ebb714bb4ab2b3bbce63a81ab
3378	\N	t	41	3379	6299463d0c264575b3a9c099a2a76adf
3379	\N	t	41	3380	a77d3ba1fb924bd6a46aea652a999b49
3380	\N	t	41	3381	cf6c8fe19ce44d9cae07250e5bb6ad7e
3381	\N	t	41	3382	cb6f852da6a54875aa709bf2dd9de643
3382	\N	t	41	3383	93ece71120274369a635b9889e7c3e4a
3383	\N	t	41	3384	8843e83d286f4eb6bb199655513b40c3
3384	\N	t	41	3385	d96dda2b838f49db98897dc479a016d5
3385	\N	t	41	3386	13ed9c5e3fac4b63a20672ffd5d43ce6
3386	\N	t	41	3387	8ff152de7b1e4690a762b37437933c67
3387	\N	t	41	3388	286be72d819a410dba251d515522a146
3388	\N	t	41	3389	5cd6bb9729234bf7ad74cb9bb3511086
3389	\N	t	41	3390	e327a589ab40472d9b452573350f9a3c
3390	\N	t	41	3391	6158af1fe95d46e492d19bb5be96c8b3
3391	\N	t	41	3392	62b53a8fc56542258f1b7fc1fcbb184c
3392	\N	t	41	3393	93c69fcd7eed4a9188d854b62cbd389c
3393	\N	t	41	3394	951408d12c2b43e0a0923e24ab753f6d
3394	\N	t	41	3395	dd93addfb9094acf8d83bc4e2474ba2b
3395	\N	t	41	3396	212d6b5599f04532961fc635eb304ad9
3396	\N	t	41	3397	b1887ad7b6dd4f7092a370e4cb735d82
3397	\N	t	41	3398	d41ac59075d4469fbbe3530f7bb636a1
3398	\N	t	41	3399	69580325e9d445fcb48739bf08a5b82e
3399	\N	t	41	3400	45beda46c89345ccab1181521f5ca7df
3400	\N	t	41	3401	49914b97b2234df1878c5feee63d85e6
3401	\N	t	41	3402	e0a22022d2fd46ae9a6cda60cce3b35b
3402	\N	t	41	3403	1001f8c276f8475993d4842cf13414e1
3403	\N	t	41	3404	0d189cc9307b4b56bf5a7e4c2b2a3419
3404	\N	t	41	3405	60938a6064aa43c78b8bbf9006baef17
3405	\N	t	41	3406	2312079b74594327bb26a530ce246a10
3406	\N	t	41	3407	2f77a7e9855e4eba85d867895acbaa66
3407	\N	t	41	3408	ef3c2b0e055d469bafb57b1daa60cbb5
3408	\N	t	41	3409	7ee643e151ee4d58a1718090135b6d3f
3409	\N	t	41	3410	85ab8ea652664157864354c3248a8323
3410	\N	t	41	3411	81277e5130bb474cbad9d824499a5c20
3411	\N	t	41	3412	93d79d371a074be78911fe0dd9dffda4
3412	\N	t	41	3413	814bc9d8cba142bcb993563a3e71b7ec
3413	\N	t	41	3414	f7def1631eaf4f04943291f7645262b6
3414	\N	t	41	3415	e7b7064e98384469bceee22507b1f51e
3415	\N	t	41	3416	3a6c96bcc06147c1ab459db981929d92
3416	\N	t	41	3417	02cb2ea513c54664a184ad00bf2b3401
3417	\N	t	41	3418	d4941abe5b5f466f81cdc2920229a76e
3418	\N	t	41	3419	7455969995aa40b79cdb92e079c2f561
3419	\N	t	41	3420	1cff0496719e4178b639d4de6b606da9
3420	\N	t	41	3421	ad6242466e0a49eeae6aab2c155ac0d4
3421	\N	t	41	3422	464c41f6c1924a31970e197d12a81786
3422	\N	t	41	3423	a224417b33bd43f18563e0cf2907caf3
3423	\N	t	41	3424	b81c8ebfa3b74e279f67ab67dff04576
3424	\N	t	41	3425	d00ac659960143478b58a09c9b8ba1d7
3425	\N	t	41	3426	69e12d4f1cd545959aad28b50af27139
3426	\N	t	41	3427	8360344f7d3147cfbfeb61a98e2f4a1d
3427	\N	t	41	3428	3182ff4260364a45a6c680ee2896d0c5
3428	\N	t	41	3429	2f0d88d660844c3091e0fce8f1dd007b
3429	\N	t	41	3430	6e80557fe8a6406c9fabb75e0fb2b6bb
3430	\N	t	41	3431	2ca752eb408642209680a47ee68bfe43
3431	\N	t	41	3432	dddf2134a2254bd59bd6fbaa5b7981c1
3432	\N	t	41	3433	69ae187096af437085820137aec4f842
3433	\N	t	41	3434	f03ad503f86c48f7baea764986c3890e
3434	\N	t	41	3435	22fd38b1f58e4b8bbbfe53bd4246302f
3435	\N	t	41	3436	7c2608ff9b3948fcaebe07d9daf5ad40
3436	\N	t	41	3437	2a799d9c35a149d59c1808e43f1afa47
3437	\N	t	41	3438	0c52fe41949a436880cf40f4decb0495
3438	\N	t	41	3439	11f024f1f73543e59a52fae8df0fc5a8
3439	\N	t	41	3440	e8daaefd89014c72807a1e75e7d4244c
3440	\N	t	41	3441	8edee837afe2412399d6ba0ac482726e
3441	\N	t	41	3442	692fa156b657483b832a5d7fa929d051
3442	\N	t	41	3443	d988d9bbc0c74fc2a00d1461e7dc7f9f
3443	\N	t	41	3444	cd24e10e5f83422caa73d4a31f88e2a1
3444	\N	t	41	3445	a43f63424fef480c9643ba3171abc03d
3445	\N	t	41	3446	f8e278aed16447e496c63a75dd1ccba8
3446	\N	t	41	3447	183dd92964e444f4a38fefb889df71ed
3447	\N	t	41	3448	86ca269c02e44f308b7ecdc419777a46
3448	\N	t	41	3449	46bd42d70e0b49718568476c3134964e
3449	\N	t	41	3450	6e29fd5597ed4151a3ef3383933d107d
3450	\N	t	41	3451	df40f40eca8e4adea0e83a902951b675
3451	\N	t	41	3452	8e908aaf527e4241a8eca46e19038e28
3452	\N	t	41	3453	5f6563456aeb45ca9d09ae21859adf3e
3453	\N	t	41	3454	583ed9fa37ef4e1cbca7019d3dec6cfd
3454	\N	t	41	3455	cc272e294d7b4189a544435e1443e6f3
3455	\N	t	41	3456	796ac2bdd8e540669cc0fd5a58600b0b
3456	\N	t	41	3457	bf7b1186b1ba450588878126780b174f
3457	\N	t	41	3458	c84f45e2c1d54456baebb6073afeafc4
3458	\N	t	41	3459	add07b295c6344c4ac38019fea23e28b
3459	\N	t	41	3460	ba739cfd19254945a73479f3afbc7fb0
3460	\N	t	41	3461	cc740e2ecc594cc2acce2756a616b7d7
3461	\N	t	41	3462	ec468f72257d4a479b5dd834dadeef51
3462	\N	t	41	3463	08909c729a0947e39982ae076bf243af
3463	\N	t	41	3464	1ba6c774681a4e368d33e248aa6ed145
3464	\N	t	41	3465	57a834940d5a4a03b88cbe8bb3665ea7
3465	\N	t	41	3466	071dd69b4e3c430aa08a9b431b5fb86e
3466	\N	t	41	3467	b56d1f246d524eeebf70355f4bde2e05
3467	\N	t	41	3468	08e61723ddf04836ab27a37c1e4b2fc9
3468	\N	t	41	3469	d36139b0f34b4b21b679452c7849d95f
3469	\N	t	41	3470	c963624b4ae24e198142da0e283c2e4e
3470	\N	t	41	3471	c077ec1b4aa14d4ab86e84349090e34a
3471	\N	t	41	3472	0267b67c980e46f2a9fb44aae928714a
3472	\N	t	41	3473	731671c35f244bf28e28ca9604b7c4a2
3473	\N	t	41	3474	9352036981a243688f7de4b7ed6a51c4
3474	\N	t	41	3475	025493f2f30249e19ae3bbcf1783e6ed
3475	\N	t	41	3476	317229ecfacd475b9578aab87eb03174
3476	\N	t	41	3477	4690f04f49f648839b37540487e774b0
3477	\N	t	41	3478	5bafc6cb768f4d25b724ea016da55cfb
3478	\N	t	41	3479	05d25a6b82d647bb96cefa238d09388a
3479	\N	t	41	3480	9f6d3c67964b4e31b9e16853751e72bc
3480	\N	t	41	3481	202dfbda05f34d349a7f26d22713a970
3481	\N	t	41	3482	cccc34f570b349a4820195d7a7b36fd4
3482	\N	t	41	3483	7fea2561828943358ad3bb4459ee5fa6
3483	\N	t	41	3484	28c8ee58d0354b1799c2303c093bfaca
3484	\N	t	41	3485	18a0f06b3be94894a0e9b12537db200c
3485	\N	t	41	3486	502ddf84b8544b7f91ae8fc73adb0885
3486	\N	t	41	3487	4a55b033c426422282128f3e7b2c2d2e
3487	\N	t	41	3488	378f12b259a147dd8bee8db1a489da14
3488	\N	t	41	3489	d3940f15700144edbcb34bddd5da268d
3489	\N	t	41	3490	5469a624127e4fa794cf33835f6a7523
3490	\N	t	41	3491	01e0b4255fa54e98915740995cd67bee
3491	\N	t	41	3492	006f2549306842a6932494914e4324a4
3492	\N	t	41	3493	e1ce74ce89834e5aa619a617c455bd64
3493	\N	t	41	3494	ead30c1128364a16bcc94502fab38207
3494	\N	t	41	3495	742d444f981f407f830ca630dac27fb8
3495	\N	t	41	3496	ad539a46b5fc494186653dc88ecb4081
3496	\N	t	41	3497	38060f8c864d4a84b3f3eda5827e4ccb
3497	\N	t	41	3498	63d1847d69ad4926b67f9245406e54c6
3498	\N	t	41	3499	ea1c4b8209b441ffbb46f6393a290b05
3499	\N	t	41	3500	cb7bf6d490384b138f812bc0572a4e97
3500	\N	t	41	3501	35c6f5e043454976bdabf8b8ba617a8c
3501	\N	t	41	3502	273d1c85383541278e37235c9fcf6008
3502	\N	t	41	3503	51f17284c0b342d7adcf308852c15245
3503	\N	t	41	3504	b6a7ac40356b4edc93b9498498de6c63
3504	\N	t	41	3505	a8beea68f9c74ecd9dcdd6c8465d3112
3505	\N	t	41	3506	e543e422cae24ad1b11a5b1fd9557928
3506	\N	t	41	3507	d8945b520baa4c91aa62dd42c93360d0
3507	\N	t	41	3508	a85f59cdb8f44db9b4260df13cc5cfae
3508	\N	t	41	3509	87cf214867024f39974b14454ee3c411
3509	\N	t	41	3510	97179dbbbe52439d99c5fc6ca9943af7
3510	\N	t	41	3511	113cbb1fde6e4520ad3cde871a3755d8
3511	\N	t	41	3512	8ff5dc170f3044f98e6b68676ed7b902
3512	\N	t	41	3513	0fb28a40e9f04809b8fe032cd0d63fb3
3513	\N	t	41	3514	b68c2030a2a7468c8332032055006f1b
3514	\N	t	41	3515	414e546b862d4b79999c72ee0c5e620f
3515	\N	t	41	3516	23b79e78ee494ee184103e55e40bc098
3516	\N	t	41	3517	95cc5d1dd3344c11b178fcbfd0650a34
3517	\N	t	41	3518	e3c7cacc11f14056abcdf525ff2bc42b
3518	\N	t	41	3519	6a3d213d5a4a4c319f86aedddbf797a2
3519	\N	t	41	3520	612360a1d0684ca2b43fc85a4040f590
3520	\N	t	41	3521	0d850d9e059349f4a0199ade37720ec7
3521	\N	t	41	3522	e42cfd2387d84103b37f2c6736a43f6c
3522	\N	t	41	3523	b1bc960ddef14a07913c43923eb2ece8
3523	\N	t	41	3524	308a3923827b4abf9b8ea34ddce6ee21
3524	\N	t	41	3525	5e67c7e8b0914da19874cc9840f8b77c
3525	\N	t	41	3526	79defd8063174b7eb6b8ea5402d2f8f9
3526	\N	t	41	3527	2e5fb1a16824462db657a88ee913d180
3527	\N	t	41	3528	95d7cf98cf254e6ba03045cb7b9f3d55
3528	\N	t	41	3529	12a7f0d345b849de84b1611e74ffeda0
3529	\N	t	41	3530	be6e7bf299584607a406672af303eebe
3530	\N	t	41	3531	61b7eadad52f449faf05c52fd7bcb120
3531	\N	t	41	3532	90a1e7b1d75d40ed86cec8c0ecd83a85
3532	\N	t	41	3533	58f1bbf3419c4ad8a376dc184724451b
3533	\N	t	41	3534	53bf20a5e46c49cea3740c03a7799488
3534	\N	t	41	3535	07fc27ebb8204077a6e766eb3ec3ee00
3535	\N	t	41	3536	241fdeb8a32343f0a763a0ad8caf59c3
3536	\N	t	41	3537	b0f6fd975ce4447c90510f569c059ff2
3537	\N	t	41	3538	3d44710c5b2547b9a90146933363193b
3538	\N	t	41	3539	1712bb603adf4723aef9a306ce20e0c9
3539	\N	t	41	3540	cb4dc096e8844b8dbcb4fc8534c8ca14
3540	\N	t	41	3541	b65b0285c4ea42a791e7d3b92a4ae6fa
3541	\N	t	41	3542	f59b2d3ade0b48babaa26950efa88caf
3542	\N	t	41	3543	cc3ac522399e4b53a581a6ee032f1dca
3543	\N	t	41	3544	ca5fe7a939934c4ebc4bc8d9ae572f40
3544	\N	t	41	3545	9908970ecf874be7b0efcabcd2269725
3545	\N	t	41	3546	02d4fa9872d2481a843eaee95eb5f683
3546	\N	t	41	3547	197473b62f2a4b4581b82c7379126c73
3547	\N	t	41	3548	571e6160705648d98e1e64fb3bd41012
3548	\N	t	41	3549	1cb7964e944648d89ff1d598855507b1
3549	\N	t	41	3550	01b47b1b0ff341ee8caf010d7410c8b9
3550	\N	t	41	3551	5d48c4f35547419687154ae1b4cb6ab7
3551	\N	t	41	3552	c11947d4ddd149938c2b5c181634d341
3552	\N	t	41	3553	21663c472cbf48a1b40ca8223d91fdc0
3553	\N	t	41	3554	19da151073a6460abdf7c3480a696b8b
3554	\N	t	41	3555	f0553ae091ac4d54af67fc5448662691
3555	\N	t	41	3556	6704def1fbdc457784660581bda1d5b7
3556	\N	t	41	3557	419eb2b1b80e499397f407dc31b39e38
3557	\N	t	41	3558	2c79b168dcc349f4ace7fe0cf2d2922e
3558	\N	t	41	3559	66a6f280e3344cc884adc631b372c18a
3559	\N	t	41	3560	743cd78db3e140788a67c1639fa70a91
3560	\N	t	41	3561	8d69ea7f99f149d48c68601797985ceb
3561	\N	t	41	3562	cbb752e93be048d28151575623b0798b
3562	\N	t	41	3563	ac854587b348466db7754eaabddccd05
3563	\N	t	41	3564	6fb7141c14894e3a91a142617dbcd41f
3564	\N	t	41	3565	504b935b6f2845abaa9a34c7648d6b33
3565	\N	t	41	3566	6cf4f50576ca4a4bb72815169d751075
3566	\N	t	41	3567	97e090cdd0e34666ae095e9fc771c052
3567	\N	t	41	3568	8115a2d0638a49b78a7ce382d70a6cf2
3568	\N	t	41	3569	6c6d2a0323724236b472dbe6c4898b3c
3569	\N	t	41	3570	beafb4c9a51a4fc8bef7876916d9d3da
3570	\N	t	41	3571	bfdb1be50dde4868b6d073e439b94887
3571	\N	t	41	3572	d37fcb2c64a244feb40c5402c22491ae
3572	\N	t	41	3573	0c6abf823a2a4e9e96ff2c266c40527d
3573	\N	t	41	3574	a7636f221f654aa98d39c56a7624ee12
3574	\N	t	41	3575	6da9e3f21d75495cba849cab3b30a624
3575	\N	t	41	3576	ff89f4b8fb8841c488aaa2e3745988d4
3576	\N	t	41	3577	5efcdcc7ae194fb8bc02d160fcee45fa
3577	\N	t	41	3578	7c95454709c649c1b092bc9f12c94571
3578	\N	t	41	3579	51c13fca6b3845df857320dce041a881
3579	\N	t	41	3580	76f782efb8024b62b8fde55f20cbe94a
3580	\N	t	41	3581	03571bca5e1f4ec88d777bfd31b43aec
3581	\N	t	41	3582	1192b279e1704d9aacda2bba6b60e3fa
3582	\N	t	41	3583	3bbbfb9d40c44592a07e81b5a26d7bd2
3583	\N	t	41	3584	e95a67afcb3442b58a1325b5193ac00a
3584	\N	t	41	3585	c8ad3c80cc9744e2a90fa729ee3fe80c
3585	\N	t	41	3586	9ebf70e326b048549c4dedbe60bc88b9
3586	\N	t	41	3587	cb3eeb0f95ad4c878aaaeec751b8760c
3587	\N	t	41	3588	e5d886bc867a43259d2b027a95ec22f9
3588	\N	t	41	3589	6370580047964e968168156a9917d7c8
3589	\N	t	41	3590	c7c3355493b74835801c1a39ba0782f7
3590	\N	t	41	3591	943a3b05280c4e01a032a1e161789f7f
3591	\N	t	41	3592	b37a5f297aee4ce3a06e636ee5fc5df3
3592	\N	t	41	3593	ce4f61aa960540fa97012c4f4722a75b
3593	\N	t	41	3594	9f71508f0bfb402995b5b358147821a7
3594	\N	t	41	3595	5092263b323d4fbc81eeaad9878f37a8
3595	\N	t	41	3596	98c1e420a2aa4bdfb998a70fc74bbee9
3596	\N	t	41	3597	e6a6f509d2e34fdcaf67c3c31db57fed
3597	\N	t	41	3598	d242a7ed5b1f4506bc614880ca841eb6
3598	\N	t	41	3599	23b34c09bedd4fb99915a4f50f0484e2
3599	\N	t	41	3600	f4db14b8f9ce4f97a00931547e243774
3600	\N	t	41	3601	9ee06a7388a248b19f95d7d5b3d211f7
3601	\N	t	41	3602	a43e78fb2b614c84a429b7582b328e6a
3602	\N	t	41	3603	4bacc3f6d7994964afecd9f61aeacb86
3603	\N	t	41	3604	84542d868eb34b33924e889a7875cc1e
3604	\N	t	41	3605	4ab2390749724424ac91164a56a881cb
3605	\N	t	41	3606	cbfef72669d44498a7a9679ed29904a6
3606	\N	t	41	3607	1c36df2418d74de5b7c99126b0241a86
3607	\N	t	41	3608	a6a38202dd9741cc97afcfd0f96c568c
3608	\N	t	41	3609	0d5ed637006f4756aa4d3b34441359f8
3609	\N	t	41	3610	fb0cf2ab775944bf8ac9508dccfb6735
3610	\N	t	41	3611	39dfd82fd2304f279bb8ae37d8e54a25
3611	\N	t	41	3612	ac6c0411dd554b428230cabd7658f5e7
3612	\N	t	41	3613	5477e070d26544b5bd970839b389a7fe
3613	\N	t	41	3614	3cb1c003c5304e7f8e5d345332ed8876
3614	\N	t	41	3615	3438631af52641bf9e5fb006c257dabb
3615	\N	t	41	3616	4bc247aadbb44864bc9a0502b17169bf
3616	\N	t	41	3617	69d0749d3ff648e5b794e6c714be41dc
3617	\N	t	41	3618	12c39bf4093545efb74e3b660da7aade
3618	\N	t	41	3619	fdb94d7d80be43709cdb98fc9dd2eb61
3619	\N	t	41	3620	70e0e6fd391e4fa680f4f4306550f7e9
3620	\N	t	41	3621	49b538a883c143debab5a1a9bfe37318
3621	\N	t	41	3622	b9f97b4b0c0c4975a698bec3ae97dabb
3622	\N	t	41	3623	f100e6b43c8145d88d3b64eab8a19184
3623	\N	t	41	3624	049a07dea7dc445ca9a172d9cf43e254
3624	\N	t	41	3625	3eaf364da5534813933d7927bfc9e860
3625	\N	t	41	3626	010b1f18da3e4dd199e8abd8d0a143a6
3626	\N	t	41	3627	797228f1db39410cb94319b7efa3f800
3627	\N	t	41	3628	60e2a179f3604848a572bef2398f615c
3628	\N	t	41	3629	283fcdb7f6cc4df2ba7312edaa53fbac
3629	\N	t	41	3630	d66a3c2825d44fd8b9d474328ee290ba
3630	\N	t	41	3631	8c797e20b8784164916843cd26c9d89a
3631	\N	t	41	3632	4b46ab4426b345f4b1b5f972151dced0
3632	\N	t	41	3633	b413bb9130074dcc974df7b17fc6c281
3633	\N	t	41	3634	143fad4322a347db9137c8091167f579
3634	\N	t	41	3635	e51644c808044cce9ed1abd46621d006
3635	\N	t	41	3636	fcc2ae0a35614360850352b658101a64
3636	\N	t	41	3637	5aacaf5fc39349768a66ca1e05087977
3637	\N	t	41	3638	5695596b856146d481759b8076d856bb
3638	\N	t	41	3639	8c4edaa565d845cd866b655829ab1598
3639	\N	t	41	3640	ada7b3df5c4e42258f2595909d362847
3640	\N	t	41	3641	3543425f4bb7474b92a783b47e3f032f
3641	\N	t	41	3642	d86e4cca8d2e4d9ba9dc97b3159f7d64
3642	\N	t	41	3643	b536da742d78485e9a7ff96bc46f0394
3643	\N	t	41	3644	40ba5963193a4abc86d800cd62bbdba6
3644	\N	t	41	3645	51413f4a714f40ce8dea8e0c3e187fcf
3645	\N	t	41	3646	f68ee10558d24ff69a4730b655388f9f
3646	\N	t	41	3647	7ec072b47e0d4c4c9b5f64bf043c248a
3647	\N	t	41	3648	2a172624ba1041d693b0e8347d95541d
3648	\N	t	41	3649	f2ad89364c474d1e916197b7eee824e9
3649	\N	t	41	3650	fd7614b4f2cf4f80ab1d615f605128a2
3650	\N	t	41	3651	10d4fca05f614cc7b826c8a360ca6574
3651	\N	t	41	3652	5cd0714b5a6742f8b31bece5a42a0f90
3652	\N	t	41	3653	c88d59ea65974d88b11ecd0914ff4716
3653	\N	t	41	3654	92dd4825816d48afbcfa6f53d5640b38
3654	\N	t	41	3655	187e0ee52edf4b28a597de4ff079271a
3655	\N	t	41	3656	5aaba36bb71245f89bd35c9eefaef84c
3656	\N	t	41	3657	a4fde79167b049edbacdc3c0b5e841b4
3657	\N	t	41	3658	908e2c52be8440139abdf4c78572c938
3658	\N	t	41	3659	80ee97c9315b4dcf816b711ba9a9566f
3659	\N	t	41	3660	99c9eeb382e04a1eb672c44c7e501be0
3660	\N	t	41	3661	e66a8d384749485ab70278425349f73c
3661	\N	t	41	3662	718cff0d087e41378fd0c9c0b57f0b76
3662	\N	t	41	3663	357297f7354142b2b30c3476768e3074
3663	\N	t	41	3664	ecb043d5f3af4b99a3d0fe61a619495e
3664	\N	t	41	3665	98420003cf0c4d6d89401faa3f22146f
3665	\N	t	41	3666	bfa3fcc6044e4c1dbdf616ddad98a37e
3666	\N	t	41	3667	48b6a29bff624781b26eb055d7c6f56a
3667	\N	t	41	3668	4b111d39c48f4f749db54cebec26eb1d
3668	\N	t	41	3669	b952a3ed699745eda864ed8c2302e0a9
3669	\N	t	41	3670	34745d56cb704e1da1b258be2f203cee
3670	\N	t	41	3671	deca5b86c303412c94849d137de40e44
3671	\N	t	41	3672	cfc426b89cc64a158648475f1c974aaf
3672	\N	t	41	3673	ddd9aa56819d4b138e010dadf2dc0957
3673	\N	t	41	3674	c97d4a785f174b3d9dc9a3d3439cfe68
3674	\N	t	41	3675	bac27306617741b1b02b18533eeb67d0
3675	\N	t	41	3676	97d5d4af69fd40bbaa201fca22d7aa42
3676	\N	t	41	3677	ec8051fcaf7a42cfbdd45a63ce1aa95b
3677	\N	t	41	3678	1381bb1ff60e4455ad53a4602f42e6b5
3678	\N	t	41	3679	0f6bf33b0c2840eda67ab9ae330c8862
3679	\N	t	41	3680	94228764be27413486d554bed1759d53
3680	\N	t	41	3681	a1d99040675744c69b96e16df305246d
3681	\N	t	41	3682	cd4b89b3fd5c47fcbd24fc317ab496df
3682	\N	t	41	3683	a691fb49a3df49d0bb1788eac7eedbcf
3683	\N	t	41	3684	5eb3747dcb914d018e4b3c1875623171
3684	\N	t	41	3685	7397fbbecec94893a3dc53952e457516
3685	\N	t	41	3686	c8b23d98263d4e618d4f7fd4911bf21f
3686	\N	t	41	3687	34ab8f70a5134ec8aed614a0c88955f0
3687	\N	t	41	3688	cecaced202be41c098529f7a8188dbb3
3688	\N	t	41	3689	f6a6b426f13a433598596febb21a2914
3689	\N	t	41	3690	c67b8c44254c448ca13a9164eba5ba84
3690	\N	t	41	3691	2ac0bc7d494d4d47b3875252a60f3d9b
3691	\N	t	41	3692	7c2c0d3e5481475591651773a5730b91
3692	\N	t	41	3693	70636f01cd594f63a4788bca47d2a18c
3693	\N	t	41	3694	ac76812f242b47fdb4225e1f3fa7cdf5
3694	\N	t	41	3695	7f8c78949d5f4c9e917c4077585051e8
3695	\N	t	41	3696	92877645da484e609a23e41ff05d7be7
3696	\N	t	41	3697	7f3f4e86a99747c2af4251c9f3ce3cca
3697	\N	t	41	3698	0881bc7df9c44905b3ed4dc4029cb339
3698	\N	t	41	3699	5d06f650531d4a47a8eda3ede930c5de
3699	\N	t	41	3700	7e0d24ac51c74142b691a784728637aa
3700	\N	t	41	3701	8569c81f1b884a23b466645a7b8b999e
3701	\N	t	41	3702	c39b5210d016418a94960c5ff34f73de
3702	\N	t	41	3703	7442465a10194bf1aeda31ad0c8b0d33
3703	\N	t	41	3704	b65a7026341147e8b70b3b491552e21f
3704	\N	t	41	3705	949895474ac245358d5fe99fce3b6cc3
3705	\N	t	41	3706	45afbd6336c24972a267bfc3cd844d9e
3706	\N	t	41	3707	f424cc776f854c459a560e7204a5036b
3707	\N	t	41	3708	4eb3371c6e424b6fbe0f7963cd6608d2
3708	\N	t	41	3709	572f6300c5fd44288c81074a04c2feeb
3709	\N	t	41	3710	5c3670b2883045388bd4b2e941bac41b
3710	\N	t	41	3711	227b9d3d3c8849e2a726e62f0579fdac
3711	\N	t	41	3712	81da864ea96e4fd182911162227fb2ec
3712	\N	t	41	3713	6ff0bf628ddb429182a50816855162f5
3713	\N	t	41	3714	5177e4d3fe9d48aab8cd8805840fa7c2
3714	\N	t	41	3715	ba8c6d14ac2a4a5496b6dbab4de5d532
3715	\N	t	41	3716	56ee688def1f4db0bc1a283b60b88c17
3716	\N	t	41	3717	bfe3de83051b402da25697f9662481ec
3717	\N	t	41	3718	e779d99ca1304d6d976625d9f26f0760
3718	\N	t	41	3719	e9970711fa3145babcd6fb17da54e2a2
3719	\N	t	41	3720	32e13761b6cd497fa5d83743dbc62cd1
3720	\N	t	41	3721	93a4c6c2778a44f19c0e04f1882d2ca9
3721	\N	t	41	3722	2ffd794f1494423f92f5a282c146477b
3722	\N	t	41	3723	cfc8b689855445c188d633000ac31940
3723	\N	t	41	3724	e8d34670172f4f139b897566fe275d6e
3724	\N	t	41	3725	92b7a3cc055d4c8a9dcfdf11d19e098e
3725	\N	t	41	3726	35b64ee2f4e94bc8850bb9809dfef3be
3726	\N	t	41	3727	9017235660fe49819c8fa4607b52cac8
3727	\N	t	41	3728	c0823c008217411e84e278f3f49ca33e
3728	\N	t	41	3729	7b40d939b29c4366a32d350640701ea9
3729	\N	t	41	3730	813929acc01d4c0699599ba4ec373512
3730	\N	t	41	3731	3af90cc896a84fd19d91272c31b800c5
3731	\N	t	41	3732	13a646c9cd544a23848ab17ded9b0508
3732	\N	t	41	3733	b8f0520fd74c4d7bb3fa8f3b2ea74e0a
3733	\N	t	41	3734	06c4e2f876ab446880ca4680fc7b4f9f
3734	\N	t	41	3735	c6c785114d3040e0a76b0fd93b9f6734
3735	\N	t	41	3736	09f1a3553b5841548c3e3c4cedf04605
3736	\N	t	41	3737	5d4d4f16b5b041fb84376ee1a08cb520
3737	\N	t	41	3738	d34ff868675241fc9e9b6456f7d6d9b6
3738	\N	t	41	3739	dcc88f1fd1d54b46a94df820613b2324
3739	\N	t	41	3740	785767c8c00f43e7900acbf593981f25
3740	\N	t	41	3741	87ceb520e3d54a04a1d3f2acfaf54225
3741	\N	t	41	3742	774bb7d6bcc5477ca7793e81667269c8
3742	\N	t	41	3743	623720b7a6804c23b7f1c83c059ae5dd
3743	\N	t	41	3744	381183bc278f472face8c60bb9cecc40
3744	\N	t	41	3745	d9257da4d4ab4ec2b4eba2296b860cac
3745	\N	t	41	3746	e73f9df660da40b2bd03d7fb1348b6e1
3746	\N	t	41	3747	32cf3f1f904a48b886e7f188199e4b47
3747	\N	t	41	3748	2c6ec713e53142d68bca66938be7c4a6
3748	\N	t	41	3749	55e7112c325b4cd6aa56d9a4e2c3c93a
3749	\N	t	41	3750	d7abbe3b8fe3457f8acf908251e900e4
3750	\N	t	41	3751	7fe603dbf6064e1987ff467f19567988
3751	\N	t	41	3752	43020acd5215405a84d023839bf8bcaa
3752	\N	t	41	3753	9c31df36660a4df6a10dd1d7197ab1fb
3753	\N	t	41	3754	98e67b7ed69d4a1d9dbe52dde248ca47
3754	\N	t	41	3755	52c32ebc759b4c02b07c3a7385200931
3755	\N	t	41	3756	f0fa473616ed4f589f342cc118dcac00
3756	\N	t	41	3757	317342819a8d40f9985afe79858b73ff
3757	\N	t	41	3758	7ae6f199cda149a4939abecc817cb1a5
3758	\N	t	41	3759	8c1b2e70770147a29e53bea830cddcb7
3759	\N	t	41	3760	5818765f90bb48a685590c9efa0a837f
3760	\N	t	41	3761	b2c64092162d43ea96f128c9992ab43e
3761	\N	t	41	3762	a943834e757d4612a1ec5fe1526d53a2
3762	\N	t	41	3763	03ece72b91ee4f7998d4268a44d9463e
3763	\N	t	41	3764	666720178c4f4453b216a5330ad813bd
3764	\N	t	41	3765	1cc1cc3a02c74e6c83535a1e4b6199e3
3765	\N	t	41	3766	040f1a30298a427292906cd776b1b6a9
3766	\N	t	41	3767	477342108d5d4e33a2a40647c988d157
3767	\N	t	41	3768	88b0f5e34abf49558517b45822ba9dba
3768	\N	t	41	3769	a18fdafae9b64accbca954ff702c2383
3769	\N	t	41	3770	98bb5897387a4df6a720e77e168b81e4
3770	\N	t	41	3771	f2edfe3cf5a54efe803b96278e207b0a
3771	\N	t	41	3772	e504e01266bd4027a281bea301e1ef3c
3772	\N	t	41	3773	435b475470f94bc7b48d41bee2fae98f
3773	\N	t	41	3774	bb3bc01aa1074070b53aa2ff3aeb8042
3774	\N	t	41	3775	d76f7eff53e445d3bb2845d8faecdbc5
3775	\N	t	41	3776	29d690a087804bf0b166afba3ea81695
3776	\N	t	41	3777	e8cb4b8251d84bc1b160d75c665041b8
3777	\N	t	41	3778	5ba6ab6978694af89ea75b760b42e4c4
3778	\N	t	41	3779	5302c399cef44c0a8df30c6f9b3e9be2
3779	\N	t	41	3780	e1c6fe489e034da9ac439dc5c2bea7a9
3780	\N	t	41	3781	d46eca14b9b84128824549ad17f20c6f
3781	\N	t	41	3782	9fe46d1fae6549a2b20ea3355e740eb7
3782	\N	t	41	3783	e4403814f4374376a60a82c339e0520d
3783	\N	t	41	3784	40ffb49c96b2452cb54bf6a80e40e72f
3784	\N	t	41	3785	ca14fe987b93427c968dc037081e9730
3785	\N	t	41	3786	08482334172348209aad086b04aeccb5
3786	\N	t	41	3787	ac67eaecac734162973f1f7fa3ddb1e0
3787	\N	t	41	3788	d100045173b44302a0e98efb384fa995
3788	\N	t	41	3789	f1033aa9a2ae44d0be8d0ecd0775c758
3789	\N	t	41	3790	f9183aae3323427f948bdf7869279aa8
3790	\N	t	41	3791	325895c52c5041ffb06b218c79333636
3791	\N	t	41	3792	c271b8dd630646e7b8a656bc75141c53
3792	\N	t	41	3793	c8a7f5bdf72e45d49bfda038c2139912
3793	\N	t	41	3794	0982a2c6c75c47059140b5a1656bee1f
3794	\N	t	41	3795	efb011084b9f4c47b92014978817a6af
3795	\N	t	41	3796	fcbf6788e9f445a381faf40e929afe0a
3796	\N	t	41	3797	de66e6c9558b47d297c6e7904ce7b7ee
3797	\N	t	41	3798	0b18ead7e82b47ad8af1242b060646ca
3798	\N	t	41	3799	0504b4ee9c214e048129554891e88369
3799	\N	t	41	3800	3dae9cc161b347859a8967d61cf22314
3800	\N	t	41	3801	76144d85884c40e58329025d3315572e
3801	\N	t	41	3802	a9b183b0aefb40d3815906c8ec07cb31
3802	\N	t	41	3803	1f162db619ae42d9a95aec8c049efa18
3803	\N	t	41	3804	cfe1635cad59410eb8dbde5f76c4196c
3804	\N	t	41	3805	c16c5d3332b347bdae27c32a5c083f69
3805	\N	t	41	3806	c821ad4ae1b4438aac3af36f3b74962b
3806	\N	t	41	3807	4e5db75a65534c4993e4d7de3054c0be
3807	\N	t	41	3808	3e91e9098c914b98acedae9002fc08e7
3808	\N	t	41	3809	7a593770cb974374b013f7814ae5bb2a
3809	\N	t	41	3810	8790b8e4bdb44bbea23e44bfeb12ea56
3810	\N	t	41	3811	a5b2e76e17b34919a6df1a8c726f0c47
3811	\N	t	41	3812	235d8e8688214ac99edc807c7d3ca6cc
3812	\N	t	41	3813	dcfc984040b4411abba8946298a1f43d
3813	\N	t	41	3814	73c0407e0a6c4254b7d71952fa0f26f7
3814	\N	t	41	3815	eca06c37be2d42b2ab10dce6c2f691d5
3815	\N	t	41	3816	b7d7fbb3305a4b99abecaee05e03943e
3816	\N	t	41	3817	9aebd83470654fb09e7c77b1d9abe141
3817	\N	t	41	3818	391dfc20c654418d8c80e2b45e3155f3
3818	\N	t	41	3819	e35ea17c3416478ea2d895193cfd7ccb
3819	\N	t	41	3820	95da26a4dc9f40a2ac9150ab65554c71
3820	\N	t	41	3821	cdb8d9b0ff8e4559a0a3602b91126a61
3821	\N	t	41	3822	ca39709a3aba445c9f71f79db3c0622b
3822	\N	t	41	3823	0b5c109888ea46e3b0276fb4d51dbe3b
3823	\N	t	41	3824	ac1226384c814a6581665f0c911937aa
3824	\N	t	41	3825	53cbcf02e8bb49f2a7bc1be280fec605
3825	\N	t	41	3826	695e109a0aae4131b521eb7652310fe8
3826	\N	t	41	3827	052c1a6b28f14a138ff44a7ee76e8005
3827	\N	t	41	3828	29b7bacdf5e9479baa6efe2a39a48000
3828	\N	t	41	3829	679b617d28eb439f94f21dc0c41b5fc1
3829	\N	t	41	3830	ce1fb535135e4d87bd8480c77b281885
3830	\N	t	41	3831	f1fcf4520d4c475eb18e907bd9ab9036
3831	\N	t	41	3832	ab7d05013daf47338c40301740e1b39b
3832	\N	t	41	3833	dbad7bf495774b8f9f31b65572f5794d
3833	\N	t	41	3834	cf29396f663d47e7ba33d08101aef663
3834	\N	t	41	3835	e3f1911dd1784492aafff9b8d0c85d4b
3835	\N	t	41	3836	59adb1eb4e9140878ca63b0509f2ec4e
3836	\N	t	41	3837	48dbd91e7e9c4e4b93e4eca9ce2de8e9
3837	\N	t	41	3838	2681e939d7514175bb8e204f6cd372b8
3838	\N	t	41	3839	60bb6a2c41b84f94b9f2d64769694be6
3839	\N	t	41	3840	6f27038e01aa41c4abc732060175b445
3840	\N	t	41	3841	397d2a8ce1234dc688b6b1a3b86f3746
3841	\N	t	41	3842	b2ff55c472df4750838eb0509dd738df
3842	\N	t	41	3843	b3e67fa34e014eebb87ca99423576a80
3843	\N	t	41	3844	092b4eb6aeb343bb89140ae0365d18b4
3844	\N	t	41	3845	a302444271e0498f8b2e39109a03d2f5
3845	\N	t	41	3846	b56ab204fe404eaebfa9bdf4d803a906
3846	\N	t	41	3847	64643d9769454506b2db2727b6a4ee0f
3847	\N	t	41	3848	8c4af8b83e5d4c1ba7a8a2a86a4f7601
3848	\N	t	41	3849	40156803b384494294ae07a439260cbd
3849	\N	t	41	3850	bd268f4c9f0a4962b2b99b4606fe99a2
3850	\N	t	41	3851	5950bf347d0a4e72a78902c1da57b8f9
3851	\N	t	41	3852	adea8dce479f4c5ab0d9f3438ba233be
3852	\N	t	41	3853	2b4dbe6f29db4ae3b8459291e453a7e4
3853	\N	t	41	3854	bcf79f98470546c1baa8ceb6ad1a155f
3854	\N	t	41	3855	77088868e9a245f8accc8bc8bbe6cad5
3855	\N	t	41	3856	ffa738f5bdcd406cbe80a5810d434b8a
3856	\N	t	41	3857	d1503c258ec949d89f5643d06f198f3e
3857	\N	t	41	3858	cccd7ba8b9934de59d20bfc797f4865a
3858	\N	t	41	3859	9aa59c9d046b489f9f06658355d751ef
3859	\N	t	41	3860	5cf0fac7e6c74fc59ff428c4e2f06250
3860	\N	t	41	3861	b87a266189ae4e5abc93f5cf188200b9
3861	\N	t	41	3862	e8e68908658a4c25b80721fbf7461356
3862	\N	t	41	3863	50c865702601481bad5323e1464747f6
3863	\N	t	41	3864	96482808221543c29b8fbc0fd8696c27
3864	\N	t	41	3865	54e49e6b41f44a9b899ef74472e256cb
3865	\N	t	41	3866	076c88c6e67642feb587f242ef6aa69d
3866	\N	t	41	3867	b8132ff5e4b6470b873c82b121b6ba1a
3867	\N	t	41	3868	2092101e9b9643c79ec9603e3fc9893d
3868	\N	t	41	3869	5e7821a7a9d94090b836d39accd04988
3869	\N	t	41	3870	3b6f863876cc410caf91e4bcdeef8821
3870	\N	t	41	3871	f48f48978b8f489c85fa9ae2eab3a97c
3871	\N	t	41	3872	4db02a4ad44b44b58080faa501d5079c
3872	\N	t	41	3873	7c1ed572243242bfac0ef377f1a82eca
3873	\N	t	41	3874	f1ee195937b548ed803759b3253d4947
3874	\N	t	41	3875	cbbbe79856c241d89fa580e7287bda9f
3875	\N	t	41	3876	3b034e07183e4538a7a31ffff837c9d1
3876	\N	t	41	3877	b960c2c0ea534c5080465b2c8b1fe82d
3877	\N	t	41	3878	dc0dc6611b5141bc91b7242b88052a19
3878	\N	t	41	3879	5f3d0db3aee2438bac61b8cef4ee5a9f
3879	\N	t	41	3880	3275e156d6df41528c3aea4e34145796
3880	\N	t	41	3881	e789d8086bea41e79070c4547112e73e
3881	\N	t	41	3882	fb7461bb27524cd6b97b26a313dc6b8f
3882	\N	t	41	3883	8d4ba31e99674e1faf12d41656620a1f
3883	\N	t	41	3884	b01e673e681645b2a6e91b27a3f565c9
3884	\N	t	41	3885	091037dcb7024c5aade9bd2b0fe3cf65
3885	\N	t	41	3886	65068b3d3dd544f1ac97642ce7d48eb6
3886	\N	t	41	3887	869bcabc840345fdb71f62ef3e29c34f
3887	\N	t	41	3888	db93329df196412e874d204fa0cd6534
3888	\N	t	41	3889	5552b9975c484786a94229488462944d
3889	\N	t	41	3890	a2bc6d6092fe40fd8ac51dad6938cfea
3890	\N	t	41	3891	ff416bea25ee4179bd0f0f4115a2a784
3891	\N	t	41	3892	d86d67a28ca74eb38bf6f08c45c8e2bb
3892	\N	t	41	3893	769669cc386b4438b2de42d36a1e2ec8
3893	\N	t	41	3894	6307fd30ff4249a89600421e5e5e40b6
3894	\N	t	41	3895	8c6fa0a95cea45b29ac07a99ce7c82b9
3895	\N	t	41	3896	eed4924146a842119e2efe53fcae51b5
3896	\N	t	41	3897	18d8f2ec35d342918c28e773ba8e9b43
3897	\N	t	41	3898	f285095220ef4419891f5ee6826c685d
3898	\N	t	41	3899	731e40c0d6a9452c87ae77983912334c
3899	\N	t	41	3900	4db7dab0b7b84a2dab24d1eaf6049a11
3900	\N	t	41	3901	2d7015a932bd4c75899b6478605e8c07
3901	\N	t	41	3902	879a70eb7a0541738837378435489eea
3902	\N	t	41	3903	b56cfb5922d94e678e685a51720b3783
3903	\N	t	41	3904	b0b9a735050e432da325fe4e2d25019a
3904	\N	t	41	3905	34d3e9565e3545b0a7ac0c1f314b22b5
3905	\N	t	41	3906	8038ce3d69134664ad742d61be52aeb1
3906	\N	t	41	3907	790f10f853de4c738364ed2135289794
3907	\N	t	41	3908	15eaf83959b549a08d4111df89359b0a
3908	\N	t	41	3909	54a260c047e541b99a871b6c080b3e78
3909	\N	t	41	3910	a17494f100fe45959280c7d69cc84fca
3910	\N	t	41	3911	51120a06915149f6ad91369267a25638
3911	\N	t	41	3912	ebbb43bf71d44ac191ad189e93f10ad7
3912	\N	t	41	3913	6ee8f4aa483b4a79a0177a7fa3cdb4fc
3913	\N	t	41	3914	e1fc5983ad18461d93e14babd36a0559
3914	\N	t	41	3915	b4509c140f034129af99ad4c42c113f2
3915	\N	t	41	3916	21692a75029f49718eeaf617287daf4f
3916	\N	t	41	3917	d1f6994127d448c79c3c74aa45961d1a
3917	\N	t	41	3918	d945e6b8fa35436abd9696df9d5cdc6f
3918	\N	t	41	3919	1c9bb6ad7c7b472f82389d520c2ccbda
3919	\N	t	41	3920	5f61f0db948343a392709adfc48927a1
3920	\N	t	41	3921	3f79c02d4cf94dc498446c9c155be16d
3921	\N	t	41	3922	169c58a843f74c9d8e78e002e80d6183
3922	\N	t	41	3923	c1eb838543f940a49ab73ff0a70cf28b
3923	\N	t	41	3924	ba206771a16f40638d391e3c52df8baf
3924	\N	t	41	3925	2e026666014f40e7b34174bf0cdd58cd
3925	\N	t	41	3926	f66ff45c46fe493988dd11b6b8d8c338
3926	\N	t	41	3927	dba5b6a001064cc089d6fb5acca7292f
3927	\N	t	41	3928	fe1b20568d174458ad1c4cb59f93bbd3
3928	\N	t	41	3929	bb1d8a3b9756442f933f11bf067873dd
3929	\N	t	41	3930	d2760111bf5e4913a386ad7427fb0e1e
3930	\N	t	41	3931	0cf0d2641caf400bb5479ec67738643b
3931	\N	t	41	3932	69f584e5b61d412ca25244d207e0a18f
3932	\N	t	41	3933	97b56f4df42e45949b939d101654b79d
3933	\N	t	41	3934	c36f3535f39348299b73d5d772837654
3934	\N	t	41	3935	b768bb795fdc4f32a91c11ae857e5e9e
3935	\N	t	41	3936	c98529bc03084606bd33003d4c6d331c
3936	\N	t	41	3937	9d7c2280067d421db73bd2139d101a94
3937	\N	t	41	3938	7472439000724d01ae582ef4096d9864
3938	\N	t	41	3939	1f65d0941ab047cc9e1fb6401c329a9e
3939	\N	t	41	3940	e78e9533ed0f4318a87718315a4ae157
3940	\N	t	41	3941	108e72d0d3724ea0b2f12ffab92650ab
3941	\N	t	41	3942	b4a8fcb7367c49e28ba8f6be626416d8
3942	\N	t	41	3943	a35d500bea99417cb7529f5a7a0ce973
3943	\N	t	41	3944	07825b6dc22744aeab6555383cb2ec71
3944	\N	t	41	3945	c22d8c181ec44bf9887f92c6a2f1f0b5
3945	\N	t	41	3946	6debe4d247924ca5b989090242ae2273
3946	\N	t	41	3947	b0b5e7e9049845589d515ca05fdeb5ac
3947	\N	t	41	3948	b5ff540a7fee4a4c92e13f90fbf8a77a
3948	\N	t	41	3949	77f635224666485d87d6f4637845c5bb
3949	\N	t	41	3950	484129a1c08b42b58f5cb6b6f4302c26
3950	\N	t	41	3951	93bda5898fbd4f2289a3da9413ff1ece
3951	\N	t	41	3952	4944212ef9e54ef28758a0c83fcb5a33
3952	\N	t	41	3953	69c1dddb11864ef99ddb6425a14ed27a
3953	\N	t	41	3954	4e4a55a41c734615b0fc74b8186579bc
3954	\N	t	41	3955	efbad6ee1c194d0192cba21fa210806b
3955	\N	t	41	3956	c700d0e730e74082a07838fcfebafede
3956	\N	t	42	3957	ec78473626014bce9921a5af4ca0bf48
3957	\N	t	43	3958	4827485bc9cb44f6944ccfc53c2c8978
3958	\N	t	43	3959	6bf3b1cfd22e446e817be5bc9aa0e1b4
3959	\N	t	43	3960	cabc9b39e5ed42dca9178cc8d949144a
3960	\N	t	43	3961	08e7f6c90ae64468913b2d2f74fc0ac4
3961	\N	t	43	3962	e763be49f75f400f9b6a95f6481dac15
3962	\N	t	43	3963	bc4aad81c2f34b53b8e27e752df5195c
3963	\N	t	43	3964	923ef56b499642c4b0572b09bbffab30
3964	\N	t	43	3965	4e2e8f47e0d846198e9cf1dc2c9081b4
3965	\N	t	43	3966	3dde57c09d1f403a96276f2d8f792d20
3966	\N	t	43	3967	55e48dc3f8644cb495076a11ba5b07d0
3967	\N	t	43	3968	db11c4a656684144b38ee0aa468855e1
3968	\N	t	43	3969	835fe0cef7004666bd5a96f46fd1da59
3969	\N	t	43	3970	54508745a47a4100aedb17a0be178c5f
3970	\N	t	43	3971	09e0d0ad175c48ecbbba88d33271581b
3971	\N	t	43	3972	45d4995d9b3c4d42a3949c167e3fe754
3972	\N	t	43	3973	c0ce4d9c87984ad99cb0ea72004ae3ce
3973	\N	t	43	3974	8e50cad876ff478bae3753e40669e36f
3974	\N	t	43	3975	11d0af6f9743460db199674469f394f7
3975	\N	t	43	3976	22402a51375646d0ae38ab5c0e05f528
3976	\N	t	43	3977	69ebe1999f3440d2a0578e4b2c4ed2a3
3977	\N	t	43	3978	4a72269611bd4baa9c4634e9f45739ea
3978	\N	t	43	3979	4d06c9e34e93401ab48d2fbb51433e82
3979	\N	t	43	3980	421875925d6c4fbba65b992f0bd99dbd
3980	\N	t	43	3981	506e13748fc446ffbf4bcabebbe8c4a8
3981	\N	t	43	3982	c7dd2ce852424108a3291396c20e2214
3982	\N	t	44	3983	8f7bf39e00024a6ba6327982fa93ee68
3983	\N	t	44	3984	a4c8a4a4875140ca8cc806bea944505c
3984	\N	t	44	3985	f5b2bf25565a4a10a12ca7e32c423f64
3985	\N	t	44	3986	9b04b89390504a008e540833154436f1
3986	\N	t	44	3987	4bcc20a6bb56455d8caf22bebc7946b9
3987	\N	t	44	3988	f94ef22c77ad420e8619c3be73ea6385
3988	\N	t	44	3989	2cbfc2736b7446bb95e4c4f820f64591
3989	\N	t	44	3990	efd1d035e7524b07b7d24687a7436af4
3990	\N	t	44	3991	10097732671c4c2db27f3a0193572533
3991	\N	t	44	3992	e512005c9a4645cba9e0c437d4a808ce
3992	\N	t	44	3993	ed183098804a44b2b96b626d64c4749f
3993	\N	t	44	3994	f73627fce3d54aa894b1babe6c73f544
3994	\N	t	44	3995	b24bcd19e26747858098fbac9d7fc4a7
3995	\N	t	44	3996	d7680fe7edc3459b85cbf9e406be581b
3996	\N	t	44	3997	361156b043b04af8b9d7a9f6f9ffc5fa
3997	\N	t	44	3998	1bccfe84c568428cb7bcc703e2633c72
3998	\N	t	44	3999	09cdd481169b45f0b27bdc7e24d4b15a
3999	\N	t	44	4000	26778a8b3f044d42b72bf59b5d8b17f7
4000	\N	t	44	4001	6f0146d2222b43d4a4deb7f8311974a5
4001	\N	t	44	4002	660f01b914e0481f9c96ab12d1238b90
4002	\N	t	44	4003	b2c997d1c96b442b922f40853252fcdd
4003	\N	t	44	4004	30658584bad4454e96df8fd16c1864f5
4004	\N	t	44	4005	ac4e80c084154abfaf7b0f0aaf7a115c
4005	\N	t	44	4006	f64f9b701ae44b94b8ad70d33196327f
4006	\N	t	44	4007	f9d7e3a0d2e64011a3da10780408f40f
4007	\N	t	44	4008	63232931872843918edcbffba30f875d
4008	\N	t	44	4009	87ab7382832144ffa9eb61d688e045d9
4009	\N	t	44	4010	c336e8e986e1400bb1d76bb9f015f326
4010	\N	t	44	4011	f8c771be2ae54af7b80b07a2cc3a8547
4011	\N	t	44	4012	28153ef93a9a494fb5576a01cfdbb5ca
4012	\N	t	44	4013	904ee36eab7c400c96334b708b1e604a
4013	\N	t	44	4014	201fe8dcfe9841c9b81d8640aae54651
4014	\N	t	44	4015	0c39fcd8080d4df88ebd8eb6ac238fbb
4015	\N	t	44	4016	a3ae3879b17c4186a49047cea3015835
4016	\N	t	44	4017	798b9abeae9c4692af035d5be8accb1b
4017	\N	t	44	4018	e49b75d6c2b74ada9dac31dc1e583149
4018	\N	t	44	4019	bf8be69ce5774dcc8981b15d7f72ed5c
4019	\N	t	44	4020	a278305acda9426d834ea6dadb27634b
4020	\N	t	45	4021	3388431d173b4320923eb06f01101f84
4021	\N	t	45	4022	4a145b4817274ecaa308f53afd540a9b
4022	\N	t	45	4023	1757c9a2cf364424a0be43f2c14933ad
4023	\N	t	46	4024	beb84e21082c4a74bfaf95842178f514
4024	\N	t	46	4025	b91105c0c89e4259949279b2c19d58e1
4025	\N	t	46	4026	37b4f529c59e4314967db41e7045870f
4026	\N	t	46	4027	cbb666193f5f4f5f9ca6fcb108d8a4bb
4027	\N	t	46	4028	06b332ed2555418d9f18e23638b7ba4a
4028	\N	t	46	4029	312345602f3047e0b01150ff3f29f7a0
4029	\N	t	46	4030	76c3e5801e3044b4b57b1d454ce8174b
4030	\N	t	46	4031	3903ce59d07d4ad0874b59417137fdf2
4031	\N	t	46	4032	976cec14d2094dfea218e14e1ca6c922
4032	\N	t	47	4033	4a784d680a7a4802877d66c2ff1cc76b
4033	\N	t	47	4034	2fcc50706f8643e2bbd12177b59d9856
4034	\N	t	48	4035	864040ec78214d0ab52b7dc351e45824
4035	\N	t	48	4036	27fc3545027749e89f95c59254e7395e
4036	\N	t	48	4037	0e890acd6f85404492d1b6e8533a994c
4037	\N	t	48	4038	b51188f8232c4631ae59a33f96672475
4038	\N	t	48	4039	eda600e6efc740488c29bb7245da931a
4039	\N	t	48	4040	52a7fc15bf414e0093cbcc0ff38cccfb
4040	\N	t	49	4041	a43c12ba6cfb49b591c65f841874742d
4041	\N	t	49	4042	9cc6b441c86e4518968fe8c87cab98b3
4042	\N	t	49	4043	c5bdc98471af4613abd085baf3740bc5
4043	\N	t	49	4044	79d7da95bb6e4591b3dc9a222589c411
4044	\N	t	49	4045	c5e59d7c443c45a7b477355940868c86
4045	\N	t	49	4046	d5fb8723d94246a5a752015b0a04c12b
4046	\N	t	50	4047	e46f7eb073ae4191905b26f7f0a08164
4047	\N	t	50	4048	40d0c6fdbb074602bffb006d2160502b
4048	\N	t	50	4049	2a539aee82a64122972452f0e9af3b92
4049	\N	t	50	4050	1452769bef8b415c8ccaff496f1d2319
4050	\N	t	51	4051	af876804fe634c68b4875d4e60c1870d
4051	\N	t	51	4052	3cd51ecba04144c688ecca195e9cb273
4052	\N	t	51	4053	1eb0e5c0019b4ec086f93f587889a018
4053	\N	t	51	4054	5f7a721e31b645a48b7b0a78c0ab9bcf
4054	\N	t	51	4055	23ec58dd134d4241947fee04cc8020ee
4055	\N	t	51	4056	ebe3dfa58d1345a7965c5c580201f820
4056	\N	t	51	4057	57b9b64840a34fc68d3de868111e0b30
4057	\N	t	51	4058	eba4c95121ff4557bcd8e0459e3bb551
4058	\N	t	52	4059	bf7c60b087f743d0a4525c50c37b4678
4059	\N	t	52	4060	3112a8c0a6ce4f92bbbf6e99356bdcab
4060	\N	t	52	4061	0cafd1cb9ab64444a128beb881204db5
4061	\N	t	52	4062	21dca985e93b47228e9fec6c1b18296e
4062	\N	t	52	4063	3bd276b2497a4a839f1055cfc64f196e
4063	\N	t	52	4064	650c42d7ba524cffbb17583d9809155a
4064	\N	t	52	4065	c4bf939363cc45d58388c0951aea2419
4065	\N	t	52	4066	ba2007c536ab4c0784385d5a80674b4d
4066	\N	t	53	4067	3ed04a4b1089453dbf32b551048affad
4067	\N	t	53	4068	5f0a2cee521f47d4b8c5c81915265e0b
4068	\N	t	53	4069	227d28244a61476285d5f4a0aab48db6
4069	\N	t	53	4070	32082f439f8a4d1ca7566bc4004ef550
4070	\N	t	53	4071	660c98f5f6ab4e879a2367b32e259076
4071	\N	t	53	4072	56ba164127ce4cc08d460a0b14bf4480
4072	\N	t	53	4073	929bb5ed6a9149d1b93d944b985c54eb
4073	\N	t	53	4074	e7e57ae6848b4bc3bf11c72206694dfa
4074	\N	t	53	4075	c0f728a910404606a9d00e7ce732a419
4075	\N	t	53	4076	999904bb7f624df5a45a71412a324507
4076	\N	t	53	4077	7e73f566a6df429999de9652d39c37e0
4077	\N	t	53	4078	45bb0c97f1584d418b6bb2043df29546
4078	\N	t	53	4079	d343cf9c82e445d781d89e244b72754d
4079	\N	t	54	4080	00a8b412ed6342d4a89a1fd695b7f1a0
4080	\N	t	54	4081	0bb80fa06b054df287b54f09d52b060d
4081	\N	t	54	4082	2f8269b229d444fa9daa4a99cc79a477
4082	\N	t	54	4083	6052098dd0464e9bb66c710e5320a2b6
4083	\N	t	54	4084	f166d537cfe9442887b451dc4932258c
4084	\N	t	54	4085	d64742f6184647b2b19a79853051414a
4085	\N	t	54	4086	67af684ece4d45ac84c437a7ca0e040e
4086	\N	t	54	4087	dacdf2db175a4fffa921d58f6d0830a3
4087	\N	t	54	4088	11989024eedb4e9b8d2967d5fcb8b9b3
4088	\N	t	54	4054	a0190fbfd20841558c571ae4c20d593e
4089	\N	t	54	4056	a9272e62da0d4536a1fa6bf7c1f351af
4090	\N	t	54	4089	2c139d0279c24535a2f786b8d13752a4
4091	\N	t	54	4090	8124aa0d065844ee9d0f7191cd219b94
4092	\N	t	54	4091	ba9a3aef02f14a32b9c4a73c1174f6e8
4093	\N	t	54	4092	b8a90362babf4668aa8b5ac569471ce1
4094	\N	t	55	4093	bb925d486ec44595aa6ad0ba06d22370
4095	\N	t	55	4094	e726ff278798465e9fad241fdb1be0a6
4096	\N	t	55	4095	7c6ccdc221e4490faebb1704037978a1
4097	\N	t	55	4096	a53ab3682189474baf3f11542b409b82
4098	\N	t	55	4097	5b20704a1d4f493e83bbc2663b52877f
4099	\N	t	56	4098	1444589fe2fb4709a0079b1e5e5585f4
4100	\N	t	57	4099	9cf2dfc8a4a74b3cb019596456add6f0
4101	\N	t	57	4100	8f395a5b490f4f39b75669a4fff090c7
4102	\N	t	57	4101	2d0e8ac6d5b144fab22b579794ba84e3
4103	\N	t	58	4102	c45eecbfdf5a402093dae4cc51dbf0dc
4104	\N	t	58	4103	be8851a340964261b236a442edcfedca
4105	\N	t	58	4104	c54bd8101247452e84e239f05c46fd13
4106	\N	t	58	4105	40739f70f0e441bb8f2a89d552330de6
4107	\N	t	58	4106	d66f95da63e0448b9f822c6fb9b294b4
4108	\N	t	58	4107	62714bdaed0445c2bc1e03d1ce0f883a
4109	\N	t	58	4108	0bc34cbb61ff436a94cca2f1f55b7b63
4110	\N	t	59	4109	fc6fa6931f184dac97678a710bc0b79e
4111	\N	t	59	4110	46bb86640e444393baddae4173744236
4112	\N	t	59	4111	43efd3c8d99a475d856539fa697f9c11
4113	\N	t	59	4112	d663ffdc6d6c4d5e837fe2ba84dc4655
4114	\N	t	60	4113	a59cd2f8a19442349b0e1bee1baa2a3e
4115	\N	t	60	4114	6bf88f217aa84a1eb65260cab61a3bc3
4116	\N	t	60	4115	dd3b733d5382424183c4ff9e558ac41d
4117	\N	t	60	4116	8b41ddb0d1af41b78445c0aeadf11760
4118	\N	t	60	4117	77aa38b75f39491d8dc2459019b81333
4119	\N	t	60	4118	65d0bbd0d3c84beea2f2123b392a6d5f
4120	\N	t	60	4119	82bbaef905514479957b9db6eac49d01
4121	\N	t	60	4120	981387dc63eb40f1a837dd60ea9f12da
4122	\N	t	60	4121	0b83be12218e48e5b65a45b79c5f9108
4123	\N	t	60	4122	199e6e2d46ad4966a4bfb2d391aa501a
4124	\N	t	60	4123	728ec0a4ff004348a0ee64549227ffdf
4125	\N	t	60	4124	aedaddb2a7ac4feb91cad73ca35981e6
4126	\N	t	60	4125	3ef4f5da2e4a40eaab12d28ecc62463e
4127	\N	t	60	4126	a6c7e0c963204a1c9493bc129802d10d
4128	\N	t	60	4127	f975d1ccbc494d7eb313faf182403fdc
4129	\N	t	60	4128	42074799c54f45509fd600dcc693a53c
4130	\N	t	60	4129	b85055760e174d20971600bc872b61b5
4131	\N	t	60	4130	487264220a0f4ed9baec6f8a2bb0df7b
4132	\N	t	60	4131	f5ff1b8341794a87b21435c82815326d
4133	\N	t	60	4132	353e04e3eb0147bab51347ce85b01250
4134	\N	t	60	4133	c0c62d1acbf045e984011b58e4f68972
4135	\N	t	60	4134	b833897dba6b4f54a6dc2a47d772c5a4
4136	\N	t	60	4135	ec3da6b140b941ca9a9e15f8dcd6ea17
4137	\N	t	60	4136	c49c166e089b4bd8b142d174dde92faa
4138	\N	t	60	4137	8bd2a5da7ca04a6fa11618e04a25ccd2
4139	\N	t	60	4138	b9b441425adc415f89ba5e8dc1da0dfe
4140	\N	t	60	4139	2b1f71765dbe485585ea8de06d70794b
4141	\N	t	60	4140	a8512198e6404ce398f2f04f19825586
4142	\N	t	61	4141	2a7e9cddfa494563837e377746c43312
4143	\N	t	61	4142	728c0a81808d40d481419cdb2a303637
4144	\N	t	61	4143	87a786771b3f482c9dc2de6f62c45465
4145	\N	t	61	4144	5a7d3218db2a483f86014558d13a5f3e
4146	\N	t	62	4145	f4711d17d5ef459299048e53e1793852
4147	\N	t	62	4146	e760f2430a3647c3b87f141572e24579
4148	\N	t	62	4147	d7ffb82cea8c4bfd97fb38e23a770993
4149	\N	t	62	4148	68ab3f1e46134d5a8b67c660193e6fc2
4150	\N	t	63	4149	6b4eaeb083d7482cb3bfd274e58ffd64
4151	\N	t	63	4150	c600ac438f6a4cdd8c28b00ca6d32a80
4152	\N	t	63	4151	4108ca240a9d47c993aae4caa13e7280
4153	\N	t	63	4152	5e6a0d77e1614d3fa6e85491c3375248
4154	\N	t	63	4153	354b528dd7bc4178a375e41afd82fdd8
4155	\N	t	63	4154	2a3e37a66528431eb7db3919a7d7503c
4156	\N	t	63	4155	001b33e2caed4b3699db551c9c160d5e
4157	\N	t	63	4156	14a5594864274f09ba52887df6fc9d8d
4158	\N	t	63	4157	34ffe2e37d354652985d677ba4f67d36
4159	\N	t	63	4158	0a83f453b48a45dcb8201dbe2ff651ed
4160	\N	t	63	4159	9ef10543a03c4704a9826bd76997b277
4161	\N	t	63	4160	007f783f8723428db52790616ec475ea
4162	\N	t	63	4161	5e2ad12fe116408d93e47ce3c43065bc
4163	\N	t	63	4162	cc952fb073bb48f9b301faf91d260518
4164	\N	t	63	4163	86f3ce18f2224641b9f5eb361401aa22
4165	\N	t	63	4164	7fa23c9fefc6472fbf4efd735ea45579
4166	\N	t	63	4165	e60cc8e6e7924bc4a2115ca484b529e1
4167	\N	t	63	4166	4655b6b4994246d891d60bae39f4c782
4168	\N	t	63	4167	f31f9f2098034d0185aeb3f519295969
4169	\N	t	63	4168	bc463aad93a343e1a8ad57884c61c203
4170	\N	t	63	4169	abe64ebe403b454cb9f06f3bfd836dcf
4171	\N	t	63	4170	d41054ef04494207902eb5203fcd8dac
4172	\N	t	63	4171	038663e9ba224dca8605867718578ba3
4173	\N	t	63	4172	cd00b3b52ae74b1bb5fe578489f9693f
4174	\N	t	64	4173	e5f64bdd0b24433e863c637c08749263
4175	\N	t	64	4174	b8bb67124d384264b797706e57a3de74
4176	\N	t	64	4175	2faa7314d964491f8bd52f31a5f26dd2
4177	\N	t	64	4176	23b11bb75f7d4fc88d101ed2468e1597
4178	\N	t	64	4177	eebbbaadb8ff4b0eb4de0932a9d4e058
4179	\N	t	64	4178	8e15759a7ce14ac6a62df3628502fb0e
4180	\N	t	64	4179	cd1e77d601e148378b682b8f6885899d
4181	\N	t	64	4180	74fc383441a840838adde7c5b67b7505
4182	\N	t	64	4181	574b84111b4646eab49c8df045d62544
4183	\N	t	64	4182	a22e424d7b2c4f63b012e1c3eee556a4
4184	\N	t	64	4183	9863410ec69d4ec4892fff9d131cccf3
4185	\N	t	64	4184	a5d8a463a5b94282b4ed4648ba41f20c
4186	\N	t	64	4185	71a7e1c650d6498780c442183c7c9b10
4187	\N	t	64	4186	4513a77655084d799161897ba21e8279
4188	\N	t	64	4187	8e6cca810bed401d8ae47470f88d39a2
4189	\N	t	64	4188	df406d5185014d7492d8240cea02a3d3
4190	\N	t	64	4189	6d751067d0fe4ca8bb8ba2634256f893
4191	\N	t	64	4190	f4a144496a344b29b321752afb39246d
4192	\N	t	64	4191	97debfefd37f4a8a8d4d68faa04cd73f
4193	\N	t	64	4192	dce8ba997c494fa29f9840af96ed4d5b
4194	\N	t	64	4193	3d7439aec2c74c89a0ba9bb51a3547dc
4195	\N	t	64	4194	8076920ded3647edb976ab696fb66a86
4196	\N	t	64	4195	3a4ba31cade84e3e970481551b224df2
4197	\N	t	65	4196	e12aa32a316741f8b4557f9947617aa0
4198	\N	t	65	4197	ce03f24ef374434ea7213570734f060f
4199	\N	t	65	4198	f8f0f9fb936745dfabcb98ce57eeee79
4200	\N	t	65	4199	b47748436fed4631a9ded6c779696bbb
4201	\N	t	66	4200	9519072487e044bfb0be12808254b950
4202	\N	t	66	4201	cfda12ae22f4483499903be4cea2d9ea
4203	\N	t	66	4202	0d02ed3b28a345da8e82f56995bc17cb
4204	\N	t	66	4203	b6895a5d669c4918b7bdb2017654b0df
4205	\N	t	66	4204	2af76b9bc6dc4559883a5feed91fd8a9
4206	\N	t	66	4205	b326f3c85f8142559afb1ae8e4de4886
4207	\N	t	66	4206	21cf2707dc3a4c8f8c764441f32180ae
4208	\N	t	66	4207	8d6244c54ef24cf5a914fa6d1e9c6d7c
4209	\N	t	66	4208	71795d501db6451196fe00b96a2570a7
4210	\N	t	66	4209	e6fa8f59b7ed4b83a4eff030d1706e16
4211	\N	t	66	4210	a27e23e8cbda4357bbe1cb7ccf3adeb2
4212	\N	t	66	4211	7109a128264a4783a3bfd61dc4966fe4
4213	\N	t	66	4212	50f3666d86444dd2ab2ad25307a1c1f2
4214	\N	t	66	4213	d6c3fab608334d43bbccd84a6296b10a
4215	\N	t	66	4214	bd536ecf27564d4093206b61bc49c41d
4216	\N	t	66	4215	d091a25a137646ac87e3e4e01e00a4b3
4217	\N	t	67	3962	cfa18ee1a42948cea68488e0baa10368
4218	\N	t	67	4216	ff68ca81703c4649a199932e7e0613bb
4219	\N	t	67	4217	4504ca9bd663424ea0795e6f667ca8a9
4220	\N	t	67	4218	50f7e6d53bd044e89cd7693eb0df7957
4221	\N	t	67	4219	ea4ec0f459674f2781ae58739dcd03f3
4222	\N	t	68	4220	b8074e1ec7bf42ca86bd7f5b4347f449
4223	\N	t	68	4221	63bbd2372d584a4992bd876b273518e8
4224	\N	t	68	4222	09d837b31e994d2e884d8ee397b10ba8
4225	\N	t	68	4223	00e14728be85425495a00b6e27acc9f9
4226	\N	t	68	4224	87879709a87a41119ca00ee4bca0cfc0
4227	\N	t	68	4225	9d62e7b43d0e48d29961d16cf6e4240a
4228	\N	t	68	4226	6f82b26280244ff492edef1f4390bfc1
4229	\N	t	68	4227	c28eefaab05d4ed4bfaadef4fb158e69
4230	\N	t	68	4228	a7194e09db804a5e9c224aca041e648c
4231	\N	t	69	3957	d48c7f2cf5a746cab85bc54450f021f2
4232	\N	t	69	4229	2b8c47f4449f4bc98580ab6bbcb278dc
4233	\N	t	69	4230	78538484f60445b69afb7b8cc1435f06
4234	\N	t	69	4231	69ee9c6d5fbe444989bedf6abeb23851
4235	\N	t	69	4232	b5cf569186fe4e4db68f640d971afca5
4236	\N	t	69	4233	697553e86e6e4bc4b2e0eac0469660bc
4237	\N	t	69	4234	a5aea97f872041669622949c7c319eac
4238	\N	t	69	4235	603fd2cdae904618ad0407305329f9ea
4239	\N	t	69	4236	e2f6304aead54aa7b58b27fc7a775287
4240	\N	t	69	4237	2918151675474ad3abb39a0efce1bad1
4241	\N	t	69	4238	e6ad8057ab8c4e54bb1a566e2e45d833
4242	\N	t	69	4239	de917d5251bd42fd977d50493e671056
4243	\N	t	69	4240	791ffeac39434ef68a8727653be3dccf
4244	\N	t	69	4241	00c181b3d727404bbee67c5af4679165
4245	\N	t	69	4242	2a124da9500149d29b0a2a5d8c2d3451
4246	\N	t	69	4243	b6706bbdee6d41c293184672496697be
4247	\N	t	69	4244	aa9ef4d9f1554ba29882b93ddbfac471
4248	\N	t	69	4245	e2ca316f9aaf40d6b6355bb32da3f160
4249	\N	t	69	4246	6b6507ba427c451cb71e21ddf607f6f8
4250	\N	t	69	4247	03bcf212083f4c179dbd2055006963d3
4251	\N	t	69	4248	11a36dfafeb847d9b2a4ab33cf2383f0
4252	\N	t	69	4249	35b2f6db9d6f4bd08b049d2a795e342b
4253	\N	t	69	4250	4aea81b9d6b8483cb0418900ec1aa460
4254	\N	t	69	4251	37070c711176431fa9cae1d2b7ee2fd4
4255	\N	t	69	4252	a6baefdfdf8d48a099cfd8c7d820ed32
4256	\N	t	69	4253	3f7c95ee6bb241afa9d88b88851bc563
4257	\N	t	69	4254	8bc08aec85294df9aea5cc584e29822a
4258	\N	t	69	4255	0f6403cd8b0d45569691d568c8711e9e
4259	\N	t	69	4256	1c971ec00eb74a2ca22e02fcea2a56b5
4260	\N	t	70	4257	31dc025b6304416982c167eddc4bde78
4261	\N	t	70	4258	131c4f0a615e4a6a9952bfa90fdfabcc
4262	\N	t	70	4259	363818c9003f46d7ac34830d8cec3bc3
4263	\N	t	70	4260	34a0749cb1aa4dbfae7a048210cc8506
4264	\N	t	70	4261	1880814e0b0648eb9d491feaaf4f2afb
4265	\N	t	70	4262	007640219e804e7dbf59d7488758d5ef
4266	\N	t	71	4263	7fa9d1043a564b2c99873c78e9b29060
4267	\N	t	71	4264	9122e8632d1b4321a1dda7c2a5e68bda
4268	\N	t	71	4265	ee29e838fceb4e69b16d6dda9ed4df3f
4269	\N	t	71	4266	21c7c112f7134781864b7b2d0ff9a017
4270	\N	t	72	4081	630c749071e542a5a4d56e34b664859b
4271	\N	t	72	4267	8764ca7cea1d4be593ac2084e57fe18b
4272	\N	t	72	4268	e2971a1c717c4e15942a6d9edc30e387
4273	\N	t	72	4269	8ec376184fea4c649dbfdb04d52b3d8b
4274	\N	t	72	4270	1dc1f85b2c794718b852df89dc441e29
4275	\N	t	72	4091	123db91e540045adae4c8c3994b968f1
4276	\N	t	72	4092	5ed5706870bc49539a11c5fd143e09eb
4277	\N	t	73	4271	47d72b0cb5df4fc882fbbbdfa03fd322
4278	\N	t	73	4272	bcdf2fe0313647cba5e38c44dc477b0a
4279	\N	t	73	4273	510b55798d3d440196c8ec905224e146
4280	\N	t	73	4274	4ef6d1382c2c4c0a9def522712787942
4281	\N	t	73	4090	57fad5b70c534fc2903ea74b3af26ca5
4282	\N	t	74	4125	32003689930d4293b5dcf4b7e6f9c913
4283	\N	t	74	4275	83e95a2083ec4593b0136706417b9249
4284	\N	t	75	4276	7e982bb31fd94d31aaae1b497521af60
4285	\N	t	75	4277	307e8899c4a84642a5edef44240aa0e6
4286	\N	t	75	4278	d092b34197b0499f895b9bc2fc291ee9
4287	\N	t	75	4279	37d3866bb63548aca4cf8b587aeb7455
4288	\N	t	75	4280	b0ef8b6304f343c7bce394df65de1004
4289	\N	t	75	4088	f213a4a365ca4feb983c74787cafb3f6
4290	\N	t	75	4281	8f9696ee1ee4462e9f13a28602545398
4291	\N	t	75	4282	8881faeac3034a1cbfa99920eabff585
4292	\N	t	75	4283	cdc63f558b7e4375be696e8369ce9f65
4293	\N	t	75	4284	efac408354054d2682bc64b312cd4d46
4294	\N	t	76	4271	f5d8e42445544c63b8cdd3f1b3f5e029
4295	\N	t	76	4272	71152e046d7f4ea5b5fd75e41581c917
4296	\N	t	76	4273	7f395848a56e4f20a92ee9dd665e0035
4297	\N	t	76	4274	68a4ba4a6f8548c792c4d64a3ee5981f
4298	\N	t	77	4285	7deef9fa666248d59c706bf95c1817e0
4299	\N	t	77	4286	e81fc95c7f354a05b71967b83536ce6a
4300	\N	t	77	4287	a328e5395378440d9dcdfb6b5f3ee447
4301	\N	t	78	4288	f84be5dd14a54a0aa1b30f69603d3d8a
4302	\N	t	78	4289	9d4da2c8df494366ac110ccad4580198
4303	\N	t	78	4290	c6c15480543e4a879e154ca4fa3b6064
4304	\N	t	78	4291	a02f3c3ed2a44813bc44e9a73f43ec2a
4305	\N	t	78	4292	843f64dfba214a698249ba51ad25240d
4306	\N	t	78	4293	cbeabc1389e44cfd94681b900bc46d7f
4307	\N	t	78	4294	316c941f78ae49a090f50534c1ad17a0
4308	\N	t	78	4295	05e9aad4417e404093f6d75add3fbe99
4309	\N	t	78	4296	3933026bd51646bdbdfaa839f4cf4d64
4310	\N	t	78	4040	7d831be240f4410888c422202f2e8c5f
4311	\N	t	78	4036	2b8a961056e24c8188c2fa79915bb2cb
4312	\N	t	78	4297	96362df67c0e4ec0be03144144404019
4313	\N	t	78	4039	85e0529403db4aaebc253675742181a7
4314	\N	t	78	4298	3de6868b42294de8840a2c5d7653013c
4315	\N	t	78	4299	20b6124dd9754dc99732e4f4a2bdccf1
4316	\N	t	78	4300	5ba63f06104d4f38af7f4cf39c9d4069
4317	\N	t	78	4301	aaf0f4b9214048f88428d912e115752a
4318	\N	t	78	4302	192bfb2ee82841e7b90f1944b773b641
4319	\N	t	79	4303	e45c6bb26eb74c838b77b5790e8594b6
4320	\N	t	79	4304	cccd7ea238b74adcba60c9a3e64db768
4321	\N	t	79	4305	eb6ae53ee48a409e8a4362463f32ce85
4322	\N	t	79	4306	0cffc620e6694e269a9986b90fe0ee59
4323	\N	t	79	4307	a4461e29e5ad46cd89f327f6f455d046
4324	\N	t	79	4308	a27b65435b254347a0d555f3d3933eca
4325	\N	t	79	4309	e0fb340adc0c473284081a910b84deb6
4326	\N	t	79	4310	645858e4b70e43629f0da1af775d0ed3
4327	\N	t	80	4311	59b758e9bb584662931a868589730848
4328	\N	t	80	4301	52213000a806464aa3ed513a478bf7dc
4329	\N	t	80	4295	83452294cb79428788e81c547ec9f605
4330	\N	t	80	4312	ac99758d764d47dc9b92318e0ba8adc2
4331	\N	t	80	4313	f1a888f5163b4b2b8c8323565b56377e
4332	\N	t	81	3219	2a8fbfebfaf8430e888e0ede1623398d
4333	\N	t	81	4314	6985c4bf229e4f44b9f1a14b81fa15fb
4334	\N	t	81	4315	69ed87d9c029432daf104dac4865696f
4335	\N	t	81	3580	fe6da224c18a4240b36cd56f97f52ceb
4336	\N	t	81	4316	fc05653855424a4385e6819ec065823d
4337	\N	t	82	4317	262e0f7d1e0b42498f910334ab8f7c07
4338	\N	t	82	4318	07884eb2b4254ccfa6c3d0f516b3f345
4339	\N	t	82	4319	b2eda95f663a4f449158e1080bfccdc3
4340	\N	t	82	4320	c74dbb5bf37048e0966504c12adc1a09
4341	\N	t	82	4321	8e80a24908b444c89f04a86fc3deffac
4342	\N	t	82	4322	ca22b8059c254342b7f90034dc29cc7b
4343	\N	t	82	4323	86bd840dd01e42298bde33d10b44ab90
4344	\N	t	82	4324	377607f2e561483f935cad0286f6d659
4345	\N	t	82	4325	6157537850534479892fa1571a83058c
4346	\N	t	82	4326	084a2089ca434aa0851e0a1c2a702820
4347	\N	t	82	4327	cc657a2dc8704e41a4b1ae11cbb43060
4348	\N	t	82	4328	4400c3239c17490ab89e7165b704c227
4349	\N	t	82	4329	bf53d180121548859061bef2f06aa2f6
4350	\N	t	83	4330	afde08bb24ff470db126bdea57168aff
4351	\N	t	83	4331	6ad21ab11aa94b33a145c317ba518270
4352	\N	t	83	4332	f155f281615c47a18fd6875402c7242b
4353	\N	t	83	4333	09a9f4fdd6b8480287153acb4c0e4cfc
4354	\N	t	83	4334	6898312dcace43c48bfeff97e69173be
4355	\N	t	83	4335	ecc1eec1103543d1987eec25d4a9b69d
4356	\N	t	83	4336	23142f2eddfe441d82bc73c35dce057c
4357	\N	t	83	4337	f3b02f9ea18d4f2cba0aaf73d8817aea
4358	\N	t	83	4338	c2ba6c3329264488897e0eb020d760d5
4359	\N	t	83	4339	b9198fdd89f241f8ba3203b1d1383851
4360	\N	t	83	4340	4380efeff5934cd3ab3ce7b03a332593
4361	\N	t	83	4341	f9b9c46fa91f47ad8be168231d31e940
4362	\N	t	83	4342	c1eba47792194fd680f3799a8f0ee1b1
4363	\N	t	83	4343	af1ce63e89a24029af1a287c4d30477b
4364	\N	t	83	4344	f77d25d702504df597c7d605d38acd86
4365	\N	t	83	4345	3f308272c9af484480ffe78db8c0830b
4366	\N	t	83	4346	be793204f93e4fe7a9d7c7b63b655e79
4367	\N	t	83	4347	8edd9c108fbe481386fd60908ce2cbc0
4368	\N	t	83	4348	46c7f698db5d40ae9940929d045c723c
4369	\N	t	83	4349	b716bb43436f4674b8c7c01da2a95d77
4370	\N	t	83	4350	31225d6c06a142eaa55ffcaf2e2684e2
4371	\N	t	83	4351	c376428d44634efca739ad643c4750a5
4372	\N	t	83	4352	f8b7c63fc928451c8db4dc8f82fcb57a
4373	\N	t	83	4353	727b5ed68cdb49be8d17249ce858b344
4374	\N	t	83	4354	cbc49d17e6984251aa20294927c8501d
4375	\N	t	83	4355	fa949548aaf24df4821904ab49f0d39b
4376	\N	t	83	4356	130a41de29d74687aa07478497a54151
4377	\N	t	83	4357	f82358947db34e7691b032480f5b5c40
4378	\N	t	83	4358	ea30438e5bed4622bd72778a06d5e141
4379	\N	t	83	4359	eddd7ca1cd0a4aa3a07652a4dec6655b
4380	\N	t	83	4360	9868867431e546d0b81e2c6616226500
4381	\N	t	83	4361	2354782ebcf14b1aa9aa8bbae46867bc
4382	\N	t	83	4362	af55e0eda769472980a289b516ede250
4383	\N	t	83	4363	32f357e6343a425fbc54bcb5fb510eb9
4384	\N	t	83	4364	26fb2842bce54f9ab7c9be694c99cecd
4385	\N	t	83	4365	93012f527b5e4e17b985ad20b37e8fb7
4386	\N	t	83	4366	ed8de6b203c2467d9689b9c48748527c
4387	\N	t	83	4367	ea53e436d8d44e0fbd86e54da29da483
4388	\N	t	83	4368	24cb7777cca5494b942eb95c38d6c730
4389	\N	t	83	4369	1236ef2b5b614e0e82ed750a6de4a141
4390	\N	t	83	4370	34cac7e6732c4b77873192bf547ba428
4391	\N	t	83	4371	3f5eb140b36f40e58fca06d5275afc94
4392	\N	t	83	4372	d93c5c00eab74f1d9c8f06e99425db90
4393	\N	t	83	4373	e8bfd8fa3e9e4d50bdf1b7fa1e7ccc01
4394	\N	t	83	4374	5e1998e85a8041ff886cf630094f4aee
4395	\N	t	83	4375	d4e93eaba5994b7eb8a379aa033f4d93
4396	\N	t	84	4376	7ce1c3ab3c0544debcb74321b6e79829
4397	\N	t	84	4377	5cf62df8bf3a425ba0b854bbbdec06a1
4398	\N	t	84	4378	1da122136bf14c258d6ec4eb3efdb825
4399	\N	t	84	4379	eb66459c6346453ab25ffeb79c95b4a4
4400	\N	t	84	4380	49fb0f36d3aa47458086b46923645ee2
4401	\N	t	84	4381	6dc5cb417ff4479589f80d7189438b48
4402	\N	t	84	4382	1cb1911aa99f4e899aef5ef50159b531
4403	\N	t	84	4383	5cbcb5a386a44678a59a0cb8a1e53022
4404	\N	t	84	4384	77caff6a83bc43d88427bcec3d184a3f
4405	\N	t	84	4385	f2acd8886d9b4b2dabbc6433d6566edc
4406	\N	t	84	4386	07556e503aa1414582996ac74dcd4688
4407	\N	t	84	4387	860a76ac4595490c91609efcd7d35e74
4408	\N	t	84	4388	3f2baaed8453416890e565a0c2475ca1
4409	\N	t	84	4389	a7fab4cc887b4c5daabe5dc17cbc4b69
4410	\N	t	84	4390	2d14cd64ba224086a2c28148d6d03a8e
4411	\N	t	84	4391	480c1fb590ed4d1a929174c666c46602
4412	\N	t	84	4392	fcbe6ec071734690b290a9ee7ee4d522
4413	\N	t	84	4393	be39a4443f7d4707ae8029dd78e14906
4414	\N	t	84	4394	21ac7223ac04441aa585ff4606982558
4415	\N	t	84	4395	1a014dfe7afc4057ad6a5271e1a881b6
4416	\N	t	84	4396	0d5a323f5bd5488c857c0ff42900db24
4417	\N	t	84	4397	0747d239325a4fa1ba2071abfd29e6c8
4418	\N	t	84	4398	040cc349da7140bda15e7e09ad702942
4419	\N	t	85	4399	c364371d402949698c18a51307f6755d
4420	\N	t	85	4400	0495fb4f497d4c44b00087056e57a692
4421	\N	t	85	4401	2e1d0530e95a4e56a16223d7db3bcfb4
4422	\N	t	85	4402	c3a63432d5944bfe8231d40f223134ea
4423	\N	t	85	4403	0e7e58fc7d5e41d2951affbb8c1a8511
4424	\N	t	86	4404	1f5f90168a7e4e698a82f918c4885c5b
4425	\N	t	86	4405	3ebc40e86478497388f9b2303a79d4d6
4426	\N	t	86	4406	b19622f524f94a6790db973da0c7fff7
4427	\N	t	86	4407	67f5e8b29b5941559b5f48e396d17c94
4428	\N	t	86	4408	18cb3b5fab994f2a97f83f886060b6d9
4429	\N	t	86	4409	c7270bc9eb0545fd8599c26e50f79bd8
4430	\N	t	86	4410	49807c88c3cf4c0089422d7b67f12053
4431	\N	t	86	4411	d52eac9e2fc449b29d1851095b12dc77
4988	\N	t	93	4968	c156767276434ebf8073ccc30dca2c9a
4989	\N	t	93	4969	2cb7486f429342c5b3addc60993ea036
4990	\N	t	93	4970	cf3fc5bb608c42f5ac25cea0d3ed2098
4991	\N	t	93	4971	7498a3499fdd418e9fedb60c43b87be4
4992	\N	t	93	4972	a16391fab64a4f3784371d388b13cf56
4993	\N	t	93	4973	f5b6d6b7573d45c88b875511cd6edd47
4994	\N	t	93	4974	b0e767d8ec9349b49d91986f34116ea9
4995	\N	t	93	4975	a5b5a556d0e645c5ac19dd7327e09f8e
4996	\N	t	93	4976	24b5fc3f4e93415fad38ee8f6fd74dc3
4997	\N	t	93	4977	29f6218930bf4b738b03db7170d2ea3d
4998	\N	t	93	4978	dc2fb7c6aa824e72b0283baccc614a85
4432	\N	t	86	4412	82499cba05874c66bad4bc63a90eab0e
4433	\N	t	86	4413	ffaee916043949858604b1a8cf403bda
4434	\N	t	86	4414	c924366ffaea4fc2bb3c24973debcc87
4435	\N	t	86	4415	b101c4eee7c64b50aaa3e271822337e4
4436	\N	t	86	4416	0d0c6c521c0e4e20a3b1a502060e40b5
4437	\N	t	86	4417	425ebc3fd02c4f72a1be9703101d2241
4438	\N	t	86	4418	a0ce6f7f6154438993971accf1630e40
4439	\N	t	86	4419	6c9c33a802f04437b7dc72c5fd0bd3da
4440	\N	t	86	4420	d2ecf7d22e5244ccb64efee9ff482335
4441	\N	t	86	4421	543cedafe8254180b7687d3dcf4b9562
4442	\N	t	86	4422	668658642959477f945b1eb49b96124c
4443	\N	t	86	4423	a9912ca7659745f69043c6e96f08252b
4444	\N	t	86	4424	4a2098c6130c4f3bb2eb0f0f31c975fc
4445	\N	t	86	4425	fdb6b29da855408b864808cf19513d9e
4446	\N	t	86	4426	1dfb7930e64c445fbc705f86e64a6227
4447	\N	t	86	4427	1291ae1d16a34750a9060c234cfde2c1
4448	\N	t	86	4428	b88a55acb7ec46879632e8ce75bba651
4449	\N	t	86	4429	353e960878084fc5ae9914ef232462e1
4450	\N	t	86	4430	6527f690517f400e9cc6dfcdecfc3cfa
4451	\N	t	86	4431	13742c64b35b43f09508809634085099
4452	\N	t	86	4432	f1fd533748664c9a92b89caf4c8cbe0a
4453	\N	t	86	4433	157305d83089424482bf64fef6c83cc1
4454	\N	t	86	4434	a09f77e9984b40bb9abc6c0bf9d71aa9
4455	\N	t	86	4435	3b3396e2f7634aa1b7e036a6b8090a7f
4456	\N	t	86	4436	e0b24309af774eb8882b5040e85836ba
4457	\N	t	86	4437	116aebb29e6c4839afd50638f84855ee
4458	\N	t	86	4438	d0621144f1f9428c9ed0af4775213ead
4459	\N	t	86	4439	5a34eb5ee1dd4a2b9337dee6606ec0d8
4460	\N	t	86	4440	f69d7412a31a4e9bb8671dfbbfe3ed08
4461	\N	t	86	4441	078ee9dce47841d8862d44f3e46a6302
4462	\N	t	86	4442	8edfe0d74ee84487bf5be7e1142784c0
4463	\N	t	86	4443	4ec6c9c544cb4b2a81f00e1753842987
4464	\N	t	86	4444	71059d8237f244a19f5393607aa89710
4465	\N	t	86	4445	647e5bfbeb974ebdb354d779318abc5a
4466	\N	t	86	4446	81cb28e9959143558c79365d95194495
4467	\N	t	86	4447	3a6d27996e0e4322a4e816be4698e704
4468	\N	t	86	4448	a5aeba7398e94d82bae32afc39eb9c67
4469	\N	t	86	4449	0555221bb9a243038943790cb7b33b94
4470	\N	t	86	4450	095bb6ee5fc04843aadb9eacd081a1bf
4471	\N	t	86	4451	d3a7be0eb0eb4747ace253faae7af99b
4472	\N	t	87	4452	ba04026cb5654039bd481c34cba20f6d
4473	\N	t	87	4453	0a73b463d8b841b08b3baa576f19d62a
4474	\N	t	87	4454	c2d4b0f1f97840bc97cd17a6ef150fdb
4475	\N	t	87	4455	0ce6c2f91e5f44149d87383d7549ba32
4476	\N	t	87	4456	24ad9a7bea894adc8b515ae78dc08de2
4477	\N	t	87	4457	6a54721fdce14ce1af9c875c8bb552bc
4478	\N	t	87	4458	190463dd3807497580ff8d3f57804f89
4479	\N	t	87	4459	89047c37b5464ff99c7f09781d24c551
4480	\N	t	87	4460	4c3819bf73a64196949f9b7f4e9098d0
4481	\N	t	87	4461	957615a4f9d844e6b2b066962bef32de
4482	\N	t	88	4462	a47bfb80c6244082b5c94452478b5c53
4483	\N	t	88	4463	c0101955ea3048fdaf33d4f858a63c92
4484	\N	t	88	4464	4be8ae116c2e448c8d00722f9be330c0
4485	\N	t	88	4465	f00f11090ee5430b89e5f85123355d96
4486	\N	t	88	4466	c7498efcdcee4f11b564a9145b871d5c
4487	\N	t	88	4467	d56738c9860441ca8a5f18ce2dff465c
4488	\N	t	88	4468	76bc92674b3b4e7f82b4b3a2a8ce741a
4489	\N	t	88	4469	70aee4d04b5b45aab8fed046b44de74a
4490	\N	t	88	4470	94f301952903438989cf16f8ab32de1e
4491	\N	t	88	4471	173da0cef30649188337fa9df50584ee
4492	\N	t	88	4472	29b54ede1a5f4bd7be8fe5e3b33f1e4c
4493	\N	t	88	4473	93a6afc315ec47fb88e3dfdfabc5ade8
4494	\N	t	88	4474	f400c511a27c4a0f894fbb49becaabe2
4495	\N	t	88	4475	5306fa12f6aa4aa29eab680adf7a8de0
4496	\N	t	88	4476	306fb1f3721c4145a81badb9955df210
4497	\N	t	88	4477	27fbc7fd3732494cbe12e20f1b7bc5f7
4498	\N	t	88	4478	7ccf92d6e17b4e37b240f74a6924364a
4499	\N	t	88	4479	06ec75c82b3e4068ba8ad00c366b539c
4500	\N	t	88	4480	c30b3bdf452249fab8160414fa546239
4501	\N	t	88	4481	65fed8a99515489a9b821391fdd66f8a
4502	\N	t	88	4482	eca51546aa324c63b562d89ce3a8dbf2
4503	\N	t	88	4483	de986f2604e343dc972ad95d9ddafe0c
4504	\N	t	88	4484	44639bc87655456ea69465bc6290a542
4505	\N	t	88	4485	20fcc62d09344d7a801a94dbcf0dc130
4506	\N	t	88	4486	f639e1a67fdf485c9d79e637fc032fe8
4507	\N	t	88	4487	a1641a61919947fe864daa23631891ac
4508	\N	t	88	4488	1ea931010ec146a1892acfebc2f8b938
4509	\N	t	88	4489	ed7b898199a24da298d880ce97cacc98
4510	\N	t	88	4490	55ae635949a047f99a8a24091e493a74
4511	\N	t	88	4491	7348471318624fe19474cf604a6e2ac8
4512	\N	t	88	4492	9e310660cd2a4640a52f57824952e992
4513	\N	t	88	4493	0a0bb0d7821446b1b6a5a03066f50f26
4514	\N	t	88	4494	8188822f6805494da52873a4fdfa7fa3
4515	\N	t	88	4495	5ac02ebab6574f2696b2377098469cbf
4516	\N	t	88	4496	a813099ae2424f79bcc11a84e61e8fe1
4517	\N	t	88	4497	94d2dd0757404216a5c24c59e93d3ab1
4518	\N	t	88	4498	875baab6717f4ecc902230694dc40ad2
4519	\N	t	88	4499	7410e89008da41d6af34256755cd3e15
4520	\N	t	88	4500	c98c5d399580485ebf8040f90851ada0
4521	\N	t	89	4501	196236b7035b4725a4de4219364ac2c0
4522	\N	t	89	4502	8d07803e9a2343028186e5d024e6cee3
4523	\N	t	89	4503	f92eaf4e49d342f682cf514779c50ea3
4524	\N	t	89	4504	32f865d9e42a4a63a1d521c2811c66a8
4525	\N	t	89	4505	bbcb38a1385d45b6a2cb4d6358df6033
4526	\N	t	89	4506	1787e0f1b76640bdad8f455eaaefd3ae
4527	\N	t	89	4507	54da0153f2b5496da54e54bed2d97b4d
4528	\N	t	89	4508	03a98073b1b84d78a3c30202a6d62815
4529	\N	t	89	4509	9a5662b1c52c40a08fef820635d00fb4
4530	\N	t	89	4510	411390ebd3c04256a9c18394f2ea24e7
4531	\N	t	89	4511	7a1fdb0ab1724cbe9f6d01de0e245d3c
4532	\N	t	89	4512	298cc5fe56c34765b2da0896114be039
4533	\N	t	89	4513	cd95646cde724df6ab595f67de33145d
4534	\N	t	89	4514	6b35876d89db4c59b04d69aeedae71a5
4535	\N	t	89	4515	1458d3f5e9cb4ffa89aa0847a41b1f62
4536	\N	t	89	4516	c071adfb9b8046ecaf7d8af139b8c7eb
4537	\N	t	89	4517	b71299ab0d814022aba1beda1d0fac4c
4538	\N	t	89	4518	6dc1208b11c142cba7798ea2e9049025
4539	\N	t	89	4519	60b06646659b4a0ab5a21c373a978224
4540	\N	t	89	4520	46f18032ad2b4704915eddd935855b8a
4541	\N	t	89	4521	ea0342132c944862a7fc35aa0039bdcb
4542	\N	t	89	4522	788fbece362241b9acbe6741cb82f8fe
4543	\N	t	89	4523	3653305027cc4e4ba2d272b6ee08e6df
4544	\N	t	89	4524	6f928f7541c94b8dbd4d8e7a42016da8
4545	\N	t	89	4525	c23a4990e2a54a7ab106f739b52888ec
4546	\N	t	89	4526	dd15cede6da2415e8ad1d14da47fd840
4547	\N	t	89	4527	a1ea487705364cc083f7f66aa9f3cf2d
4548	\N	t	89	4528	ce750e077bbf40bc9fd21ac7d27ef624
4549	\N	t	89	4529	19bcea156a944736ac1c4a25921396a5
4550	\N	t	89	4530	9475e42a4088417db37459ffd8c83fee
4551	\N	t	89	4531	fa42b7c3e8d14cb995cd0beb4c196664
4552	\N	t	89	4532	8036575bc6e5459f9e2df08f8e3b9237
4553	\N	t	89	4533	b4f4920a068c4410b38c9c76609d187a
4554	\N	t	89	4534	645a61ce49f54200b6398bf81d224bc9
4555	\N	t	89	4535	8025650f677c4ccebca4a29e2c3afa9f
4556	\N	t	89	4536	bcd25bcf84464b7dbe82e7c4da397d4a
4557	\N	t	90	4537	e572959b763042d697f94137bac8e3ff
4558	\N	t	90	4538	eae9d6dbc9b145f69e96cc840aeb6d90
4559	\N	t	90	4539	3a0226350d3141beb49196ce18fbaee9
4560	\N	t	90	4540	b9a8cdbd451f46e5a9eeca5db4b2198e
4561	\N	t	90	4541	cef803412dd84e02a3818966249c7fe8
4562	\N	t	90	4542	3633d428709b4c1eae2cd882b28f545f
4563	\N	t	90	4543	23f293174439425da4035e2195ddd97a
4564	\N	t	90	4544	82f2314e622d49d1b2784ba388cdadaf
4565	\N	t	90	4545	bfa9599e3eb749a4939ad6266b7da265
4566	\N	t	90	4546	4542302d60234f60acf539ff714cf60f
4567	\N	t	90	4547	e65770f5b8d046debf4bce79188f3f20
4568	\N	t	90	4548	2dacd23c086c41d48a330b4c57114cb1
4569	\N	t	90	4549	a15fc0e68d99468e955226f355d120a0
4570	\N	t	90	4550	a396916e143440c68cbbd4c66c861ff6
4571	\N	t	90	4551	7dfdd673a6224808b7c99cec18745c24
4572	\N	t	90	4552	a82c8d20ca5d4088aaf7f9d71960a79d
4573	\N	t	90	4553	58999dfdbefc4f849e8131bf3e85eb68
4574	\N	t	90	4554	87913d75f6eb451fab08ac5c46cb9807
4575	\N	t	90	4555	6a1c5d3987eb4636993e7d135f5813f6
4576	\N	t	90	4556	709ad4444b4f4bdfa3356b602d90acb2
4577	\N	t	90	4557	f3b6714079f74d609fab25f740add723
4578	\N	t	90	4558	1cfac563e9824c5eb21fc7b88a826266
4579	\N	t	90	4559	3e184266e4544fa885040c8379d8d726
4580	\N	t	90	4560	ad795c43b92d41eb8e87878b80918b40
4581	\N	t	90	4561	02ed2e3cf7d6489ca8b4388c1012ddf7
4582	\N	t	90	4562	3b826d8780804aaf9bc65b05896baeb1
4583	\N	t	90	4563	d4b6bb884bb746e9a32c2de1cb07224a
4584	\N	t	90	4564	22a9545464a9475ea350366f1ca140d3
4585	\N	t	90	4565	968cf18550ca480188109493ee7cf225
4586	\N	t	90	4566	e094ec584518493ca0afb3a8da6c7906
4587	\N	t	90	4567	33575ab154ef41189bb0acf79403d446
4588	\N	t	90	4568	9675637ebc414e8f917dbebebfc6e70e
4589	\N	t	90	4569	ea9c2c175dc842eb9c440cca60531dce
4590	\N	t	90	4570	db47a079932f45b99eb3c6a652d8f83a
4591	\N	t	90	4571	5133b533871e46bca1fa81fddaabf59f
4592	\N	t	90	4572	fa22ea527d8c44b7a394e6605d720bd0
4593	\N	t	90	4573	56bead58b3784ae8bdf54d2bffa3fa60
4594	\N	t	90	4574	3862f95cd46d41d4bf0e41a02da06bea
4595	\N	t	90	4575	a0d41f3584784ab79254b10f0bcd05d8
4596	\N	t	90	4576	45b7881b90874a508836097e30a539f3
4597	\N	t	90	4577	3384c73615bc445c9cffc5b75e6a346b
4598	\N	t	90	4578	ada0e629191646f5881b7b94692ef068
4599	\N	t	90	4579	96f1d6746fb44cb0a61ff251bba9a9a9
4600	\N	t	90	4580	025624b6f9b14f1395909d5a528f9da3
4601	\N	t	90	4581	ab03ca5967c2428e8a74d786938cd4a3
4602	\N	t	90	4582	bd1dd3f301864c7da15adef970b316f5
4603	\N	t	90	4583	e247716b8d71474ab5bbf83b0cea35c0
4604	\N	t	90	4584	93a03990183542e7b8bbb363f8f9d266
4605	\N	t	90	4585	1236dee48dda4d48bacdafcf3947b95b
4606	\N	t	90	4586	6cdc81ba5ac14343bf068bd9b8a509ef
4607	\N	t	90	4587	a600812ea9644b69a8000d6b0baca41a
4608	\N	t	90	4588	77cad217adf64d59989e7a9d39320f0f
4609	\N	t	90	4589	6ad2314f7a6f45149deee9cd073bd803
4610	\N	t	90	4590	f10ec423f62448adb957c8a7860fe6d2
4611	\N	t	90	4591	0ad9b0cb7b784a7d980510945fc19a98
4612	\N	t	90	4592	f697bd73f436466b9f7349fe00d4af9a
4613	\N	t	90	4593	0153ca6928d64d9e907155b00591aa18
4614	\N	t	90	4594	bbae86e4ba5f420ebe2d969444c765b0
4615	\N	t	90	4595	520f02c34cf24f55b7c606b30a7009b5
4616	\N	t	90	4596	26067bfd8d5740cab7d773be37d8b3e2
4617	\N	t	90	4597	d7953846b2254e238c052bed887e6e54
4618	\N	t	90	4598	d57389d2b04c4124a75526f20fd962b6
4619	\N	t	90	4599	63db2a90bb414014b26df3e17babf298
4620	\N	t	90	4600	3371f37511c64a12811c5198f98e240a
4621	\N	t	90	4601	680bf18131274441a6b61d63260a3016
4622	\N	t	90	4602	141c0826b3884525bf774138315422e4
4623	\N	t	90	4603	3594e96c95094ec7ba81368de171e568
4624	\N	t	90	4604	c748f808e11e4c3e890e7f4401ea71be
4625	\N	t	90	4605	650a5b94735c43f59f79d014a6d5c9d2
4626	\N	t	90	4606	4344806ca4ff4564930fc0bb77ce19fa
4627	\N	t	90	4607	259dcafbdb3a430882efb5c7cbdb8d37
4628	\N	t	90	4608	1aff7e4bee7b478d8b6d4a8cb518a5d1
4629	\N	t	90	4609	90cc373b02234da6a34d43e26b0b9df2
4630	\N	t	90	4610	22f2bfddb9884d669d3c564d37440258
4631	\N	t	90	4611	3ed5b98c9dfd4800b9ad838926b7dd1e
4632	\N	t	90	4612	d9a2d852e1804628bd37c226aa6c3d75
4633	\N	t	90	4613	1d1fcb3542f44a5684de0807679d45bd
4634	\N	t	90	4614	5b320e7e76fe46448353864c99a1ebbd
4635	\N	t	90	4615	f9e9d5b5ce19489da62e5a1e47d54d54
4636	\N	t	90	4616	61f1fe769c6c4ffaa1c9a3490e2b2c70
4637	\N	t	90	4617	34159b37b438495faada671f18cf8fbb
4638	\N	t	90	4618	254819f3eecf4350824ba7df19736d6f
4639	\N	t	90	4619	0c4498e1e7364f459a2b575233bd9b63
4640	\N	t	90	4620	903edad61b6144dc8a4292ac87aa58cd
4641	\N	t	90	4621	3ef7f03eb4634bd0b8f969e7cf19857e
4642	\N	t	90	4622	2592d22997b84f3481d15977fee3854f
4643	\N	t	90	4623	1ac7986870fb4342b768d03a4100cd2d
4644	\N	t	90	4624	114874fa9df04f3ab677f16afb3cb694
4645	\N	t	90	4625	e09547744509471db2345165a4abcf4a
4646	\N	t	90	4626	87793f38d89e4fd5968810015d264d18
4647	\N	t	90	4627	e47c250e8e574b0b8984a8de62d9d3a1
4648	\N	t	90	4628	2bbcd7eeea9243a2aaf0ffea143c2431
4649	\N	t	90	4629	ce924718a0bf4e5bbf294ea504235aca
4650	\N	t	90	4630	78c101c9afff496383f299f6085faece
4651	\N	t	90	4631	1718c0adb8904d86a3efb7e7299890e7
4652	\N	t	90	4632	b4fa023705ac4960bc6a615ba2649f6e
4653	\N	t	90	4633	b9ac586fe1cb4d78840f82832e6115f4
4654	\N	t	90	4634	bec3587303264cd1a4a833179875443c
4655	\N	t	90	4635	f2625084469342a69903ef0878cab994
4656	\N	t	90	4636	34977e435608414aaa1059201cc8aaae
4657	\N	t	90	4637	ad0dce7fc11b4942b4cfe51698b5a9eb
4658	\N	t	90	4638	d0c6a6688e504a20b93d6ca57831ef14
4659	\N	t	90	4639	8eafb70f18cd4cebae37e65a63da1a27
4660	\N	t	90	4640	4a22a8439ffe46258b2a12b05dd8263e
4661	\N	t	90	4641	207127b0b15945458e238f7c0774bbbd
4662	\N	t	90	4642	f8874f6c9f5b45acaca3bfe7e84f4ead
4663	\N	t	90	4643	8f6cab7f98d74f55846dbbedac30c06d
4664	\N	t	90	4644	05c25ad005d04a40acb225db82ea01fc
4665	\N	t	90	4645	619ddcb16754404b83ff5efcb45d452e
4666	\N	t	90	4646	92103a5382634600b88ab17188cbc805
4667	\N	t	90	4647	54dbcd7ae5c54c88a3d295365b004992
4668	\N	t	90	4648	09882f366ee6490fa818dc22a4c5bb97
4669	\N	t	90	4649	7f661a34ef3e44b4827da0a56155ac7c
4670	\N	t	90	4650	8bd787a24c224455befa893b693bbdb7
4671	\N	t	90	4651	719f313e12c8483f918e147d159600ad
4672	\N	t	90	4652	1c16f3c12c174bf48f62aa07c55fdd63
4673	\N	t	90	4653	5f637ddc298a4746be4a1fb4b7783699
4674	\N	t	90	4654	8b143f4caaa54af19dd2c2fe3ed6a7fa
4675	\N	t	90	4655	eab9195620bd494ea1606b8acfb15b0f
4676	\N	t	90	4656	894019557af5405099d550d591998ce9
4677	\N	t	90	4657	f39b2d2fe6184548a142ecd632711b2c
4678	\N	t	90	4658	edfc4b3e5f274c11a203b2880b0f482b
4679	\N	t	90	4659	22a8fb4f11e043389915060e7fd29b82
4680	\N	t	90	4660	d4ce1aa0a50940fdb0f5902604666a1d
4681	\N	t	90	4661	d7d913ca4e1d4a4ca6da6e0cce2eb68d
4682	\N	t	90	4662	e75f3919582e490ea2acc4e5e6d23b3f
4683	\N	t	90	4663	ff4185d8ce7d4ad4af47a74fdd0dadcd
4684	\N	t	90	4664	ab777cd01336447a923d97466def3659
4685	\N	t	90	4665	110b4fe62b594801a383ab4813e81079
4686	\N	t	90	4666	ddfcfa949ad7434987f3bc5fa07848c6
4687	\N	t	90	4667	1f2fd220f8234855b2b3d158bf4f0e08
4688	\N	t	90	4668	e8a42c0eba334e9ebba085737dd5062a
4689	\N	t	90	4669	8230b22c104c476faa9fcc8b0ef7ec73
4690	\N	t	90	4670	3b6b76d6e8b8449885d594c103eec470
4691	\N	t	90	4671	8526700c211c4a259ed2e9c3ad65979f
4692	\N	t	90	4672	97e501405ee14045a936567da9978e2f
4693	\N	t	90	4673	7d030f053d304d3c86974bfe89c61ce2
4694	\N	t	90	4674	99a5143b1a294f7caf14513c2d52c047
4695	\N	t	90	4675	8dd6ab3f691c447b8ae0004a3cad3b82
4696	\N	t	90	4676	2516b0711c5042e0aeb26751325d361f
4697	\N	t	90	4677	f798ba6da593424ea06ea3dd1d476b37
4698	\N	t	90	4678	eddcf8a0d5fb481eb44a8308056b0bd8
4699	\N	t	90	4679	0c2ee4bbf95c49c3843f826e3d087472
4700	\N	t	90	4680	0591e8fbdff74879962b95d445eb84bb
4701	\N	t	90	4681	7dc8de7c3c894d06b6cc9d23e0b054a8
4702	\N	t	90	4682	af637f67f010408cb39482f21645966c
4703	\N	t	90	4683	c0e2e3ca163e417bb8e45c27cab0cf56
4704	\N	t	90	4684	26782627c9464e6a9703b09f105d1925
4705	\N	t	90	4685	7c31efd8e4df431d80e26f82e9343109
4706	\N	t	90	4686	8e97929383a84847998c70433afe4291
4707	\N	t	90	4687	81eac9c9b3b44c88950b353c23d7eda8
4708	\N	t	90	4688	6e00f1cbb84640c9be79eba472cd60dc
4709	\N	t	90	4689	99dff044c91c48efa84f02b614c68cbc
4710	\N	t	90	4690	93333741cac14e15803e90d2b689a3b0
4711	\N	t	90	4691	45c02fae4ef74508a9b76a18ff8190bc
4712	\N	t	90	4692	55b202e4342e4ce1b55177bfb7c83c72
4713	\N	t	90	4693	73768f5076e545799b5dc1f28c4e6274
4714	\N	t	90	4694	5fc779c076fa47bf97715c63cfb74295
4715	\N	t	90	4695	d653a4644dc9479497c344400564dd9e
4716	\N	t	90	4696	ff536db2e0e24034962b54310e336151
4717	\N	t	90	4697	ed9bb034d84243a9af79b7579e3f3db6
4718	\N	t	90	4698	53eef504d1f548b9b877a7aee50a6f33
4719	\N	t	90	4699	29edb9f240ec4d4e8435958605e2ef9c
4720	\N	t	90	4700	338399f838634ad7995e35c6c33b7c0e
4721	\N	t	90	4701	12c829857bac4f53b2fcdc3146fb0352
4722	\N	t	90	4702	851e04eca9344b8d8841813909641b9f
4723	\N	t	90	4703	55bf79da753d4b5da2382649d6ab44f7
4724	\N	t	90	4704	05f31742128d4944ad4b4abf558d8ffb
4725	\N	t	90	4705	8aff8d25c1e644df9089114a87d915a6
4726	\N	t	90	4706	4c536cf1757c4efdb6865f381041a237
4727	\N	t	90	4707	c81776c3c2ed4815813e9294f4433c51
4728	\N	t	90	4708	7dd8390517274a8b832f04854145bb25
4729	\N	t	90	4709	bf4802e460164661928fa3212a8a6415
4730	\N	t	90	4710	74efc38478934e8a9c943414aa8f5a78
4731	\N	t	90	4711	4a9d3dc2fd6f4c13a60d9d2efa9d6c15
4732	\N	t	90	4712	47dfd6d33ff74f35999f0372ae289554
4733	\N	t	90	4713	3edd9d5be7c24209aef35095d0313b88
4734	\N	t	90	4714	78c7957632f44f8f9928bbb1339ad1ab
4735	\N	t	90	4715	485056d7e41447b39e78464f6cbabe67
4736	\N	t	90	4716	b08d6f5ae4e648ca96a5d74f00963890
4737	\N	t	90	4717	f69da0792a914444a38a23a0b6609d86
4738	\N	t	90	4718	f375d1d3783d4ce182a82f61fb7bae2f
4739	\N	t	90	4719	11165653f87b4ccfb938994c03049146
4740	\N	t	90	4720	e218fb2309354dcab8aae28342a99ef6
4741	\N	t	90	4721	9990f7e2299f4d4aa027040b8e76bb9e
4742	\N	t	90	4722	48d53b19d5f34658aaaac4805c923942
4743	\N	t	90	4723	5af5b8704bd048218fa29db767b4bbbb
4744	\N	t	90	4724	c6d79889e1af41b49ecc081f7dc50397
4745	\N	t	90	4725	e3283ded92614f918cf1ec8c6797328e
4746	\N	t	90	4726	68ecc559041c453ab7a4bb33a527fdc6
4747	\N	t	90	4727	89b1e4935ddb461b8cd6784d6b15d0de
4748	\N	t	90	4728	dc54e9a8b635423ba7f92ce4f99120d5
4749	\N	t	90	4729	a5862bd6a63f4e41a4aaf14489aeec62
4750	\N	t	90	4730	5870d98420744a4d9e87657d0ee8492e
4751	\N	t	90	4731	1077bf8f7dda4ddd910b3a063d7f0035
4752	\N	t	90	4732	6f70a191b19848e3bc7cd32e9988befa
4753	\N	t	90	4733	245f0d6bd8f44c68a9f060514da04790
4754	\N	t	90	4734	c53e852804c549a5a5d2139df135151e
4755	\N	t	90	4735	eb0cd543c0bc4a458884a7c5a4844afb
4756	\N	t	90	4736	9db5fde0f7b4468a910a8febde083430
4757	\N	t	90	4737	432c3f77edac410d88550bea94681a1d
4758	\N	t	90	4738	ed8d65fbe8c44573af71245c90fd6a52
4759	\N	t	90	4739	3b45d884c0a446f39eb4fcc34fa0d813
4760	\N	t	90	4740	233274619c42416ba68038cd09586e91
4761	\N	t	91	4741	07b2eb84456d44cdb313cbf9b8cbc77d
4762	\N	t	91	4742	a2ee44e4b85f492f866d099448d7b0ed
4763	\N	t	91	4743	3313848d7ffb457f85a6b85bc6d3f6d3
4764	\N	t	91	4744	5d093a4a80ea4a01a92c7301c2a30826
4765	\N	t	91	4745	e1c0ed52ecdd4f25b511ba94ece31b19
4766	\N	t	91	4746	7cac9d144e004a1fb5f5b5a0950865d1
4767	\N	t	91	4747	c930dae620814f8781da70065b2dbd84
4768	\N	t	91	4748	a1b6e2e19c9e42f2abcdcd2df52e8ff7
4769	\N	t	91	4749	417a4164b617463b8c2112f14d5778c3
4770	\N	t	91	4750	b37cc3064e5b4d0dbcb67344810381c0
4771	\N	t	91	4751	0ec5de85a0dd4067975341ae13d591ae
4772	\N	t	91	4752	f42d942d2b0b41ca89f251cd0790b525
4773	\N	t	91	4753	438668a0359f4bf7ac6fca048b1f9f2e
4774	\N	t	91	4754	1f68746f2a6e4d06a1e41c4404a825f8
4775	\N	t	91	4755	ecc8599f909d4ae59380626a24c088c8
4776	\N	t	91	4756	908880e984b145b4af7828c02726b03e
4777	\N	t	91	4757	d6b0ff5339ea416b8cbd9f50a1e2207a
4778	\N	t	91	4758	76bd7526fb2e4ed6a36cc8ebb2fa6aeb
4779	\N	t	91	4759	4c8c2b6633064371945a2fcdb9bb34a7
4780	\N	t	91	4760	18300da39d78483ea7192c06662c51b4
4781	\N	t	91	4761	d9859caf8a9c4eb48d0493f0dda96317
4782	\N	t	91	4762	9a3dc69c450e4933ba2a633a495646a4
4783	\N	t	91	4763	8adb0343c4654b5bab4b3b803652f03a
4784	\N	t	91	4764	1054b6ac18044b66bcc4c6bf8e0a9770
4785	\N	t	91	4765	db01ffa489034d27b082582e111cf638
4786	\N	t	91	4766	c12693eca60a461bb9063c6a0b17cee7
4787	\N	t	91	4767	616de904b39741d7bc026f0b713cb2f7
4788	\N	t	91	4768	173394a779694708b5f9a53afd54236a
4789	\N	t	91	4769	0215cc6d1e3945dda5564e71a3cddd09
4790	\N	t	91	4770	af5da345c9fe4980a388e8a6367601db
4791	\N	t	91	4771	bd133db828bd43e0af95b0cb309bbfce
4792	\N	t	91	4772	3eaa7f1bbc154baeba6480f3a122b5a2
4793	\N	t	91	4773	fadb36b056b44804b9716b4f2e11821f
4794	\N	t	91	4774	d4e67df60f9d41f48fc22a7201109360
4795	\N	t	91	4775	d37e0faa2da14f73aa4d5cbff8cae0cd
4796	\N	t	91	4776	b5471f9bf852414c964b07ee85df8e63
4797	\N	t	91	4777	8553f64256524f0cbe5c680eb51be3fe
4798	\N	t	91	4778	abaee68ba2344439a7a807943fdf4beb
4799	\N	t	91	4779	9e341d8af034451e80f23aae1424b523
4800	\N	t	91	4780	97256d215594407e95052eb712f65ee7
4801	\N	t	91	4781	5fdfd58b7b7544cda97adc4c7fd79247
4802	\N	t	91	4782	5dfae12ce2a04622ace98706cefac71c
4803	\N	t	91	4783	ca81793129f2495aaa763dcdc3c88325
4804	\N	t	91	4784	1c223b0e68b5470280ef7a5252678c76
4805	\N	t	91	4785	99cb66e5d37a4e1289d2b5f5dab7523f
4806	\N	t	91	4786	cd648e4a6a59455d8767186526cd82af
4807	\N	t	91	4787	865e12995a124de198d6859d4cec8a8c
4808	\N	t	91	4788	7489a63df4e84e18898488c61d5ff2b4
4809	\N	t	91	4789	5a17bb5a97e44c7387763a60ff7bae0d
4810	\N	t	91	4790	220e1a55aefb4d6d91b628d6fd7b40be
4811	\N	t	91	4791	6a9c3924b654466891ba14fb346c3daa
4812	\N	t	91	4792	cae3aefc1ac04ccb9a6553a19d4edd67
4813	\N	t	91	4793	ebb2f3da70da4998aedf7613644a9ced
4814	\N	t	91	4794	b7baf223cc10420b9c05c23b56192932
4815	\N	t	91	4795	2fddbfd57a254fe9835870814cc6f382
4816	\N	t	91	4796	643bc3840f7542b5ae6df94041f72f1e
4817	\N	t	91	4797	ef09d66a93c5450699604aa13a310709
4818	\N	t	91	4798	3984dfcb173d44e2992255455158c5f1
4819	\N	t	91	4799	ac0ec272edc34450b89c2085f01b764b
4820	\N	t	91	4800	63a3dab193a54d63a1e8b64f2a1402af
4821	\N	t	91	4801	f0a3cfdcc42246299b221de8114accf6
4822	\N	t	91	4802	93e83c80f3dd48c5a552a0ce5a6288fb
4823	\N	t	91	4803	3f3ccd1180364763b02161fd63c57049
4824	\N	t	91	4804	f112ccbe8adb4023bd9fff3d8b020d1c
4825	\N	t	91	4805	43e50144a8a44b48a6190f92aa60a92c
4826	\N	t	91	4806	73326e585eb14e3cad6bb3d845ae21f1
4827	\N	t	91	4807	d7c6ae2c051843f9b92d65656af8605a
4828	\N	t	91	4808	bd647445eb2a4ffcaf4b7c783a51b768
4829	\N	t	91	4809	6aafefc14c9548d288147b086f0f18a3
4830	\N	t	91	4810	71172db17f36410086f4dea20a11b19f
4831	\N	t	91	4811	370430b76705409eba3b86343897364c
4832	\N	t	92	4812	387130cda1f14b88955c9c8ee11288f0
4833	\N	t	92	4813	076cd1f5aad94e4ebd87ff0930b49695
4834	\N	t	92	4814	982ebaf08046448494d03d0e8df5afb5
4835	\N	t	92	4815	d710948d51f6477f877443ffbebd810f
4836	\N	t	92	4816	1a792a6acf704996820673682b7631e1
4837	\N	t	92	4817	d9528b6a15fa4a6f828e381064c4a3bb
4838	\N	t	92	4818	abce184bc0254d43bfa268c3951a56a3
4839	\N	t	92	4819	29614dda340a4e6b802c5b2f60d2617c
4840	\N	t	92	4820	232dbc9ed2f94f4f9ae4c82a0900a878
4841	\N	t	92	4821	81b2b934a1184945abd3de1e0d6715e7
4842	\N	t	92	4822	307af5cb339c4c41b59bc71ea78c64d7
4843	\N	t	92	4823	d4be0fc0239949879da0c25626958af9
4844	\N	t	92	4824	7121cd2792e04d2d96265ebc9d8efc04
4845	\N	t	92	4825	884be5cdedec4df8a0dd9f48216dff54
4846	\N	t	92	4826	ad45338f7236462d97bde5110e99e036
4847	\N	t	92	4827	76c3b2b41583452db6dc504b13378c81
4848	\N	t	92	4828	48f8cfaa1e6c4216b73c2d76ab31386f
4849	\N	t	92	4829	2f58f2ff13fc45cfac0eb52c7d64f724
4850	\N	t	92	4830	e9bab464d282434eae76c1d2303c3cae
4851	\N	t	92	4831	594d9d1e02ef4082b70bcabddd2c6216
4852	\N	t	92	4832	a03f0b2e156f411b96aa0314bf2abe45
4853	\N	t	92	4833	a5106aca2e70479a8c6ebd729b833618
4854	\N	t	92	4834	b0573af6c1744366bae1c97164973601
4855	\N	t	92	4835	26c64c6db6e94013b3e767bb305b448f
4856	\N	t	92	4836	31c7dd95a88c4c67b92a918b11419048
4857	\N	t	92	4837	dadce8b7e779400bb0fbe36090f778ea
4858	\N	t	92	4838	90d302b508b64e839df3c928a98f99d6
4859	\N	t	92	4839	5d3094bc26114537875c6f77cf04add7
4860	\N	t	92	4840	6c33410b6ef14cd38c2c148fc79b7214
4861	\N	t	92	4841	f1916a453a6840f39dc7cf0ca40b11a1
4862	\N	t	92	4842	de0fbc23ca144b888f4352c182a91416
4863	\N	t	92	4843	78218a09bfe0483d89ad61bacb72123b
4864	\N	t	92	4844	4659add5a2d64416a827d917f432fc85
4865	\N	t	92	4845	5c67e101ffda47e2ad9e5ba69279ce5b
4866	\N	t	92	4846	2de775c4242146a8938fb14445d2fd32
4867	\N	t	92	4847	0b1d1e785e8546358eaf14d0147c7889
4868	\N	t	92	4848	3a954075438a47fb945b7d7e296ee364
4869	\N	t	92	4849	38ee9359bac7452da8d3f77944c3eb8e
4870	\N	t	92	4850	b39e41693387456b8fa7fe3b74837aa8
4871	\N	t	92	4851	703ab738737540c2bcb9c50ffcb6fedc
4872	\N	t	92	4852	bf48a13265184266b50211397abec326
4873	\N	t	92	4853	fc9223d6ca834589a7499545a83ad4c1
4874	\N	t	92	4854	2e092f05d2354b0fb77c2410b7cdf6e9
4875	\N	t	92	4855	7ec44655ec3e4e6b8f398ad170645f79
4876	\N	t	92	4856	c374fa89b06a484c87c07b3017b621ca
4877	\N	t	92	4857	2be98cc09dd24271b526729de31254ea
4878	\N	t	92	4858	310b55d5d0fc47d680f0205a78c71c3b
4879	\N	t	92	4859	d421fe93ccd642dea82867e7329e82eb
4880	\N	t	92	4860	6edea8d1819644428a2092b27260ce22
4881	\N	t	92	4861	c1dcb0c37c37479c8e3065a772d869e4
4882	\N	t	92	4862	a50a21453f544013991dd491b2596019
4883	\N	t	92	4863	a25bfb152e994078951d6c7b4f7f71bb
4884	\N	t	92	4864	42a10d676ef44621bb8bd0f49c5ab595
4885	\N	t	92	4865	2987bc930f7542eab0a99fe4c84d60c9
4886	\N	t	92	4866	6c06f447b815444285835808ac73eaae
4887	\N	t	92	4867	3a25a011037c4cf7a057969b6717a3c7
4888	\N	t	92	4868	24d45d8855264c62b37bfff02abd099b
4889	\N	t	92	4869	78320818c03d44b493ec03114bb3050b
4890	\N	t	92	4870	ed7fb0e2174441cda54949014fd208ba
4891	\N	t	92	4871	905dba12c05e4ad2afae328926fce1b5
4892	\N	t	92	4872	9e3b8d506696453a8631c29b64aa780e
4893	\N	t	92	4873	259abbb09b964809bfd8636cdeb80a80
4894	\N	t	92	4874	89cc24f1423948c098feac8f1ba2a195
4895	\N	t	92	4875	4673392660884f1bac98563e20824cd9
4896	\N	t	92	4876	5fcac5dfd2b7481cbb0bbb8e22031bc4
4897	\N	t	92	4877	e66420daa188455b9259393ba6fcae47
4898	\N	t	92	4878	8a66b872d17a4633bda9eec2fa0c8040
4899	\N	t	92	4879	2640cc3e4b0847dabf0a3d56c8a96f12
4900	\N	t	92	4880	7a647fb763f44af1a5016a5549feb8ec
4901	\N	t	92	4881	c8ea2d1bb49447bab441e2b702097478
4902	\N	t	92	4882	f9c3a3e0e487403faafbaab0e8492a82
4903	\N	t	92	4883	16de1767f93b46ab84289ba0264b847e
4904	\N	t	92	4884	baff8407b4ec4f5eb2dc0f9c8a007469
4905	\N	t	92	4885	d6c59ef301ab4310b430430f8f9e2120
4906	\N	t	92	4886	d49227430f404d4da7da14d8e392eb15
4907	\N	t	92	4887	eea6ffe47eb84de1b9d511966f8a2a64
4908	\N	t	92	4888	08bfd650c69b429bb8eed118ab53be90
4909	\N	t	92	4889	73a6684b647340de82653a99e9ac3f32
4910	\N	t	92	4890	68a7411d6602454298708a4fafed47d7
4911	\N	t	92	4891	6e7247a7c7cc4410b62cc35d6092cfbe
4912	\N	t	92	4892	540db2e4b7dd4d5696cd7c4d033a40b8
4913	\N	t	92	4893	067b8c2b67324530883c121f0aea2313
4914	\N	t	92	4894	ace1840a6a8440adb1bd3f1ed2d2aa3a
4915	\N	t	92	4895	71b13a22bb6740269267a6895bca58b8
4916	\N	t	92	4896	77a39757957e4edab2b37981a5a166ea
4917	\N	t	92	4897	c12336d0b69d49408486aa0e90e0cb34
4918	\N	t	92	4898	3b14877a95974f4d819c895ca55171ef
4919	\N	t	92	4899	f0496454bacf4d36b0d035a1624752b6
4920	\N	t	92	4900	5f9dba8b67564a8194252f069200dfb6
4921	\N	t	92	4901	f94451d752714425910369c7f2b385a3
4922	\N	t	92	4902	a28ae7f25579471889a79bc8379b41c1
4923	\N	t	92	4903	b4e1ef92346f43e9895a7ac8735bbe4b
4924	\N	t	92	4904	4fd5ff5b31e24511b9f072389f2185c8
4925	\N	t	93	4905	a1b5240fe29248b4af6ebcf7f194ee54
4926	\N	t	93	4906	7f374077f64a48e8ba4c1b2ef0e240d5
4927	\N	t	93	4907	6ca91e4a7c2b4cccae358fa14a887f91
4928	\N	t	93	4908	716b57bb2cc748b7a21c95175a440fea
4929	\N	t	93	4909	dbac9de4582046318c2c5064e914e37f
4930	\N	t	93	4910	09f4265e003745be8b227a269832f13e
4931	\N	t	93	4911	ce6511af7f7d45f8ae49701532fa4490
4932	\N	t	93	4912	1a0fcb8da59e4e3bb55776715634f3e8
4933	\N	t	93	4913	fa989b4ca38942ce80dc845e686a08ee
4934	\N	t	93	4914	57ce0eb636e34026a22e1d9b028d03c3
4935	\N	t	93	4915	886ab131cbf949269cf0e45d613b6838
4936	\N	t	93	4916	78fc0c3c471b4389aa035d5ab93f25e4
4937	\N	t	93	4917	76d093f5917049e3b8c2af38c59a6773
4938	\N	t	93	4918	041bd4cef4854f44a65542c16546cd1a
4939	\N	t	93	4919	0d5e4355090a4b6f87b9f5e234662f7e
4940	\N	t	93	4920	b40d61aeb47147ef9ff676b1c2eaeb81
4941	\N	t	93	4921	54721ff7f6334dfc83d3806a735bd7e0
4942	\N	t	93	4922	a0ffca8c7c2b479b90607527960efb96
4943	\N	t	93	4923	46ce20c17298422b957fb56d71aa666f
4944	\N	t	93	4924	1c75e820575d409395f0ac77aae13b50
4945	\N	t	93	4925	f043c7ae0b52479dafe6063789f762e7
4946	\N	t	93	4926	d399ce32b6ea4678ac93ab3e29aeb503
4947	\N	t	93	4927	a1a5234c79fd4cad937da0b028ec12e5
4948	\N	t	93	4928	1ec466fa71ef4ed987088b07ec6e3ded
4949	\N	t	93	4929	14cd205c3ab641b6ad9f8721f4b1c953
4950	\N	t	93	4930	5c068b6d88ae4d90839a6a6da4450b96
4951	\N	t	93	4931	02545735437a4d2ea678ed1111eefed8
4952	\N	t	93	4932	1a65ffe2a26643738825f0efee454b54
4953	\N	t	93	4933	1c67a4faab41496684c46604da059ad1
4954	\N	t	93	4934	1f23e41cd57849c39a402a851089f3a5
4955	\N	t	93	4935	1f2414f3089746c88a5fff58b7d92e2f
4956	\N	t	93	4936	ca273a3a69e348eaaa98a9f5b4a49da7
4957	\N	t	93	4937	da19adfb43f34ab1af2e08f0326409f2
4958	\N	t	93	4938	8de5b8bf65e34ce6941cffa6339429b1
4959	\N	t	93	4939	4ad62bc5ed7745358b771e80794796bb
4960	\N	t	93	4940	90e3b685de874b2dabe8b2d887fe6fbf
4961	\N	t	93	4941	e05fdbc17d5e468c973f2f91425dd7bf
4962	\N	t	93	4942	70b325caa83b4629bda2c32459ad564c
4963	\N	t	93	4943	0913a2f41617490e99d9d50aff73a9f6
4964	\N	t	93	4944	5ccfdbfc707248e8b394c028c2b94e1d
4965	\N	t	93	4945	8353062c421747e1bee1eb19e7727449
4966	\N	t	93	4946	9bc6f10234eb4824865b31a8b89e9f6f
4967	\N	t	93	4947	287a26da2d634376a8b55ede312dd1cf
4968	\N	t	93	4948	04bd6c5be50c4bf1b1b4249d6f157b46
4969	\N	t	93	4949	8c2cd5311a754ef7b40f308bdf649464
4970	\N	t	93	4950	72fbacd375d148b3a7d6d20814bc8463
4971	\N	t	93	4951	39f90be8ac2d47efbb908651b9374e95
4972	\N	t	93	4952	35a001a408664e6887584499cd79b1a3
4973	\N	t	93	4953	0c6211fda79f4d9fa36efdef9b1a45aa
4974	\N	t	93	4954	acf7dc42f9ab4abd997d4ed8e7edd3ec
4975	\N	t	93	4955	4b1a286f612f4c5fbe5588778a4d39ea
4976	\N	t	93	4956	59060d95470a4109b92b43b3b3106389
4977	\N	t	93	4957	c3fd01e1fc234b7cabb2a282278b7c85
4978	\N	t	93	4958	0e444536be4340e6b25d5daa0ed47874
4979	\N	t	93	4959	0430b8163cbf48368cf63c5989ca96b1
4980	\N	t	93	4960	b40e2519fb404b3a9e0f7cd5fbdfda08
4981	\N	t	93	4961	c1b08223332248cebf47fb75048e2eee
4982	\N	t	93	4962	79a7268bf0124c078778f6166603ce9c
4983	\N	t	93	4963	5f9d63c6dcc44ff3a79fb505ef631b8d
4984	\N	t	93	4964	0ca76470972d48ee95f9428818a30eb1
4985	\N	t	93	4965	24138a028b48434595f865e904149146
4986	\N	t	93	4966	f428ffe1d54543eab7816cf3f82ccd27
4987	\N	t	93	4967	e060eba05c30478f9cfab9854d300b71
4999	\N	t	93	4979	e9fbca5a9a1944a4935ed05f835d58a5
5000	\N	t	93	4980	d03d90e68b8a452281cb35be33275bb0
5001	\N	t	93	4981	02369ce37293411191514f3e42cd1368
5002	\N	t	93	4982	f5f4aa948a404a9992fc71324972a039
5003	\N	t	93	4983	4bab5a7229b74ff78426150716b34244
5004	\N	t	93	4984	6cb0d5492c2042ac857ac5e13f827c75
5005	\N	t	93	4985	d79ad7c624a945449e4950088360b13f
5006	\N	t	93	4986	72888a1e48414341b8c7d4fe76a1cb40
5007	\N	t	93	4987	0cf0a189d9af444a836d2927ebb5fcb4
5008	\N	t	93	4988	ad30763c018e4ab89a78eb163c1cfd65
5009	\N	t	93	4989	7b563597208041fa8f35fa727281b9fc
5010	\N	t	93	4990	268dbf0e0972413996c6b951c7b5cb3e
5011	\N	t	93	4991	bd751e14c69446358d58f484ae7f7cc7
5012	\N	t	93	4992	fc8c663374e5452bab576d7a6a85a1ed
5013	\N	t	93	4993	48303ce5e2e1419bab0197146eb740c1
5014	\N	t	93	4994	bbb3ccfdd40342fd9e830eb26231baff
5015	\N	t	93	4995	32c4b720c9a34dffbb119972ec42e369
5016	\N	t	93	4996	c6c3706786b844e19adda17702009a3e
5047	\N	t	96	5024	fd0e7761be544cdf9f4ff652cb1369fa
5048	\N	t	97	5025	deddc3e4377945da869841ef2e65817d
5049	\N	t	97	5026	5b2223913d9e4b18ba8fde94598c9893
5050	\N	t	97	5027	392bbe7ab3044277a40ccae5509ada08
5051	\N	t	97	5028	f0f98ed060dd4e65b3769c1fdb17957a
5052	\N	t	97	5029	d715b61d63064191b01e93ead4b61f7b
5053	\N	t	97	5030	d745183053e7499fb8f5d27978559e36
5054	\N	t	97	5031	ce026a77f8534d24ac40cdfb21edfe25
5055	\N	t	97	5032	a8060089aad147d8a6e7999b9318e302
5056	\N	t	97	5033	08cdfaa7cd4d4f4eb1f42348d6e7bee1
5057	\N	t	97	5034	a0453965b15a4020991a82af4fb49c23
5058	\N	t	97	5035	72e7c3410e53422ca6365656437f06b1
5059	\N	t	97	5036	42cfafa914b14998941a78c89f18da42
5060	\N	t	97	5037	80a884e8f9f4459ea984d793d034b972
5061	\N	t	97	5038	3549e17909ac44a28d92a8d1a13962f0
5062	\N	t	97	5039	b75eacbcd81443e79d41794b0ef66cad
5063	\N	t	97	5040	e364018231db4e23ad492c89ba9afb5c
5064	\N	t	97	5041	5704cf88232649baa17111150807fb1b
5065	\N	t	97	5042	79a8d29cb0734ed181ee001b99b6a2c6
5066	\N	t	97	5043	92ffe51112d84c1982ca561a219ea2be
5067	\N	t	97	5044	f2e9356256a5455588c4fcc6797bcf6c
5068	\N	t	97	5045	010262b25d204b1dba43b7575a4d2b56
5069	\N	t	97	5046	c96e4e9cae0d4e98b4913a8d138e6264
5070	\N	t	97	5047	7966252b014a4ec0ab7ec022ae49331b
5071	\N	t	97	5048	3195319b091d4345b3c896fe9a07d42a
5072	\N	t	97	5049	353455ac14cd434ca60b4d87d44e0a5c
5073	\N	t	97	5050	d133106c937247c9ab1f25d9e17db281
5074	\N	t	97	5051	93e269988dd7474e96586ffebb84b8a1
5075	\N	t	97	5052	e1dd70aae46747d3b2fbdfc312745d3e
5076	\N	t	97	5053	2a91f8cdb9dc4696b5b816d22fd2e3f2
5077	\N	t	97	5054	21f3691c6baf49c1b7334afd6b188bee
5078	\N	t	97	5055	59cfc1a3f0d04adbb53167a5538bfc37
5079	\N	t	97	5056	620f8055656c4f328f54b9728dbd64fa
5080	\N	t	97	5057	165c0cf35c6646e5a47716cd583902e5
5081	\N	t	97	5058	5184a1092fea4272bf75b83f1cd75b6d
5082	\N	t	97	5059	12b9574c08d44b77939eba4290e2b732
5322	\N	t	101	5295	be53ee409d784cb3923c48a5a95b369e
5323	\N	t	102	5296	f99f1f87cb07411da916f683fe63e82c
5324	\N	t	102	5297	cc7d5000d3374577aaba7c75a36086b3
5325	\N	t	102	5298	2062d1feb5554c6dacd60d29036e8ce8
5326	\N	t	102	5299	bf8f43ea8f314c1cbd1a4dec6a99088b
5327	\N	t	102	5300	bdbe86540179485693c993c9e0381b6a
5328	\N	t	102	5301	4c5256aba14e4955bf4eaa28393755ab
5329	\N	t	102	5302	a3ad3d35c14445e194dcecf85d70b47a
5331	\N	t	94	5304	2952f26b50e343039c6e6f499d08d0c6
5332	\N	t	102	5305	6aca2985e1454af394b1eabec42031d1
5333	\N	t	102	5306	ea25542164624979a1d7a8bbdd72ad30
5334	\N	t	102	5307	41bd5782f69a4e78ba0c8cefe4ff72cf
5335	\N	t	102	5308	da3775e9bbaf44328c6ce5075796a85e
5336	\N	t	102	5309	c38c6c7456f74977b58ccbe9f06cce41
5337	\N	t	102	5310	eb0a923c77be4f8ebbda03a7d7f9f7f9
5338	\N	t	102	5311	b1d31f9251f2460c87ac15d5b777c509
5339	\N	t	102	5312	4d42de8cb4e94870b432541578801667
5340	\N	t	102	5313	93ae8f99b152482182733280df32356c
5341	\N	t	102	5314	75e3f7734faf44f48af1f1382415dd22
5343	\N	t	102	5315	43e50c971c2a402c8ab3f49602fd77ca
5344	\N	t	102	5316	f40e621932ac422ba67d902ffd6b8831
5345	\N	t	102	5317	8df74e5273874b18a80492df4c299e32
5346	\N	t	102	5318	0ecf7fd92d8444e7bd5e32802a3c8941
5347	\N	t	102	5319	20ee3b68d309424896077546e2133d63
5349	\N	t	92	5321	74a51b6e9e9f4ff2a7dd9a1a48bdef4f
5348	\N	t	92	5320	20f658de985e4ea7a33fe5d22ac1b56f
5342	\N	t	92	5314	0671506a16404922a90bdaf2209922bf
5330	\N	t	92	5303	d8ae10253b8c401ab17b4d86f366504d
3084	\N	t	41	3085	3aac89f498534add9d208d1181167977
3085	\N	t	41	3086	0533d9ab84804c32aee92e711a379075
3086	\N	t	41	3087	c929fb0d35294ce5a72e501602a12cc5
3087	\N	t	41	3088	de547bb3ad614c6c979774e722b732db
3088	\N	t	41	3089	c9970ff1e4964c8e92b67ba8ec9c7e69
3089	\N	t	41	3090	8e50080392884e5eb2479aabe8e4e892
3090	\N	t	41	3091	a2b6d2978a574998a64ddcd95686d44e
3091	\N	t	41	3092	ad008832719347abb3e08dc515b4fe34
3092	\N	t	41	3093	4b4e9aefebf3469cb32bbaa95fa393ae
3093	\N	t	41	3094	f6ac03993a0945ab84403f46a278b682
3094	\N	t	41	3095	2d1a9fe14a504f41bdc2e7a9dcc14356
3095	\N	t	41	3096	9aeb2135c8844867884baf6b10e626de
3096	\N	t	41	3097	24a704d59faf4c7aab14909c8bdc208d
3097	\N	t	41	3098	1046b98f5ccb4ec3a55d0ad69e9e330f
3098	\N	t	41	3099	aada8dae883b431aaae66a57dafba675
3099	\N	t	41	3100	74c4d17a373b4e5f88d2bb41073877a0
3100	\N	t	41	3101	ddc87642526d4e61b9c23c5b0b586b14
3101	\N	t	41	3102	1a90267cb6b74cd28d2fdd357929b97b
5017	\N	t	93	4997	652062bbc71c4c26be38095b5bf39f50
5018	\N	t	93	4998	45b6cce5f9c947909116ba95f8daa4b3
5019	\N	t	93	4999	4586c81f31234752962eb76ba1006c21
5020	\N	t	93	5000	6f1758d9e5ac476d9dbe6ed23ac79580
5021	\N	t	93	5001	b844fdf0d30546eda1388c405b0d5682
5022	\N	t	93	5002	38e837456a3547e6ba2850e9befa960e
5023	\N	t	93	5003	0c6222431fa34bda9f68055d7a1bc191
5024	\N	t	93	5004	4c43c6a60b61479bb74a99b7f541c9b8
5025	\N	t	93	5005	5623f9e953bc42a2bcbb57ad19741c20
5026	\N	t	93	5006	f485169eddb841dba502ecd5a9e04a3d
5027	\N	t	93	5007	b0b88530956b409e9731595c0b0a4c88
5028	\N	t	93	5008	d8496b46253c4f0691cb362fa07640dc
5029	\N	t	93	5009	50dad1af1c594edd90e9d7ef25bce180
5030	\N	t	93	5010	086c243889f9416bb94e10378947899c
5031	\N	t	93	5011	b7fb791d7b9c47948de75e8820b0e598
5032	\N	t	93	5012	56f939e1bace46c3b52b605f2f74e8a6
5033	\N	t	93	5013	72168e10e9344d2ab14067c8fc326e1a
5034	\N	t	93	5014	a370c92c98ff4ab49053dd2381e51c26
5035	\N	t	93	5015	c5712b77de9a4ee0b668341673aa987b
5036	\N	t	93	5016	4abef0619bbb45a8982dcad6c86ce975
5037	\N	t	93	5017	ae411925137c413f8b55905be15c2730
5038	\N	t	93	5018	8c7b703aaf33433ba15ddab6a1aa213e
5039	\N	t	94	5019	bf35e19658074ae7b235b06e8c810dc0
5040	\N	t	95	4952	f9637c54f4b64b4fa9b498b670094f3e
5041	\N	t	95	4840	269dd98aed464b89867f66bf84696588
5042	\N	t	95	4981	f734331b78ca48029405b921a8d523f5
5043	\N	t	96	5020	5b08886374354debb9f89a5b3e4d2a08
5044	\N	t	96	5021	5e3fb2541a16477b8dd615b7ce76e5d3
5045	\N	t	96	5022	e7042a8d374e4f3883838883dd1127a3
5046	\N	t	96	5023	ab12effa4e614aab84e08a5d25ac570e
\.


--
-- Data for Name: professionals_professional; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_professional (id, title, description, last_name, image, last_login, first_name, bulk_billing, fees, wait_times, uid) FROM stdin;
3085			Adams		\N	Kenneth	\N	\N	\N	ba726b34fe7a44b9a8d2d65eeade6658
3116			Beadle		\N	John	\N	\N	\N	b5bdd865c6bc40799f97a6293159394a
3117		Women's health, paediatrics, mental health	Beales		\N	Katherine	\N	\N	\N	50c5f39ead6348f5bac6f81f1e3983dc
3118			Begbie		\N	Timothy	\N	\N	\N	ecb725745df747ab99271098838f6d75
3119			Beltz		\N	Ian	\N	\N	\N	31b4b93af69f498291e7c175c26315b5
3120			Bendall		\N	Katherine	\N	\N	\N	0e06c993aebb46e9b00b691151ea5877
3121			Bennett		\N	Stephen	\N	\N	\N	1c312afcacb8442f968d7c7e03644013
3122			Bewsher		\N	Ilona	\N	\N	\N	e276957b2eb642d984f65790c58b1a7f
3123			Bhalerao		\N	Vaishali	\N	\N	\N	cd2e337403954a75bbbd879dc621098e
3124			Birrell		\N	Brittany	\N	\N	\N	890ed92b044442ae9ebecdbaee195b47
3125			Blakesley		\N	Robert	\N	\N	\N	5a15f46d708f44e4835675188f828dd2
3126			Blakney		\N	Andrew	\N	\N	\N	2dfcb968c36b414487d3e941241cb55e
3127			Bleach		\N	Graeme	\N	\N	\N	74bb9c1d0f2f485fa1cbf7620cdd9be2
3128			Boland		\N	Rachael	\N	\N	\N	a384b1d79e8f415aaa6ba25ab194b7ae
3129			Booth		\N	Roger	\N	\N	\N	41fb9fe76dd04b7a957090e9dd7898d6
3130			Bott		\N	Frederick	\N	\N	\N	f876a4a8224c4074955b99a7d76035ab
3131			Bourke		\N	Richard	\N	\N	\N	087cfcbfbe0947b49af43b4ba2b4c5e2
3132			Bower		\N	Hilary	\N	\N	\N	0b377ec7d1f747a2b914b858ff184122
3133			Boyce		\N	Christine	\N	\N	\N	ec4219f2cbd64d8ca61e61022c6c0255
3134			Bradley		\N	Rachel	\N	\N	\N	3fadd0a40bc144cab4a67eb636022ad3
3135			Braithwaite		\N	James	\N	\N	\N	068d31d030a5483e9fc444a48af0bcd6
3136			Broadbridge		\N	Elizabeth	\N	\N	\N	c855779b1fff48e993fad09865f54c5f
3137			Broadby		\N	Marguerite	\N	\N	\N	3fbe61a5a3da4c0a855fda3881f70555
3138			Brook		\N	Karen	\N	\N	\N	5312caea77434329ac229b7402e801f1
3139			Brooke		\N	Jonathan	\N	\N	\N	aefdc9a978f14884bc65ba780f448da6
3140			Brooks		\N	Katelyn	\N	\N	\N	8bf7261c43cf41d4ba6b876aa26eee47
3141			Brown		\N	Craig	\N	\N	\N	702dcce7638d47349ac2014e3dfafdd6
3142			Browne		\N	Sandra	\N	\N	\N	4c333cbab953419a887f2f546463b0ff
3143			Bryant		\N	Richard	\N	\N	\N	59a28f7b45d34dd3822132cdfd07649b
3144			Bryce		\N	Erin	\N	\N	\N	bb1d6c8e6bdb481db482255ded5a84b2
3145			Burbury		\N	Sarah	\N	\N	\N	18caff9c15fa4c3789f71ca399049d10
3146			Butler		\N	Louise	\N	\N	\N	802c70d959d5445f9e53b47233287c90
3147			Byrne		\N	Camilla	\N	\N	\N	76ef9536a29b49cda79f5a7c3a58fb72
3148			Cakra		\N	Adrian	\N	\N	\N	91deec86a5f94449ad19eb99cca6e7a3
3149			Camier		\N	Jill	\N	\N	\N	b892d006b7aa4824973ad460a0439548
3150			Carlon		\N	Brodie	\N	\N	\N	020f90df722949f1acbedfcf6882bb82
3151			Carlton		\N	Stacey	\N	\N	\N	43d945ff620d4168bfd86ef06e611c2d
3152			Carmichael		\N	Emma	\N	\N	\N	9f7fc63acb8e4a8981044d5958626b51
3153			Catchpole		\N	Marianne	\N	\N	\N	0e972ec67c35451893631b22d040e8b6
3154			Chapman		\N	Geoff	\N	\N	\N	4d0b261346184dddac4538d960613e00
3155			Chapman		\N	Hannah	\N	\N	\N	2887866246d844d6b09751c7a29f1cdd
3156			Chapman		\N	Sally	\N	\N	\N	cf2c5b8a395f4fdcb793034c44892087
3157			Charlton		\N	Jacob	\N	\N	\N	67549b2f7b3e42c4ad9eca95b110720a
3158			Charlton		\N	Ruth	\N	\N	\N	d3121efaaebd46728a0618d879b02f64
3159			Chen		\N	Michael	\N	\N	\N	df00fded6b1c4891a7195a60c8771023
3160			Chen		\N	Xiao Ting (Sharon)	\N	\N	\N	cebf58da7f5c4e059ac361fb42b9d10c
3161			Cheong		\N	Jiyi (Christine)	\N	\N	\N	2d7d9be19ffc46c6b364a80e1fe9a0bc
3162			Cherry		\N	Sue	\N	\N	\N	4d37321dafad4fce851d282d94aeba7e
3163			Cheyne		\N	Carla	\N	\N	\N	befc1667e3204415af01400ba5ccb51a
3164			Chilcott		\N	Anna	\N	\N	\N	c6434cf69bf648bd9aaadcc52d4e0675
3165			Choi		\N	Georgina	\N	\N	\N	0e5a8fc9fbb4486ab750feeea96b123e
3166			Chong		\N	Soon Hock	\N	\N	\N	1dff92461ff34bdc87f11df9d99c87f8
3167			Christian		\N	Derek	\N	\N	\N	4c15f2c260fe40e4ad2ba9bb42d09705
3168			Chukka Ajit		\N	Sharmila	\N	\N	\N	bef220b67fdd4eb3ad7fada4036b4ef4
3169			Chuter		\N	Christine	\N	\N	\N	48b549a4c8214d6a8a18d5e1d774754c
3170			Clark		\N	Benjamin	\N	\N	\N	24fef93ec4c94923b4838ca662b1f27f
3171			Clarke		\N	Lisa	\N	\N	\N	eecff351f4a742bbb275c923ab06e0cd
3172			Clayton		\N	Cindy	\N	\N	\N	22627802903244fa81f215fa1a183c13
3173		Skin Checks and associated procedures	Climie		\N	Richard	\N	\N	\N	cc38aaacd62e48dba48f0bedf6cf8e05
3174			Clow		\N	Linda	\N	\N	\N	7f3c3a27fe154e678194c4858a2c604b
3175			Colgrave		\N	Nevin	\N	\N	\N	dce9f0c0d4f645fab9a6c6e2ccc7167b
3176			Colquhoun		\N	Eric	\N	\N	\N	dba1a8632ff745c283d2f2e342c0f672
3177			Condie		\N	Helen	\N	\N	\N	618d09e40a6343249181546452f393bd
3178			Conley		\N	Moira	\N	\N	\N	7dbba98eecb845dea76b7f82544a9995
3179			Connor		\N	Jennifer	\N	\N	\N	65cbbc73c67048479b1443483d38ded9
3180			Conroy		\N	Jim	\N	\N	\N	8cd5c60efcab4f9d96879356f5c2e7fd
3181			Cook		\N	Jonathan	\N	\N	\N	a77d6244cc124f3183316f565280c615
3182			Cooling		\N	Nicholas	\N	\N	\N	ac95e7a17cc744ac821aed960aa71373
3183			Cooper		\N	Russell	\N	\N	\N	66b1ea443f194bfb95a21224e06985ca
3184			Cooper		\N	Stephanie	\N	\N	\N	1cfd87d40a0144d4924df5449da4b840
3185			Cox		\N	Roger	\N	\N	\N	5bb6cbdf65464b6a9bb14c3d185a143f
3186			Craig		\N	Luke	\N	\N	\N	eaecebf3cbc24e4e80cac4ac5bdb6f6a
3187			Crawford		\N	Philip	\N	\N	\N	690dab5f24eb40469c66054d43184aef
3188		Special interest in Women's and Children's Health	Creely		\N	Meg	\N	\N	\N	2b8fa4f72e964fbab408106c114e908d
3189			Cullen		\N	Jenelle	\N	\N	\N	f188cbb7d765435db85ed0a2ffce1b4f
3190			Curtis		\N	Helene	\N	\N	\N	e97c9a4658ae4ff29a68adfad85902f4
3191			Dalton		\N	David	\N	\N	\N	f5e5d2ede8044f18a5af390f100ff7e7
3192			Daniels		\N	Rebecca	\N	\N	\N	ec6b2fd5cfdc4ca18d1e53be14357544
3193			Davidson		\N	Geoff	\N	\N	\N	70b042abe5cd44c28e20dc461c553ca7
3194			Davies		\N	Nicole	\N	\N	\N	de6045ec8d4646b29a9bbb97d9185c61
3195			Davies		\N	Ross	\N	\N	\N	bd8a12e60b1245e3953af275e34b0254
3196			Davis		\N	John	\N	\N	\N	4700a212c2d645d8bc05a798b5ab9e40
3197			Dawar		\N	Hiz Bullah	\N	\N	\N	35d30da536e34915836c3bee8e5ee76a
3198			De Angulo-Aponte		\N	Gonzalo	\N	\N	\N	8b1135ec752b4b7e8afd1bbeb08dfc20
3199			De Bruyn		\N	Anne	\N	\N	\N	238d6f2ee35d47258fbb152dd6ec9569
3200			Devereux		\N	Douglas	\N	\N	\N	18738326762645bb8c4947be7f6dab06
3201			Devers		\N	Deanna	\N	\N	\N	cb12460248b049f9890594ed4c433eab
3202			Dick		\N	Peter	\N	\N	\N	92a0ab54e8724072a291c749507ded86
3203			Dickenson		\N	Bridget	\N	\N	\N	fb2308c964e94f06a636cb945882ae30
3204			Dodge		\N	Zoe	\N	\N	\N	85b80dfd73474bf7814c6812aa6e42bf
3205			Douglas		\N	Annette	\N	\N	\N	6baedb96d1804ce4a50e412946cd7ac7
3206			Dowd		\N	Kenneth	\N	\N	\N	a44b03863adc4e06a40b8ee495a19584
3207			Du Bois		\N	Elizabeth	\N	\N	\N	f5e44489fe0f46349c87854c64905fe1
3208			Dubow		\N	Robin	\N	\N	\N	d49c128da1b6470ab2929ad65905b4b6
3209		Skin Cancer, Mental Health, Mens Health and Sexual Health	Dudgeon		\N	Paul	\N	\N	\N	f4b1373f39b847d29dd0048380636180
3210			Dunbar		\N	Sally	\N	\N	\N	3efb86490fc84d049c97b8c29d76082b
3211			Dunn		\N	Bailey	\N	\N	\N	3f79c2f4eba04da68b9879d985f2fbf4
3212			Dwyer		\N	Gemma	\N	\N	\N	e6168fe8c2a34d168d7ef101e937d553
3213			Edler		\N	Amy	\N	\N	\N	a72b911de37e49b4bcb2aa81d90209ee
3214			Edwards		\N	Alison	\N	\N	\N	8a04078135a64af39332884ff86cdd73
3215			Edwards		\N	Laura	\N	\N	\N	e1c3d69e04dc49f8a8e1cf0ac902145e
3216			Edwards		\N	Louise	\N	\N	\N	5594a1bf0be44e6f868544bbae19baa5
3217			Edwards		\N	Sarah	\N	\N	\N	a0a880eb438e4ad3af030be7997abcf2
3218			Ekins		\N	Tobias	\N	\N	\N	eb69ab839b994fb59bed0920fe654456
3219		Practicing Medical acupuncture	Elkerton		\N	Andrew	\N	\N	\N	179085a24eba4be083694dbab8100dd6
3220			Elkerton		\N	Nicolle	\N	\N	\N	8e5a73aea89240498dbb22c1f52148f7
3221			Elliott		\N	Elizabeth	\N	\N	\N	50821269e9974d6e9c3960bfc347feab
3222			Ewe		\N	Yean Pin	\N	\N	\N	35db60243ae44fd894fec56d090fe985
3223		Mental health plans, chronic disease management plan for vulnerable and disadvantaged people who do not have access to a regular GP.	Exarhakos		\N	Kon	\N	\N	\N	73a3063734d24cefb3c5221524da6ec6
3224			Fantini		\N	Gianni	\N	\N	\N	5d77c9e8effb4810a1eb87a2c8ac6860
3225			Farmer		\N	John	\N	\N	\N	759af5295d35472faa5a69e53421908c
3226			Faulkner		\N	John	\N	\N	\N	ebe9df7d98ed407987377e76549e1eb4
3227			Felmingham		\N	Amanda-Jane	\N	\N	\N	288ba1e7a6ae4f8c86762358e412494a
3228			Fernando		\N	Sujeewa	\N	\N	\N	624d8a681d5f436fa7bd0b663d00c22d
3229			Fieldhouse		\N	Lachlan	\N	\N	\N	a27d4c5f69b84e54b49093487b1d1c79
3230			Finlayson		\N	Scott	\N	\N	\N	93d32312c36243518723ba82fba5c37a
3231			Fitzgerald		\N	Kristen	\N	\N	\N	daa7803c42c14589aa04f1f69873458d
3232		Special Interest in Skin Cancer	Foley		\N	Ed	\N	\N	\N	b38045992e024310801ca58db0fe9609
3233			Follett		\N	Andrea	\N	\N	\N	78d7efd64193498d8492f024c87c98ff
3234			Forrest		\N	Angela	\N	\N	\N	222cd63c7f9647f499621e8ffb4eec0c
3235		Special interest in family care and skin	Foster		\N	Emma	\N	\N	\N	c3cc2e421ce44caa8593777501d18f14
3236			Foster		\N	Rachael	\N	\N	\N	1e3e7462653c498abba68b8239674576
3237			Frampton		\N	Alice	\N	\N	\N	755cd6acb30b4412a781cce6180d122a
3238			Francis		\N	Tanya	\N	\N	\N	69fb529a0c02481cb4f73d6ca60e53de
3239			Freeman		\N	James	\N	\N	\N	1b36552b3f94451ca18361dbb16d71f2
3240			Freeman		\N	Sarah	\N	\N	\N	a247775c0c954f65b6c7aad73364fee4
3241			Fryer		\N	Mark	\N	\N	\N	3267d0c4482b470389c2fcf135ae81dc
3242			Gale		\N	Bruni	\N	\N	\N	1fabe1ed0ffe4ca29e34b0d633d7094c
3243			Galea		\N	Maighdlin	\N	\N	\N	bad6ca69c0b647d88124562ddb527141
3244			Gangell		\N	Rodney	\N	\N	\N	73a12be96c784b93a15a1d2147c30ef4
3245			Gardam		\N	Peta	\N	\N	\N	53f300c70e51429aaf1201645bd3238b
3246			Gardner		\N	Stewart	\N	\N	\N	6de5fbae265f4dba9b91d838989250d7
3247			Gartlan		\N	Janette	\N	\N	\N	0fee2f1a489745e4b7730476dc850eac
3248			Gartlan		\N	Karen	\N	\N	\N	34c4b0ad5665401a8fd26a8735ecf02b
3249		Mental health, Indigenous Health; Cosmetic Medicine	Gauden		\N	Alicia	\N	\N	\N	7805b70e3d82423bb76d725384a26980
3250			Gauden		\N	Michele	\N	\N	\N	f08b38f2a24049d693613eaff1afb27c
3251			Gibson-Smith		\N	Samantha	\N	\N	\N	0b723e9a709c4f9eb3c0059f78e8af0c
3252			Goodwin		\N	Rachel	\N	\N	\N	7239d31dc1ac42f4b3e77dcd7427ad9e
3253		Diving medicine, orthopaedics and women's health	Gorman		\N	Jane	\N	\N	\N	0e617e2c701848c0b0519072fedacbe0
3254			Gouy		\N	Sou	\N	\N	\N	563f26bb6735468d8a4b1a0ae883379b
3255			Grant		\N	Duncan	\N	\N	\N	ff5868332ce842e6b09dd3054e7abb80
3256			Gray		\N	Jason	\N	\N	\N	5dbb98e2468740e5a99fe8c536c979e8
3257			Green		\N	Anita	\N	\N	\N	a28e594c81164d5389339c8ddfb20732
3258			Green		\N	James	\N	\N	\N	5c000cb8655d41b6b86422a08cecaf68
3259			Green		\N	Joanne	\N	\N	\N	3f7965d212ba407b92900bebddef5586
3260			Greenhill		\N	Kate	\N	\N	\N	df1fa2558ad442a981b397a7e867fa4b
3261			Grove		\N	Andrew	\N	\N	\N	35920d63d90d43f4a88fb033c7a61869
3262			Guinan		\N	Ian	\N	\N	\N	fbfd8ac714f949db9a066a65df6d59ad
3263			Gunawardana		\N	Nalin	\N	\N	\N	d88eaee9e1b347a5b59f7d4a7380a861
3264			Gupta		\N	Ritesh	\N	\N	\N	07fadc792aaf47d9be5466a42e3d6347
3265			Haas		\N	Eberhard	\N	\N	\N	548236f96b8c43cab838bc338a42461d
3266			Hall		\N	James	\N	\N	\N	84dbda33e0384062beed272eb2682e5b
3267			Hall		\N	Janeil	\N	\N	\N	6ef0784bdafe46d28e5aae7aaa192eb6
3268			Halliday		\N	Christina	\N	\N	\N	e45faeb3126446098e6b4cb89e7187bd
3269			Halliday		\N	Jeffrey	\N	\N	\N	d784fd53235f4f4589ce21479f226e2e
3270			Hamilton		\N	Luke	\N	\N	\N	2a8f5f33e53747b8b11fc8e782ea2700
3271			Hamilton		\N	Robert	\N	\N	\N	7aee8b39fd7941f0af6c773cf5abf70e
3272			Hampton		\N	Sue	\N	\N	\N	a3d69c1a1f1d40b5807ad1207f555fdb
3273			Hanafi		\N	Robina	\N	\N	\N	1649c03a6bb240a99b021766b550d87b
3274			Hanson		\N	Madelaine	\N	\N	\N	b22633cc468f4cfcb1b42b8e1132eae7
3275			Hargrave		\N	Monica	\N	\N	\N	b4ab4a1592e14c0695026e08bf896419
3276			Harpur		\N	Marissa	\N	\N	\N	4af14890b3c14b8eb79e4cc1c43c93c7
3277			Hays		\N	Richard	\N	\N	\N	5fe20ed991be4d88b02d703b3385c02e
3278			Heathcote		\N	Gary	\N	\N	\N	30db62687e6a432d861d58408a8811de
3279			Hemm		\N	Reinhard	\N	\N	\N	e91c3959a2c64e7eb195af03861c2f6d
3280			Henderson		\N	Sarah	\N	\N	\N	a4f4f90847e24143bfece4adc81f92f0
3281			Henry		\N	Monica	\N	\N	\N	f7025a9e5e9e4f7cb214de6a9cd81d8a
3282			Hewer		\N	Claire	\N	\N	\N	3033847e4aa9428080bb755830016107
3283			Hewson		\N	Vanessa	\N	\N	\N	328e667db3354c2aac0feff2c96ab1c7
3284			Hilton		\N	Chris	\N	\N	\N	84c1395ee978406b960ee9e8a630256e
3285			Hindley		\N	Stephen	\N	\N	\N	0ac777010ee941679f20c6a3b87a87aa
3286			Hodge		\N	Anthony	\N	\N	\N	37b0c98f610d47b89def295ff66d7e87
3287			Hodgman		\N	Susan	\N	\N	\N	dcb1022b587b450792818e4902c50221
3288			Hopper		\N	Diane	\N	\N	\N	feb14cee8acd4e54a5a4bb24cc3dbe65
3289			How		\N	Anna	\N	\N	\N	4bd9715663b14f6991a8f2338ad7865a
3290			How		\N	Jonathan	\N	\N	\N	5c8e7e7c3b424e888ebe7a8996855bdf
3291			Howe		\N	Joanna (Jo)	\N	\N	\N	0b91aaea1bc541debd04d34a5a27591a
3292			Hoyle		\N	Ian	\N	\N	\N	88113bec553e4426a83c3c5f9af0599e
3293			Hughes		\N	Chris	\N	\N	\N	f0227ac41e64462fa46cd1a108e9356f
3294			Hutchinson		\N	Andrew	\N	\N	\N	bbdf2b6ccc904b178e90e18429bfbb46
3295			Ikin		\N	Tim	\N	\N	\N	4d747ff30ca04d16890d9eeb378d24be
3296			Isherwood		\N	Joan	\N	\N	\N	a9ebb0fc96df4c20b9cb17b7812ec801
3297			Isles		\N	Jonathan	\N	\N	\N	a7656d6d817a4c21abc5e95f06e16469
3298			Ittermann		\N	Franz	\N	\N	\N	8704639af8ce4657af8a9ae4fa54526a
3299			Jackson		\N	Hannah	\N	\N	\N	b21a2a0339c34fa0aa2858c1547ec8dd
3300			Jackson		\N	Tim	\N	\N	\N	dc844398e3bd4fdd93f7c670ac41b491
3301			Jaeger		\N	Rachel	\N	\N	\N	bcf24c464d4741408147976402dd0caf
3302			Jasal		\N	Sonista	\N	\N	\N	9330226e3b3148e3afc077b2472009e5
3303			Javan Manesh		\N	Neda	\N	\N	\N	62b5e56bb45f499d818183617f093836
3304			Jeanneret		\N	Catherine	\N	\N	\N	fa52b908f06245e09613f097729076ae
3305			Joester		\N	Jenna	\N	\N	\N	003371f4b9ac480cbdf3fccde5cb8944
3306			Johnson		\N	Misha	\N	\N	\N	e5c75e9614844c7da957272f1b5d87ae
3307			Johnson		\N	Nisha	\N	\N	\N	4e3deae468c64f8eb7b267980efbc6a2
3308			Johnson		\N	Tristan	\N	\N	\N	28c52e9bae434e44b90b64dee78802c9
3309			Johnson		\N	William	\N	\N	\N	de6601e0305c420ca9b8646b5cb9d046
3310			Johnson		\N	Winston	\N	\N	\N	ff9246a7764649a5a0fbf3741b02ce4f
3311			Jones		\N	Erica	\N	\N	\N	c26a432b92a241038441f20d5d70787d
3312			Jones		\N	Graeme	\N	\N	\N	22e9124070234d009288b2d1c74ace65
3313			Jones		\N	Kerry	\N	\N	\N	1eba33c2f73c43a0a54bbe0f113d6698
3314			Jones		\N	Marita	\N	\N	\N	ad9d0091c03a4695971374928b9c3286
3315			Jones		\N	Shaunagh	\N	\N	\N	e0f6246ca8cc46b7a49e2b2f3c830e85
3316			Jones		\N	Tim	\N	\N	\N	9d398978a49f4e1f8f0d5647fceb8ae0
3317			Kaczmarski		\N	Anna	\N	\N	\N	8ed2962b35ed466d8f1ab87908e258db
3318			Kaczor		\N	Tomasz	\N	\N	\N	c7328744010d47608d62727b20c7c70d
3319			Kaur		\N	Harpreet	\N	\N	\N	b4e447788442457e84dc079c94345d90
3320			Keir		\N	Arella	\N	\N	\N	764b95af5d4348eca96c3e82f968a2a0
3321			Kelly		\N	Catherine	\N	\N	\N	e1ba98fcd65d4de88c558d12f218ea01
3322			Kelly		\N	Hannah	\N	\N	\N	bb741e8b18fd43ecbd689cd884644323
3323			Kendall		\N	Nisha	\N	\N	\N	2885fa8be8524b93b98ecfac1dd0eef9
3324			Kerr		\N	Rohan	\N	\N	\N	f6a9f82d84af42ffa363905b54730c26
3325			Kilpatrick		\N	Julia	\N	\N	\N	2be7f681f0d242199b3a4d7dcaab86cb
3326			King		\N	Dianne	\N	\N	\N	d12478360dac4136950a9c2c8fa3f0aa
3327		Womens Health, Acute medicine	Kingshott		\N	Anna	\N	\N	\N	ea7c6ec69e4441b881ab7c649c552843
3328			Kingston		\N	Ross	\N	\N	\N	b697a203ac2b4e42b82954cb9bf6cd84
3329			Klok		\N	Michele	\N	\N	\N	4c406ca1801e40cc8032eacba3a1262b
3330			Klonaris		\N	Dimitrios	\N	\N	\N	37b272dbdf104f2e89335558a229e9c3
3331			Kneebone		\N	Jessica	\N	\N	\N	855ade39ae3748b3802055dfa4d712b1
3332			Knowles		\N	David	\N	\N	\N	ef02a0caaf4943ce81ea3cb14b701c3c
3333		Female health, children's health, family planning	Kraft		\N	Alessandra	\N	\N	\N	78ba162563584db9bcc10d41d33d04bf
3334			Krishna		\N	Rama	\N	\N	\N	54fe865b9b8743d398aa678b74b70295
3335			Kruimink		\N	John	\N	\N	\N	08a7b6a7ba0b4913bc65b15b9ba24404
3336			Kulbac		\N	Daniel	\N	\N	\N	065481bea3d843178760e4c517f572eb
3337			Kurrajong		\N	Tara	\N	\N	\N	f4347a74a1c64e218cfce344ff51d4e8
3338			Lad		\N	Geeta	\N	\N	\N	170935c9be9f4033b5c538581672934a
3339			Lad		\N	Ulhas	\N	\N	\N	1a59a463b78c4aa3b468f576295fe839
3340			Laughlin		\N	John	\N	\N	\N	7f613336e1d04b1ab290abc37bee5260
3341			Lemon		\N	Jason	\N	\N	\N	d683732119ef42c5b3be038b4c426b3a
3342			Lewena		\N	Kathryn	\N	\N	\N	d22549dec8ff4a2d8ad53b2611b0a3f5
3343			Lewis		\N	Angela	\N	\N	\N	5395692a17f747f1ad9f2abdf11a33e5
3344			Lickiss		\N	Tim	\N	\N	\N	c3e4f6943bdc4c8185eb434ac7a60a8e
3345		Special interest in Women's Health	Litjens		\N	Natasha	\N	\N	\N	025f4f878d504f6381ff3c5d5e3897b6
3346			Little		\N	Thomas	\N	\N	\N	77179e8c3d7a4b46a5d9891ce8a0fa2c
3347			Lizner		\N	Sue	\N	\N	\N	f97221cc37e24d76af34f978e73963ac
3348			Lloyd		\N	Jonathan	\N	\N	\N	971dbcb10e5d4dfa83d251e13c80ea48
3349			Lo		\N	Amanda	\N	\N	\N	e54cf4a0ef01428aaaf37d9f6451d692
3350			Lockley		\N	Sarah	\N	\N	\N	a4c6e99418f14f92822fc5b423f3a8c5
3351			Long		\N	Esther	\N	\N	\N	5d927c1722d24dbf972b46268e37e3ec
3352			Lord		\N	Elizabeth	\N	\N	\N	940966cb4dbd44e5971832d0bf1b40e7
3353			Lord		\N	Helen	\N	\N	\N	9bef90d339e847deb21b266527c7dd9d
3354			Lord		\N	Richard	\N	\N	\N	5c44f1dd7bc94959bac2b1028a3c43d4
3355			Lovatt		\N	Natasha	\N	\N	\N	be1b9c205c78424c96232f94ace9ac56
3356			Lovell		\N	Madeleine	\N	\N	\N	6ee975fad8d24ce9a5549699dff733bd
3357			Luckman		\N	Paul	\N	\N	\N	2aa09ad880ad4ced94d67b51fa65316f
3358			Luckman		\N	Thomas	\N	\N	\N	7a1de75fd51f4fe78c0efd844bff9217
3359			Ludbey		\N	Neville	\N	\N	\N	c057b1be304c40c691d08955eaaeaeca
3360			Ludeke		\N	Victoria	\N	\N	\N	1e95b2acf2d84e0faefe335ef1e5e152
3361			Luelf		\N	Robert	\N	\N	\N	2a1130e304f84ffe90293f03028d2179
3362			Lumsden		\N	Mary	\N	\N	\N	d2f8f960c427489e8d4a14bdd36af952
3363			Lyons		\N	Terry	\N	\N	\N	7b33d5212ce14d73b9f80a9329a85262
3364			Maccarrick		\N	Geraldine	\N	\N	\N	e186f9fc6a23408ab172afa55e015415
3365			Macrossan		\N	Scott	\N	\N	\N	a421907dc1e94f81b738af8c22b4e119
3366			Madden		\N	John	\N	\N	\N	b61038c6f074445181066d7fedb39375
3367			Magraith		\N	Karen	\N	\N	\N	19339a35b44a4678ba75f5c9d2e6d495
3368			Majchrzak		\N	Wojtek	\N	\N	\N	5583a4bb73354ea3afab7f26ff08496b
3369			Malchukova		\N	Katya (Ekaterina)	\N	\N	\N	23433e1a45de4236b3d605299eb58c90
3370			Maloney		\N	Samuel	\N	\N	\N	431a0dd0c11d42dca1349734a98e8e13
3371		Women's health, emergency medicine	Maloney		\N	Sara	\N	\N	\N	771bf95a0d904ebea129a93faff3cabd
3372			Marek		\N	Jedrek	\N	\N	\N	1a0220239f7d46ddbb1623e0aa6b063f
3373		Palliative Care, Aged Care, Travel Medicine & Public Health	Mathews		\N	Robyn	\N	\N	\N	fc5eef37426e4860952ffe64805d5db8
3374			Mayhead		\N	Catherine	\N	\N	\N	478454987d464289b06d4bfdc7372daf
3375			Maynard		\N	Anna	\N	\N	\N	79601c34d0874f4c9d5d7e3eb49bbdf4
3376			Mcardle		\N	Tomas	\N	\N	\N	addaebbb283b4ff9abbd50eb3cf7a865
3377			Mccarthy		\N	Michael	\N	\N	\N	8d5fcd77a8bc433ca0d9a8d3fef292e9
3378			Mccartney		\N	Clair	\N	\N	\N	fa217f92e73647328ea5b41fceffaef1
3379			Mcclean		\N	Colette	\N	\N	\N	70e51b5857f94b48bc213a666f47477d
3380			Mccluskey		\N	Simon	\N	\N	\N	fe40f19a21e649e0b1a272f195008ce5
3381			Mccoid		\N	Mark	\N	\N	\N	4fd5a703bc8b4e2496084605cca36d65
3382			Mccorquodale		\N	Nina	\N	\N	\N	474f63af06d04c888513893a0f5781e0
3383			Mcculloch		\N	Anna	\N	\N	\N	77c1504254ac4a3abe259927c398aa40
3384			Mcgushin		\N	Gerard	\N	\N	\N	75401d9a473348ffbc1f23b99f6f25c8
3385			Mckay		\N	Mark	\N	\N	\N	bafa595999d64ad494a14e590f70bf8b
3386			Mckenzie		\N	Susan	\N	\N	\N	799f43f095c6472f9d2d00a71069aed0
3387		Street Medicine Outreach Program	Mckeown		\N	Meg	\N	\N	\N	7495363905d74f7dbc274053fe3169c9
3388			Mckeown		\N	Scott	\N	\N	\N	4cc0b06d05fc4398ba6090b0414a20fb
3389			Mckinlay		\N	Anna	\N	\N	\N	f5879a058b634cb581a3cfe5b52f8320
3390			Mcleod		\N	Don	\N	\N	\N	4146fc8cb3dc44f1b6a3c2ae0a311053
3391			Mcswan		\N	Rowan	\N	\N	\N	880e5c216e6e4925b3f8c25ffc52a2bc
3392			Mendoza		\N	Ivan	\N	\N	\N	e66cc3524d76403896987be2e9f39cc2
3393			Mercado		\N	Miguelito	\N	\N	\N	a1ad37a9d443451aa1d085efa886065a
3394			Merfield		\N	Eve	\N	\N	\N	3793d892ee3f4f04a78e72b00271a9a1
3395			Meumann		\N	Frank	\N	\N	\N	28a6c6de30e741d5a1543d57217c8015
3396		Women's Health (DRANZCOG), Children's Health (DCH), Palliative Care	Meyer		\N	Hannah	\N	\N	\N	ed8e7c83ca46405585ba3a6d61cb9167
3397			Miller		\N	Keith	\N	\N	\N	f3ddaa315e644a97b051c1286fab0661
3398			Mills		\N	Stephanie	\N	\N	\N	cbcf98b1084e48e981214db4722ad830
3399			Mirpuri		\N	Bhavana	\N	\N	\N	089acf8367d64925a4592530d2c90e69
3400			Misson		\N	Jennifer	\N	\N	\N	e33d3d92c7684ed2a1b0928339dec837
3401			Mitchell		\N	Derek	\N	\N	\N	e7246e42e3c44212935e60a629bfc16a
3402			Mitchell		\N	Jennie	\N	\N	\N	e850929d7d484399983ed304b9713618
3403			Mollison		\N	Rosemary	\N	\N	\N	b79bd90ae8854e6fa115e817d7434a82
3404			Monks		\N	Libby	\N	\N	\N	8f82cd811f654055bddcd1cc2cba6de4
3405			Montes		\N	Luz	\N	\N	\N	729339fb15f443ab95b5b366d321f0d2
3406			Moore		\N	Kristen	\N	\N	\N	40971272fa2a4c2890d49d73e2625ffa
3407			Mortyn		\N	Emma	\N	\N	\N	63e5473fb6124a37b73e87915dad1a28
3408			Mountain		\N	Edwina	\N	\N	\N	6a68667ba79547c8a62027f2e21e038e
3409			Mulcahy		\N	Roger	\N	\N	\N	bbf9b66eb0f14d8eb20ebcaa0c8b2e7a
3410			Muller		\N	Amber	\N	\N	\N	bea93560a90240268d28a46f56375228
3411			Mulligan		\N	Beth	\N	\N	\N	004b7c02b74b431ab0a6c2a9a0fa174f
3412			Mullins		\N	Columbine	\N	\N	\N	08998e362bae45298045ffdc101c61e2
3413		Bariatric Physician	Murphy		\N	Frances	\N	\N	\N	3f56fee220fc4758a6e523d52655a403
3414			Murrell		\N	Philip	\N	\N	\N	5a5a31ece5834bb28cde0c1b20667a4e
3415		Visiting Nursing Homes in Kingborough Area, including Sandown Village, Mary's Grange, Hawthorn Village, Bishop Davies Court and Snug Village.	Mylek-Simpson		\N	Monica	\N	\N	\N	41e4e2a7e9dc46ce987f724ac53ef934
3416			Naidoo		\N	Pranesh	\N	\N	\N	4cc34d82e67b4301a68c0a9339a92336
3417			Nair		\N	Keira	\N	\N	\N	c6c327a90c6b435696211335b3e07ee8
3418			Neilson		\N	Richard	\N	\N	\N	5e1afd1fafe94c98ae4ddfa05da39232
3419			Nelson		\N	Mark	\N	\N	\N	1984d0ec1f9749978cbbdf60c827319f
3420			Neuberger		\N	Martin	\N	\N	\N	374e5a5bc9a94922980a65ee0d51f6e4
3421			Newton		\N	Robert	\N	\N	\N	ad575a0c07c74ac98b46dddb1d76bd5e
3422			Ng		\N	Doris	\N	\N	\N	05b4a69b4a564085afe5fa3575313328
3423			Ng		\N	Yee Yoon	\N	\N	\N	4e2109aad84b41d5908be679134eb4ae
3424			Nicholson		\N	Romy	\N	\N	\N	e64ba2b3d9b34cb48953628450b44a1d
3425			Nixon		\N	Kieran	\N	\N	\N	23567d11b55b4a28abe6b0127f5a0112
3426			Noden		\N	Mark	\N	\N	\N	97de98e1e51349689b3b04d202e6cfe4
3427			Noor		\N	Nurman	\N	\N	\N	476017b5f12c43bbaf58ec94310dee12
3428			Normandin		\N	Bryan	\N	\N	\N	bceb7de4ad9e4f5d91c8bd8a337c9d49
3429			O'Brien		\N	Amy	\N	\N	\N	fe73cf65a9cc4d02951898dff65f93a9
3430			O'Neill		\N	Cornelius	\N	\N	\N	920c9c44ae494543968463f84e458c3d
3431			O'Sullivan		\N	Patrick	\N	\N	\N	e332088f283c4beb92e5a0f3ea31861b
3432			Ochayi		\N	Boniface	\N	\N	\N	a533da3ced0c4e1ea187daafba328444
3433			Onwuegbuzie		\N	Sabastine	\N	\N	\N	1f3ba8ff230d4879805c0f8022cc1589
3434			Ostberg		\N	Mark	\N	\N	\N	2f0d02ac9c544a05bb4f740e2d2dc934
3435			Otlowski		\N	Sophie	\N	\N	\N	37ad6121613946278724992543c4b152
3436			Oxford		\N	John	\N	\N	\N	0b733e3c3e564f75a9a61433df520132
3437		Special interest in Women's and Children's health	Pantazis		\N	Athena	\N	\N	\N	4f87fc36a11c4322a80816475807d326
3438			Patel		\N	Shaista	\N	\N	\N	40e083b9fb2f4ad28b36786f52d93c3f
3439			Payne		\N	Ian	\N	\N	\N	d8b80685ebba4c308d0e586a0cd50a43
3440			Peachey		\N	Benjamin	\N	\N	\N	6a54b3fc3c3148b0924f67d7ffd0514b
3441			Peacock		\N	Sally	\N	\N	\N	54465d021f8b4bc39a76c521ea6b451a
3442			Pemmulu		\N	Anandakumaresan	\N	\N	\N	350feabb77f4408fa4d132a4309ec43e
3443			Pepingco		\N	Lester	\N	\N	\N	2679a42b6ec24542a41c56b44237ba0a
3444			Perry		\N	Hamley	\N	\N	\N	1c2454655c2d4609813a955bb92e7d9f
3445			Peters		\N	Deborah	\N	\N	\N	745487c675364221b9b8cc05b04e14a5
3446			Pitt		\N	Greg	\N	\N	\N	4bce0ceb865b49cc8325e06c9c059537
3447			Ponsonby		\N	Michael	\N	\N	\N	ba9d2745680544e7b749b56c8a175794
3448		Special interest in family care and acupuncture	Poxon		\N	Matthew	\N	\N	\N	a930c9e29e2d4cc9807678bc5ce0799a
3449			Presser		\N	Jennifer	\N	\N	\N	ff52aa32e38143469ad8b6b9d7613cb7
3450			Psereckis		\N	Rhea	\N	\N	\N	92979e44d4ad4f2a8068f2c4dbf67c6c
3451			Pullinger		\N	Katie	\N	\N	\N	ab14372b50c84a2b94e375fa528f6f47
3452			Pullinger		\N	Phillip	\N	\N	\N	0ed2e47a4afe41c0a56cf5083a53ea16
3453			Ralph		\N	Richard	\N	\N	\N	fd4c01637a2445dfb74781fcc062b1f4
3454			Randriamahefa		\N	Nicole (Nikki)	\N	\N	\N	7f4f1b7649f04cdb9761dcf9267a6c09
3455			Ranjbar		\N	Bahman	\N	\N	\N	352c726754dc4e0793cc0b765a3fd167
3456			Rathbone		\N	Mark	\N	\N	\N	b2a89654f83d496db323973526add78c
3457			Ratnagobal		\N	Rekha	\N	\N	\N	c3b0fc4ad3454e0a835cc3d398ff98e5
3458			Readett		\N	Ian	\N	\N	\N	2521ee36551740fd85656286eb214b90
3459			Rehman		\N	Sadia	\N	\N	\N	bd0c81c4a7bd49b0baa736a5c806bad6
3460			Reid		\N	Eliza	\N	\N	\N	0d191ee13e4d4197b686a86d616f7f7e
3461			Retchford		\N	Angela	\N	\N	\N	f6c479ccd5cb4560892a107fcbb56c10
3462			Richardson		\N	Damon	\N	\N	\N	65c721af5f9740aa96c6a9152e314dc5
3463			Ridgers		\N	Michael	\N	\N	\N	033df1f705e74aebb2af367a7a91ee44
3464			Rimmer		\N	Danny	\N	\N	\N	79b5a33733644e649dbcb5dccc14ba47
3465			Ritchie		\N	Anna	\N	\N	\N	dc93ac4c6c72444486c12c07b5766b9e
3466			Roach		\N	Annika	\N	\N	\N	6e7172b9ba974a24a8efc6c8a22d5950
3467			Roach		\N	Thomas	\N	\N	\N	f494b93327b64a52ad6cc49af5f13608
3468			Roberts		\N	Alexandra	\N	\N	\N	2f0bc101b73c43728616919c64b789dc
3469			Robin		\N	Verity	\N	\N	\N	6a4be7f994b1487ba6919c4bd13d903c
3470			Robinson		\N	James	\N	\N	\N	77fc26b6e57e48e69bfba11d1ff5349b
3471			Robinson		\N	Jenny	\N	\N	\N	0bc74138c47b4bcf855a8a734bbc699c
3472			Roffe		\N	Richard	\N	\N	\N	562fd98445d24859b282f2494ae50f60
3473			Rogers		\N	Jill	\N	\N	\N	99cc44fe3af74b1e856146b9612c4c23
3474			Rogers		\N	Stephen	\N	\N	\N	d730ee45b6284914baf50875ce9b750a
3475			Rose		\N	Frances	\N	\N	\N	23662994379a45969793c69b53c48aa5
3476			Rose		\N	Sasha	\N	\N	\N	6caf675b986f4862803f4cd98ff5303d
3477			Rosewell		\N	Nina	\N	\N	\N	66b122838a794881afee1c964c413748
3478			Roy-Chowdhury		\N	Christopher	\N	\N	\N	1287ccf20ad0450bb004cfe930df6ee7
3479			Rundle		\N	Abby	\N	\N	\N	02f18f2eb199414a956323ccf0d92bf6
3480			Rush		\N	Tracey	\N	\N	\N	e6c50a2aa06b440a89e530bd89b01ac7
3481			Ryan		\N	Mark	\N	\N	\N	e9cc0f86d935493783ecea6a5f1b329a
3482			Ryan		\N	Maureen	\N	\N	\N	e2f21f4301f8439ea1467273309f0cbd
3483			Rybak		\N	Mariusz	\N	\N	\N	4f4cf4ddf90a49bd80a837d9fa9cd525
3484			Sadruddin		\N	Amin	\N	\N	\N	a083d32e528e4ee0a3fbfb2b5fe047d6
3485			Salmon		\N	Katharine	\N	\N	\N	1e09c64bd7cc416eae694bf6b2855993
3486			Sanga		\N	Zar	\N	\N	\N	795ba9f5f66949acae67f79288316fd4
3487		Skin cancer medicine and surgery	Sansom		\N	Delfin	\N	\N	\N	6ecd8921a6d54234893446ac1d989bfc
3488			Sargent		\N	Karen	\N	\N	\N	58cdb775c3134ae787a3121c19e84460
3489			Saul		\N	John	\N	\N	\N	2f35f1e00bfb496e98ffdde6921fe3dd
3490			Saykao		\N	Selena	\N	\N	\N	fbb4ccdd03f14ae2a1c2ff16e6707aa8
3491			Scanlon		\N	Michael	\N	\N	\N	d0b672e233124f2cac5fc8380f99cabe
3492			Scarr		\N	Graeme	\N	\N	\N	871246a740ae426eb6e47208d1ac34a8
3493			Schramm		\N	Tanya	\N	\N	\N	4adf9b4b634e4be8b96414c8b8f82555
3494			Schwarz		\N	Greg	\N	\N	\N	353bb0b776bc48439555a987906b7d99
3495			Scott		\N	Fiona	\N	\N	\N	194216c55a91467f8480b413e9c7fbc2
3496			Searle		\N	Lisa	\N	\N	\N	1ad7533b26fa472eb10b7f8509c14664
3497			Seidel		\N	Alexandra	\N	\N	\N	d86a3648202e4fccb5b95346616878ac
3498			Seidel		\N	Bastian	\N	\N	\N	acbeca88d4c14abbb50a6b74e69add21
3499			Seth		\N	Anna	\N	\N	\N	f1f9a905d3ad418eb4c54033882f0944
3500			Sexton		\N	Peter	\N	\N	\N	938f2e12b3b047fd8fe6b1f29cd5d43f
3501			Shady		\N	Jessica	\N	\N	\N	6235627ba3f04f0c921140136b2d6edf
3502			Shaw		\N	Regan	\N	\N	\N	5f2c13c87b6249c4aee6eb039ca81df1
3503			Shearman		\N	Sue	\N	\N	\N	6cff318b0be941f4bbb7df630a7c89c0
3504			Sheehan		\N	Susan	\N	\N	\N	27834ba1d31d489ab55926f88b29b370
3505			Sheheli		\N	Reshmi	\N	\N	\N	e9035f1d1db747f1957bd07ee33df67e
3506			Shephard		\N	Patricia	\N	\N	\N	12dc7fca78aa4bcbbee9c287e885854a
3507			Shepherd		\N	David	\N	\N	\N	9d8b3d5bef394163806d30e53e020276
3508		Womens Health; Family Planning; Sexual Health	Shill		\N	Jessica	\N	\N	\N	cafc23b9999d402e88d7af9bd0c159c1
3509			Shoemaker		\N	Herman	\N	\N	\N	933f8a89725a4843915f83588274c281
3510			Singh		\N	Harpreet	\N	\N	\N	92802b49148142bda62da96306769576
3511			Skeat		\N	Jennifer	\N	\N	\N	9e021b67a14943d6859378997b4a6b63
3512			Skierka		\N	Roger	\N	\N	\N	c4d1471933c0479298937ffa7db815d4
3513			Sletvold		\N	Simen	\N	\N	\N	1413dc48774e4ca69915f29d8bedd344
3514			Smethurst		\N	Ingrid	\N	\N	\N	be4fed82bda8440989cb33ab8e912967
3515			Smith		\N	Clare	\N	\N	\N	b67f51ee92ab4d4a891bd253162dd9bb
3516			Smith		\N	Colin	\N	\N	\N	2508fd136ed44f259e49dcf6bde8f2f3
3517		Shared Decision Making	Smits		\N	Hugo	\N	\N	\N	3f29e230576545a5ad404ad562cc8870
3518			Song		\N	Wan Jun	\N	\N	\N	48521fabe7934dcabff36cc3a35c1936
3519		Cardiovascular health, chronic disease management, skin cancer excisions and vasectomies	Srivastava		\N	Ayush	\N	\N	\N	f4a768f848ea44feb34a87684e1db5f5
3520			Stoddart		\N	Hannah	\N	\N	\N	e6af62c112324129899803aa393db742
3521			Stone		\N	Andrew	\N	\N	\N	ad14ec912ed04ece9bd8ea64841f0b9d
3522			Stoneman		\N	Alice	\N	\N	\N	84d408a8e4de4ea3b0c5dd90024840b8
3523			Strugnell		\N	Jessica	\N	\N	\N	89dbb5077d7b413c8bc2d3491fec05af
3524			Sungur		\N	Umit	\N	\N	\N	7b74af5faceb41338b691a3a74ae36b0
3525			Sutherland		\N	Ronald	\N	\N	\N	0000a166150247aa970fab5873ff4cf4
3526			Suttar		\N	Arlene	\N	\N	\N	0453327565ae4bedb42a91667fba2169
3527			Swart		\N	Renier	\N	\N	\N	5e17b555238341ddbe1cac6a9246e9f1
3528			Sweeney		\N	Nathanael	\N	\N	\N	8a62fb7f53d54c6d805c17b664307b6d
3529			Taheri		\N	Hoda	\N	\N	\N	d34757aac2e84544beb52a2cfe548cca
3530			Tait		\N	Juliet	\N	\N	\N	e25d7e5f6865400099ed4ae33ee59fce
3531			Tan		\N	Boris (Teng Chuan)	\N	\N	\N	d40bc509a1f94f818bab89d8c2fd22c6
3532		Cardiology; Gastrology; Respiratory conditions; Non drug pain management	Tarnawski		\N	Jerzy	\N	\N	\N	594b28fa2b6745888779aef0a8cd0af6
3533			Thayer		\N	Shaun	\N	\N	\N	8dba6130276b4d42ab1a50335211e3ea
3534			Thompson		\N	Andrew	\N	\N	\N	f5f45fb35f0f4743bf6d4fab42c6de72
3535			Thompson		\N	Paul	\N	\N	\N	850101a3392f48afb41b8bc33e7d229f
3536			Thompson		\N	Sarah	\N	\N	\N	af7118e967fd475fa63aaa4c13741a02
3537			Thummala		\N	Sangeetha	\N	\N	\N	8f5b70ff0d8c4294ba7b3508abefcbe9
3538			Thurstans		\N	Alison	\N	\N	\N	e71d26902dc04e368c762bba3b282dd8
3539			Tidey		\N	Bronwyn	\N	\N	\N	fe8bd9a93f3e497988c641f2ff5b89d6
3540			Tidey		\N	Margot	\N	\N	\N	ac21b2145d0741d385f489cb6ffda8ef
3541			Tildesley		\N	Celia	\N	\N	\N	9b862f31ab394c7b960cf873a196b299
3542			Till		\N	Sarah	\N	\N	\N	d722410a24da41879be34e9df8e764ba
3543		Obstetrics & Gynaecology	Ting		\N	Sarajane	\N	\N	\N	c8d7aa3acd204a90ae831ca5e9db17ec
3544			Tooth		\N	Michael	\N	\N	\N	b71ff9f11c46425186c9f111a8825ec7
3545			Trivedi		\N	Sujata	\N	\N	\N	d84ca65f1fc84775afd2686dc39db51a
3546			Tucker		\N	Dan	\N	\N	\N	165243c3d801475291344e5e293e8bc7
3547			Udawattage		\N	Chaminda	\N	\N	\N	e90a82eccbd047b28640b9e9a7c09d3d
3548			Upcher		\N	William	\N	\N	\N	cc2798bbb92a4e6bbae9e4864a09e862
3549			Upston		\N	Cassandra	\N	\N	\N	64fbf1afa03d44dda61defc42354eb6d
3550			Vaughan		\N	Karen	\N	\N	\N	d0355fd6d0a44bc8ace12e27835270d3
3551			Verdouw		\N	Kelly	\N	\N	\N	20ba9712daf04d238faf00993487f7a6
3552			Verma		\N	Latika	\N	\N	\N	3ab094af907b43c98e78f1faabd2adb3
3553			Verma		\N	Nidhi	\N	\N	\N	d7e6a3bf616c4e31b7ec682196bd8211
3554			Visagie		\N	Stefan	\N	\N	\N	6d2970fb63d145c7bd332fad5e5a530f
3555			Vithanage		\N	Vindhya	\N	\N	\N	bf6455e98077413496ddb2c20891aab5
3556			Vogelsang-Sharman		\N	Antje	\N	\N	\N	a0d94967b61848fb8e655a244f47b918
3557			Von Caemmerer		\N	Arjun	\N	\N	\N	d23436705dbc4c8b9568284e51f78839
3558			Von Conrady		\N	Dora	\N	\N	\N	5f1525e8daad4f1ba6079f85d128da30
3559			Walker		\N	Robert	\N	\N	\N	524186ceb2994d8dadf1f430fe71258f
3560		Skin cancer medicine - diagnosis and treatment. EXCLUSIONS: Full skin checks.	Walsh		\N	Christopher	\N	\N	\N	a81a16b400874d9eb547f66f23e8d30a
3561			Walters		\N	Robert	\N	\N	\N	9612154e6d0a448dbd50e9e4b9f13486
3562			Wang		\N	Jianwei (Victor)	\N	\N	\N	e9bc9cacd654435b95698eff70542c1e
3563			Ward		\N	Martin	\N	\N	\N	5d57f5d694e6423ba6d9c4ce847b1974
3564			Ward		\N	Richard	\N	\N	\N	b572bf980bde4874a9d1e826ff8d8dc4
3565			Ware		\N	Emily	\N	\N	\N	edc1318026484099bddd40dd6499325f
3566			Watts		\N	Bridgette	\N	\N	\N	78312557ecbb495b8598c9f4c0e2dd4a
3567			Webber		\N	Stephen	\N	\N	\N	c806caf26fe245388c12a0a8769d0381
3568			Whelan		\N	Victoria	\N	\N	\N	2dba958b697b48a7befdd51281075f6d
3569			White		\N	Robert	\N	\N	\N	79a80859567e46549d232e88779523e7
3570			Wild		\N	Denise	\N	\N	\N	09de9409041e4b4eaa07c5b0fcfe584f
3571			Willcox		\N	Emilie	\N	\N	\N	31cc2f83c7ad43a2a34c1b9d7f79e184
3572			Williams		\N	Jennifer	\N	\N	\N	ada82c051cde41daa66019145d055e1b
3573			Wilson		\N	Linda	\N	\N	\N	b42006e602b14c9dbd899ff27f40a580
3574			Winani		\N	Mojca	\N	\N	\N	e2cbc92c263e488684ef8f86d6f1754a
3575			Wittert Van Hoogland		\N	Anna	\N	\N	\N	77f7b7bca71d4d9cbd5a6674f34fff98
3576			Wong		\N	Anthony	\N	\N	\N	2526dbba63a1414dafaf0aea6847314f
3577			Woolveridge		\N	Eleanor	\N	\N	\N	4b69038f152a4593a7d16c7217801268
3578			Woolveridge		\N	Hailey	\N	\N	\N	133ba1a2e1f84ae183b57ca63fead254
3579			Wright		\N	Andrew	\N	\N	\N	68f6b9bd08c54caea78ede42bd8c5a14
3580		Medical Practitioner & Medical Acupuncturist - MBChB, FRACGP, FAMAC.\n \n \n \n Medical acupuncture using laser and needle as part of a multidisciplinary approach to pain, musculoskeletal conditions, stress.	Wright		\N	Vivien	\N	\N	\N	2c4571fa8ff848a88568aeeb1f2c2bb3
3581			Wyton		\N	Samantha	\N	\N	\N	265a79ba45bf47ddb4d72173c4cec54d
3582			Yearsley		\N	De-Arne	\N	\N	\N	5f6782bee725438d902ae5a91522df7f
3583			Yolland		\N	Tristan	\N	\N	\N	137ff3d798224aa88971b5361ce48729
3584			Yong		\N	Kim	\N	\N	\N	9e4ad9d242a44a0ab781e84a0c084be8
3585			Young		\N	Joanne	\N	\N	\N	b849708bb81148da92cf0fa5bd4b49ed
3586			Young		\N	Suellen	\N	\N	\N	45ecf4c8abb84b5e95de19a97e381881
3587			Zala		\N	Sylwia	\N	\N	\N	ce196881c7494261894e9fa3d3088431
3588			Agomuo		\N	Magnus	\N	\N	\N	4148723c4cc94a518b9842c057cd1897
3589			Ahdieh		\N	Kyan	\N	\N	\N	1a74967b7eed49eb8c77691f687c84b5
3590			Alim		\N	Serena	\N	\N	\N	449dadfac9704b18a88efae94f1da9ef
3591			Allen		\N	Jennifer	\N	\N	\N	a20f010c38474ba68886eeb7e32114e9
3592			Anand		\N	Josh	\N	\N	\N	41e15aa19ae74169b898c861751eb3d5
3593			Aras		\N	Sandra	\N	\N	\N	3bc9b210ed87435b91e8fbab9cf9f16a
3594			Arumairaj		\N	Antony	\N	\N	\N	ac2f3bfe37964bfabad8e5f4dd5d6dfd
3595			Aslam		\N	Imran	\N	\N	\N	e3d7b656956642ee833104c05800a64b
3596			Ballantyne		\N	John	\N	\N	\N	d063d8f96ec94398ab761e0804a97db6
3597			Barui		\N	Edwin	\N	\N	\N	f3600560663d427d8f4a97f3299d6e49
3598			Bassett		\N	Steven	\N	\N	\N	b31f4ceb232846389846090f72b5c3fa
3599			Basson		\N	Sue	\N	\N	\N	77edcda2642b4db593687fbb4e3a2d5e
3600			Baty		\N	Angus	\N	\N	\N	05368c5db95b4f52abfdac9a3b910d22
3601			Bavin		\N	Georgia	\N	\N	\N	d5c2d4ccdeaa4070bf65d8dd090ecb7b
3602			Bong		\N	Hoi Ling	\N	\N	\N	e64d404199c94a61bde2f0f6d3649979
3603			Bowring		\N	Brian	\N	\N	\N	6c07aefaedc343389a03f6e537baa1d3
3604			Briggs		\N	Darren	\N	\N	\N	605c4b0ecd8544fb80a22a018d357a97
3605			Brunacci		\N	Frank	\N	\N	\N	9aa2cd4c1d424859abe851b96f21ca2b
3606			Burch		\N	Natalie	\N	\N	\N	3168c4e351914081abe38d57acd155df
3607			Carruthers		\N	Susan	\N	\N	\N	355b75621ef34c69b2f85dee5f8dd0de
3608			Cassidy		\N	Phillip	\N	\N	\N	f8c018daa4ed4575aae6ae1aa030be26
3609			Cassidy		\N	Samantha	\N	\N	\N	0a9e723b72b84ea997edf74f4f0e7945
3610			Cerchez		\N	Clare	\N	\N	\N	49428e629c444f5e8091c49e1dd01030
3611			Cerchez		\N	George	\N	\N	\N	90eabe5434ca4bf786958eff8ee984f4
3612			Chang		\N	Hin Wai	\N	\N	\N	00135e3d56fc4920a8f2f8c3108b3701
3613			Chua		\N	Jacqueline	\N	\N	\N	fc8668f3645044d2b50b3f7dac6d3d4f
3614			Clarke		\N	Andrew Christopher	\N	\N	\N	b22452041c3f478ab64198366de613ed
3615			Clezy		\N	Meredith	\N	\N	\N	69c4accda2034e2f867089992e539824
3616			Clifford		\N	Amanda	\N	\N	\N	fa4febab316c49bf8c9c16e0fbb467de
3617			Clifford		\N	Glenn	\N	\N	\N	f83f3a55636446c49f5d1a03bba279a3
3618			Cocks		\N	Nicholas	\N	\N	\N	cb7e33e86e4d447386adc5c02be14242
3619			Comfort		\N	Madelaine	\N	\N	\N	5a95c6db45aa4f78b107e4adcf4a1f85
3620			Cooke		\N	David	\N	\N	\N	58a9e409238b4ade8d759346a4868ea1
3621			Davidson		\N	Jenny	\N	\N	\N	b44350f0b5374267b1457322322e8c34
3622			Davies		\N	Lynne	\N	\N	\N	d616deb6bbc14791a1a34f7519684d47
3623			Davies		\N	Peter	\N	\N	\N	9ae36ce6d96649d2ae15c3b958c007bd
3624			Dawson		\N	Philip	\N	\N	\N	6b13b88b73ef41edbf11d0f1736bd50c
3625			Debnath		\N	Banya	\N	\N	\N	f696d497932741eba1b8edcd8f8a5ef0
3626			Deshpande		\N	Preeti	\N	\N	\N	da8a062bd97343499bbb1442677a6611
3627			Dhann		\N	Jane	\N	\N	\N	dbcad3eceb2c436680f30fb17d25ae7f
3628			Dickson		\N	Robert	\N	\N	\N	d20dad371e324c82889b341acf47e9ad
3629			Dixon		\N	Helen	\N	\N	\N	1bd79aa715d4401eb5e929f8d2e8ee72
3630			Dolguina		\N	Svetlana	\N	\N	\N	dae9e3c5044b43829994b97512cec0d1
3631			Downie		\N	Alice	\N	\N	\N	59950ddd694942618ee0ce211c5a38fd
3632			Dreiling		\N	Heidi	\N	\N	\N	c5dec3a255f4458883c7276f5a675b2d
3633			Fair		\N	Andrew	\N	\N	\N	ff08d513c91c488189c968d5206c88fc
3634			Fairfield Boshuis		\N	Gabrielle	\N	\N	\N	83df8f9e9e0442869bbd4c9d81186b43
3635			Fassett		\N	Matthew	\N	\N	\N	1019611d380f4821acc49268e943a271
3636			Filgate		\N	Neil	\N	\N	\N	a8a9338d9e1040f2835d236c4c8a451f
3637			Fitzpatrick		\N	Sharon	\N	\N	\N	f0079290867341718c46b6fadd76268e
3638			Flanagan		\N	Timothy	\N	\N	\N	c051c8c91a584696bdf309999958bee9
3639		Echocardiography and Heart Failure	Folorunsho		\N	Joseph	\N	\N	\N	6f6aab532b8e4deb8c39e43496405e5f
3640			Foulkes-Taylor		\N	Verity	\N	\N	\N	aa50813106f04e91981bb0feb28942a2
3641			Fox		\N	Michael	\N	\N	\N	04abeebf7d0d426c8078fa93f8e988b5
3642			Frawley		\N	Michael	\N	\N	\N	e892bb33c4f049e5a6eda6d47dc91cb5
3643			Fuller		\N	Jane	\N	\N	\N	a824ad3a7c854609982cc4740ae74f4a
3644			Fyfe		\N	Karinna	\N	\N	\N	040f3aefa5ba41f980cf4fe8480492af
3645			Gardner		\N	Toby	\N	\N	\N	bb3affcb4803422abbdc5f3a1a3bdad8
3646			Garrahy		\N	Edward	\N	\N	\N	f3607fc2cd1940769fff84a7bda21738
3647			Gbenimacho		\N	Ikechi	\N	\N	\N	491b08d4a29943588534f37abe63420e
3648			Gerges		\N	Ahdy	\N	\N	\N	d01f17749cf446e6ae1062b52781ad45
3649			Ghorbani		\N	Ali	\N	\N	\N	eac2445b144e49bbb2d0c8dbf153f6da
3650			Giffard		\N	Melinda	\N	\N	\N	ba4ebe992a5e48fbaa1d31fbaf32f616
3651			Goss		\N	Emily	\N	\N	\N	d2f1d110db0545949fe5f6e541280336
3652			Gray		\N	Myrle	\N	\N	\N	d6457abb6d4c483bb14bb8bb5bf91206
3653			Grey		\N	Elizabeth	\N	\N	\N	b8eb344bddc34644a69092f2a975efa6
3654			Guest		\N	Stuart	\N	\N	\N	0d9b1e559eb04cf58131abc4ec0314fa
3655			Hamilton		\N	Martin	\N	\N	\N	402b169505f54d0694aa51f917b70cc7
3656			Hampson		\N	Jane	\N	\N	\N	d6f2fe91a4274a76881824bea5b5660a
3657			Hanson		\N	Paul	\N	\N	\N	9b05ac611ae144dab2c41b6585a01df6
3658			Harman		\N	Amanda	\N	\N	\N	b8e2957b680b42d3898ed1eedfb77501
3659			Haron		\N	Robert	\N	\N	\N	5847871ec5974129a81b599672b5c1d0
3660			Hayes		\N	Cameron	\N	\N	\N	b0431bd5198342ff9d1fdae6b8be1d94
3661			Henley		\N	Julian	\N	\N	\N	cef284b986a24979ad5a99d36abdfa28
3662			Hey		\N	Stephanie	\N	\N	\N	a81f445cf9a44edb9c58c6d6f6e80351
3663			Hintum		\N	Diane	\N	\N	\N	d80c71bc54394378a989348bf9bb4231
3664			Hodson		\N	Andrew	\N	\N	\N	3297a1d505994fd4ba901c8971e639de
3665			Hopley		\N	Natalie	\N	\N	\N	aef834fffc264d108ae630fca35a8e8a
3666			Hopwood		\N	Christopher	\N	\N	\N	08c2d9fe90cb44f0ac7adf5d3a5f4c00
3667			Hughes		\N	John	\N	\N	\N	0a808e5eb5fb410f832c5a5378985e80
3668			Hutchens		\N	Nicole	\N	\N	\N	40a38c4feb2644a5806d103ba3f9b44b
3669			Illingworth		\N	Isabel	\N	\N	\N	f9f6ce4bb5234161ba9de9fb89a443a6
3670		Women's health, paediatrics, mental health	Ingram		\N	Emily	\N	\N	\N	0138a46581e24f6086f40a98891efe44
3671			Ioussov		\N	Edward	\N	\N	\N	f486d89274ca4363b4831ee514612f2e
3672			Iqbal		\N	Muhammad	\N	\N	\N	484413bd98324dd2860183326545461d
3673			Jackson		\N	Andrew	\N	\N	\N	57d5c6f4bb98426fa916ee327292e0cd
3674			Jacobs		\N	David	\N	\N	\N	dc8ca0e917a1489d97498d01ed3fc269
3675			James		\N	Amanda	\N	\N	\N	f6fa5679079446b9b3b9e99d76469a45
3676			James		\N	Peter	\N	\N	\N	8eac9c6a4d6541a9934636035b3f9ba1
3677			Jeffery		\N	Jason	\N	\N	\N	5e4cee18f3434c3f922ca8f30a1c7e39
3678			John		\N	Alexander	\N	\N	\N	72f2e09606d4465fa2700217de14728b
3679			Johnson		\N	Matthew	\N	\N	\N	e749a66fe04746b3888bf8829448a9f7
3680			Jones		\N	Claire	\N	\N	\N	5dc8d5a36bb2403dbc17ce2159058034
3681			Jones		\N	Leanne	\N	\N	\N	b7473181231c449bab0e69ddb1c9c226
3682			Jones		\N	Lee	\N	\N	\N	e91a98bc569c4f3ba3a987258f1c41ed
3683			Joske		\N	Fiona	\N	\N	\N	1c7dd0109e2441eab32935d452164063
3684			Judd		\N	Miles	\N	\N	\N	549b7c4f87944d0c8cf4960733fcd2ac
3685			Kelly		\N	Dreena	\N	\N	\N	b3bd0be6ca524071858a0661da06d9f9
3686			Kennedy		\N	Paula	\N	\N	\N	dd13ce1681094da4b5c17d89b9121399
3687			Kerkenezov		\N	Paul	\N	\N	\N	1b82b1099e464be79ccd6699f0735225
3688			Khong		\N	Chee Keen (Ck)	\N	\N	\N	122ca0f646194c6288c774a0b72ca551
3689			Kidmas		\N	Ali	\N	\N	\N	31a443f96b564c11acb8ef18fa38f9c9
3690			Kilov		\N	Gary	\N	\N	\N	2326b02b6eba461f9cbc23c9898eba05
3691			Kingston		\N	Claire	\N	\N	\N	f08bb9643caa4624b18706fea5e03aa5
3692			Kirk		\N	Daniel	\N	\N	\N	fbdd9d022c604c4c84c72cb7432e6ce4
3693			Kisselev		\N	Serguei	\N	\N	\N	e4619abf618543ca82314a698779f063
3694			Kohli		\N	Sujata	\N	\N	\N	eccc48af3cc345e29da958113fb9663f
3695			Kourie		\N	Samir	\N	\N	\N	778db25d33394865a8569d783fb5392b
3696			Kuhn		\N	Nicola	\N	\N	\N	807a9938479449ecbc149febafcea59c
3697			Kulinski		\N	Mieczslaw	\N	\N	\N	17effdd915d34706a5ffbfa38c6107b1
3698			Kwok		\N	Christine	\N	\N	\N	c6e99e68fa644608b904579a9b2124a2
3699			Lack		\N	Daniel	\N	\N	\N	e2187219685847bc8165669d8f6cf89f
3700			Latt		\N	Cyril	\N	\N	\N	5c6ab8ccd18d46569c542b929bd527b8
3701			Lee		\N	Chris	\N	\N	\N	0e967d91a0c44f73aba92e5437beadde
3702			Leesong		\N	Catrina	\N	\N	\N	0b3dd55de93145cb8556cc8ceb258d10
3703			Leung		\N	Amy	\N	\N	\N	a792d7c32b9247b6b65ec9d9b262b797
3704			Lifshen		\N	Jeff	\N	\N	\N	6c7a4036cd5240e2840a55444243eb31
3705			Lim		\N	Chin Keong (John)	\N	\N	\N	ca6af91ccd334c64ba163c2eea533339
3706			Logan		\N	Brogan	\N	\N	\N	1f08128d285b4e579c0c1df59654474a
3707			Lucas		\N	Nathan	\N	\N	\N	e5e6a6f96ebc417ea6a1d9202dd222a7
3708			Lucre		\N	Marion	\N	\N	\N	7f620052459d4361948d6b8cf6bb9d66
3709			Luttrell		\N	Christopher	\N	\N	\N	3c6755117c474605a34d28d437ef4445
3710			Lyall		\N	Anthony	\N	\N	\N	89ea6f180be647b8833deef24b25f57e
3711			Macdougall		\N	Russell	\N	\N	\N	9e44e8965d36413d88822619b05cf950
3712			Mackrill		\N	Emily	\N	\N	\N	7810463136f34a889be759bae5e645eb
3713			Mahmood		\N	Aamir	\N	\N	\N	8acf53875b5b401eb1ecbbcad56c1398
3714			Mahmud		\N	Arsalan	\N	\N	\N	a322fcb1300645a6b65e08e7476ede6a
3715			Mahmud		\N	Sana	\N	\N	\N	fa11d68019cf48e98f5baa06e8561895
3716			Mapitigama Arachchige		\N	Upali	\N	\N	\N	a687bb4fd63743edb66aa620c644431f
3717			Maxwell		\N	Kathy	\N	\N	\N	1f07ed048f684231b5e2c37aea22567b
3718			Mcclure		\N	Cameron	\N	\N	\N	81708b0c9d3c4abeb4831c3418951037
3719			Moniruzzaman		\N	Md (Moni)	\N	\N	\N	2c8523e82b024b198496ab8c340f9020
3720			Mooney		\N	Caroline	\N	\N	\N	e807d8e62aea46eea086b0ad93173fcc
3721			Mooney		\N	Timothy	\N	\N	\N	f667b07fa09b4c0cbfc9cee7f0dc9d41
3722			Moore		\N	Katherine	\N	\N	\N	99ad5a3011034456b7bc681847e4eb0b
3723			Morris		\N	Simon	\N	\N	\N	f95c3c209d7040b2bf0c5ca4ec2cbf04
3724			Morse		\N	Isobel	\N	\N	\N	e21790d067a5404c92b0293ce725e4f6
3725			Mudyara		\N	Lovejoy	\N	\N	\N	e2aba24fbf2c4a4f9d881e6f06acb1b4
3726			Muir Wilson		\N	Jerome	\N	\N	\N	577be4a2592145fe85dfeba4ab039ebd
3727			Naik		\N	Harshad	\N	\N	\N	7431699c19754a5e8bcee5f8aa08ce3b
3728			Nanayakkara		\N	Wellalagoda (Abhaya)	\N	\N	\N	52393a8fe39f49acb807a16d41c641fa
3729			Nandasiri		\N	Krishan	\N	\N	\N	3d8c2de8033842d290ec80f3f656b33a
3730			Nash-Rawnsley		\N	Kaylee	\N	\N	\N	6910be6d89d44036b69b2a3626cf9217
3731			Nepal		\N	Sujana	\N	\N	\N	c166635bff45406f8eb7bc6eacd758c7
3732			Nones		\N	Annabelle	\N	\N	\N	eafb716bd7924840a943359676cef110
3733			O'Keefe		\N	Jaclyn	\N	\N	\N	139a401f21a4454696ac4c341137b385
3734			Obanor		\N	Eugene	\N	\N	\N	07cdc18d66fa420aa0b19814ef96717e
3735			Ogden		\N	Kath	\N	\N	\N	cb4741a58e4947cea0a58a8455bdd364
3736			Omenka		\N	Okafor (Stephen)	\N	\N	\N	3e7767882f2448faba0796a8b5168492
3737			Opray		\N	Nicolle	\N	\N	\N	a6ffc02540124869b0ae43ac32402921
3738			Orr		\N	Gordon	\N	\N	\N	4c10dfb0908441d5b0b4dcf9f2ec0474
3739		Women's Health, Respiratory Medicine	Pakshaweera		\N	Nishanthie	\N	\N	\N	3e1c3bc577b845c5a68f7374259987b5
3740			Parkes		\N	Helen	\N	\N	\N	91fd1669a4944fc894cd136f7900f674
3741			Parry		\N	Lucas	\N	\N	\N	23f84d1b71c8426989df759adc4b48a8
3742			Pavlov		\N	Lily	\N	\N	\N	609135c801ca47bab72cd1a8148306f3
3743			Peachey		\N	Alan	\N	\N	\N	2bc6b431f7f14f52ae94c687f40f4ebf
3744			Pearson		\N	Richard	\N	\N	\N	eda8300b928b4134bf77032c35af94fd
3745			Perera		\N	Bianca	\N	\N	\N	b1cb14e2f997449cb3d6283ddcebdcec
3746			Petrovsky		\N	Tanya	\N	\N	\N	6a7ca48685244642b8ea5d6af920c986
3747			Phillips		\N	Jehan	\N	\N	\N	89578638f691441996a776b7780fcda0
3748			Poole		\N	Graham	\N	\N	\N	2e07a591dedb47e98300a4d9c619d378
3749			Poursafavi		\N	Fara	\N	\N	\N	5c1ea2e680194fa294e2960ddae03f44
3750			Prinsloo		\N	Rosalette	\N	\N	\N	75334bc41af744c788a28822d13d3b70
3751			Radford		\N	Janette	\N	\N	\N	dc5fe917b1f745b982a34abaf2f8fdb9
3752			Rapley		\N	Michelle	\N	\N	\N	a459b22b1a4b4b22a17d20066df6fb28
3753			Ratcliff		\N	Angela	\N	\N	\N	78b2c9ac835e4a5da03e1df9bb1ba4d0
3754			Richardson		\N	Glenn	\N	\N	\N	a47a47c837b64f3fa5620feb013e74a5
3755			Roberts		\N	Kathryn	\N	\N	\N	d259d7c5931b439a9c82c9483b04a46b
3756			Robertson		\N	William	\N	\N	\N	edc7459a80a445dbbb34fe4834e467c6
3757			Rogers		\N	Peter	\N	\N	\N	529352d0712a4e7281e15d5328ebb67b
3758			Rose		\N	Donald	\N	\N	\N	1e5e6bbfd57f4b94b3f60be3f7dfe97e
3759			Schonborn		\N	Johannes	\N	\N	\N	d983f7b061bc4618bfe44a43ce7cd799
3760			Scott		\N	Paul	\N	\N	\N	cabbed2ed9d84c18b9f0b815b71e21e9
3761			Shahrdami		\N	Arya (Moslem)	\N	\N	\N	b28c29805ff64b0386c45bdb3a3a991d
3762			Shamim		\N	Uzma	\N	\N	\N	5a18065745814725bf08f045f00f6af2
3763			Sharma		\N	Suresh	\N	\N	\N	daf31c2de654408785f76c2be2718c7b
3764			Shaw		\N	Tim	\N	\N	\N	2dbdfafaf720402aa059386420623c74
3765			Shepherd		\N	Sarah	\N	\N	\N	59957075cfb34f7780d9143f0ac0e85f
3766			Sidhu		\N	Deepak	\N	\N	\N	d59561bc91354ff8866e97674c7c8bbb
3767			Sie		\N	Boon Shih	\N	\N	\N	9f8086b43a6646c490d924988a9448ea
3768			Simpson		\N	Seonaid	\N	\N	\N	80dd746c58c9488ba6aa16fc637d642f
3769			Siu		\N	Tricia	\N	\N	\N	08949fcabf4741fbb2bebfa7cdd00445
3770			Smallwood		\N	Michael	\N	\N	\N	76c018c3903d4b2993080c285062aa9b
3771			Smith		\N	Victoria	\N	\N	\N	8338be82f10f46daa81fd97795df8807
3772			Smoak		\N	Hoki	\N	\N	\N	766a3881e4974e699d50239e40f13fb3
3773			Smolinski		\N	Margeaux (Maggie)	\N	\N	\N	cb30b30a05d24b96be72c8ff14f7f722
3774			Somarathna		\N	Janaka (Jzinakzi)	\N	\N	\N	80535904c9cc4edfb57f40e763d275eb
3775			Sreekumar		\N	Sreeja	\N	\N	\N	e1133c336bc04c0fad6f7d4de0160f61
3776			Stewart		\N	Caroline	\N	\N	\N	13e1201b12054e789e54e2ecefa4c68a
3777			Storck		\N	Rebecca	\N	\N	\N	4c9f1e05828645c58e0640f71af10f87
3778			Strong		\N	Jane	\N	\N	\N	be5105fa154944aab2026b10e66589fa
3779			Tan		\N	James	\N	\N	\N	9aa006d875304b529df13d7b73af735a
3780			Teare		\N	Paul	\N	\N	\N	5a2d3bf9cd4446df9a5fc6642935801f
3086			Adil		\N	Sarah	\N	\N	\N	97684bdab1854b6f9bf142c08bd0be1d
3087			Ahmad		\N	Juliana	\N	\N	\N	6393a3114d4048c4b1dd17db145e14d7
3781			Teh		\N	Teck Eng	\N	\N	\N	79da787228134688b0c4e31598f31b1b
3782			Tellesson		\N	Katrina	\N	\N	\N	cde7f4f85c524be3a5d6dc18ae03223e
3783			Tempone		\N	Joe	\N	\N	\N	809b436b1ded40f5b93c4e5d1ceecb9a
3784			Thomas		\N	Brendan	\N	\N	\N	58d3d51ebaa943b0bf92d2fb06d30875
3785			Thompson		\N	Beth	\N	\N	\N	8bd86f4427144cd89212fc55f4f09d24
3786			Thomson		\N	Alex	\N	\N	\N	53cc3a1686e846dfb37fbe7d8e6871aa
3787			Thwe		\N	Aye Aye	\N	\N	\N	720d9eae85c64cd29258ffe492203236
3788			Tillekeratne		\N	Napthruchandra (Kshemendra)	\N	\N	\N	037027129eb44554985b11d0fb165355
3789			Tilsley		\N	Malcolm	\N	\N	\N	628ef634cdb546108f32e5188123eb74
3790			Timms		\N	Alison	\N	\N	\N	c15798f420cf4ab49f6099f2e760bcaf
3791			Tinston		\N	Caroline	\N	\N	\N	8e675660d61244bcb7b7270784a7e627
3792			Tredinnick		\N	Stephen	\N	\N	\N	48eb58d1ddfd4cb7890467388160e46d
3793			Ullah		\N	Imran	\N	\N	\N	61cea5340c0c4f76a9c26b22d1c42b13
3794		Womens Health	Vakili		\N	Sima	\N	\N	\N	b5d964314fa8470792c2594d48fd85b2
3795			Van Den Heuvel		\N	Leo	\N	\N	\N	4eb8b0d32269470287eaf5d503038b06
3796			Vanderslink		\N	Gerald	\N	\N	\N	f7e80b2cd8c34a35accf76a12e6fb233
3797			Vavrek		\N	Natasha	\N	\N	\N	d6ac3487cb944c16ae3140ce38d265ca
3798			Venter		\N	Maria	\N	\N	\N	2975c3f14a2e4be9b8e14dabf392c23f
3799			Vithanarachchi (Charmi)		\N	Charmi	\N	\N	\N	053aa7ecb7314da09f40645329f4f51a
3800			Volkovets		\N	Denys	\N	\N	\N	aebb286ab3ce41bcaae6dd6ebf3ce0e5
3801			Walker		\N	Charles	\N	\N	\N	cb04466f3faa4dcdb1011d5637954759
3802			Watson		\N	Judith	\N	\N	\N	5709c578816e43658fbed3df735dcb86
3803			Webb		\N	Meredith	\N	\N	\N	841aa72f9a0740b4a2da0c9bba2214b9
3804			White		\N	Carlin	\N	\N	\N	d19bba1180c042b68cf8d8ba6ece05dc
3805			Willard		\N	Louise	\N	\N	\N	fa14df1656a64513b3bbe4cad25c5c2c
3806			Wilson		\N	Anne	\N	\N	\N	53e73b454f9a4c948ae3a6f096841fc4
3807			Wilson		\N	Johanna	\N	\N	\N	4bafc4228dfe4e1996d1b79d18982752
3808			Wivell		\N	Felicity	\N	\N	\N	e6bddf71823d423b91b0790cefd5da91
3809			Woodberry		\N	Adam	\N	\N	\N	cfd73e1d07f142418213f297055ed471
3810			Yuvchenko		\N	Andrey	\N	\N	\N	a414fc39b4064cdf9b1c796d9eb5b4c5
3811			Abbasianasl		\N	Mehrdad	\N	\N	\N	5d0d7fc8f9cf4b1d8463942f3a9518ff
3812			Abduallah		\N	Mafada	\N	\N	\N	28a67601654648988c03a5fdd09b14d8
3813			Adams		\N	Samuel	\N	\N	\N	10d1ec68a7aa4da2a836f862adb80e6a
3814			Akhtar		\N	Shadab	\N	\N	\N	80576e52f0da4cb7b665683f5615f78a
3815			Akram		\N	Ghamza	\N	\N	\N	68b910ac07bc476bbeefeb602e436814
3816			Al Tamimi		\N	Waheed	\N	\N	\N	698bc3022e714ad9810e94b3ff40b2cc
3817			Aldridge		\N	Lynda	\N	\N	\N	110244ebf3a547d9b8f54fa03a72cc86
3818			Ambeypitiya Wickramasinghe		\N	Maduranga	\N	\N	\N	5fd5fa7e2c2f4745aaae76653b9bed36
3819			Anderson		\N	Nicole	\N	\N	\N	551b4a39eebf4ba7a7011a99bf3b114e
3820			Andrewartha		\N	Jessie	\N	\N	\N	3dd506962f564ddab38128ded863d5d8
3821			Andrewartha		\N	Timothy	\N	\N	\N	80b4ee05e59642d2b6b8e73def2d1101
3822			Ark		\N	Roland	\N	\N	\N	6d0dd2a0e8034e58a675b0b603253eb9
3823			Baig		\N	Mirza	\N	\N	\N	1da0b08ed2c2459483e32e573e0cd189
3824			Barstad		\N	Christine	\N	\N	\N	c77ea31f240e4c7e927c276d8b3af7af
3825			Beddows		\N	Emma	\N	\N	\N	88ecbb3e0c964ceea612e346492f7744
3826			Berryman		\N	James	\N	\N	\N	9207d3b7eacf4c008c7e35c92937c878
3827			Booth		\N	Greg	\N	\N	\N	9b50e93efb274b17a54b42c978a6b143
3828			Bott		\N	Jeremy	\N	\N	\N	952720edfdb24a17b0da62b4f5c88def
3829			Brandsema		\N	Samuel	\N	\N	\N	cb5a5438e977419d91d86eceb92dc81a
3830			Broun		\N	Catherine	\N	\N	\N	04eb0d64220e423c831569cde672919c
3831			Brown		\N	Mark	\N	\N	\N	87ca9f690ac14f32b49c4e07ffcad9c9
3832			Buchan		\N	Ann	\N	\N	\N	7dd6fa2fa6034d6ba0667184b311a3cf
3833			Bulle		\N	Bekithemba	\N	\N	\N	697042c20bb144559b2aefe9669215a0
3834			Caballes-Beaty		\N	Daffodil	\N	\N	\N	82ce12f44ed440f7821ae6a34f2b2ca6
3835			Cann		\N	Nerrelie	\N	\N	\N	307e8e826494469e8257b23737d67270
3836			Chandler		\N	Debra	\N	\N	\N	d501d8ae1dee4b7cbb5f6a82052ef888
3837			Chandler		\N	George	\N	\N	\N	a6f55cf4f0e44b01866c0ea6e337c154
3838			Chandra		\N	Kiran	\N	\N	\N	3ffc754982164849a5de2a06ea96b329
3839			Chapman		\N	Abby	\N	\N	\N	aa23991ffb4f4270beb8b35940216a8b
3840			Chipman		\N	Justin	\N	\N	\N	e6998590dcb840b287112fe0ebc48bf9
3841			Clapton		\N	Jonathon	\N	\N	\N	42c1cf32007841ddb0df45b6360291de
3842			Clarke		\N	Andrew	\N	\N	\N	539c5473a4334dc5b43ff81dbe04a2ef
3843			Cooper		\N	Jane	\N	\N	\N	4f06f183dd79436ebd3972f5ab837908
3844			Datta		\N	Subhasree	\N	\N	\N	d5f5304f104d451ca298510c3326bbf1
3845			Debnath		\N	Arati	\N	\N	\N	9bbdcc88535b4fdfbfe63095ce715bdb
3846			Debnath		\N	Ruhidas	\N	\N	\N	e111486e49094d008b2d298cad1cf7db
3847			Delitzsch		\N	Stefan	\N	\N	\N	cb4f2c15a2ed4e9abe057cd862eb6a40
3848			Despot		\N	Matt	\N	\N	\N	b6fda7c0ddb04bf28f71e4306fa22436
3849			Djakic		\N	Emil	\N	\N	\N	cb9a1f2eaa674c2a9c95bef672971fce
3850			Dow		\N	Douglas	\N	\N	\N	8569290fdddc43c38da7eced052084a2
3851			Dry		\N	David	\N	\N	\N	595f21bcb0104aa99b2cd600f2f37c23
3852			Dyer		\N	Merran	\N	\N	\N	79353ca4f2d94ffab841770cc1ee5e76
3853			Echikwonye		\N	Okpachu (Mark)	\N	\N	\N	62be48cec74b4d38aaafad05e7285718
3854			Edwards		\N	Jane	\N	\N	\N	68909872614244eaae4473e049c9e359
3855			Emmett		\N	Stanley (Ian)	\N	\N	\N	a703391d154547c0a200bb2eb75880b2
3856			Esomeju		\N	Chidinma	\N	\N	\N	a1e91843afa945799f07da92472ced02
3857			Evans		\N	Robert	\N	\N	\N	a6dcd5b913274702a636d7dabd9cccc6
3858			Fernandini Caballero		\N	Bruno	\N	\N	\N	72e35408616c4794877563c3b3608f74
3859			Fernando		\N	Avin	\N	\N	\N	9d5c432bb24c4ef1bfbe89ebf105bf83
3860			Fernando		\N	Krishantha	\N	\N	\N	5de0cf2225904e9788ace2b63edb0dbf
3861			Fernando		\N	Neeliya	\N	\N	\N	edae3a9c6e494eada9b20b9a9af7f584
3862			Fisher		\N	John	\N	\N	\N	f3a373c99cd84082bbe912903c981f5c
3863			Gaggin		\N	Rachel	\N	\N	\N	fffc04d438654bb6b073d9fa00378e2e
3864			Goode		\N	Simon	\N	\N	\N	992dd3e12bbe4d10beefe070a9ba142d
3865			Gunawardena		\N	Dhanesha	\N	\N	\N	188bab4c988f47988a7dcc2e341bce8a
3866			Gupta		\N	Shipra	\N	\N	\N	cd3fe0d77da9458b8a6fa1cf48768987
3867		Mental health	Hawkins		\N	Aaron	\N	\N	\N	f7ff57c6e7ba492f9b7bf7eb983bea21
3868		Women's Health, Child Health, Chronic Conditions	Hendawitharana		\N	Henda (Nalika)	\N	\N	\N	716d21b22a7f452290c0c2623703ff74
3869			Herath		\N	Thushara	\N	\N	\N	c74b88ef35da450b9a5104fdc9c15ff6
3870			Holona		\N	Peter	\N	\N	\N	dc78e71b7a324ab092a6bbb5b873d062
3871			Hughes		\N	Christopher	\N	\N	\N	e59ed8cfa0ec4ee780ba29d6867564f2
3872			Idirimanna		\N	Kapila	\N	\N	\N	284c9da8766f42c9bddb5827720b3b3d
3873			Idirimanna		\N	Vajira	\N	\N	\N	f746273c54d4488fbb984f48e6f3b952
3874			Ioussov		\N	Lioudmila	\N	\N	\N	c8dca368efa84bada2df6d552f31be75
3875			Ivanova		\N	Nadejda	\N	\N	\N	3a58e1fd41354888bf4c38381cfcb57a
3876			Jinadasa		\N	Champa	\N	\N	\N	06145875796746428b8f2a9f75350571
3877			Johnson		\N	Allison	\N	\N	\N	f245097276a94fcfbf372f54ee7f1da1
3878			Kariyawasam		\N	Chiranthi	\N	\N	\N	6b6dfb09a91c4ab2b9173bad4c6dbd7d
3879			Kaur		\N	Kanwal	\N	\N	\N	0194d25e0b2b4e4e9414195b5a52405f
3880			Kear		\N	Chris	\N	\N	\N	c92c0d5d06414ee5810beff2b51b8bc7
3881			Kim		\N	Heung Soo	\N	\N	\N	aedde5b683c54cf28287f8e7c42f12c2
3882			Kodithuwakku		\N	Sumith	\N	\N	\N	2be3b09a5af74083a1ed295d96de9793
3883		Skin checks, dermatology, pain medicine, psychiatry\n \n \n \n Standard Consult $76; More than 20 mins consult $119; Bulk bill Aged Care Pensions and Children <15	Koshy		\N	Ashwin	\N	\N	\N	ec83661eabb74f45bf0fcc44a481a681
3884			Kumar		\N	Satish	\N	\N	\N	0df4dbc34f564beca2b2603a70dc5628
3885		Gynecology, Mental Health, Diabetes Management	Lakra		\N	Renu	\N	\N	\N	7a6dc0a00bef4a96afd994a69a834993
3886			Lenton		\N	John	\N	\N	\N	a18e5ca8d305471791180ed978d75ef1
3887			Loubser		\N	Chris	\N	\N	\N	10a76fbfeb434bfda621ab0e558eb2ff
3888			Louw		\N	Johan	\N	\N	\N	e9c4e8780e16413fac99c89d36e2f40a
3889			Mcarthur		\N	Keith	\N	\N	\N	c1d0cfe08754449a8979875652856409
3890			Messieh		\N	Alfonso	\N	\N	\N	2344b994cf9f4a578058f2dd38a969d3
3891		Emergency medicine, skin cancer, dermatology & dermatoscopy, minor surgery	Mohamed		\N	Khaled	\N	\N	\N	0402588dc7524bf0a3fa4fd12fef1c5c
3892			Mohammed		\N	Abdul	\N	\N	\N	5bc525fee466464384137974ec8b8672
3893			Naiker		\N	Surendren	\N	\N	\N	bd0225523ef74fa9a6cd97a4cb1892a5
3894			Naiker		\N	Vinithra	\N	\N	\N	244fbfdb88d44e86b24ab529d87835ea
3895			Nairn		\N	Alastair	\N	\N	\N	7582bb93411443cf8d2475631de972c8
3896			Newfield		\N	Alexandra (Sandra)	\N	\N	\N	a4f564ed0f224558a38942cfc190abf7
3897			Nikitina		\N	Anastasiia	\N	\N	\N	c47c95a5457a41348dbaa9ae6a7bb097
3898			O'Connor		\N	Daryl	\N	\N	\N	34493189854e41dbb977e51864fc080b
3899			Oberoi		\N	Ginita	\N	\N	\N	edd039e7d40447d09ff3df75238373fb
3900			Oetterli		\N	Margret	\N	\N	\N	d823f61ad75d4ad68161b23c27f1c03f
3901			Okorafo		\N	Emeka	\N	\N	\N	11cc155a371b460d84a6709349db7ba5
3902			Olomola		\N	Olawole	\N	\N	\N	00e056fbdf6148278ee671e41a90f7b6
3903			Onumaegbu		\N	Kelechukwu	\N	\N	\N	58aa84d22ed84bb387b2f2a9d72adb9a
3904			Papas		\N	Esther	\N	\N	\N	f0af0e822cef44baa1550fd8b86d85b8
3905			Papas		\N	Katerina	\N	\N	\N	51c187f962da4917ad8c8db9aa0d429e
3906			Parry		\N	Brynley	\N	\N	\N	abeab1c1ada24b70ad60426c481e973f
3907			Pashen		\N	Dennis	\N	\N	\N	3c3dafc01284431dba0e748416ec5733
3908			Patankar		\N	Rajendra	\N	\N	\N	3f5997c94c76487d881916a3f4503326
3909			Pava		\N	Calin	\N	\N	\N	5ac3845966124c058eb333b98ee650c8
3910			Peduru-Arachchige		\N	Anzhela (Angela)	\N	\N	\N	055f30bfa1604bdc992d017243b0c2cd
3911			Perera		\N	Thanuja	\N	\N	\N	f4d6de8f152e42f18b4b2a5b3aa70f94
3912			Pervaiz		\N	Zohaib	\N	\N	\N	e1066fece789464cbe9b5010b5712a53
3913			Popiel		\N	Anthony	\N	\N	\N	893d8a290c1640d88701f49a66d7500e
3914			Proheraris		\N	Emmanuel	\N	\N	\N	7dacca8cf6ac4968986744b72f1bdd71
3915			Rahel		\N	Esmat	\N	\N	\N	4a26a982f30d494684e22f88dc17df87
3916			Rajalingam		\N	Priyanka	\N	\N	\N	3bb1fefe585a4bd1acbbe347387a0703
3917			Ramasinghe		\N	Deepthi	\N	\N	\N	73cdff93cf8c4d04bafb46232a4079ac
3918			Randhawa		\N	Sarvin	\N	\N	\N	523d14847e164b47a5ecf9005f212ecb
3919		Holistic medicine; women's health; geriatric medicine - chronic conditions	Ranjbar		\N	Sara	\N	\N	\N	f299f8bd36244aa69a27bf347b28cdc6
3920			Ratnayake		\N	Himali	\N	\N	\N	58afc28b0a3b4d42b472961937501c3b
3921		Diabetes Mellitas/Sexual Health/Mental Health	Ratnayake		\N	Samarasinghege (Chaminda)	\N	\N	\N	aa68ae9060ca4d1caea8e80f6e1645fa
3922			Robin		\N	Elisabeth	\N	\N	\N	cbe63256439743d7acd1a7d400a66fcd
3923			Romanova		\N	Elena	\N	\N	\N	f1640544f8de4e679d71894c6ad53d5b
3924			Rubasinghe		\N	Saminda	\N	\N	\N	6974fb4f8e9645ab8eaad205271997c4
3925			Sakran		\N	Maha	\N	\N	\N	187d8a4d6fe643fcb71c3ebaf700941d
3926			Sanli		\N	Yasemen	\N	\N	\N	e32aa9c4f02c465d820d7cfd91aa328f
3927			Schilling		\N	Kate	\N	\N	\N	e6aad5798bbe484d8ada4e5dc63b2ca9
3928			Selvarajah		\N	Sukanya	\N	\N	\N	87c28379d8804273976b7627a38f6e66
3929			Serban		\N	Radu	\N	\N	\N	83425f6ff2d2455fbfb28a2274961be6
3930			Sharab		\N	Ayman	\N	\N	\N	89b799f5f6f7451597387627230eeb8f
3931			Shires		\N	Lizzi	\N	\N	\N	d54273b38e264d83b8a67fbca7bfa54a
3932			Singh		\N	Renu	\N	\N	\N	c5b97d09814343e0bb12779c328d70f7
3933			Sood		\N	Rohit	\N	\N	\N	547e3ac6a5c74c7fb860f6228f475d44
3934			Stillger		\N	Adrienne (Jadranka)	\N	\N	\N	0f826a67f2ee4fcea54ea056cac1f459
3935			Sultana		\N	Tahfima	\N	\N	\N	3dea3ca64cd0491f85b73adcb2755a46
3936			Sykes		\N	John (Barrie)	\N	\N	\N	e07ec272c85f4344a98a91701550f6ad
3937			Sykes		\N	Louise	\N	\N	\N	a812858d07ce44729541a2048c1038aa
3938			Tcyba		\N	Vitalii	\N	\N	\N	c855504b1cd7460ab9655867699410b1
3939			Theilhaber		\N	Sebastian	\N	\N	\N	13253205ae3144a48f5960cdb2d11c66
3940			Thirukkumaran		\N	Sobitha	\N	\N	\N	158747974a824d88964891024127c048
3941			Thirukkumaran		\N	Thirunavukkarasu (Thiru)	\N	\N	\N	41d16dd543004b33a439cde01fe68fe5
4050			Winterton		\N	Ruth	\N	\N	\N	0424502dc5244d4094bcfbe3928f72ce
3942			Verma		\N	Harneet	\N	\N	\N	2442574710b64ac2a2d9ca829976dd25
3943			Wardle		\N	Debra	\N	\N	\N	266934875d894e9ab927d51ed882ee26
3944			Watson		\N	Sue	\N	\N	\N	f8b704c35a634797b8eab9593b8a08a7
3945			Webb		\N	Rebekah	\N	\N	\N	dd149c05edc24c7ebf17bad2f2859ff1
3946			Webster		\N	Diana	\N	\N	\N	4231ece5d8db4e2ba8b7704d5b799b28
3947			Whitney		\N	Chris	\N	\N	\N	1df00469e354402b9d671eebecd329a9
3948			Wijayasinge		\N	Don	\N	\N	\N	59b1ed75b7b346139dc4e9b1accbdc6e
3949		Paediatrics and Child health	Wijewardena		\N	Sooriya	\N	\N	\N	c2794ae998d94608a55dcebbc917dcf9
3950			Wild		\N	Ian	\N	\N	\N	a0b6faf6ad5a4d74b1e13ab946298e12
3951			Williams		\N	Bradley	\N	\N	\N	c22826c205654a58bb491234d28691f7
3952			Wilson		\N	James	\N	\N	\N	e24ee7b4a16e464e806777c1db3cb69e
3953			Win		\N	Naing	\N	\N	\N	b10b291b88b341a08f40ef06b8f50ffd
3954			Winter		\N	Frank	\N	\N	\N	4442bdf0fb9843bba05df5f446eff6c9
3955			Woodman		\N	Josephine	\N	\N	\N	53530d5f28974924b9e53539b5504170
3956		Women's health and child health	Zhang		\N	Yilin	\N	\N	\N	28b2f3309b5947349cf5166e2f170e98
3957		Alcohol use disorder - Addiction Medicine Specialist	Ait Khelifa		\N	Nicolle	\N	\N	\N	fbda52520b004222b0106c5b97e533a7
3958			Anderson		\N	Malcolm	\N	\N	\N	c61ef8a57e7b4406ae7f8880b4d1d346
3959			Austin		\N	Gregory	\N	\N	\N	3e879df889744693aeb4b708e2e553f5
3960			Carney		\N	John	\N	\N	\N	ccd2669584d44af6a95cd4f36e0b4db1
3961			Gale		\N	Sandy (Alexander)	\N	\N	\N	7b85403fce7749d48bcf19976abae7bc
3962			Gourlay		\N	Cameron	\N	\N	\N	7a0476d7108d491fbbd519bf18dbf426
3963			Lane		\N	Peter	\N	\N	\N	928e80ab8e67466f9541ec03f708ac32
3964			Mahoney		\N	Adam	\N	\N	\N	5a89f2342d434dd88bbb001aea316e34
3965			Mcarthur		\N	Clare	\N	\N	\N	15727967ffc644e6b7b68dcd34bf5829
3966			Mcdonald		\N	Anna	\N	\N	\N	2f07cf43cb30499cba40d2fb08cbc171
3967			Mcglone		\N	Daniel	\N	\N	\N	5854f5de6959494fa7986e728730ec01
3968			Messmer		\N	Andrew	\N	\N	\N	9cf6eed37a63438c9820a4b08e5cd565
3969			Ottaway		\N	Andrew	\N	\N	\N	08e70db7cb4e42d2aa3d011734291b26
3970			Paton		\N	Robert	\N	\N	\N	4cbb0986f3784df099f154dcaae23712
3971			Unwin		\N	Peter	\N	\N	\N	9a1567339812436fb5026bf8a8e78fe3
3972			Valappil		\N	Vinod	\N	\N	\N	55ffbdd3881f45848d87fda326e65412
3973			Webster		\N	Katrina	\N	\N	\N	d2eb92a9e74e4f8fbe134c02668648b8
3974			Zalstein		\N	Sandy	\N	\N	\N	d4d74b0697db4e74a89ba6f55f590cc6
3975			Bremner		\N	Michael	\N	\N	\N	75562331c1764ac9833e85805e20904b
3976			Chilvers		\N	Colin	\N	\N	\N	9d662e48e4ce42b7b2fcd388ce9ed656
3977		Regional anaesthesia. Orthopaedics and ophthalmology.	Doughty		\N	Lachlan	\N	\N	\N	824b0ec2deca4286963809c1a0c9a9c3
3978			Eadie		\N	Rob	\N	\N	\N	4fc3089e14ff490a89231e97c90b31e5
3979			Hall		\N	Tom	\N	\N	\N	2fd9b68bc0fd4bee998477682e2db0f1
3980			Lawson		\N	Rowena	\N	\N	\N	bcb3df993d27412abdd7898709879491
3981		Paediatric anaesthesia/physiology (FANZCA examiner).	Reid		\N	Chris	\N	\N	\N	b7a78ccf42a84a69ba28fa4892a9b1a2
3982			Tooley		\N	Deborah	\N	\N	\N	9f3b48aa645242f2b85a3bfc78a3d5f5
3983		Acute Coronary Syndromes, Chest Pain, Coronary Stenting, Risk Factor Modification, Valvular Heart Disease, Transcathter Aortic Valve Implantation for Severe Aortic Stenosis, ASD closure, PFO closure for Stroke, Left atrial appendage occlusion	Adams		\N	Heath	\N	\N	\N	607f392b492c49f2938f38e4a4655d33
3984		IHD; Cardiomyopathy; Valvular heart disease	Al-Daher		\N	Saheb	\N	\N	\N	ff274555e35e41ce823e364b8d80da71
3985		Advanced cardiac imaging, structural/congenital heart disease, heart failure and cardiovascular risk	Binny		\N	Simon	\N	\N	\N	f30feefe15d142c49cbed0431b7620ee
3986		Preventative cardiology, chronic CT imaging, lipid management, echocardiography, Stress Testing, Diagnostic Angiography, General Cardiology and pacemaker follow up.	Bishop		\N	Warrick	\N	\N	\N	3e03c5ba3c1b46ab9c584b065388fb5a
3987		Interventional Cardiology; Cardiovascular Disease\n \n \n \n Visiting Oatlands Surgery 1 day per month.	Black		\N	Andrew	\N	\N	\N	645a4ef050634a259f09ce6d8efef71d
3988		Interventional cardiology, echocardiography, stress testing, pacemaker insertions and follow up.	Bowman		\N	Leigh	\N	\N	\N	79bd321020e149008cfc471ec41ec144
3989		Echo-cardiography, stress testing, pacemaker follow-up. Diagnostic angiography. EXCLUSION: Paediatric Cardiology	Coombes		\N	Michael	\N	\N	\N	8c969c91b42449ad8684cbddeca1a7d2
3990		Interventional cardiology, pulmonary hypertension, general cardiology.	Dwyer		\N	Nathan	\N	\N	\N	457a5cdcfb36436381d78ba941527035
3991		Paediatric Cardiology, Interventional Cardiology, Adult Congenital Heart Disease	Galligan		\N	Luke	\N	\N	\N	e7bffd36eafb480d94b970f0ec642b44
3992		Electrophysiologist	Healy		\N	Stewart	\N	\N	\N	99ce4a816451432a8a9ee3ed79932557
3993		Pulmonary Hypertension.	Kilpatrick		\N	David	\N	\N	\N	cffad68736fc419ab4d98302cc3a871e
3994		Arrhythmia; Paacing; ICD's/CRT	Lipton		\N	Jonathan	\N	\N	\N	aa4763cc5f0a455fa18e4802f3fda3f6
3995		Heart Failure; Heart Rhythm	Lovibond		\N	Samuel (Sam)	\N	\N	\N	f4f95be33b7f4506bfda4d4305cdcaae
3996		General Adult Cardiology; Syncope; AF; Device Care EXCLUSIONS: Paediatrics; Adolescent; Congenital	Macfadyen		\N	Robert	\N	\N	\N	36482f894f72493292689a42e87a87e7
3997		General Cardiology, Pacemakers and Devices, Heart Failure	Macintyre		\N	Paul	\N	\N	\N	93f2e9b1daf745f2a10189c91ebe2061
3998			Roberts-Thomson		\N	Philip	\N	\N	\N	f3254668c04e47b48e0d947b25cfdb70
4000		General Cardiology	Amit		\N	Michael	\N	\N	\N	5e3d0d9226e8401cb64a1a963bdb0d35
4001			Barthwal		\N	Rohit	\N	\N	\N	97b9ec0362d946c7b744e32cdd0fcb76
4002		Congenital heart disease, cardiac MRI	Chen		\N	Sylvia	\N	\N	\N	656b76c406144f41b6a4b93176704a67
4003		Interventional and general cardiology	David		\N	Thomas	\N	\N	\N	ac478e82b94143e9b893c5aab2b9af2c
4004		Echocardiography; Stress Echo, CT Coronary Angiography; Heart Failure and General Cardiology. Will see Paediatric Patients	Evans		\N	Geoffrey	\N	\N	\N	321e84fe081f462bac058c122ccc85f8
4005			Greaves		\N	Sally	\N	\N	\N	ecb6ee2385424d45986ff41a0e6dd2cd
4006		Heart Failure; Echocardiography; General Cardiology	Hasking		\N	Gregory	\N	\N	\N	5fd3558a1d244fa2b48abcf7d789e403
4007		Aortic Valve disease, TAVI Stents, Angina, General Cardiology	Hayat		\N	Muhammad (Umair)	\N	\N	\N	07e805f7f11940679be70bb2692449e1
4008		Areas of Interest: Interventions - Coronary angioplasty structural heart procedures, complete total occlusion stenting.	Herman		\N	Brian	\N	\N	\N	563aa52be59745f489927dbed4e4da1c
4009		Cardiac Imaging	Huang		\N	Alex	\N	\N	\N	2d9066c0ffd94f22b5c2cd236f29ece3
4010		Pacemaker, colour dopplar echo, stress echo, Holter, trans oesophageal echo, tilt table test.	Koshy		\N	George	\N	\N	\N	a8b605642f1848b181ddce0a9c2f8b0c
4011		Electrophysiologist	Kotschet		\N	Emily	\N	\N	\N	3d46cbca51f94ec39ab9594ccda1fdd6
4012		Pacing, device implantation, electrophysiology, angiography	Mau		\N	James	\N	\N	\N	4ee5ef217bda4a1c8773d49bc1d7ae38
4013		Echocardiography.	Mctaggart		\N	Donald	\N	\N	\N	a5c7e662084841e2950d241e88d26bdd
4014		General Cardiology Exclusion: Intervention	Ng		\N	Ai Vee	\N	\N	\N	e86b7d3cc6e54d0798f6452049b6608d
4015		Cardiothoracic Surgeon	O'Keefe		\N	Michael	\N	\N	\N	6fe661f645084277a64873affbe98a48
4016		Echocardiography; Stress Echocardiography, Heart Failure and General Cardiology	Platts		\N	David	\N	\N	\N	7f6aba2ee80341278dc66e8be57fb201
4017		Non invasive cardiology, research, heart failure, atrial fibrillation, ECHO including stress ECHO.	Singh		\N	Bhuwan	\N	\N	\N	3f19f918698e453e84519efc09867a4e
4018		General Cardiology	Voukelatos		\N	John	\N	\N	\N	fb2980bb9bd04b2faa8ba59daeff594c
4019		Interventional Cardiology & Angioplasty	Warren		\N	Roderic	\N	\N	\N	19cb524856774c3f878be639ae2ba2d9
4020		Echocardiography, stress echocardiography and general cardiology.	Wong		\N	James	\N	\N	\N	37f5d4015de04257b87fac36ec815082
4021		Cardiothoracic Surgery CABG, Aortic Valve Replacement and Thoracic Aortic Aneurysm repair, Mitral valve repair/replacement; Minimally invasive (VATS) Lung/Mediastinal surgery; Pacemaker surgery	Bhattarai		\N	Keshav	\N	\N	\N	c898c74c7ead401bbf9320fa70dd36cf
4022		Video assisted thoracic Surgery (Vats). Adult cardiac and congenital surgery, aortic minimally invasive surgery (aneurysms). Thoracic surgery.	Hardikar		\N	Ashutosh	\N	\N	\N	7364901689764cb0855b4eaf4643a54c
4023		Valve surgery, aortic root surgery, aortic surgery, minimal-access cardiac and thoracic surgery	Leong		\N	Jee-Yoong	\N	\N	\N	464888233cda462ba1f465f0831ab8d3
4024		Myeloma, iron overload, lymphoma.	Beamish		\N	Mike	\N	\N	\N	01d0b83d4bf64698bec372c0c18f84e7
4025		Stem cell therapies.	Harrup		\N	Rosemary	\N	\N	\N	bd8e2e59fe124ab7921bbc0291f1ba30
4026		Lymphoma and stem cell transplantation	Johnston		\N	Anna	\N	\N	\N	75cc540de5bb4840b3a311f2d9918b02
4027			Khalafallah		\N	Alhossain	\N	\N	\N	2877c90a04f544e794061063dc74abd9
4028		Haemochromatosis, clotting disorders.	Mohamed		\N	Muhajir	\N	\N	\N	ce8e44cbb0ee4f3aa35a25bd0bfcb680
4029			Murphy		\N	Nicholas	\N	\N	\N	18c0e08378734fe887b5caae08d50818
4030			Prakash		\N	Ajay	\N	\N	\N	5a9de916c6314356aac6c60157802bb6
4031		attends Oatlands Surgery once a month -Malignant Haematology/Myelodysplastic Syndrome	Sadawarte		\N	Sonali	\N	\N	\N	6b4ce2b018d341ee8915d37f847e8165
4032			Vithanarachchi		\N	Usira	\N	\N	\N	ff5f4be564df45a9b286c36581b97746
4033		Allergic rhinitis, asthma, urticaria, IgE food allergy, drug allergy, primary immunodeficiencies.	Bleasel		\N	Karl	\N	\N	\N	a48eeeb066cd4feb8b590915f66117de
4034			Cameron		\N	Paul	\N	\N	\N	64853f22f47d4febaafb563aa60da09b
4035		Anal conditions, colorectal cancer, faecal incontinence, laparoscopic colorectal surgery, inflammatory bowel disease.	Gall		\N	Carey	\N	\N	\N	82281604bdd640d8945008ed8e45fb17
4036		Surgeon - general, colorectal.	Gurusinghe		\N	Nishanthi	\N	\N	\N	8ee69c327719486198c09b74d736d549
4037		Colonoscopy, colorectal and general surgery	Lloyd		\N	David	\N	\N	\N	857fc506ac6d464e92627861ca1751e2
4038		Crohn's disease & ulcerative colitis, colon and rectal cancer, faecal incontinence, rectal prolapse, laproscopic surgery, haemorrhoids and perianal problems	Mignanelli		\N	Emilio	\N	\N	\N	ed613e6e96494b8ea386b442e8db83ff
4039		Endocrine surgery as well as colorectal surgery. EXCLUSIONS: No breast surgery or arterial/venous surgery.	Nguyen		\N	Hung	\N	\N	\N	db06cafabb88498eabc4f0901edcad10
4040		Laprascopic colorectal surgery; colorectal cancer; incontinence; haemorrhoids and perianal problem; Surgeon general - laparoscopic colorectal surgery; general surgery, laproscope surgery, hernia surgery, colonoscopy and gastroscopy	Yellapu		\N	Srini	\N	\N	\N	beee0d9b0eea4660a55619d6278d8cc3
4041			Bleasel		\N	Narelle	\N	\N	\N	f4038cdbb1894f948dd8188ca0f2d187
4042		Melanoma/non-melanoma skin cancer.	Clarke		\N	Philip	\N	\N	\N	ef7ebbf3b27d45a2b81cbcb14317ca73
4043		In Launceston one Saturday every two months.	Jevtic		\N	Andrew	\N	\N	\N	c75858607eea4cbb9fc80445e9a7ae9e
4044		Melanoma, Acne; Vulval Disease	Jopp-Mckay		\N	Andrea	\N	\N	\N	0c6bde84979843b588d054453135a1a6
4045		Skin cancer management, acne, eczema, psoriasis, hairloss and general dermatology.	Ng		\N	Jonathan	\N	\N	\N	30fe22c7c6db4f34864d3231992cd476
4046			Sladden		\N	Mike	\N	\N	\N	b0f4d729ac1c41528485e6f4279e6694
4047			Broadhurst		\N	Stephen	\N	\N	\N	04481c0bf6b0498bb9ae6c551cf67d0f
4048			Mclean		\N	Ken	\N	\N	\N	8f1708416c384149a0201560ed5b9381
4049		Diagnostic and interventional radiologist. Breast imaging.	Meerkotter		\N	Debra	\N	\N	\N	e1ae66bb6a1a4f6e96eadb0605389dbe
4051		Adults Endocrinologist. Thyroid, Pituitary, Diabetes in Pregnancy	Abell		\N	Sally	\N	\N	\N	7b5306d483a844bd94d6ee76092d12d9
4052		Familial endocrine neoplasia, thyroid disease, hypercalcomia.	Burgess		\N	John	\N	\N	\N	53e9f3b183554674a4c9274e0e1c283f
4053			Campbell		\N	Joanne	\N	\N	\N	7e7f6c4bc7b948cc9fc5c4a1b7cf8aaf
4054		Insulin pumps weight loss	Mccallum		\N	Roland	\N	\N	\N	0534c871ac334654a074486b440b503d
4055		General Endocrinology EXCLUSION: Patients under 16	Mccarthy		\N	Shannon	\N	\N	\N	37752c51c05a4c60b9eff10dab9986e4
4056		Diabetes, Womens' Health and Obstetric medicine	Mcdonnell		\N	Kristina	\N	\N	\N	8425663d3d9445648516a08a323b823c
4057			Powell		\N	Sandi	\N	\N	\N	40e34405909c4450b06e9cd122ce4730
4058		Thyroid disease. EXCLUSIONS: No patients under 18.	Stilwell		\N	Georgie	\N	\N	\N	48cb338967834b78ad9e6fa769e3c223
4059			Boardman		\N	Simone	\N	\N	\N	f70b9417df8d44c7b4eba120ea6bb414
4060			Brennan		\N	Warwick	\N	\N	\N	662590afa0604bec8b6e7ef4d009805c
4061		Otology & Head & Neck Surgery	Ghali		\N	Magdi	\N	\N	\N	a0f78ef419c54c8f8dcb5b30bf6ebda8
4062		Cosmetic & functional rhinoplasty.	Irani		\N	Danesh	\N	\N	\N	425d28559d9d4af1ba410b779a3a54d2
4063		Otolaryngologist	Mccormick		\N	Daniel	\N	\N	\N	6919e4054baa4d9cad824ab42b0f12ca
4064			Merry		\N	David	\N	\N	\N	2b89d455422b4af483ce21a24fb5b0c4
4065		Diseases of the ear and balance	Moore		\N	Philip	\N	\N	\N	910f70f7cbcd4b4799e26d96615fbc99
3088			Alexander		\N	Ebony	\N	\N	\N	6dde81abba5a44e8889f84f8d80588f6
4066		Ear, Nose and Throat Surgeon	Naiman		\N	Ana (Nusa)	\N	\N	\N	45745e78d3f74fd093fd9f21fa1ee52c
4067		Colonoscopy, gastroscopy and ERCP.	Chung		\N	Stephen	\N	\N	\N	a70fea23ad8444779e58db0a5d4c5cbc
4068		General gastroenterology, gastroscopy, colonoscopy, capsule endoscopy, general medicine, palliative care.\n \n \n \n Attends Oatlands Surgery once a month.	Mcculloch		\N	Ben	\N	\N	\N	e657ca84ca6e478c8c2c80ee592eedcf
4069		General gastroenterology & hepatology, and gastroscopy, colonoscopy, ERCP.	Middleton		\N	Christopher	\N	\N	\N	3fb87344433e4a82a3669ca5f1c1df14
4070		General gastro including - ERCP, capsule endoscopy, bowel screening direct access, edoscopist, general physician, Crohn's, coeliac, IBD.	Osler		\N	William	\N	\N	\N	0b714e6595e44e4695bb9f412ccd5375
4118		Menopause	Gartlan		\N	David	\N	\N	\N	0e7f7e9c633b4694a2f95b481024844c
4071		Inflammatory bowel disease (IBD), bowel cancer screening, general gastroenterology.	Studd		\N	Corrie	\N	\N	\N	7fe1dff9b38b4d11b029803a12db47a5
4072		Inflammatory bowel diseases, endoscopy. EXCLUSIONS: Paediatric patients.	Wilson		\N	Jarrad	\N	\N	\N	fb0842a3e2ce4a1db30b5d064b40ed75
4073		Hepatology and capsule endoscopy	Wilson		\N	Mark	\N	\N	\N	61b4cbe61df845a5a7437e5fefc8528b
4074		Endoscopy, Barrett√¢‚Ç¨‚Ñ¢s, bowel cancer screening, teaching, research, hepatology, capsule endoscopy, general physician, Crohn's, Coeliac, IBD and ulcerative colitis.	Yee		\N	Kwang	\N	\N	\N	cdb9ca565a464e89b5b82bf55f0797e7
4075		Interventional endoscopy, ERCP, EUS. Bowel cancer screening. Inflammatory bowel disease.	Fanning		\N	Scott	\N	\N	\N	1fa7214abad44089a8f6d8f245aee785
4076		Inflammatory bowel disease; interventional endoscopy/ERCP.	Mitchell		\N	Brent	\N	\N	\N	e095f68eaec24d2a84e13a6394bb9e4a
4077		Paediatric Gastroenterologist - visiting from Melbourne on a monthly basis	Rajanayagam		\N	Jeremy	\N	\N	\N	040c6e89beb6461cbaf30728f929aed2
4078			Veldhuis		\N	Mark	\N	\N	\N	a14d2d114381477686343ff14c8da130
4079		Also hepatology,IBD, luminal gastroenterology, chronic and viral hepatitis, liver transplantation and general gastroenterology	Nwaba		\N	Albert	\N	\N	\N	9a2ea47649bf473ba2f761ad96fce0df
4080			Buist		\N	Michael	\N	\N	\N	17a3b5b73cd2403a8ce9c76b1723e644
4081			Cooke		\N	Duncan	\N	\N	\N	d261e9af70b64c8a97803afa83a83352
4082		Acute Medicine, Peri-operative Medicine, Cardiology EXCLUSION: Unable to offer much for psychiatric or neuropsychiatric cases	Davari		\N	Reza	\N	\N	\N	868a3eceb6834a8192070c1735af0b78
4083		Perioperative Medicine	Fernando		\N	Bomiriyage (Nadeeshani)	\N	\N	\N	b18d09c439504620a877d41c7732c5fd
4084		Stroke, syncope, and peri-operative medicine.	Girao		\N	Gary	\N	\N	\N	05b4aff4835449c5bd5c5f6bd43acb26
4085		general Adult Medicine	Hannan		\N	Terry	\N	\N	\N	3d1763427f6e421c91b71030417236ba
4086			Kohli		\N	Suneet	\N	\N	\N	e14e600a85bf4cd5bdc5fc0ed758b791
4087			Macdonald		\N	Alasdair	\N	\N	\N	b90c1f5fcaeb4281a624a53322478255
4088		Rheumatologist & General Physician for people 16 years and older	May		\N	Lea-Anne	\N	\N	\N	0e9a701cf01a4e5a97c11affa9387bc5
4089		Peri-operative medicine, healthcare for adults with intellectual disabilities, health care for adults with mental illness.	Wallace		\N	Robyn	\N	\N	\N	e94ae10c183a4f2683b8e3c570d2ab2e
4090		Airways disease, particularly COPD, pulmonary physiology.	Wood-Baker		\N	Richard	\N	\N	\N	47086a52b9554305a26e9711544d359e
4091			Yew		\N	Steven	\N	\N	\N	a13ad8b61aeb44d8af8a4014db1df654
4092		Consultant nephrologist & General Physician	Yu		\N	Richard	\N	\N	\N	d514f4ce32ce4a0698d410abcc2ba9b2
4093		Cognitive assessment, behavioural & psychiatric, symptoms of dementia, general assessment for diseases of aging. Outpatient consultations only	Cleary		\N	Alison	\N	\N	\N	d2d9c2d1fe8f468a8f6de5ccc457a1b9
4094		Stroke medicine, Rehabilitation, Dementia.	Dunbabin		\N	David	\N	\N	\N	d272606ffeb84fecae74ed38a0b6505c
4095		Calvary Sessional Rooms (Tuesdays 10am - 2pm): Neurodegenerative disorders - Memory, Parkinson's, Psychogeriatrics, Dementia, Orthogeriatrics, Complex geris, Capacity assessment. Calvary St Vincents Hospital: Rehabilitation Admissions, Orthogeriatrics, Surgical, Dementia, Delirium and Neurodegenerative disorders - Memory, Parkinson's, Psychogeriatrics and Complex Geriatrics	Kalpurath		\N	Krishna	\N	\N	\N	1e1e4e5324bf4fa0af0731f3a0cb0fc3
4096			Razay		\N	George	\N	\N	\N	2a9918dc85c14939a081aa394d259c97
4097		Dementia, brain behaviours, mild cognitive impairment, driving with dementia, parkinsons disease, depression	Regal		\N	Paul	\N	\N	\N	fd06a3765ec547e79758d4c4ef2e3f3b
4098		Gynaecological Cancer, Advanced Laparascopic & Abdominal Surgery, Women at risk of hereditary cancer. Advanced Colposcopy & Dysplasia treatment	Bunting		\N	Michael	\N	\N	\N	ee5752789e86492b9c433525715302b0
4099			Anderson		\N	Tara	\N	\N	\N	d69ce2f9786a44b1b73cd4fd9ae82a1c
4100		Clinical microbiologist, infectious diseases physician.	Mcgregor		\N	Alistair	\N	\N	\N	7ba5833c165a4036bbf5496c7477bf30
4101		HIV and General ID	Ratcliff		\N	Alison	\N	\N	\N	1b92dd3df9674f58b72cb4907f227956
4102		Headache, neurophysiology, botox	Aldous		\N	Lucie	\N	\N	\N	0f0a294e702b48ff97f77790097e093a
4103		Epilepsy, numbness and weakness, headaches, multiple sclerosis, Parkinson's disease, strokes, cervical dystonia. EXCLUSIONS: Dementia	Castley		\N	Helen	\N	\N	\N	1986cb3e3077449abce4579a386bc742
4104		Visiting neurologist from Melbourne. NCS/EMG, movement disorders, botox, general neurology.	Evans		\N	Andrew	\N	\N	\N	8e022728dde54f8982081443e3379253
4105		Electromyograph (EMG) and nerve conduction studies only and Botulinium Toxin Injections. EXCLUSIONS: Epilepsy / Seizures	Gorai		\N	Debo	\N	\N	\N	0176656f0ae0425787a717ca883a4813
4106		Parkinsons; Movement Disorders, Dystonia	Hewer		\N	Sarah	\N	\N	\N	2ce8cb01d5a44a058989e51cab1bb519
4107		Neuromuscular disorders, movement disorders, nerve conduction studies and electromyography. Visits for appointments from Melbourne	Koshy		\N	Kurien	\N	\N	\N	c23886b617d54007b9fc126bc414a1fc
4108			Macintyre		\N	Jennifer	\N	\N	\N	45af25b29198491bb04fda2689a7bd48
4109		Neurovascular conditions, spine surgery, minimally invasive spine surgery.	Dubey		\N	Arvind	\N	\N	\N	3759e83e167941199acd163ddff10ddd
4110		Neurosurgery Tasmania: Vascular neurosurgery, skull base surgery and endoscopic neurosurgery. Tasmanian Spine Service: Spinal surgery (complex reconstruction and motion preservation).	Hunn		\N	Andrew	\N	\N	\N	f0f460d78ee7417bbd04ed1d087aea34
4111			Peters-Willke		\N	Jens	\N	\N	\N	95889e8019864127b0100e55fcddf482
5017		EXCLUSIONS: Does not see children under 15 years.	Martin		\N	Sabrina	For low income earners only			28cd66ae43974644a98a6c70343d691c
4112		Neurosurgery Tasmania: Skull base surgery, cerebrovascular surgery, adult and paediatric neurosurgery. Tasmanian Spine Service: Spine surgery (complex and minimally invasive).	Thani		\N	Nova	\N	\N	\N	6688dde02ed14a5d929715300835fa8d
4113		Ultrasound, high risk obstetrics. EXCLUSIONS: Operative Gynaecology	Barnden		\N	Kristine	\N	\N	\N	e931a501f9c04bcaa67d42dd96a2d3f9
4114		Fertility, laparoscopic hysterectomy, high risk obstetrics, advanced laparoscopy and menopause.	Bradford		\N	Stephen	\N	\N	\N	a5a3d209c0864f4b9a27807931151482
4115		Laproscopic Procedures, Colposcopy, Obstetrics.	Chinnock		\N	Marian	\N	\N	\N	548b603f408841d9a0b0a98b19848515
4116		Normal and high risk obstetrics, advanced laparoscopic surgery, laparoscopic ultrasound and hysterectomy. Management of abnormal uterine bleeding.	Connan		\N	Kirsten	\N	\N	\N	13ff8509859c4115898d8624d3b84691
4117		Pregnancy care, gynaecological surgery\n \n \n \n Provides clinic at Oatlands Surgery 1 day per month.	Daniels		\N	Brett	\N	\N	\N	729e1762dc47436e8566ad2da5cb6637
4119		Normal and high risk obstetrics, vaginal surgery and ultrasound	Hingston		\N	Tania	\N	\N	\N	ee55d00a97394e8e8ae698590d04c488
4120		No Obstetrics:	Hyland		\N	Paul	\N	\N	\N	b57db8623d544cdf8ee8fd463f5d4323
4121		No Obstetrics:	Ives		\N	John	\N	\N	\N	2f2ae499530c4650952fce7c52b49786
4122		Prolapse and incontinence management, vulva pain and vulvar conditions. Low and high risk pregnancy. Chronic pelvic pain	Kennedy		\N	Warren	\N	\N	\N	cdc629028ee747f0885969de6b9efe45
4123		Obstetrics, General Gynaecology, Colposcopy, Laparoscopy	Mitchell		\N	Kate	\N	\N	\N	b7ba553f6bfc4f0aaf4f70f9a9455de8
4124			Nardi		\N	Melina	\N	\N	\N	88b728956d4c4112b87ffc729ff7a999
4125		Fertility and IVF Specialist	Nikakis		\N	Irena	\N	\N	\N	a7c27c57b26d4de69bc775f12c848603
4126		Normal and high risk obstetrics. Abnormal bleeding, Endometriosis, Pelvic Pain and Fertility	Price		\N	Emily	\N	\N	\N	291b48770b554d6bbf30ffda0e25bd3c
4127		High risk obstetrics and advanced laparoscopy. CVS and amniocentesis	Reynolds		\N	Peter	\N	\N	\N	fbe90f2573184d698644b48801f1d1e0
4128		Pelvic Pain and Pelvic Floor Dysfunction	Saunder		\N	Naomi	\N	\N	\N	bb8200dec93940c58a9559c92c8673c5
4129		Infertility, antenatal CVS.	Sonneveld		\N	Steve	\N	\N	\N	e202464784b64692bdeb30116f029fbd
4130		Obstetrics & Gynaecology	Spaulding		\N	Portia	\N	\N	\N	1b1c87f587fb485397b2b957c3d38a3e
4131			Toledo		\N	Manuela	\N	\N	\N	5bce34b0e79a490ea4133970a7ad8367
4132		Private Obgyn, high-risk obstetrics.	Dennis		\N	Amanda	\N	\N	\N	25d42b610349472a9839e394392df3a8
4133		Private obstetric care and gynaecology, laparoscopic surgery, IVF, colposcopy & incontinence Exclusions: Vulval disorders	Dhanaraj		\N	Ben	\N	\N	\N	be4dbf45a3964fb8bd46e9ea06d8d2fc
4134		General Gynaecology, Urogynaecology, Colposcopy, High Risk Obstetrics, Minimally invasive Surgery	Dukes		\N	Felicity	\N	\N	\N	236a01cae5a04f56946ddc51b961ac1b
4135		Advanced Laparoscopic surgery including Hysterectomy; Family planning and contraception; Colposcopy	Esdale		\N	Helen	\N	\N	\N	f04877af6d2946fe9289780df4466b7f
4136		Colposcopy and management of cervical pathology, vulval dermatology, high risk obstetrics.	Hooper		\N	Emily	\N	\N	\N	85f509777d114f21b738b8a4c13471ac
4137		Private obs and gynae surgery only, including laparoscopy.	Manley		\N	Christine	\N	\N	\N	3615fe4f3bac4aacb34c4c0890d10766
4138		Special interest in gynaecological prolapse, urinary incontinence, general gynaecology and menopause.	Pavlov		\N	Toly	\N	\N	\N	7cfa981a6e864673b6ddcc2ea92d1b51
4139			Choudhuri		\N	Sarmistha	\N	\N	\N	dc0b440d690841efacb662a6b4332faa
4140		Endometriosis	Dobromilsky		\N	Kim	\N	\N	\N	d6144e2b07884b3fb935241a14b2043b
4141		Musculoskeletal specialist, advice on rehabilitation and complete management of workers compensation cases including certification and treatment of chronic soft tissue pain.	Ernst		\N	Andreas	\N	\N	\N	c62b9d61531941debc2764f4171a833d
4142		Dermatitis, Doctors Health	Mcardle		\N	Helen	\N	\N	\N	19e031ad6c164adaaae5ea0007c2d191
4143		Occupational diseases, including upper limb overuse and respiratory disorders; complex workplace rehabilitation	Sharman		\N	Peter	\N	\N	\N	69c744e2cd82448ba45a85eae23b2f95
4144		Psychosocial issues in respect to work.	Stewart		\N	Tim	\N	\N	\N	f25b31cc1ef24c5d919dc03c04f1af35
4145		Medical Oncology, malignant haematology and Palliative Care	Byard		\N	Ian	\N	\N	\N	b179afbf54be49febb91b1a448e9a981
4146		Solid tumour malignancies, incl melanoma, gynae, brain, lung, breast, colorectal cancers	Moldovan		\N	Cristina	\N	\N	\N	bd32f78019e849778881ad4afcc89b26
4147		Breast, gastrointestinal, lung,prostate cancers and melanoma.	Nott		\N	Louise	\N	\N	\N	c43284cff4da4ad9a7a79a253c08f1a1
4148		All solid tumours. (Lung, upper and lower GI cancers, GU cancers, Melanoma, Breast)	Padinharakam		\N	Shams	\N	\N	\N	bf0d4677a6664743895ad4565b6c90ac
4149		Ophthalmic Assistant and Surgeon	Bonnelame		\N	Thomas	\N	\N	\N	c8d732a592344a9cb9abf91fd281dab6
4150		Cataract and macular degeneration	Bylsma		\N	Guy	\N	\N	\N	0438118036c04969b85f565aae76aa65
4151		Oculoplastics, strabismus, cataract surgery	Gao		\N	Zoe	\N	\N	\N	9a29c1078f204c9c8ce67bcbe3343e7b
4152		Glaucoma management, diabetic eye disease and general ophthalmology	Hewitt		\N	Alex	\N	\N	\N	e3a02bf4d0524652b4c28a528fa63c20
4153		Cataract surgery, vitreoretinal disease (medical and surgical), macular degeneration; diabetic eye disease	Jones		\N	Andrew	\N	\N	\N	837bfccf5ee340929c4be788b48725ec
4154		Cataract surgery, oculoplastic surgery, lacrimal surgery, intravitreal therapy for retinal conditions, general ophthalmology.	Mangat		\N	Simran	\N	\N	\N	06c3822b15d14ae9bcb1d107ff6373e6
4155		Cataract surgery, glaucoma, refractive surgery & LASIK laser vision correction	Mccartney		\N	Paul	\N	\N	\N	54b6c4bf71d84a2398f8c9d8f36f7565
4156			Nielsen		\N	Nathan	\N	\N	\N	5ca9735aa4e54e4e832194cb7ef8fc9b
4157		LASIK/PRK vision correction & General Ophthalmology	Rattray		\N	Kate	\N	\N	\N	2fda9b5e3be24046a0cbd696c7968226
4158		Retinal specialist (medical and surgical), cataract surgery, macular degeneration, diabetic eye disease, general ophthalmology	Sheard		\N	Richard	\N	\N	\N	78d4e8be41eb467f95391bd5b1366639
4159		Cataract surgery, anterior segment, cornea, glaucoma, general ophthalmology.	Smith		\N	George	\N	\N	\N	ea56c8ee53f94b669a4c8206e991fd34
4160		Vitreoretinal Ophthalmologist & Surgeon	Traill		\N	Andrew	\N	\N	\N	98c1349c37534f218f53aecc41d4ca37
4161		Cataract, macular degeneration, oculoplastics	Verma		\N	Nitin	\N	\N	\N	767436bcab7b4c21989cd535c0025a99
5018		ACT, OCD. EXCLUSIONS: Children under 15	Saner		\N	Frances	By arrangement only			1d1c356187174692b1c080a00cf38933
4162		Diabetic eye disease, glaucoma management, corneal disease and general ophthalmology.	Wise		\N	Gordon	\N	\N	\N	f9bd1aefb7e34fe19ea80f3d285a636b
4163		Corneal, cataract refractive surgery and keratoconus.	Downie		\N	Nick	\N	\N	\N	d87d2fef338846fdab63a6d086b5d5b0
4164		Cataract, Oculoplastics, Orbit, Lacrimal Surgery	Goold		\N	Lucy	\N	\N	\N	c53246de7800462692adc0eaa642a447
4165		Diabetic Eye Disease; Macular Degeneration	Mckay		\N	David	\N	\N	\N	dce962651f224cf6a7355d0f6de59b13
4166		Cataract and general ophthalmology.	Murrell		\N	Ian	\N	\N	\N	b7c2c9cc00ba441a87e8117076d412a3
4167		Cataract, Medical retina, Oculoplastics and Paediatrics	Patrick		\N	Andrew	\N	\N	\N	704f32fc294f4038a2728f1d57b22d7a
4168		Specialising in Paediatrics	Ruddle		\N	Jonathan	\N	\N	\N	05f2351caacb4213b860051f7ab4e82d
4169		Glaucoma and cataract specialist.	Toh		\N	Tze'Yo	\N	\N	\N	4e26d70a92b14ce9ba2a2d7fab449ee2
4170		Vitreoretinal and cataract specialist.	Vote		\N	Brendan	\N	\N	\N	d7cae771a5a449fba2893cf5a6ad20d6
4171			Haybittel		\N	Michael	\N	\N	\N	a4996acdc9c24d658c7a3e6d9db9de39
4172		Retinal Medicine	Mckay		\N	Robert	\N	\N	\N	62151cbcc38e4f8aad7dabf7ce299288
4173		Foot ankle surgery, Joint replacement, Knee and Hip Surgery EXCLUSIONS: Spinal & elective upper limb surgery.	Callahan		\N	Miles	\N	\N	\N	38df0d4329774218927f235cbb094508
4174		Shoulder, Hip & Knee surgery	Einoder		\N	Paul	\N	\N	\N	813814df6dd54c47a19d4dde3beb7b63
4175		Knee surgery - arthritis. Mako total knee. Cooled Radio frequency ablation therapy. Member of Hobart orthopaedic group.	Harvey		\N	Greg	\N	\N	\N	1bc2dc390329447c855815e56fa186c7
4176		Shoulders, knees, hip replacement	Hutchinson		\N	Stephen	\N	\N	\N	53617b55ab1244e5801352490aa9e929
4177		Hand, Wrist, Elbow and Shoulder Surgery EXCLUSION: Foot/Ankle, Hip, Knee and Lower Limb	Jamieson		\N	Richard	\N	\N	\N	72a6746120a4428dabf2268bef89ae12
4324			Parsons		\N	Ian	\N	\N	\N	36a677baab5248658871c891048e6434
4178		Joint replacement, Trauma, Limb reconstruction, Foot & Ankle, General Orthopaedics, Paediatrics	Mackie		\N	Scott	\N	\N	\N	6a86809da25b4c95ab8d0045d6faf4d6
4179		Sport injuries, shoulder and knee surgery, hip and knee arthroplasty.	Marquis		\N	Guy	\N	\N	\N	8242fd089d564144a752f447b759e84d
4180		specialises in Anterior hip replacements and knee replacements	Mills		\N	John	\N	\N	\N	744f896ff813446ca5f9a3d88eaa5f4a
4181		Robotic - assisted knee replacement, anterior approach hip replacement, sports injuries and knee and shoulder arthroscopy	Petterwood		\N	Josh	\N	\N	\N	5fbfb569487c498c83ad96ddbb20f372
4182		Sports injuries, hip, knee, shoulder arthroscopy, joint replacement. Anterior approach to hip.	Pritchard		\N	Michael	\N	\N	\N	1daf685130a844858f2c47cee3e0825a
4183			Sadiq		\N	Shalinder	\N	\N	\N	cdc3fb872c264cc5856d09a244f5aaf2
4184		Arthroscopic Shoulder and Knee reconstruction, Open Shoulder and Knee Reconstruction. Major Joint Replacement, including revision of the knee, hip and shoulder. EXCLUSIONS: Elective Foot and Ankle\n \n \n \n Provides clinic at Oatlands Surgery 1 day every 6 weeks	Watson		\N	Adam	\N	\N	\N	2e93ddef5a444a7680b9098bac52d1c5
4185		Sports injuries - shoulder, hip and knee. Arthroplasty shoulder, hip and knee. Hand surgery and general trauma	Wilkinson		\N	Matthew	\N	\N	\N	663f6e2947af487299140dac97007f7f
4186			Butorac		\N	Roger	\N	\N	\N	43b8b21a6a45447ea0917a6ec0fa863f
4187		Management of Musculoskeletal pain EXCLUSION: Surgery	Einoder		\N	Berni	\N	\N	\N	cedba7df0a1b4a948e0e6df30c189133
4188		Joint replacement - hip, knee,foot & ankle.	Fettke		\N	Gary	\N	\N	\N	1fc134d8bcec4cc18152a12b850bb443
4189			Marshall		\N	Timothy (Tim)	\N	\N	\N	d5bf99580e5f4bafac5041cdc8779b5d
4190			Moore		\N	Peter	\N	\N	\N	e98ce3b3e8024ea4a93149d2501aec2f
4191			Mulford		\N	Jonathan	\N	\N	\N	0f259709e66b4f70a5ea289735e29782
4192		Shoulder/hip/knee arthroscopy/arthroplasty. Sports surgery, shoulder/knee reconstruction surgery. EXCLUSIONS: Spine surgery.	Penn		\N	David	\N	\N	\N	5447a56888174d2b9c82258c0d5ca22b
4193		Upper limb, sports, joint replacement, hip arthroscopy.	Van Winden		\N	Peter	\N	\N	\N	79945b39228446bba8e5dbc11251d56a
4194		Hip and Knee replacement	Fletcher		\N	Scott	\N	\N	\N	0293b79e812b487bbb838c982270b400
4195		Exclusions: No spinal Special interests: Shoulder/hip/knee	Furzer		\N	Russell	\N	\N	\N	e380247250064e45b698be6dffc3b7d3
4196			Chambers		\N	Ian	\N	\N	\N	74141b5056684a69bcf17b9d915ca8dd
4197		Oral Surgery, Maxillofacial Surgery, Corrective Jaw Surgery, Dental Implants, Dentoalveolar Surgery including wisdom teeth.	Garg		\N	Ankit	\N	\N	\N	76e065786a8b4c7e8731d78a19652618
4198		Maxillofacial trauma, corrective jaw surgery, dental implants, dentoalveolar surgery including wisdom teeth. Oral and maxillofacial pathology. Appointments All appointments are to be made through Private Practice - Launceston 03 6331 3733	Player		\N	Daniel	\N	\N	\N	e595cc44d6604b0b9a123197cb123820
4199		Oral pathology, TMJ disorders, sleep apnoea surgery, facial trauma, disturbance of facial growth.	Sillifant		\N	Paul	\N	\N	\N	f2c3186ac5eb46d19dc3bd898df963a9
4200			Atherton		\N	Neil	\N	\N	\N	760045ca52a94682ad8a9d5785323df0
4201		Paediatrician/Neonatologist \n \n General Paediatrics and Neonatology	Atwell		\N	Kerryn	\N	\N	\N	c232b6f6414640279376618921c7319b
4202			Bailey		\N	Christopher	\N	\N	\N	1e226896ca82437192c0322d15aa8143
4203			Carter		\N	Victoria	\N	\N	\N	27d8ce99e9934e339e8eb896a876343e
4204		Children's continence development and behaviour	Clemens		\N	Tom	\N	\N	\N	9048566be5254d06a9214738c9200c5e
4205			Corp		\N	Megan	\N	\N	\N	f4d706f52e8b41bd861de2058b4ab505
4206			Donegan		\N	Geoff	\N	\N	\N	6a4b998ef4194e00895935b7c0c1c46e
4207			Fitzgerald		\N	Bronwyn	\N	\N	\N	ff842514ca4f47cd8c23260c9ceddef7
4208		General Paediatrics - paediatric respiratory problems, continence issues.	Mushtaq		\N	Mudasir	\N	\N	\N	0d54b1ea569e4b61a278af9e918594f5
4209			Nind		\N	Ben	\N	\N	\N	def498fd9b354be8afd7f1db9f9bb82e
4210			Pascoe		\N	Mark	\N	\N	\N	87104150f0664f209b01f493ef96ca3b
4211			Phillips		\N	Lara	\N	\N	\N	c0bc7b697e6242b288ad9610f48e475e
4212			Smith		\N	Sanda	\N	\N	\N	d432f3cc60114699bdfd5b52e325debb
4213			Tomlinson		\N	Naomi	\N	\N	\N	eeedff9def254c70952f562f9b28fc8e
4214		General Paediatrics - Development, autism and continence.	Whitelaw		\N	Charlotte	\N	\N	\N	295d605ad19046bb99406d23143ed92c
4215		Eating disorders in children and adolescents, general paediatrics and child protection.	Williams		\N	Michelle	\N	\N	\N	bda0fc3b12894ee2af21f53603c5e9d7
4216		Pain management.	Jackson		\N	Michael	\N	\N	\N	abad906e7f994808aa525e0b76f84dee
4217		Interstate Specialist currently visiting once a month.	Muir		\N	Andrew	\N	\N	\N	e748605c51124212bf95a2c7ddf402f5
4218			Oberoi		\N	Gajinder	\N	\N	\N	f3869e53ab3342ddb1a81eb11e4c4114
4219		Pain Management	Orlikowski		\N	Chris	\N	\N	\N	206b4ca60d3444e2ad521e9eab09f0c2
4220		Hand surgery, skin cancer, breast surgery (reconstruction and cosmetic) and body contouring	Castley		\N	Andrew	\N	\N	\N	7eb54888f6ac4c55ae5822a8151d76be
4221		Hand and wrist surgery, reconstructive surgery	Karanth		\N	Sid	\N	\N	\N	5ccb1a141b7c416dacb03e0a8b32687e
4222		Cosmetic facial and breast surgery, hand and wrist surgery, reconstructive plastic surgery, body contouring, skin cancers.\n \n EXCLUSIONS: Gender reassignment surgery, labiaplasty	Keating		\N	Cameron	\N	\N	\N	c477ec96ab2848ef81fa92739ab3bbf1
4223		Hand, breast surgery, body contour surgery, cosmetic surgery, skincare - surgical/non-surgical, injectables.	Kode		\N	Gary	\N	\N	\N	4b6102b1a39a4842a1fc0f9d784181a3
4224			Popa		\N	Maria	\N	\N	\N	27b6ca962bf6497491b04fbb7d53ae41
4225		Skin cancer, hand surgery and scar revision	Quarmby		\N	Craig	\N	\N	\N	69aed76e397f4c6fb229f9c5bc04017b
4226		Hand and wrist surgery, reconstructive surgery, aesthetic facial and breast surgery, body contouring surgery.	Sharma		\N	Nitin	\N	\N	\N	196bb045c81b45ceb281b4343b372d77
4227			Thomson		\N	Michael	\N	\N	\N	f2ba04bc8bab44a99ecc24bb3c92fedb
4228		Hand surgery, breast surgery including reconstruction and reduction, skin cancer, reconstructive surgery.	Thomson		\N	Simon	\N	\N	\N	b30b9a3b022a4531ae573aaf78a8d2ca
4229		Medical psychiatry, bipolar disease, women's, PTSD, depression.	Auchincloss		\N	Stephane	\N	\N	\N	57265e26435d4d4688fd39ab632fae9b
4230		General Adult Psychiatry; Old Age Psychiatry	Bakas		\N	Joanna	\N	\N	\N	34125c50d22f4ddebaac16160196a95d
4231		Dover Medical Centre- Outreach Service only covering Huon Region, 1 day per month. \n \n Aboriginal Health Centre - Outreach Service only for Aboriginal Health Centre Clients, 1 day per month. \n \n All referrals are to organised through the above Centres.	Beamish		\N	Nicky	\N	\N	\N	a8c5b3f1afb74e9e90950abad43fb5d8
4232		Depression, Anxiety, Bipolar disorder, Psychotherapy.	Davie		\N	Michael	\N	\N	\N	2161bb537c3c4d7ca1e2ad9e28727dda
4233		Psychotherapy long term.	Glinka		\N	Natalie	\N	\N	\N	3475d308bf86437194d0c970f1524620
4234		Older Adults, Dementia EXCLUSIONS: Intravenous Drub Use, ADHD	Graham		\N	Rebecca	\N	\N	\N	6085bb1480cf4a32a0aa4f9c175d4d86
4235		Adult and Aged Psychiatry EXCLUSION: Children	Harvey		\N	Richard	\N	\N	\N	cb4db6d9a7ab42a3848f09c4e5c60a28
4236		Anxiety, alcohol dependence, alcohol detoxification, PTSD & depression.	Hooper		\N	Stuart	\N	\N	\N	db31c57ce6174b1196ade2693da7456c
4237		Sensorimotor psychotherapy, complex PTSD and mindfulness. \n \n Neurofeedback, EMDR	Jensen		\N	Elaine	\N	\N	\N	430a9ecf4b0641119f03bab9084a84f8
4238		General adult psychiatry.	Kenyon		\N	William	\N	\N	\N	47166f17f8cd4aa8ac86a917336e878c
4239		Telehealth appointments only.	Kirkman		\N	Ross	\N	\N	\N	afe0af8ce2564232b77e328ee40c9d73
4240		PTSD & Veteran Specialist	Lane		\N	Jon	\N	\N	\N	26d609c12b2a435a817a4ae6f34b135a
4241		Psychiatrist(Adult)	Reid		\N	Phillip	\N	\N	\N	0a5649efc6f645558884b5ed097d892d
4242		Child & Adolescent	Roy		\N	Konya	\N	\N	\N	d0799c5135b549be81eb6ccc4f47dad7
4243			Rybak		\N	Marzena	\N	\N	\N	fdcef067eb6b461cb899fb3b85addc62
4244			Turnier-Shea		\N	Yvonne	\N	\N	\N	d0bde01b04d54088a51f4019192e5cbf
4245		Consultant Psychiatrist - Psychosis; Bipolar Disorder; Depression; Anxiety; Borderline Personality	Venkataramana Reddy		\N	Anil	\N	\N	\N	3466813b984f4052840f4bf7874c9f90
4246			Weidmann		\N	David	\N	\N	\N	3a7a667d228c42dabe35295d48d4ed8f
4247			Westwater		\N	Jason	\N	\N	\N	f198592ebd5746849cddd375199b12e7
4248		Perinatal disorders, eating disorders.	Woo		\N	Lennie	\N	\N	\N	3109dd0219a140828faa3780ee25870c
4325		Hearing rehabilitation, Tinnitus	Ponnusamy		\N	Prabhu	\N	\N	\N	13692701f0fc4f39b22963e9b761f571
4326			Failla		\N	Adrian	\N	\N	\N	ddbb9f717c324154b2f0fe633649dd91
4249		Full spectrum of services including adults, children and adolescents. Particular interests in Bipolar affective disorder; Unipolar depression; Anxiety disorders including OCD, PTSD and GAD; Maternal/Perinatal mental health and Children / adults with ADD / ADHD.	Fridgant		\N	Lev	\N	\N	\N	6403dd92d7994e28aeb47cdc8e23ca5f
4250			Giarraputo		\N	Franco	\N	\N	\N	bcc6eeb43a5a4db996156486765e1e2e
4251		Consultant Psychiatrist - DVP EXCLUSION: does not prescribe stimulants	Hyde		\N	George (Robert)	\N	\N	\N	dd832aa6610a4b1d95d53137179c24d8
4252		working Thursdays Only	Hyde		\N	Stephen	\N	\N	\N	17e650d26a6c408296566a70e7d3721d
4253			Latham		\N	Deborah	\N	\N	\N	252acd21ce13438e9094f0ebf8351dc3
4254		General adult psychiatry and forensic psychiatry.	Ratcliff		\N	Eric	\N	\N	\N	fcfea1adf23648e0a64816e5ab2310d0
4256		Adults only 18+ EXCLUSIONS: Children and Adolescents.\n \n \n \n All referrals to PO Box 837, Ulverstone 7315, Phone 0417 600 291	Schneider		\N	Rosemary	\N	\N	\N	efe21245cc0443b89e156943cd248015
4257			Awad		\N	Raef	\N	\N	\N	c37c270503ff479196c046e8eea018d6
4258			Bell		\N	Mark	\N	\N	\N	84c95686e31d440c971af0826ab3921d
4259			Dally		\N	Michael	\N	\N	\N	bd3f5a32e1c441d1a5e9eaa181c442d3
4260		Radiation oncologist - cancer skin, breast, prostate, bowel, lung and metastatic disease	Foster		\N	Richard	\N	\N	\N	b7acd1e218eb430788a5d9d00a77d8cd
4261		Lung, breast, genitourinary, gastrointestinal, skin, head and neck	Gauden		\N	Stan	\N	\N	\N	939bfc88838c4112a74e008f5caf97a4
4262		GU, Breast and GI Malignancy.	Skala		\N	Marketa	\N	\N	\N	628f6995224149cc91635b35afbbcc6e
4263			Madebwe		\N	Lucy	\N	\N	\N	9ad84130bcf34a11873605226ea4503b
4264			Mehr		\N	Ali Kian	\N	\N	\N	e109e1880b26475e8fa6a6c335adbdb6
4265			Nathan		\N	Nelson	\N	\N	\N	bff8c36fabe84adfa8c88011344acac1
4266		Head injury, spinal cord nnjury and multi-trauma. EXCLUSIONS: No workers compensation cases.	Slatyer		\N	Mark	\N	\N	\N	010f38af776a44be874f8f87d1ef3f90
4267		Young Adult Care / Renal Genetics	Jose		\N	Matthew	\N	\N	\N	c8b36ab7829c48f4888f0826fd30ac26
4268			Kirkland		\N	Geoff	\N	\N	\N	c47c49697bed4f8f839f4dccefb3d637
4269			Mathew		\N	Mathew	\N	\N	\N	513b5d5b94d24bcc821f314084fa143f
4270		Chronic kidney disease; diabetic & hypertensive kidney disease; transplant; renal palliative care; elderly with kidney disease. Video consultation available.	Raj		\N	Rajesh	\N	\N	\N	40f6c8c907f9456c83cd35cbd45bb034
4271		Sleep and respiratory physician.	Chia		\N	Collin	\N	\N	\N	5e3f6b9cb53c47a298c0386748a7111d
4272			Keir		\N	Gregory	\N	\N	\N	d57413bc22224ab58d7fb2248a590748
3089			Alexander		\N	Graeme	\N	\N	\N	61e99c2ce7294d33a9eb0368349a68a2
4273		Sleep and Asthma EXCLUSION: No Pulmonary Hypertension	Larby		\N	Josie	\N	\N	\N	82ffbbcd0ec9438eb2010487e98ebd21
4274			Markos		\N	James	\N	\N	\N	5a32b1055b884393ac3879db8282af29
4275		CREI Qualification - Fertility Specialist, Certificate in Reproductive Endocrinology and Infertility Specialist	Watkins		\N	Bill	\N	\N	\N	c540668f5b7a4e55bb38e84dcdef94bf
4276		Inflam Arthritis; Axial and Peripheral Spondyloarthtitis; Connective Tissue Dis; Gout; OA	Al-Majmuei		\N	Mahmood	\N	\N	\N	090c1904246a4d308fc45074acf1fcaf
4277		Inflammatory arthritis, paediatric rheumatology	Cooley		\N	Helen	\N	\N	\N	cca2de30dab641c88e9d833ad016b90b
4278		Interest in Paediatric rheumatology, adult musculoskeletal medicine. Clinics in Wynyard, King Island and Queenstown.	Graham		\N	Stewart	\N	\N	\N	8fd2712c365745fa8ae50f9fc8e72de2
4279		Osteoporosis, osteoarthritis, inflammatory arthritis, autoimmune disorders.	Jones		\N	Graeme	\N	\N	\N	b79d3bd72a1949679439c736ff0ccab5
4280		Inflammatory Arthritis; Connective Tissue Disease; Gout	Maundrell		\N	Adam	\N	\N	\N	33d06419727d42538f68ef1c954784db
4281		EXCLUSION: Workers Compensation and Insurance Reviews including MAIB	Parker		\N	Serena	\N	\N	\N	20791acb7cfe4453827109d1f861066c
4282			Speden		\N	Deborah	\N	\N	\N	5237a222647f48aa9bd28bf05153610c
4283			Turner		\N	Malcolm	\N	\N	\N	9d29670ec24f4036baa3bc8344ff4e10
4284		Ankylosing spondylitis, scleroderma.	Zochling		\N	Jane	\N	\N	\N	be30b5af95e94f7c9e8ad78963c71477
4285		Registrar Sport and Exercise Medicine Physician	Geraghty		\N	Liam	\N	\N	\N	ae7816b72dee4fb3b824c8cc954589b2
4286		Sport and Exercise Medicine Physician	Humphries		\N	David	\N	\N	\N	12e78ab8216544248fd8d47655d41299
4287		Sport and Exercise Medicine Physician	Reid		\N	Steve	\N	\N	\N	5dc8c873aae441c5b3267ecd9552016d
4288		Lap Band Adjustments	Djeric		\N	Milan	\N	\N	\N	94957959c00f49de9a60833328f0dcc3
4289		Breast, Surgical oncology, Thyroid and Parathyroid surgery, Melanoma	Finkelde		\N	David	\N	\N	\N	d75884b5f26b4c358f88c05ee3b8e6eb
4290		General Surgeon and Specialist in breast, melanoma and endocrine surgery	Mills		\N	Jane	\N	\N	\N	d5893f430911481b93693bf7ab083cda
4291		Endoscopy, Laproscopic Surgery, Bariatrics and General Surgery\n \n EXCLUSIONS: No Breast Surgery	Patiniotis		\N	Tony	\N	\N	\N	fd15d9de7e3b43b8920897ec3412f872
4292		Endocrine, breast and general surgery.\n \n \n \n EXCLUSIONS: Endoscopy	Rayner		\N	Luke	\N	\N	\N	c3b06e4a3a284a0da82d9ce471e80f71
4293		Specialties : upper gastrointestinal surgery, general surgery, laparoscopic surgery, hernias, bariatric surgery and upper GI endoscopy	Slater		\N	Jacqui	\N	\N	\N	60ecf0b2c3ba4ba8a3821c0d113fbde7
4294		Breast and Endocrine Surgery.	Stanton		\N	Peter	\N	\N	\N	d654ced536dd4500a5e051463b3ed53c
4295		Endovascular Surgery, Varicose Vein Surgery, Hernia and laproscopic Surgery, Minor Plastic Surgery	Stary		\N	David	\N	\N	\N	5ac060c2a7f040f7b479e9e232c7b3c1
4296		Bariatric, breast, endocrine and general surgery, and trauma.	Wilkinson		\N	Stephen	\N	\N	\N	707b26643f4d4da4a32150488d42f492
4297		General & breast surgery/thyroid/parathyroid.	Lee		\N	Fiona	\N	\N	\N	369649f6cfa9494190538e65606d90c2
4298		Upper GI, hepato/pancreato/biliary and obesity surgery.	Pande		\N	Girish	\N	\N	\N	39eae7b5355f42f48f9b5ccc265f3445
4299		Breast, parotid surgery, thyroid surgery.	Young		\N	Amanda	\N	\N	\N	8538ff3a821b4341a7f976b3912101fa
4300			Anders		\N	Sven	\N	\N	\N	e3f22a91b79c4564a1d9957fb4d5302b
4301			Lamont		\N	Philip	\N	\N	\N	410d34aa01e34b05aa63716fba2323b0
4302			Roberts-Thomson		\N	James	\N	\N	\N	5dffb2f290af45628cf7847f63d3b554
4303		Male and female incontinence, laser prostatectomy, prostate brachytherapy, sacral neuromodulation	Eaton		\N	Anthony	\N	\N	\N	4c3faca79a8444879bfa62956da0979d
4304		Prostate cancer, Brachytherapy, BPH, Laser surgery, Erectile dysfunction, Urinary incontinence. No Gap surgery provider.	Gogia		\N	Raj	\N	\N	\N	5d6ed63d752b48a3a51a55e0edf3c012
4305		General Urology, Prostate Cancer, Bachytherapy, Erectile Dysfunction, Urodynamics, Spinal Nerve Stimulation.	Middleton		\N	Ian	\N	\N	\N	6be12ced9d154e4490e445588bf973a4
4306		Prostate cancer, laproscopic kidney surgery, Greenlight Laser - TURP, stone disease, lower urinary tract disorders.	Nuwayhid		\N	Fadi	\N	\N	\N	eea2ceec238d4e6d9687f77d6da71617
4307		Prostate cancer, laproscopic kidney surgery, greenlight laser-TURP.	Redwig		\N	Frank	\N	\N	\N	5e710e770ab8487283c12ab60b353368
4308			Brough		\N	Stephen	\N	\N	\N	43d6713d61da4fe4958aa51479ca0773
4309		Urological malignancies, paediatric urology, renal stones.	Jensen		\N	Robert	\N	\N	\N	e90bb336064a4c439ed55a545e5d436b
4310			Tan		\N	Philip	\N	\N	\N	6ce6c2a16ef448da9866abb0330e13c2
4311		Open and Endovascular Arterial Surgery, Varicose Vein Treatment.	Cottier		\N	David	\N	\N	\N	ef607d057dc04a4f8293ce3aaa54b858
4312		Vascular, Endovascular, Varicose Veins, Dialysis Access Work, Aneurysm Repair, Carotid Artery Work	Thoo		\N	Catherine (Cathy)	\N	\N	\N	0a952f51b8054e979c0dc081f94598d0
4313		Endovascular and Endovenous Surgery.	Walker		\N	Stuart	\N	\N	\N	6396fa70037e446c88320f6010ff7e96
4314		Fertility, complex chronic cases, Chinese herbs, general, digestive, emotional health	Helms		\N	Anna	\N	\N	\N	5521990d990940279c6a32ddcd6004d1
4315		Pregnancy; Soft Tissue Injury; Pain	Robinson		\N	Geraldine	\N	\N	\N	fac952b41d4a433196b35fc80a59d778
4316		Back pain, Chronic & Acute Pain Management, Musculoskeletal & Functional Disorders, Headache/Migraine	Wuest		\N	Chad	\N	\N	\N	b09d429a537b48d08a9e3a9294bd509b
4317			Combey		\N	Clare	\N	\N	\N	66b9114e416245dea3bd8b9cfc672a56
4318			Hooper		\N	Steven	\N	\N	\N	e30baf4d6fc44314af941d944b8e1141
4319			Modrovich		\N	Heidi	\N	\N	\N	d5dc1c7809c048e5abe8d28405d93056
4320			Modrovich		\N	Nick	\N	\N	\N	16ca3fe4f9bc42239eb4080a0e18a1b7
4321			Rincon		\N	Edgar	\N	\N	\N	9babd13e7c5540b5930e687eea7e0329
4322			Sharples		\N	Tricia	\N	\N	\N	f1746afa09b64a529a59ec3af10f6340
4323			Burgess		\N	Di	\N	\N	\N	87c0f353be0f433ca2771042a4270c4c
4327			Okuno		\N	Yuki	\N	\N	\N	840846e8393a425da4d9a286c21a157b
4328			Pritchard		\N	Cal	\N	\N	\N	94db3c989bc440b4aa0a4d74f2263f7b
4329			Rahel		\N	Asha	\N	\N	\N	7d08af731f7b46ba975f17b948300a96
4330			Clutterbuck		\N	Mary	\N	\N	\N	8d8c3b82c7f4429d98f5f66395d4174d
4331			Conrad		\N	Jeff	\N	\N	\N	19324733a5ea44609c05bef513e44be1
4332		Low back pain, TMJ	Crean		\N	Stephen	\N	\N	\N	623f21ab2a3c4803a49d871e3b9fe7e2
3090			Alexander		\N	Lucy	\N	\N	\N	71c380f2d86f4303a687c1ba5ad5c991
3091			Alison		\N	Martes	\N	\N	\N	e9bd976e3534479bb2e0c34ffff6765c
4333		Low back pain, neck pain and headache.	Dent		\N	Ashley	\N	\N	\N	15990ac7398f4dd3a9a7ee5d28466e74
4334			Doig		\N	Steven	\N	\N	\N	14d9f74c832a485dbd8c0e9c29076fbb
4335		Sports, musculoskeletal injuries, exercise therapy	Fernandez		\N	Christian	\N	\N	\N	186d566d16af4d89b889405d278d6110
4336			Gardener		\N	Liesel	\N	\N	\N	6f7d9c938a094db9ab74cf5df5f0600d
4337			Haslett		\N	Andrew	\N	\N	\N	a53c807c347b4c0fae4d202c4ed902be
4338		Pregnancy, Sporting injury and Rehab, General Chiropractic.	Hawthorne		\N	Christy	\N	\N	\N	40f084fb2d3a45688c5ae5d1ba3b5659
4339		Posture / Structural Correction	Hughes		\N	Travis	\N	\N	\N	a77a96a8f7b14059ba57bd83c73b62e4
4340			Hurd		\N	Caroline	\N	\N	\N	e2824a7d487d427896e8546e27ace2a0
4341		Sports, paediatrics, musculoskeletal injuries, exercise therapies	Kelly		\N	Richelle	\N	\N	\N	cf4ba519c11541ab878d7b9a57559b51
4342			Lemon		\N	Jennifer	\N	\N	\N	6cea393632984d8b9aa84388d8fe349a
4343			Mccluskey		\N	Michelle	\N	\N	\N	0a7dc879a4db49a0b407f56de22765f6
4344			O'Connor		\N	Tim	\N	\N	\N	b1a4feed40e547b0953dd9b689d80312
4345			Sills		\N	Brandan	\N	\N	\N	5c21444c248a4c08a6c2111d9be48ac2
4346			Smith		\N	Darrell	\N	\N	\N	c245f6495cae4979aa7ca2a8b391c259
4347			Sneddon		\N	Kyle	\N	\N	\N	fe1957fd750e4902bdcd8c0d5c0033ec
4348			Streefland		\N	Brenton	\N	\N	\N	7d9cf42a7ba24a069e755e7a27575641
4349			Taylor		\N	Anthony	\N	\N	\N	7dc28b9b7c07432f8c63b2ebccefd322
4350			Teariki		\N	Grace	\N	\N	\N	ecea677ba5124d88893fe59a9e420d02
4351			Boxtel		\N	Michele	\N	\N	\N	a7305f434f7d4875ae824b94e174287c
4352			Crawford		\N	Brett	\N	\N	\N	0009c579d3174ceeae8e264fe0ffdb65
4353			De Souza		\N	Roberto	\N	\N	\N	5abc2ca8f12c4e5aa76e3a2f5ca1a288
4354			Down		\N	Natasha	\N	\N	\N	819b24b30fc5474583006a66881c5836
4355			English		\N	Robert	\N	\N	\N	3b2b34f579494968aaea191213f05546
4356			Findlay		\N	Madeleine	\N	\N	\N	24b01f39ede642dc81e759876c425863
4357			Fong		\N	Amos (Shen Jie Amos)	\N	\N	\N	5e32a279d8b04156aa5ee1f9d80eed74
4358			Gale		\N	Naomi	\N	\N	\N	914aaf91ab744b3591ecc6d8beb25acb
4359			Gardner		\N	Grace	\N	\N	\N	f3d0225fb44e4f59a4de80b7c9a92c4f
4360			Glynn		\N	Jason	\N	\N	\N	39583a94b42141ee8ca130c1672a09eb
4361			Mcloughlin		\N	William	\N	\N	\N	05e6ce98081f4233bb0c5b555e811ea9
4362			Millar		\N	Damian	\N	\N	\N	8cfdb87105d543f1927ff091e8142a96
4363			Montgomery		\N	Rick	\N	\N	\N	b6c0abffb65e4b38bf34b3326aeb8823
4364			Pang		\N	Venice	\N	\N	\N	b25b65f7ee25413597f34e9df1502ede
4365			Parker		\N	Ken	\N	\N	\N	cfa6b3589bcd47739f8d0a34bbb3eba2
4366			Pedley		\N	Karen	\N	\N	\N	de1622b6c79b489ab4db65b8789b6fcb
4367			Purdey		\N	Adam	\N	\N	\N	a5cec19fecaa45cbb60576cab7f9c8ba
4368			Searle		\N	Paul	\N	\N	\N	269c69138c7740259d824c2f3bc4add3
4369			Sutcliffe		\N	Gareth	\N	\N	\N	19f8caea5e3a43e985b056939a8a5089
4370		Neck, Back, Shoulders, Knees and Headaches	Hearn		\N	Nicholas	\N	\N	\N	147cc671d9764a798d51dc36e29f0d66
4371			Jacobsz		\N	Dirk	\N	\N	\N	2561b9dc79ef4862b7fe021841638b22
4372		Chiropractic neurology, pregnancy and paediatric care, neuromuscular rehabilitation.	Mundy		\N	Ashleigh	\N	\N	\N	7087a455d6c245a884ca982752e9b3e2
4373			Patel		\N	Pritesh	\N	\N	\N	6b91272cf511443ba778b9eb35e817ce
4374			Springer		\N	Scott	\N	\N	\N	172609de52e344e19008819e48c6b9fa
4375			Whittington		\N	Brian	\N	\N	\N	34a1f7854ee8411fb7cee15cfa258a2e
4376		Paediatrics, allergies, weight loss	Aalto		\N	Rima	\N	\N	\N	ddb47281ba91456cb30df9c63dd97922
4377		Diabetes Management, Food Intolerances, Sports Nutrition, FODMAP, Eating Disorders	Dobbie		\N	Hannah	\N	\N	\N	dcf9c618341b43d2addf307768321a0d
4378		Chronic Disease Management, Non-diet Management, Food Intolerances	Goodwin		\N	Isabelle	\N	\N	\N	3c3e0889cf0b49a4b36439a4c99f4bf2
4379		Weight Management; Chronic Disease Management; Diabetes; Food Allergies and Intolerance; Oncology Nutrition.	Hofto		\N	Sophie	\N	\N	\N	8082a717ac694c23af58ddefb73f9b64
4380		LCHF (low carb/healthy fat) for overweight, insulin resistance, T2DM, fatty liver, PCOS	Lewis		\N	Rachael	\N	\N	\N	273d0043615f4ff6af18bd01a924afac
4381		Weight Management, Chronic Disease Management, Type 1 & 2 Diabetes, Sports Nutrition, Food Intolerance & Eating Disorders	Lisboa		\N	Juliana	\N	\N	\N	50b0b703b7a24be88461bac712ccd136
4724			Moore		\N	Damien	\N	\N	\N	674cc982317b43ed8acee0a7755922c9
4382		Sports nutrition, Gut health, IBS, Body Image, Health at every size	Rutherford		\N	Gaye	\N	\N	\N	ff190512f944446fbd25d2c8ed39f6f6
4383			Smith		\N	Milly	\N	\N	\N	30c0974b2bd04c5da165e63bff2e5385
4384			Suessenbach		\N	Klara	\N	\N	\N	d636ac23d6d94cfa965e3d58b9fa6f49
4385			Taskunas		\N	Georgina	\N	\N	\N	35a865b66fb445cbb818027f0cd84ede
4386			Taylor		\N	Maree	\N	\N	\N	ef5761c552274241b60faaecfb65c503
4387		General Healthy Eating; Irritable Bowel Syndrome; Food Intolerances; Polycystic Ovaries Syndrome	Tilley		\N	Josie	\N	\N	\N	657ba6d0d22d4a33a5a6ba4eae7fa595
4388		Weight management, Diabetes; IGT; CVD; IBS (low FODMAP Diet); Coeliac Disease	Wood-Baker		\N	Melissa	\N	\N	\N	457056cc792d441f96b5886f1b6b6917
4389		Weight Loss, Women's Health, Sports Nutrition, Hormonal Issues, Food Allergy/Intolerance	Clark		\N	Amelia (Milly)	\N	\N	\N	7394e354321b4f95a1105fb0509a3b0c
4390			Hodgkinson		\N	Stephen	\N	\N	\N	820ba9b79ce8414cb82224209660d9ae
4391			Jackson		\N	Erin	\N	\N	\N	7bdcf9577a464617bdba423fa93929ac
4392		GI health, eating disorders, ageing, diabetes, cancer and weight loss	King		\N	Sharon	\N	\N	\N	09ff88b1ca5741c9b7f57f89addd6ec5
4393		Food allergies and intolerances, Eating disorders, Non-dieting approach to weight management and health, Gastrointestinal health including IBS	Rossetto		\N	Georgia	\N	\N	\N	693438de048f45dc9c0b447acd799295
4394		NDIS paediatric and adult, feeding problems including SOS feeding therapy, bariatric surgery, chronic disease management, food intolerance and allergies, gastrointestinal issues/gut health including IBS and Low FODPAM diet, non-diet approach to weight management	Shannon		\N	Sophie	\N	\N	\N	c568671253334ab1a2f4786f78417ed5
4395		Aged 65+	Stagg		\N	Monica	\N	\N	\N	e46793c8e68a4dd78b69aa20ed9e58de
3092			Allison		\N	Helen	\N	\N	\N	7aa19b71195f424598c93f5e2338caec
3093			Almond		\N	Ian	\N	\N	\N	cf770fddf3fd4531a9703bb064a8959e
3094		Women's health, travel medicine	Anderst		\N	Janina	\N	\N	\N	3e50021f7d0042baa90657b4618a214b
4396		Weight Management, Chronic Disease Management, Type 1 & 2 Diabetes, Heart Health and Cardiovascular Disease, Food Intolerance & Allergies	Toscan		\N	Danielle	\N	\N	\N	918f292e1dce434e94001075d71093c5
4397		Weight loss & weight management; Cardiovascular disease; Gastrointestinal issues; Diabetes; Healthy eating	White		\N	Amelia	\N	\N	\N	56f72245815f477dbae7318a66f7b251
4398		Cardiovascular Disease, GI Disease (Diverticular, IBS and Coeliac), Eating Disorders, Hypertension (high blood pressure), Vegetarian Diet.\n \n Paediatric Patients welcome.	Fletcher-Way		\N	Diane	\N	\N	\N	de1e6633038945959b03436c28f51551
4399			Acheson		\N	Anne	\N	\N	\N	e40b1a532891492294a5ca2dffacf11b
4400		Particularly Diabetes Type 2; Weight Management; Type 2 Group Education; Insulin Initiation & Management. \n \n Please call 0415 809 984 for appointments at Kingborough Medical Centre Website: www.letsflourish.com.au	Kennett		\N	Heather	\N	\N	\N	07707084652041b6a55c7ac6ca594aac
4401			Kisseleva		\N	Irina	\N	\N	\N	4503a6b85ed9463fbc4ea04eee501aaf
4402			Slade		\N	Lynne	\N	\N	\N	24031e2201e24e97b416bd33d8bc8e11
4403			Strong		\N	Helen	\N	\N	\N	71587f794b3142618a575f62cce82945
4404			Barker		\N	Kate	\N	\N	\N	55dccf41148f4014a0305c1945ab6fad
4405		NDIS, older adults, neurological rehab, musculoskeletal rehab, chronic disease management	Barlow		\N	Paul	\N	\N	\N	7627a1aed0054931b2d59b7ff12def4a
4406		Osteoporosis / Balance and falls prevention; Diabetes / weight management / cancer	Beton		\N	Meghan	\N	\N	\N	d59fa7ee069046f69e382f05c348bfb8
4407			Bonsey		\N	Andrew	\N	\N	\N	888b5f02f2bf49159271263ada7f9a93
4408			Cherry		\N	James	\N	\N	\N	dff3c26ff3ce4692b9ee4b1ab4c60eff
4409			Conway		\N	Brad	\N	\N	\N	f8b19a8ac3914cabab9a7ee03ebf43c5
4410			Cranfield		\N	Cameron	\N	\N	\N	d9bb5b7c1643417b9921b11934f53793
4411			Gaffney		\N	Shaned	\N	\N	\N	f6927ac7ea524404990745a480c1b19f
4412		Exercise for cancer care; musculoskeletal conditions; child & adolescent health; exercise for neurological & developmental/congenital conditions	Goss		\N	Clare	\N	\N	\N	0ae44a23b8fb48ec9d415aa48812a32e
4413		Senior sector mental health, addiction, disability and rehabilitation needs, Strength to Strength programs - all areas	Hamilton		\N	Paul	\N	\N	\N	5bf36845a5f8445a917cecb522eb0dbc
4414		Musculoskeletal rehabilitation; Chronic disease management; Neurological conditions and exercise.	Hutchins		\N	Joshua	\N	\N	\N	d11f4fe6f1e64880ba36efae8d6382b2
4415			Lee		\N	Nick	\N	\N	\N	d60420c418c4415a83ac10207fd2796f
4416		Exercise for cancer, Musculoskeletal conditions and Cardio/Pulmonary conditions	Macmillan		\N	Robb	\N	\N	\N	0efceb3296a4408085fb717e98150114
4417			Pearce		\N	Jess	\N	\N	\N	7facfa19f2ab4e51b2f43a03fb42d7b7
4418			Pearton		\N	Ashleigh	\N	\N	\N	a68bfd7777b04a44b2f86b91305739eb
4419		Chronic diseases, persistent pain caused by injury or overuse, general health and wellbeing improvements, posture correction, diabetes management, improve sports performance	Peattie		\N	Andrea	\N	\N	\N	e84693dcad3146ae8ea5a47622b0c97f
4420			Reid		\N	Kate	\N	\N	\N	ecfb43918ac2461383391938333096b8
4421			Reyes		\N	Jessica	\N	\N	\N	40a89c61a5cd42c58fc74083d07973a4
4422		Musculoskeletal, Cardiovascular, Metabolic. behaviour Change	Rundle		\N	Sam	\N	\N	\N	1b8e6fe4497949d097676e6f9485e7fa
4423			Schultz		\N	Elizabeth	\N	\N	\N	46da36dd719641dca23c991575e784c9
4424			Short		\N	Caroline	\N	\N	\N	897c853ddb1f4b20b07ff05e9584b966
4425		Exercise Physiologist: Chronic disease management. Strength and conditioning for older population. Athlete strength and conditioning.	Squires		\N	Hannah	\N	\N	\N	94f1ff5a884140e2bb8fe22c187ba878
4426		Works at All About a Healthy You: Tuesday and Thursday.\n \n Women's health, Parkinson's Disease, cancer, chronic disease management, pulmonary rehab, cardiovascular management, diabetes management, healthy aging - neurodegenerative disorders.	Tejedor		\N	Carmen	\N	\N	\N	4c20975941da4865b87a5bbb58946174
4427		Diabetes, NDIS, Musculoskeletal rehabilitation, Workcover, Cardiovascular rehabilitation, DVA	Treanor		\N	Alex	\N	\N	\N	9705e79c8e7746d9a666acd7e64d44a4
4428			Treloar		\N	Cameron	\N	\N	\N	bcab2e34ffe04d90aeada2e229125d32
4429			Watson		\N	Brenton	\N	\N	\N	020e3bc8b2f54b7891ab9e4a7c809d2a
4430		Exercise Physiologist: Chronic disease management. Strength and conditioning for older population. Athlete strength and conditioning.	Wilczynski		\N	Taylor	\N	\N	\N	0c3e49d90724427aaf29cdf9d572b32e
4431			Austin		\N	Rachel	\N	\N	\N	a998e1f058764dda8e7c7674496e8cc2
4432		Cardiovascular Health and Cardiac Risk Prevention	Burk		\N	Joshua	\N	\N	\N	da4c9476415c4e4cba102b9b862828a5
4433		Chronic Disease Management; Aged Care; Musculoskeletal Injuries; Mental Health	Davie		\N	Jenna	\N	\N	\N	ca52c57402084058b473a0047c3adf0f
4434			Downie		\N	Laura	\N	\N	\N	3906aa01a3d440bb86aaf8144f69f793
4435			Fisher		\N	Danielle	\N	\N	\N	31a202b6c0054ee889ab9e2d793e248c
4436			Lovell		\N	Marlene	\N	\N	\N	145c9ace5b3545c8b8d1edc90aed00d3
4437			Perry		\N	Kalia	\N	\N	\N	2b280156f2fe4d968d213e53fcbc816e
4438			Todd		\N	Grant	\N	\N	\N	56bd5824f7d64945a06a7abbec500980
4439		Aged Care or any Chronic Conditions	Williams		\N	Melissa	\N	\N	\N	16fb7ac240bf4b8994a8a073611516e0
4440			Beard		\N	David	\N	\N	\N	52635d73ccaa43469ee399fc98a45b6e
4441			Brockman		\N	Benjamin	\N	\N	\N	8b634af1469242d59b1333bdbb809e28
4442		Heart Conditions; Type 2 Diabetes; Chronic Lumbar and Thoracic Conditions; Obesity	Cant		\N	Callum	\N	\N	\N	cbba5bd6b40d4d699452bbe3b1ca8810
4443		Mental Health, Osteoarthritis / Musculoskeletal, Chronic Disease. Mobile service - will travel to the client.	Kamphuis		\N	Allison	\N	\N	\N	8e594ba211e64856a8cc7e9b3f60ef7d
4444		Musculoskeletal, Stroke, Parkinson's, Aged, Sports rehab	Lovell		\N	Ross	\N	\N	\N	ceb8d0fa265a4f71a96204abc804f19d
4445		Musculoskeletal rehabilitation, Chronic disease management, Cardiovascular rehabilitation	Mason		\N	Casey	\N	\N	\N	24773cda30f34067bd288bf8a551adbf
4446		Musculoskeletal, aged, female health, chronic pain	Sharman		\N	Wenonah	\N	\N	\N	a47398f20a1047b3a4aed713be070bc3
4447			Stubbs		\N	Marlii	\N	\N	\N	50e462d60713494c8074dc4a92f5ac44
4448			Talbot		\N	Robert	\N	\N	\N	47bf0ad800bd4431b1dadef1a6c9cd7b
4449			West		\N	Simon	\N	\N	\N	7f0f4df731c74877a9aa24324c80c2a9
4450		Older Populations, Sporting injury, Cardiac Conditions, Mental Health	Whish-Wilson		\N	Marni	\N	\N	\N	08314e6001fc446795fe0014529a9e9f
4451			Wilson		\N	Jarrod	\N	\N	\N	15eaf31849924a0bb7ca844850da4fab
4452		Nurse Practitioner Aged Care/Mental Health Nurse - Nurse Led Memory Clinic, Dementia support, Family support, Mental Health support	Bucher		\N	Hazel	\N	\N	\N	5ef140d51f8843eca74fe415240efa7a
4453		General practice; chronic management and lifestyle management	Clark		\N	Robert	\N	\N	\N	b7d6ce8f34054b8eaebbf461cc196f30
4454			Duggan		\N	Kerrie	\N	\N	\N	2e72a61dbd6e494688f889d25b8dc729
4455			Harvey		\N	Tammy	\N	\N	\N	f05539f6c6e24f70a5cec3b804b6c20c
4456		Parkinson's disease, wound management, neurodegenerative disorders, women's health, vulnerable and disadvantaged medical services (general practice), Hep C clinics (in conjunction with medical practitioners), chronic disease management, palliative care, dementia/depression/delirium management, dementia disorder and aged care.	Patras		\N	Ange	\N	\N	\N	b58527fd5e9445ca9bb427e84d4416e8
4457			Rusher		\N	Gayle	\N	\N	\N	388a34f5c57f4f9abb6792e32ec2f9a8
4458			Sproule		\N	Lisa	\N	\N	\N	d13d1742cecf435db3db6eb0131ae36c
4459			Woods		\N	Michelle	\N	\N	\N	737394d14dc043019dfeb6e69af34dae
4460		Adult Mental Health; Drug & Alcohol EXCLUSION: Adolescence Mental Health	Aylett		\N	Sue	\N	\N	\N	77a994130a9541abab35a6478913df1b
4461			Laidlaw		\N	Jane	\N	\N	\N	e8b430b6e18946629258401911c5f24c
4462		Mental Health, NDIA Registered Provider	Bernstein		\N	Carmen	\N	\N	\N	74890473cff84a3fa96ab7923a9b389f
4463			Bynon		\N	Jessie	\N	\N	\N	e4bcee2963da46a999ff945fd3de27c5
4464			Darragh		\N	David	\N	\N	\N	712c501f9cf349cfa71863e2bb7fb0fb
4465			Dorney		\N	Daniela	\N	\N	\N	743221aac0e547e6bde3dc062ebcfe6c
4466		Workers Compensation	Dunstan		\N	Rebecca	\N	\N	\N	218becef8b5546e2adee3a9fb8c16e5a
4467		Paediatrics, ASD, Sensory processing, Fine and Gross Motor Development.	Egginton		\N	Jessica	\N	\N	\N	278ed391ae4641a6b4d7a9214e83ad20
4468		Ergonomics, rehabilitation, ABI, home assessments, work place injury and recovery.	Freeman		\N	Elizabeth (Liz)	\N	\N	\N	d6c16c38d449438781bb46978547c5d8
4469			Guy		\N	Lisa	\N	\N	\N	eed591adff8d4b1bbbc821ab79d99487
4470			Hopwood		\N	Alison	\N	\N	\N	b8bbcbb97abf4363bf7d8aa1681bd4ce
4471		NDIS Registered - Please phone 0405 577 589	Iyama		\N	Yumiko	\N	\N	\N	7d895fe98fa54cc1aa3ad52ff53c1de5
4472		Sensory motor skills and emotional regulation, helping children with trauma issues, dyspraxia, children on the spectrum, Parent education, School visits. Keen to give child and family tools for body awareness and emotional control. EXCLUSION Aged Care; Motor Vehicle	Lehmann		\N	Mikailah	\N	\N	\N	adc858fa53e34d27a5e57655ea9074d0
4473		Workplace rehabilitation - physical	Leikas		\N	Connie	\N	\N	\N	d0f40ba59a474f028d55e90b08ed2ce6
4474			Lloyd Parker		\N	Anna	\N	\N	\N	eb7ed8bcf6ed4d36af36901ce6752cf9
4475		Mental Health	Long		\N	Brendan	\N	\N	\N	8b2b425aff2944d8965bdc5c7af73fbb
4476			Miller		\N	Georgia	\N	\N	\N	3982a3a68b14414492d3b60d60dfda90
4477			Naismith		\N	Larissa	\N	\N	\N	483599dc0a434547940ffbddaa2a9686
4478		Aged Care	Nixon		\N	Roslyn	\N	\N	\N	2b094cd0e6d640c692cec0324a06e746
4479			O'Keeffe		\N	Fiona	\N	\N	\N	81609e7db86c454cb8f59ba839512519
4480		Occupational Health. FCE√¢‚Ç¨‚Ñ¢s, task analysis and ergonomic assessments. Accredited GLA:D Provider, Sports and musculoskeletal injuries. Post-surgical rehabilitation. Wrist, hand and finger splints. Casting and bracing.	O'Meara		\N	James	\N	\N	\N	84aaa4896ec74b04835d3c4234cd9409
4481		Home modification, Equipment prescription, Cognitive Stimulation therapy, Pain Management, Ergonomic and Work Site Assessment, Mobility and Transfer Assessment. We sort, organise and provide support and dementia management.\n \n \n \n Client Groups; DVA Gold Card, Home Care Packages, Commonwealth Home Support Program, Aged Care, NDIA	Otto		\N	Moses	\N	\N	\N	1e3bf8f260444c02a2630a14e98365b3
4482			Painter		\N	Sarah	\N	\N	\N	232267a8c6bf4c198767f0ef5fa1d96e
4483			Polita		\N	Daniella	\N	\N	\N	8fa0c207f1444da9bfcd2eb7fefcb8bd
4484			Reid		\N	Rachel	\N	\N	\N	facbcde2b4f6483da1525a5dfa4a99a8
4485			Richardson		\N	Aimee	\N	\N	\N	2fffd2ced6024e139311aabb71018531
4486		Working 1 day per week in the North West Region	Rickard		\N	Rob	\N	\N	\N	921ec217b33d46a380b61e9508b98b56
4487			Stockley-Smith		\N	Hannah	\N	\N	\N	31d5a483de3046c4b44063e546e410a0
4488			Thompson		\N	Ashley	\N	\N	\N	c7ca8a62ed134caeb5572a33f703dda1
4654			Whittle		\N	Jessie	\N	\N	\N	721769a55a1d4d3684bbba82e4792a8f
4489		Aged Care; Adult Disability; Assistive technology; Home modifications; MAIB panel provider; NDIS registered provider \n \n  EXCLUSION: Age Group 0-18 yrs	Veremchuk		\N	Olesia	\N	\N	\N	2547305abc5e4e2fb3124d712623e74a
4490			Weeding		\N	Alison	\N	\N	\N	372b6fb52e26432f89d716234ae7f92d
4491			Williams		\N	Aasha	\N	\N	\N	6a50010897b84e5b85b05dc26d1dee0f
4492		Paediatrics - all disabilities - ASD, ADHD, DCD.\n \n Child/Adolescent Mental health - Anxiety, OCD, Tourette Syndrome	Canty		\N	Leiemma	\N	\N	\N	351e32e7ce704c79b676745d05c880dd
4493			Cowan		\N	Janne	\N	\N	\N	b316aaa6b7b142e283d6d29d7a6765b5
4494		Mental Health: Children Adolescents and Adults; Persistent Pain Management and including contributions to the RTW process. Family interventions related to separation and including the Family Court.\n \n  Contact: 0438 152 307	Cox		\N	Lil	\N	\N	\N	bf6943c1b4bd44e4bcd8907186ffc596
4495		Adult/elderly physical/cognitive rehabilitation, home visits, community access, workplace assessment and rehabilitation, equipment prescription.	Farquhar		\N	Lorna	\N	\N	\N	60c9a23cab87444aafaa0df9e15556b9
4496			Miller		\N	Melinda	\N	\N	\N	270106701f0840e5b4599cfb877555cb
4497			Pike		\N	Jennifer	\N	\N	\N	b2bd4dade83d42cda6c552b99d4f3797
4498		Provides Mobile Occupational Therapy Service visiting Clients in the Greater Launceston Area.	Walker		\N	Emma	\N	\N	\N	492e4b1eb50e4cd39c265509d785dac9
4499		Community based rehabilitation for clients with complex needs as well as a special interest in specialised wheelchairs, seating and equipment.	Barker		\N	Linda	\N	\N	\N	2087f246a14c4479b39a22dc135236ce
4500			Jones		\N	Jennifer	\N	\N	\N	f361eab4e6934f3bac871e63e159d5b9
4501			Azarcon		\N	Melita	\N	\N	\N	b5302a87cf114b3286bed7cdb4e91ca2
4502			Biacsi		\N	Melanie	\N	\N	\N	ca01830fe9b04056b885ea4999e7e7a8
4716			Glover		\N	Jacob	\N	\N	\N	558d0ea7c41d4b83802da399f0ce3bf3
4503		Your Path to Health - Monday and Tuesdays, Your Health Hub - Thursdays and Sorell Doctors - Fridays	Blackburn		\N	Matthew	\N	\N	\N	9c8526c1fc9a44f1852d3f4f07296ab2
4504			Chuah		\N	Im	\N	\N	\N	8d85f7a2b8bb403aa2d1736c3e321603
4505			Davis		\N	Stuart	\N	\N	\N	4ca31c4cec3b4d13814a58855c8fbe6e
4506			De Barry		\N	Richard	\N	\N	\N	f9ddccb4a92849548f209aa05a2e3a3b
4725			Muller		\N	Angela	\N	\N	\N	20c7a0dd860f472c85a1ffa4a1d0ca6e
4726		Occupational Health & Safety	O'Neill		\N	Benjamin	\N	\N	\N	01d96dac260c4f9e8a42252a38079edb
4507		Graduate Certificate in Pain and Pain Management (Otago University, NZ, recognised by the IASP. Currently undertaking Graduate Diploma in Pain and Pain Management at Otago University.	Dennis		\N	Pamela	\N	\N	\N	d271c9461ca84b60a2ea6edb27b8a910
4508			Gee		\N	Tink	\N	\N	\N	70034866bbf44cf085a914efd3d2940e
4509			Grindley		\N	Rebecca	\N	\N	\N	a4db4f87d3a34b3c89d5b3955bb6c7f0
4510			Gutteridge		\N	Mary	\N	\N	\N	e75f1719147f4170a8e4e272abbcaffa
4511			Jensen		\N	Alira	\N	\N	\N	0003418a301f43cf8e859efcb3315cc0
4512			Kelly		\N	Chris	\N	\N	\N	c9b2cedf25a44c5cac681c75837428a0
4513			Leach		\N	Peter	\N	\N	\N	70bd01af138648889c8711b97de53032
4514			Mangan		\N	Anna	\N	\N	\N	28b0679eb1b9431eb587b64b3b403b0f
4515			Mcaninly		\N	Elissa-Kate	\N	\N	\N	a9d0b38a6e79418eb7f4ab9147503470
4516			Mickerson		\N	John	\N	\N	\N	6c6e0a6591474240a5c43e052509e801
4517			Pearson		\N	Heather	\N	\N	\N	dcef4d8391374fff9d4f16c2aceafdb7
4518			Spalding		\N	Ouita	\N	\N	\N	8cfa06f809a94d4dad46a7cddadf7491
4519			Steiner		\N	Chando	\N	\N	\N	8c42dbdfb428434994c0fb29a83bfd5b
4520			Anderson		\N	Marshall	\N	\N	\N	3a1267793fcd4abf84223eaf257446e0
4521			Brewer		\N	Grace	\N	\N	\N	012903e2ac034137aec0435b632b51e3
4522			Buzzai		\N	Denis	\N	\N	\N	0f0ea4c2608a44c5b1128f534d2329cc
4523			Carlton		\N	Kieran	\N	\N	\N	a11ae0add83b4e2d99e8134bc5d7ca90
4524			Clifford		\N	Kevin	\N	\N	\N	f1a50e13b5844e98bc2b64ed62e891eb
4525			Clifton		\N	Hayley	\N	\N	\N	66adce42541347369c281658578a842c
4526			Freshwater		\N	Zoe	\N	\N	\N	9327606190f040668a1a3b902cd5db9e
4527			Gibb		\N	Elizabeth	\N	\N	\N	0903edbdef4f47fbb99a4b030e4edfd6
4528			Hargrave		\N	Sarah	\N	\N	\N	e85e06656d3c4380a90eb65cc1938a7a
4529			Kitching		\N	Fiona	\N	\N	\N	8197ddfd005c45f2a4a023424ddb827f
4530			Morgan		\N	Samuel	\N	\N	\N	a29de46a72d64b2095ad34151f10c8f2
4531			Mountney		\N	Reid	\N	\N	\N	2af90c5fd3fd43768f95df053d0826b7
4532			Nguyen		\N	Andrew	\N	\N	\N	35d59154d278420bb480e232a639ae56
4533			Parry		\N	Alana	\N	\N	\N	dadd3796f8d747ef9e13dffb33f4bb9d
4534			Rigby		\N	Kylie	\N	\N	\N	fe4a27007b154f0e9e5224446ded7614
4535			Scheibner		\N	Tethys	\N	\N	\N	6272c0d8ee554231bf0ea79bed82c4b1
4536			Orr		\N	Neil	\N	\N	\N	07269fda9b664496a9ee9ce0adb8b3a6
4537		Provides Domiciliary Physio only. Neurology, geriatrics, falls and balance assessment, reconditioning of the elderly. Multi trauma management, rehab following joint replacement.	Amery		\N	Kay	\N	\N	\N	16f1f0436d9d4bea8d4baedd1182525a
4538			Anderson		\N	Hamish	\N	\N	\N	ec30d1c6b9cf4ce387d7e0cbeda8def2
4539		APA Continence & Women's Health Physiotherapist Exclusively Women's Physiotherapy including Bladder & Bowel incontinence, Antenatal/Postnatal, Pelvic Floor physio, Prolapse, Dyspareunia and Persistent Pelvic Pain Syndromes EXCLUSION: Men.	Andrew		\N	Rachel	\N	\N	\N	880be654db3b49a3ac9fcbcba588812c
4540			Andrewartha		\N	Helen	\N	\N	\N	4242d94bca4e42109b3c70a24b182c35
4541			Ball		\N	Jennifer	\N	\N	\N	8315ee1c04034327a506304c91264a9b
4542			Barker		\N	Jane	\N	\N	\N	7bf9d51f43884a618ea923728e8321d7
4543		Chronic Pain; Biomechanics; Development of patient self care strategies.	Batchelor		\N	Michele	\N	\N	\N	a9b12d4a4fe5436b8e75a33abbbbf4d8
4544			Bayly-Stark		\N	Madeleine	\N	\N	\N	d47b571759b54ff88ea71d6396ab874b
4545			Benson		\N	Sarah-Jane	\N	\N	\N	99d767c909e84b6ebf8e7ae4bc167ef5
4546		Accredited Hand Therapist - Elbow, wrist, hand and finger injuries. Wrist, hand and finger splinting and bracing. Upper and lower limb casting	Black		\N	Frances	\N	\N	\N	31cc5c35713c42c28c3ed464efdec7b5
4547			Blue		\N	Liam	\N	\N	\N	953a8a1d4b3c40ceb1f92cd31986747c
4548			Bodak		\N	Stephanie	\N	\N	\N	c8521567e1da4c90a60108243a85dcd6
4549			Bosker		\N	David	\N	\N	\N	5ae07a68f2564e8a84b712c4d119f74f
4550		Provides Domiciliary Physio only. Neurology, geriatrics, falls and balance assessment, reconditioning of the elderly. Multi trauma management, rehab following joint replacement.	Bowes		\N	Kiley	\N	\N	\N	eb97cc1d0d974d5098025f42bd0a54a7
4551			Butler		\N	Annabel	\N	\N	\N	3808f5afae4c423a9edccfc0d466959c
4552			Butler		\N	Liz	\N	\N	\N	a5cc56e88b6c437fb3229e433b71284b
4553			Calvert		\N	Hannah	\N	\N	\N	131a9c03755b4066b2e2a88713b8e2eb
4554		Foot and Ankle injuries. PFJ pain management, Running injuries and biomechanics. Osteoarthritis management. Accredited GLA:D provider. Casting and bracing.	Campbell		\N	Nicholas	\N	\N	\N	9154a84bd32c4d9cb952511a7d8afe86
4555			Cannamela		\N	Sam	\N	\N	\N	293a1f828ebf4736ada04a6cc0baaaf1
4556		Sports injuries, Pre/Post op, shoulders and chronic low back pain	Clayton		\N	Evan	\N	\N	\N	dc3524067dbb4a88902adbc5170e2626
4557			Crawford		\N	Debbie	\N	\N	\N	508dbab95adf4ef38b1ff8f721a4eec8
4558			Cromer		\N	Hilary	\N	\N	\N	78ebeae452b74562a09d21f50f38b7f4
4559			Cusick		\N	David	\N	\N	\N	7b0fabaf80e1484e9287b2a30cad5a57
4560			Das		\N	Mithu	\N	\N	\N	285ff936d60e4829a66069fa6a39dc43
4561		Headaches, neck pain, lower back pain, arthritis & ankylosing spondylitis, hand & wrist injuries, elbow, foot & ankle, clinical pilates	Dell		\N	Maia	\N	\N	\N	7ac25232cf074324b2c2899c2a29a8ad
4562		Hip and knee osteoarthritis management. Accredited GLA:D provider. Post-operative rehabilitation. Casting and bracing.	Doerner		\N	Belinda	\N	\N	\N	71010e1a79e74900828f0d2a991482c2
4563			Dynan		\N	Jacqueline	\N	\N	\N	691900fa84634a46ae9c6f10c5825f52
4564			Eckhardt		\N	Peter	\N	\N	\N	75aa61869e034240820d874e9015ae78
4565		Lymphoedema Physiotherapy - Rehabilitation post treatment for breast cancer; posture assessment and corrective exercises; shoulder rehabilitation plus general musculoskeletal rehabilitation.	Elmer-James		\N	Frances	\N	\N	\N	0d4b22c0574c4d4bbde43dc2c82b4a72
3095			Andric		\N	Alex	\N	\N	\N	590574d9fad3442682dc7fa8324c1778
3096			Archer		\N	Jessie	\N	\N	\N	12380840c54045989bb172052a63a3a2
3097			Attrill		\N	Sally	\N	\N	\N	b7fa77bf16e54ab1989e52c3e462b553
3098			Atwell		\N	Nick	\N	\N	\N	22050919081c42798e8638b68779130d
4566			Firth		\N	Mim	\N	\N	\N	c747d4bd933c4b0fa967f7a4927db5d2
4567		Musculoskeletal and sports injury rehabilitation	Fitzpatrick		\N	James	\N	\N	\N	dd60daff95f4422da1110c5f797fac5d
4568			Fletcher		\N	Miriam	\N	\N	\N	90d81bb5a4ba4bd587e5f335af6c6648
4569			Fraser		\N	Janet	\N	\N	\N	8b2a4cbe16b54918acd8c4969dea68b5
4570			Fredheim		\N	Linda	\N	\N	\N	2277bfe572184941a696bd028ce9cab8
4571		Women‚Äôs and Men‚Äôs Health, orthopaedic and musculoskeletal patients.	French		\N	Melissa	\N	\N	\N	8c0884bc29244506a66859fd7e51e378
4572			Garlick		\N	Alana	\N	\N	\N	d23846b1e225486190237411b97474bb
4573		Sports Injuries, musculoskeletal injuries, Women's Health, Pre/Post Op Rehabilitation	Garlick		\N	Jessica	\N	\N	\N	6ec0d004793540f79feda286dee7ca7a
4574			Gavalas		\N	George	\N	\N	\N	7a2a336cab3e48e89f4a0106c87f2993
4575		Sports injuries specifically rowing and basketball. Post-surgical rehabilitation. Injury prevention and sports screenings. Casting and bracing.	Gough		\N	Timothy	\N	\N	\N	2153accc2e174ff98b90c5999d9db9e2
4576			Graham		\N	Karen	\N	\N	\N	614b81e3cfc348ffb88d1e1664b17665
4577		APA Musculoskeletal Physiotherapist - Dancers. Neck pain. Low back, SIJ and pelvic dysfunction and pain.	Hamilton		\N	Fiona	\N	\N	\N	6f3434e5b94d4684ac96bcda9d4ffd67
4578			Hayes		\N	Benjamin	\N	\N	\N	b2916143ced94b76923f9dc79f76b50a
4579		Pregnancy, sacro-iliac, pelvis, lower back, clinical pilates	Heslop		\N	Anna	\N	\N	\N	a67cc96a89bb4006beeff15156be3718
4580		Hobart wide rehabilitation services.	Ireland		\N	Andrea	\N	\N	\N	67a53e3b2b3046458f32992083a2ef61
4727			Palmer		\N	Georgina	\N	\N	\N	ac06dd715e2c4f3aaade10ce1e9b22ff
4728			Parke		\N	Connor	\N	\N	\N	3543f388224f42d5b400b017d7089084
4581		APA Continence and Women‚Äôs Health Physiotherapist - Women‚Äôs and men‚Äôs incontinence, prolapse, pelvic pain, pre and post pelvic surgery, pregnancy related pain including wrist, back and pelvic pain, post-natal recovery. Pre-and post-natal exercise classes. Exercise post cancer in men and women.	Jackman		\N	Amanda	\N	\N	\N	540ce7dc9cf34bc6a261f79a6026b403
4582			Jamison		\N	Julie	\N	\N	\N	9fa1c5c9d8934df0a97311b4b2b51ef9
4583			Jamison		\N	Michael	\N	\N	\N	1d2d5bc547004603a2a11ae4dbe48122
4584			Jeffrey		\N	Erin	\N	\N	\N	4e55773bd83e4da69ed1ff4649f50be5
4585			Jensen		\N	Matt	\N	\N	\N	cf54ac7cba99481e810b41100b367eeb
4586			Jurd		\N	Andrew	\N	\N	\N	900e0a5749de4873afc48f79048f55a2
4587			Kallas		\N	Maria	\N	\N	\N	49d1b41f9e32495abf686807aa152c25
4588		Physiotherapy, Injury management, Ergonomic assessments, Pre-employment assessments, Workplace assessments, Job/task analysis, \n \n Manual handling training & coaching	Khalfan		\N	Aleem	\N	\N	\N	605926cd9a5d4cff99a61b5e0fffa49c
4589			Ladlow		\N	Phil	\N	\N	\N	9304973233774c2dad42401993a49976
4590		Specialist Sports Physiotherapist - Sports Physiotherapy, Musculoskeletal; Pain\n \n Exclusions: Neurological; Gerontology	Lancaster		\N	Matt	\N	\N	\N	61389f5e186740b1949e90e7c6f0de99
4591			Lau		\N	Amy	\N	\N	\N	a7604e1282764da28988e4e8f2ec02b7
4592			Leray		\N	Estelle	\N	\N	\N	211cb0a5ea29422d843fa1582a42a0a1
4593			Lewis		\N	Dawn	\N	\N	\N	b589661354084591a917aa90da103812
4594			Lyne		\N	Chris	\N	\N	\N	fc2bc2a391fa4880bb050090b206d08e
4595		headaches, neck pain, shoulder, lower back pain, hip & pelvis, pregnancy & sacro-iliac issues, running technique & injuries, dance injuries, clinical pilates, second opinion patients	Malan		\N	Karrie	\N	\N	\N	a1cdb91ce05643b5aff727774c403fb2
4596			Margan		\N	Alex	\N	\N	\N	415cf230252d425d9be479ea16aff3a4
4597			Marshall		\N	Rebecca	\N	\N	\N	7c8ca89d446f440a8d021fedea5eface
4598			Martin		\N	Lynne	\N	\N	\N	55de12630edc45cc833b16313134d0f2
4599		Persistent and complex pain, and Women's Health/continence/female sexual pain	Marwood		\N	Jessica	\N	\N	\N	43a292f42b4c4c95a38c2677fa485c62
4600		Musculoskeletal; persistent pain; sports	Marwood		\N	Lachlan	\N	\N	\N	4d1e8af9bae54dc4a53f87d820acbfb4
4601			Mcbride		\N	Cathrin	\N	\N	\N	6caf8d27ffcf4f1a95e9f3e15ec76a03
4602			Mccormack		\N	Caitlin	\N	\N	\N	ef7a90f35c6d4c14a6d4f001c56fc2ee
4603			Mchugh		\N	Ian	\N	\N	\N	a10c2f4cad364dde825d5fa746bef834
4604		Neurological and Musculoskeletal Physiotherapy	Melling		\N	Simon	\N	\N	\N	9b0e4c5414354baba3a3359fae26ca15
4605		APA Sports and Exercise Physiotherapist - Sports injuries specifically water polo, swimming and gymnastics. Knee, hip and groin pain. Shoulder injuries. Post-surgical rehabilitation. Injury prevention and sports screenings.	Moore		\N	Kate	\N	\N	\N	b463bb6cb6be47c596262b082f3bc365
4606		Vestibular/dizziness, Headache, Shoulder	Mortimer		\N	Lachlan	\N	\N	\N	ef62c83975d447cda5731790cd04644d
4607			Munden		\N	Paula	\N	\N	\N	f83d5c789830476a82237676cec6a440
4608			Murton		\N	Nick	\N	\N	\N	6746edfdcb144cd7b6b5281c648a3820
4609		Provides Domiciliary Physio only. Neurology, geriatrics, falls and balance assessment, reconditioning of the elderly. Multi trauma management, rehab following joint replacement.	Newsham-West		\N	Emma	\N	\N	\N	e452dee48423404fbc1aba1a5b4a131d
4610			Nolan		\N	Stuart	\N	\N	\N	1ffbe8745c26403180a1978d48315b4d
4611		Occupational Health. FCE‚Äôs, task analysis and ergonomic assessments. Accredited GLA:D Provider, Sports and musculoskeletal injuries. Post-surgical rehabilitation. Wrist, hand and finger splints. Casting and bracing.	O'Meara		\N	James	\N	\N	\N	2da01723f4034add947ace4da3095ac0
4612			O'Shaughnessy		\N	Desmond	\N	\N	\N	4dcd75f3b2df4e8590231ffd51f15cbc
4613		Post Operative Rehab; Hypermobility; Pilates	Osborn		\N	Jessica	\N	\N	\N	5f746809ba6e4904b058661b05753b7e
4614			Parsons		\N	Daniel	\N	\N	\N	ada1788a63314deba1bdf419e2b7b154
4615			Patel		\N	Dipali	\N	\N	\N	0f8444f854904167946bae5688b17972
4616		Musculoskeletal, Sports, Knee & Ankle	Perryman		\N	Liam	\N	\N	\N	ecbae9285e404aefa5fc8d47f0bebafa
4617			Poon		\N	Darren	\N	\N	\N	48773cc292234402807ef17f3fb34b9d
4618			Potito		\N	Susan (Susie)	\N	\N	\N	67d9ab99867d44ad99dfe3ab236db487
3099			Ayton		\N	Jeff	\N	\N	\N	107f980f11564dbc86489efee0769088
3100			Back		\N	Petrina	\N	\N	\N	db94f7f3bd114ff497a1466afe8a1a8e
4619		Sports injuries, strength and conditioning	Raack		\N	Celeste	\N	\N	\N	79dbfce1accd4403981554d9b8ced438
4620			Rae		\N	Heather	\N	\N	\N	efd7e57e37d44cb7a033e16f5d146c3a
4621			Rajupalem		\N	Tarun	\N	\N	\N	dfe7677f85544dd0b9d16048bea30345
4622			Riddoch		\N	Susie	\N	\N	\N	c23b1cfd4ef74d319ea174bcdfb142d2
4623			Robertson		\N	Amanda	\N	\N	\N	801122ba3191424ab884a277ecf38774
4624		Pregnancy, sacro-iliac, pelvic floor, pelvis, lower back pain, rib cage, clinical pilates	Robertson		\N	Grace	\N	\N	\N	ed01639c03ff4ab2a4b31a485efe8839
4625			Robinson		\N	Hilary	\N	\N	\N	83a19376d02e4cd7800cd93bfe3a96e4
4626			Robinson		\N	John	\N	\N	\N	f0cc6d3ef29647a98fe5db42ad7fd6f7
4627			Rogers		\N	Jason	\N	\N	\N	5e5eeb62f3d54b23aff546e4cb6281b4
4628		Qualified Alexander Technique - posture and movement re-education - Teacher	Rudolph		\N	Elke	\N	\N	\N	1249b063113f48d396cd18589d881198
4629			Ryan		\N	Deborah	\N	\N	\N	98f40e645d2c499eae27256a0625a408
4630			Saunders		\N	Kyle	\N	\N	\N	60168830a5ed44b6b8ec8521ead42f2e
4631			Schrale		\N	Lewina	\N	\N	\N	89d6aad163754faab604a65d6370bd72
4632		Sports injuries, return to sport/activity/work programs	Scott		\N	Jamie	\N	\N	\N	18f4e234c6d040699b068fdfea74b823
4633			Sheppard		\N	Stephanie	\N	\N	\N	7c8082c3cd2d44f58005c65a6c544f27
4634		Clinical Pilates, Spinal, Sports, Posture. Post Graduate training in Scoliosis therapy.	Shield		\N	Millie	\N	\N	\N	194cee9333bc42d3bd8577da068d94fd
4635			Smith		\N	Nicola	\N	\N	\N	db2b177f967c46158175477edf133952
4636			Steven		\N	Claire	\N	\N	\N	92c5ea8916e7476db560707a3de2c487
4637			Strachan		\N	Ben	\N	\N	\N	59d6542e1b0243db97e252590d828989
4638			Suppiah		\N	Ajantha	\N	\N	\N	e64ae6cb633c465c9d245544fb2da34d
4639		Sports and musculoskeletal injuries and post-surgical rehabilitation. Injury prevention and sports screenings. Casting and bracing.	Sutherland		\N	Alexandra	\N	\N	\N	f7c5f0bd275e4a988cdb64b90082b7a8
4640			Tadros		\N	Chrissy	\N	\N	\N	3fe7837f0406419c8897e5a5f9a9e628
4641			Thomas		\N	James	\N	\N	\N	16893ba9403c4ec18d768bf78ec3673f
4642			Thomas		\N	Kate	\N	\N	\N	dedd5c1604f74644bfd2cb83d95716ec
4643		Sports Injuries; Neck & Back; Post Surgery Rehab	Thompson		\N	Emma	\N	\N	\N	4390ae3a0c0341f89faa5e4aa9a7f760
4644		Titled Male & Female Pelvic Health Physiotherapist. Area of expertise: Pelvic girdle, hip, pelvic floor dysfunction (bladder, bowel & sexual issues) and pelvic pain (endo, bladder pain, pudendal neuralgia, non-bacterial prostatitis).	Thurley		\N	Jaclyn	\N	\N	\N	98b3722e232d45cd914c99b7d324719a
4645		Orthopaedic and neurological physiotherapy; Vestibular rehab; chronic pain and conditions; and improving balance, strength and functional ability.	Tyson		\N	Kim	\N	\N	\N	d17cb0b7929e42959260dbe3f7f5d0b5
4646			Viljoen		\N	Izanne	\N	\N	\N	f9f6a0250b90419fadfa1c95478025f1
4647			Viner		\N	Alison	\N	\N	\N	67133388498e45d0affa514f47033d6e
4648			Viviers		\N	Kari	\N	\N	\N	618ae41f1f1a42b1868379755c592b89
4649			Webb		\N	Ashlee	\N	\N	\N	a8a9749331724fcb85ecbffd25d62dee
4729			Pearson		\N	Lisel	\N	\N	\N	21a31e3e0a5044bca35af756d8ac025a
4730			Peisker		\N	Stephanie	\N	\N	\N	e4b23f4cd3d34c01985b01d59de7d519
4731			Pejani		\N	Sinan	\N	\N	\N	57922acca48140b3be4a307bfa6c6c0d
4650		Specialist Occupational Health Physiotherapist (as Awarded by the Australian College of Physiotherapy 2011)\n \n \n \n Occupational Health Physiotherapy Ergonomics - Provides on-site occupational rehabilitation and ergonomics services to workers at their workplace.	Webber		\N	Maree	\N	\N	\N	9870bc84c8d14ab692f50ddc614adb75
4651		Clinical pilates, sports injuries, lower back pain, headaches, neck pain	Welinska		\N	Janetta	\N	\N	\N	d4b03a3a914043adbb62e138df1e0da8
4652		Sport and Musculoskeletal	Whalan		\N	Kirsty	\N	\N	\N	bbe6f371c30943d89ec98fcec600b6e9
4653			Wharerimu		\N	Nathan	\N	\N	\N	4c4a1cdf90c74387af4e4de4c76db89a
4655		Neurological Physiotherapy - NDIS registered provider	Wilcher		\N	Rebekah	\N	\N	\N	265ee7268ce74f0b9a798a82e31717d5
4656		APA Sports and Exercise Physiotherapist: Complex Sports injuries particularly rowers and elite athletes. Back pain in athletes. Shoulder injuries and rehabilitation.	Wilkie		\N	Kellie	\N	\N	\N	3caa694b369241efa9714481f21fa136
4657			Wilkinson		\N	Jill	\N	\N	\N	41c17aec3b88489eb5febc4e75c89816
4658		Sports and musculoskeletal injuries and post-surgical rehabilitation. Injury prevention and sports screenings. Casting and bracing.	Willcox		\N	Andrew	\N	\N	\N	08e1836fd6154465bd10c34a0230d210
4659			Williams		\N	Jessie	\N	\N	\N	46603b5a79ed435681b217c8fc0717b8
4660			Williamson		\N	Stewart	\N	\N	\N	a0a5c574670e45debd6ad79303f9fd9a
4661			Willing		\N	Megan	\N	\N	\N	a8b30484aa6b403b8c89f1bc9abfa45d
4662		APA Sports and Exercise Physiotherapist: Sports injuries specifically football, sailing and swimming. Hip and groin pain. Post-surgical hip and knee rehabilitation. Injury prevention and sports screenings.	Wilson		\N	Nick	\N	\N	\N	1abef2968c6442e59bbfe2e4f045b470
4663			Wise		\N	Sascha	\N	\N	\N	1b2a2ff87c944e7cba51969849be61d9
4664			Woermann-Dreyer		\N	Isa	\N	\N	\N	f3b83825c88d40fe99f0c861887d43a5
4665		Accredited Hand Therapist: Elbow, wrist, hand and finger injuries. Wrist, hand and finger splinting and bracing. Upper and lower limb casting.	Woodward		\N	Jennifer	\N	\N	\N	8663c30ec858468392706c5b84bca40d
4666		Musculoskeletal, sports injuries, dizziness	Anderson		\N	Rowan	\N	\N	\N	58b80fefad6142d3a2995905bc1ba06d
4667			Banfield		\N	Lisa	\N	\N	\N	26373827e6414d9d98ea971fad88a81f
4668		Musculoskeletal, sports injuries, pilates	Barnett		\N	Lisa	\N	\N	\N	236fca6491944417857653903444047a
4669		Dizziness, concussion, Musculoskeletal and sports injuries, neurology, NDIS	Beeston		\N	Scott	\N	\N	\N	2614c379a2e0450390bb6b3d1e7d12c5
4670		Respiratory Physiotherapy - Physiotherapy of lung conditions such as COPD, asthma, emphysema, chronic bronchitis, Bronchiectasis, cystic fibrosis, recurrent chest infections, pre-operative optimization.	Brumby		\N	Susan	\N	\N	\N	d3a44cc754334434bbac7776e0233123
4671			Budarick		\N	Emma-Jane	\N	\N	\N	3451dc25a3ee4e53a5a4444057a7fbe7
4672			Burk		\N	Tayla	\N	\N	\N	c0777bf712b54cd5a09347c26287cf66
4673			Clark		\N	Monique	\N	\N	\N	ef4ad0787c4941eab16fa89f525109ee
4674			Cooper		\N	Heather	\N	\N	\N	8bb392bd9073426d81773b4923818d1d
3101			Baghurst		\N	Tim	\N	\N	\N	780032e6070c4b4dbde61d95518f6fd5
3102			Baird		\N	Virginia	\N	\N	\N	85cdb74406d94a86a8b6b72252c22bdf
3103			Baker		\N	Astrid	\N	\N	\N	ec8608b4e7144d99b6387cf019ef041e
3104			Baker		\N	Megan	\N	\N	\N	638cf4aa78354987a694a52d926b50e5
4675		Dancers Injuries; Rehabilitation	De Paoli		\N	Amy	\N	\N	\N	ba2d1e022198410a87c14e19f7867cc3
4676			Franklin		\N	Graham	\N	\N	\N	05dc18b33aa5415db3075bd5385d02eb
4677			Gamboa		\N	Ayana	\N	\N	\N	52be8847f3b045eb8150b1bd6abda8b3
4678			Gibson		\N	Annabel	\N	\N	\N	62a2a2b91c7a40179c3ecd1d8124ddbd
4679			Giovanovits		\N	Vassilia	\N	\N	\N	b8f1a0db1a254aa0aff48200dac7524a
4680		Sports Injuries; Comple pain	Hanson		\N	Roland	\N	\N	\N	8aba6062f64d476e939682240e21a84e
4681			Helbing		\N	Lani	\N	\N	\N	e610df3a6586480aa99beeea40aa9016
4682			Hopewell		\N	Sabrina	\N	\N	\N	c9933d320ceb4576927e03533746dc7d
4683			Irfan		\N	Muhammad	\N	\N	\N	0e7918a512974c689d1674ae39aac28e
4684			Israel		\N	Alain	\N	\N	\N	c25277a8a2b5406387d0970e1de0fb25
4685		Neurology and disability, paediatrics, NDIS	Justice		\N	Daniel	\N	\N	\N	8777588c07e545fa9af62b6ef6049d6e
4686			Kennedy		\N	Bernie	\N	\N	\N	ce6e0c05e89049e69eb0bd076db48afd
4687		Musculoskeletal - specifically spine, neck, shoulder, headaches. \n \n Concussion Management; Vestibular Management	King		\N	Linda	\N	\N	\N	e1a2a9e538af4b0b8b2e7be4341315bd
4688			Lyons		\N	Sarah	\N	\N	\N	81621449481244eb902d1281e24d8713
4689			Mackinnon		\N	Natasha	\N	\N	\N	aa7af2c92ae348aebd2f8fa38076b798
4690			Malang		\N	Jelene Mae	\N	\N	\N	40b6980a001b45aa9413c97d76809901
4691		Musculoskeletal, Aged care, neuro, cardio resp.	Maposa		\N	Tarubva	\N	\N	\N	e2a31afd987e4877a87f2dab8e603b5e
4692		Musculoskeletal injuries, Back pain, Whiplash, Vertigo, concussion and Shoulder pain. EXCLUSIONS: Paediatrics, Women's health and Neurological rehab	Matton		\N	Ross	\N	\N	\N	e39179d286344f08aed32a270366fcaf
4693			Mccormack		\N	Joseph	\N	\N	\N	b0c7d2a824e34cf2907d856c31d0f7a6
4694		Neurology and Disability	Mckenzie		\N	Margaret (Maggie)	\N	\N	\N	8ac40e67acc54feab57e426429dce17f
4695			Mclaine		\N	Sally	\N	\N	\N	617ea8d4945a485db4e7b08e2c2e9353
4696		Musculoskeletal, pregnancy related pain, pilates	Mitchell		\N	Alana	\N	\N	\N	4e9972677eae42629b8cdcc008e43abe
4697			Nel		\N	Daleen	\N	\N	\N	6d44d86089d847009052420f2dc2093d
4698			Peck		\N	Rachel	\N	\N	\N	994ad3b5eeeb4eb486668f4b4451181c
4699			Philip		\N	Nathan	\N	\N	\N	8d06da732ec44b7db49b34db276fcb35
4700			Sluis		\N	David	\N	\N	\N	16a0fb713e164ccea3435e6e4a0824d4
4701		Musculoskeletal and sports rehabilitation EXCLUSIONS: Womens' Health	Stirling		\N	Timothy	\N	\N	\N	431bebc882d24ccf8ceb24643f7c04a0
4702		Lymphoedema, cancer rehabilitation, Musculoskeletal	Sullivan		\N	Rachel	\N	\N	\N	394230a5c8444b6697ba62526167fe04
4703			Thomas		\N	Karl	\N	\N	\N	4776e025f0a549578d8226d0971bac22
4704			Tilsley		\N	Fiona	\N	\N	\N	4283b0a89ba9412b80c9325feb38929c
4705			Torlach		\N	Adam	\N	\N	\N	6f5e289e64614aa1be223dacf8992e97
4706		Spinal injuries, Musculoskeletal, pilates	Walkden		\N	Michelle	\N	\N	\N	589e7a3faec94ef3866f273718559f14
4707		Musculoskeletal, Scoliosis, Pilates, women's health, complex musculoskeletal conditions, Connect Therapy	Whish-Wilson		\N	Natalie	\N	\N	\N	cbfd3c38b02b44e0899465e8ef9aa433
4708		Musculoskeletal physiotherapy, paediatrics / sports injury	Whitney		\N	Amy	\N	\N	\N	d8902e3c1f6540ae9941ae74c3d83d5c
4709			Alva		\N	Tanushka	\N	\N	\N	686c7f8cc5824d32b409410298bcb79f
4710			Bell		\N	Gareth	\N	\N	\N	bccf9ca9131349c894ee13025605bd59
4711			Campbell		\N	Libby	\N	\N	\N	de64b320cb3940c8af1c59258f33b3b0
4712			Carroll		\N	Ryan	\N	\N	\N	c1eb4e339d2f466a8c22bf339c7bbda9
4713			Clark		\N	Megan	\N	\N	\N	9f05fc7b2e0c47aeaa4b2219a1f794db
4714		Paediatric Physiotherapy & Vestibular	Cowgill		\N	Sarah	\N	\N	\N	a49cf2b03d584327934d4521ee90043e
4715		Parkinson's and Stroke	Fisher		\N	Carolyn	\N	\N	\N	109133f09e6a4fc8ac807ec852920941
4717		Cancer rehabilitation, paediatrics (developmental), aged care, general musculoskeletal, biomechanical bike fits, clinical pilates/rehabilitations.	Grubits-King		\N	Jayne	\N	\N	\N	9772602100974fe58ddc227592b6c8a7
4718			Haberle		\N	Geoff	\N	\N	\N	e083645bac4744a5a0768676e91ecfcd
4719			Johnston		\N	Peter	\N	\N	\N	e7acdbf3f1814684b40d9e4ca14182ff
4720		Visiting Physio 1 week at a time every 3 - 4 months	Jones		\N	Dale	\N	\N	\N	96234968d0dd4f2eb9847def10840a66
4721			Kelly		\N	Renae	\N	\N	\N	246584bd62f04eee8da5417787020200
4722			Macrae		\N	Ali	\N	\N	\N	bae14c337288432785732108441698f4
4723			Medwin		\N	Chloe	\N	\N	\N	049c54c69a3a4d50a4bc130bb6242965
4732			Reeves		\N	Daniel	\N	\N	\N	bd30bb679ec640d6a90e02ca6bd58f8b
4733			Sanderson		\N	Lisa	\N	\N	\N	cdbb3c4bb20944c284bb1341fd0af203
4734			Spratt		\N	Dinah	\N	\N	\N	4a4d70a1817c436fba946e31098f53f1
4735			Squire		\N	Tim	\N	\N	\N	aaad4a211b5c4a6ba78f0f0c396437c5
4736			Stojs		\N	Kim	\N	\N	\N	ccfcba10bc4c4910a79d05acd07422aa
4737			Whiteway		\N	Jacci	\N	\N	\N	142c098bd7f54fcabcfcacee0c9e93ac
4738			Williams		\N	Liam	\N	\N	\N	72256dfcf86542e7997a9b0b9ffeca37
4739			Willis		\N	Scott	\N	\N	\N	f348d04138dd451599f596c6e3f4dce1
4740			Yeo		\N	Daniel	\N	\N	\N	36dc109089254a7588d58579881190f5
4741			Angel		\N	Chris	\N	\N	\N	2b1a650b6db346b488f3072452990a7f
4742			Baker		\N	Emma	\N	\N	\N	93a20f034cfc4b5ea022856944475af7
4743		Diabetes assessments, musculoskeletal complaints involving the foot and lower limb, ingrown toenail treatment, orthotic therapy and general footcare	Bentley		\N	Kate	\N	\N	\N	6d1360fed47544d58f40b75340dc1fd2
4823			Drew		\N	Amanda				79ea6323c4644bfcb4c11365ac04669d
4744		General footcare treatment. Diabetes foot assessments, patient education and neuro vascular testing. Dry needling and mobilisation treatment for musculoskeletal foot and related lower limb pain. Biomechanical/gait assessment, orthotics and footwear advice. Treat patients of all ages including children. Ingrown toenail treatment, conservative and permanent surgical removal under local anaesthetic.	Broadhead		\N	Louise	\N	\N	\N	5c127836947d4758ba8e2fd70d56300b
4745		Foot Systems & Sport & Exercise Podiatry: Focus on sports and paediatric podiatry and chronic foot pain. Specialise in custom orthotic therapy and footwear prescription. No nail/skin care at this location.\n \n Kingston Podiatry: All aspects of podiatry accommodated including but not limited to diabetic foot assessments, general skin and nail podiatry. Orthotics and sports based assessments.	Brooks		\N	Joseph	\N	\N	\N	22adcea68e66441883ab74ad6f2f0212
4746			Copper		\N	Alex	\N	\N	\N	a6af34b4e00a41c1af79edfb27b28c9d
4747			Crisford		\N	Paul	\N	\N	\N	72c3a87e2b084ba78de963958b083dbd
4748			Curry		\N	Ben	\N	\N	\N	a26fb06c0c3042f987b82c61d7ef92e8
4749		Sports Podiatry - foot and ankle rehabilitation programs, custom made orthoses, dry needling. Paediatric Podiatry; Diabetes Foot Care; General Podiatry - management of skin and nail conditions.	Dean		\N	Madeline	\N	\N	\N	2d91145975704da9ad6452decca64a6a
4750		Biomechanical & orthotic therapy; Footwear for sale and fitting; Corns, callus & toenail care; Ingrown toenail surgery; Injuries of the lower leg; Paediatric foot care.	Drury		\N	Alesha	\N	\N	\N	c5a6a45f9ba5488397448ac4fa0640f9
4751		Foot/ankle and related lower limb disorders. Highly experienced in complex cases, biomechanics, gait disorders orthoses and footwear. Cam boots, orthotics, ankle braces and comfortable/orthotic footwear available on site. Ingrown toenail treatment, conservative and permanent surgical removal under local anaesthetic. All other foot disorder/treatments in patients of all ages, including children. Pre and post orthopaedic foot surgical review and advice.	Fewster		\N	Fleur	\N	\N	\N	c84ece0fce734479b5d7a4597333513f
4752			Gordon		\N	Rochelle	\N	\N	\N	5c9d29de9bbc4750b5c8d96910484907
4753			Graham		\N	Maree	\N	\N	\N	60ac305d3b794f6a97b2c74df31289c9
4754			Hargreaves-Morris		\N	Jon	\N	\N	\N	1c644c0142a24b6cae27f661df408708
4755		All areas of Podiatry	Hawson		\N	Claire	\N	\N	\N	739a8541113d48dd92af49eac3314f0f
4756			Hemmings		\N	David	\N	\N	\N	b3f9d2412e6d41c09798f68501605901
4757			Hill		\N	Julia	\N	\N	\N	e66676cc0a8d4f2ea489ef607623063e
4758			Hurst		\N	Julian	\N	\N	\N	cc691870eccd484a9f5303ae9de87d9c
4759			Kearney		\N	Daniel	\N	\N	\N	c15d1f6c69dc42539d9e54e942ec5073
4760			Leitch		\N	Sam	\N	\N	\N	119906a3180048238ca064588d61ce66
4761			Lewis		\N	Daniel	\N	\N	\N	c0d54d1bcd9f470d9023bdba1887d222
4762			Maher		\N	Chris	\N	\N	\N	cf2780c1a73e43d19b765b2e5aa7cfc2
4763			Mccausland		\N	Helen	\N	\N	\N	d0aea1ec28e1442592d4ae1962c6687a
4764			Mckinlay		\N	Danielle	\N	\N	\N	c6d500e4250546088c9d7a1ff77b360b
4765			Mcmenamin		\N	Tracy	\N	\N	\N	07f3e6a4905d45fa84892ad5553982ff
4766			Milne		\N	Michelle	\N	\N	\N	123f0422ba6a426081395b11f0d87d1b
4767			Morgan		\N	Roger	\N	\N	\N	d1aca2bab1444530ad5376f5999b4977
4768			Nicholls		\N	Bernadette	\N	\N	\N	8c475bfcec7548deaaa7563e29b1f036
4769			Pain		\N	Tim	\N	\N	\N	3090a75467e74ff8a492f88a9cbd3346
4770			Ross		\N	Alex	\N	\N	\N	3b04f530c3fc4b119a3b7b1f350e2536
4771			Sands		\N	Rowena	\N	\N	\N	efa8814c52ab4248bf93a012265b4205
4772		Musculoskeletal/Paediatric	Sharrock		\N	Matthew	\N	\N	\N	7dd3208b181d4f919fce0b4393088f82
4773		Paediatrics, acupuncture, diabetes, MS pain - foot to lower back	Smillie		\N	Sally	\N	\N	\N	79db960d54b140de825e9cd174fe0314
4774			Stephenson		\N	Sarah	\N	\N	\N	1e0f5ec80eba491e9ad54cdc46a9b62b
4775			Stolorz		\N	Annette	\N	\N	\N	a50ab58a5df04408a3e9e045854b5e2f
4776			Webby		\N	David	\N	\N	\N	122f7d53264942e9a1dc8a73935f5fdd
4777			Willoughby		\N	Lucy	\N	\N	\N	bda35c77d4f84b2084003056cbcd25c9
4778		Specialist in chronic and complex lower limb musculoskeletal disorders of the knee, foot and ankle. Footwear prescription, customised foot orthoses & gait re-education for walking and running. Clinical & research interest in knee, foot and ankle osteoarthritis. Multidisciplinary approach. Please note, no nail or skin care available	Wyndow		\N	Narelle	\N	\N	\N	df286540808a47569017c6df750c29be
4779		General Podiatry; Biomechanics & Orthotics; Paeds and Nail Surgery.	Allen		\N	Fiona	\N	\N	\N	27ee44cb9a9a402fa9b7bf305e799e80
4780			Bower		\N	Virginia	\N	\N	\N	465c9ff2a7c14cbdb95db9c403576d04
4781			Caley		\N	Zarina	\N	\N	\N	15542f10b9cf469496eb56f4cb34fea1
4782			Casalegno		\N	David	\N	\N	\N	8c11aa4c4438436a96dfd326f14e9d33
4783			Cook		\N	Jason	\N	\N	\N	cdfd11958110484583f1566e72e95944
4784			Daly		\N	Perry	\N	\N	\N	52d63afe67ff4be6b3cd6ec610aa27e2
4785			Gorsuch		\N	Lucy	\N	\N	\N	2a5ded6c834440b89cd95ffaafc94603
4786			Jokuszies		\N	Stephanie	\N	\N	\N	3f158a4b06414aed9ab74b075f715610
4787			Keam		\N	Penelope	\N	\N	\N	c25a27f26f1b41c5b34d477fe6208e42
4788			Lightfoot		\N	Renee	\N	\N	\N	8016880c87fe4ae8b2e6ee6c472e2498
4789		Diabetic Foot Management; Skin and Nail Conditions	Loo		\N	Brandon	\N	\N	\N	ba0cc58436ec4f3ab578655ff7d71f84
4790			Mcclenaghan		\N	Susan	\N	\N	\N	ac2a47edbcab4dac8c6f31851d23832f
4791			Mcconachy		\N	Anna	\N	\N	\N	e023c0ff9f0e462eb59eba5ed4397f55
4792			Mckay		\N	David	\N	\N	\N	15f7c26a478f45e689819ea4db405afb
4793		Biomechanics - musculoskeletal injuries/pain treatment. Footwear and orthotic adjustments/prescribing	Mitchell		\N	Manning	\N	\N	\N	93c06eadb4ae46ffa6496c1d7269f46b
4794			Nicol		\N	Catherine	\N	\N	\N	b8e37b1c97f04c3399350b52bdc7aef5
4795			Poynter		\N	Fergus	\N	\N	\N	05efbca7fe8949a2af8e9692fdfcf69b
4796			Tracey		\N	Sinead	\N	\N	\N	d32e356c00204f3a83dec28e47fd6007
4797			Williams		\N	Stewart	\N	\N	\N	e85877e5788e450f894eff65305aadbf
4798			Cassidy		\N	Samuel	\N	\N	\N	3092bf2727854653b5767af6b90bd085
4799			Chia		\N	Yuh-Xin	\N	\N	\N	b879938a5e6243b5b5164619356d3a7e
4800			Cowen		\N	Eunice	\N	\N	\N	25a691b2cf854653b267147da956ff9c
4802			Mason		\N	Janice	\N	\N	\N	4eb6693be7484633ba8077cebf0b06b2
4803			Ogston		\N	Stewart	\N	\N	\N	1fe17b548c7245f7b5e0a8c1438c4e46
4804			Simpson		\N	Cath	\N	\N	\N	a7829e1f2c0e4efb830d0726cbcde50f
4805			Tecson		\N	Rachelle	\N	\N	\N	abf94bbb17464f158f0685ba4b0d24a9
4806			Trueman		\N	Doris	\N	\N	\N	c2b88499ff5246d988704228177fa5a3
4807			Turnbull		\N	Alexandra	\N	\N	\N	63832a6dc6434ec296b9acf589944caa
4808		Biomechanics, Sports Injuries and Orthotics	Varney		\N	Julian	\N	\N	\N	d8d316fcd9d84081944f930a0ecb78ff
4809		Diabetes; Nail surgery	Varney		\N	Nicola	\N	\N	\N	6c8ded5199cf49b190b46cc317545830
4810			Waller		\N	Jack	\N	\N	\N	eef673be7c844d6388f4c267c363b864
4811			Watson		\N	Elise	\N	\N	\N	a50255b30afb4e8a956a29fcc57045c4
4801	\N	Nail surgery, orthotic therapy, high risk foot, paediatrics	Yipeng Li		\N	Leon				3970ba73027b435298ae80ac8c05aca8
4818			Coat		\N	Laura				623453d8cc6045598e2b3239c52ec572
4857		Relationship problems with associated clinical consequences	Wong Hoy		\N	Ashley	\N	\N	\N	7f4fc2243856496fa44acf70f1fcafc3
4870		Treating teens and adults for Eating Disorders; Bariatric Surgery assessment and referral; Depression; Anxiety; Trauma; Relationship/ Marital Issues including Couple‚Äôs Counselling.	Maclean		\N	Alexandra	\N	\N	\N	ca4b905749cf4641849904fe7f8722a3
4884		Pain, family law, relationship, trauma, depression. EXCLUSIONS: children.	De Jong		\N	John	\N	\N	\N	58f0d36dac78479ba931286e840f8cbe
4885			De La Rue		\N	Anna	\N	\N	\N	f346dff85b7545f49136d92522b05057
4891		Treating teens and adults for Eating Disorders; Bariatric Surgery assessment and referral; Depression; Anxiety; Trauma; Relationship/ Marital Issues including Couple√¢‚Ç¨‚Ñ¢s Counselling.	Maclean		\N	Alexandra	\N	\N	\N	bdfffb32f5c742a08431a2ebd0275c5a
4912			Beardmore		\N	Sally				864b6a9b86194abe9dee81cf268f0ebf
4999		Perinatal mental health	Beswick		\N	Angela	\N	\N	\N	587534e46d5048a586499ade343a14f2
5019			Van Der Wijngaart		\N	Samantha	\N	\N	\N	515ac53f88b847fa846049d5e1ab2b33
5022		Tamara works with people of all ages, including those who are LGBTI, into BDSM/kink, sex workers, from culturally and linguistically diverse backgrounds, have experienced torture or trauma, or have experienced recent or historical sexual assault.	Reynish		\N	Tamara	\N	\N	\N	dbf2c8f241b547669d89562f0a36f09c
5025			Archer		\N	Olivia	\N	\N	\N	52eff276402b428b8d8340d5e47402dd
5026			Baker		\N	Claire	\N	\N	\N	938cc507fad24f7ca9d5f2f6fa787a8c
5027		0-17yrs - Speech Pathology, Physiotherapy; Occupational Therapy	Burns		\N	Tennille	\N	\N	\N	217b83247b064477a378c6e3adf4fed0
5028		Literacy; Speech; Language; Swallowing; Stuttering.	Coupe		\N	Sarah	\N	\N	\N	05e3d913f5f94ed3bccd21506f22bcae
5029			Cowles		\N	Nicole	\N	\N	\N	35cd7013fbed4f0ab4f6e01b7a6ec018
5030			Dickinson		\N	Jessica	\N	\N	\N	96342e628d6b445ba45b38f2905dab81
5031			Emmett		\N	David	\N	\N	\N	fd4e7c394c9e40dea8427b88476614b5
5032			Hazelwood		\N	Emma	\N	\N	\N	726c9858b7514c499bd35323fff50791
5033		Augmentative and Alternative Communication EXCLUSION: Meal Management	Hockley		\N	Peter	\N	\N	\N	29aca6fb5e1947178d334f8048fd2f31
5034			Hockley		\N	Rebecca	\N	\N	\N	3ec2008fa67b424081b5d83ce441ee48
5035			Holland		\N	Jacqui	\N	\N	\N	467b5558645645afa2dbbb1c31c3cc12
5036			Johnson		\N	Lisa	\N	\N	\N	4db0bd09bf244c4795a9c14873351f17
5037			Laugher		\N	Tanya	\N	\N	\N	2dea665d687341499caec111266505fd
5038			Laurence		\N	Felicity	\N	\N	\N	161e8cadb3594ff8aad51cc8f7f2ac55
5039			Limmer		\N	Rebecca	\N	\N	\N	aafb3fec24d34640afc5c61009d4e639
5040			Martin		\N	Rosalie	\N	\N	\N	4061ed27ed1d49ecbb09b688e8c095f4
5041			Mckillop		\N	Linda	\N	\N	\N	e6f2621666b04af59918f15ecac83b66
5042			Puckering		\N	Holly	\N	\N	\N	054f9302e9604e44bb203dc91cc3d28c
5043			Purdue		\N	Hollie	\N	\N	\N	91aba590afea44b7a72b3e7ecb041704
5044			Ross		\N	Caroline	\N	\N	\N	a607e7ddd3d74683b5fdaf878499f086
5045			Seeney		\N	Miriam	\N	\N	\N	6cdcad75254d4804b733af9b27525b7e
5046			Steele		\N	Sheila	\N	\N	\N	7a0b3d1d9d0b4198a4c0a0616d1a03fa
5047			Webster		\N	Prue	\N	\N	\N	70082b7215cd4800b354e029b551dee2
5048		Catherine Wood provides a regular mobile Service to Launceston, Queenstown, Rosebery and Smithton as well as home and school visits in Burnie, Devonport and Ulverstone.	Wood		\N	Catherine	\N	\N	\N	2e1cbd5d87fb41c89f791626127ce72f
5049		Exclusions; Adults and adolescents (13 years+)	Dean		\N	Jacqui	\N	\N	\N	be01ffa479fd4c8d8ca3fa5cc823f2db
5050			Innes		\N	Tania	\N	\N	\N	8c85019f82224542a254f5273cf30728
5051		Disability, autism, augmentative and alternative communication, feeding in young children	Maine		\N	Greer	\N	\N	\N	8822f996b6ad4e7b807e15ce47e5ffc6
5052			Milroy		\N	Abby	\N	\N	\N	88ab3b0b130f44d1984c7cadd8b85b53
5053			Russell		\N	Isabelle	\N	\N	\N	964f0237c81041d19b1f509626bf7816
5054			Zeeman		\N	Rachael	\N	\N	\N	495fb9f7bd3f4bf890539d1aa5040707
5055		Paediatric Speech Pathologist	Brooke		\N	Lynn	\N	\N	\N	529770567f044640be3897813608c2bd
5056			Finn		\N	Suzanne	\N	\N	\N	fa1da65884d2414a817d9d740cd65bcd
5057			Heywood		\N	Wendy	\N	\N	\N	bc3d1d7e400c4ec585e018e0b1ca3b27
5058		Children, Speech, Language, Literacy, Disability, Learning Difficulties	Humphris		\N	Esther	\N	\N	\N	207230f0903d4f6d82d35be1f849fe1d
5059			Lillico		\N	Sonia	\N	\N	\N	4d21b3d2852d4c77b30ebe943f029649
4951		Mindfulness - integrated Cognitive Behaviour Therapy (MiCBT) for a wide range of mental disorders EXCLUSION: Children	Kirby		\N	Denise	Yes	$180		d5526dad07a04c58bd6bbf46163f4d0c
4953			Laugher		\N	Megan	None. Discount negotiable with treating psychologist in case of financial hardship.	APS rate is now $238 per session. Discount if paid on the day of consultation is $170	Please call to check availability for new referrals.	187cdf812ec5474d8da0a1be01c2b2de
4954		Perinatal, anxiety, trauma, OCD, mood disorders, workers compensation	Ling		\N	Katie	Negotiable	$185 ($150 concession)	3-6 weeks	f2e4b58867ea4b0aafc8de42045ef2e0
4955		Depression, anxiety, grief, chronic pain management, PTSD, panic, phobias, stress (e.g. workplace, parental, relationships), OCD, self-esteem issues, grief, anger management, adjustment, anger, sleep difficulties, problem gambling. Specialised in Mindfulness training.	Little		\N	Jason	Available for clients with Health Care Cards /Student card	$55 gap	1-2 weeks	439f6ad233c44ffb9669c016f0cb81a5
4956		Grief and loss, anxiety disorders, depression, work stress, OCD, anger management, stress	Lum		\N	Geraldine		Please ring to discuss	Approx 2-4 weeks, cancellations available at short notice. Check www.psychintime.com for availability	9a20cffee5a044aaa9ffec1349561d64
4957		Grief and Loss; Trauma; Sexual Dysfunction and Disorders; Hoarding. EXCLUSIONS: Autism, Cognitive Assessments, Intellectual Disability	Lusk		\N	Bethany	Yes - at Practitioners Discretion	$195 Full Fee, $175 with Concession card	One Month	64447061c2a241b7a6394430bd701e09
4958		Children, adolescents and young adults; parenting; perinatal non-directive counselling; cognitive/educational assessments.	Lynch		\N	Ashley	Negotiable	$160 per hour, clinical rebate applies with MHCP.	2-3 weeks.	a2c0652310f84e7fb119e90749c787f4
4959			Lynch		\N	Shayne				818fb2a0eb154a5b95321b227e07f563
3105			Bakker		\N	Paivi	\N	\N	\N	3f0f2646178448648b0ece91a9ff6a21
3106			Baldock		\N	Mark	\N	\N	\N	b987105c5603429c952734be91ee0845
4960		Anxiety disorders, mood disturbances, adjustment difficulties, relationship conflict, self-esteem skills, assertiveness skills, weight management, general life problems and development of skills.	Marrone		\N	Adela	Yes, for Health Care card and Pension card holders.	$175	2 weeks. Days - Wednesdays, Thursdays and Saturday by appoinmtent	aaaf28adffb44c47bf883ebc1dfba7dd
4961			Matthewson		\N	Mandy				1af26009921749978f805e7c2bdebe18
4962		Child and Adolescent Mental Health, Deliberate Self Harm, Anxiety, Social Skills EXCLUSIONS: Couples Therapy, Severe Eating Disorders	Mccallum		\N	Jessica	Health Care and Pension Card Holders	$195	2 weeks	5c10f7a76ef74f96be8e6e566c79d959
4963		Mindfulness-based cognitive-behaviour therapy, Acceptance and commitment therapy (ACT), depression/anxiety disorders couple/family therapy, substance dependency, eating disorders, trauma/ abuse history,adolescent issues,spiritual psychology	Mcgarry		\N	Julian	Yes	Private health Insurance Clients: $130 per 60 min session. Medicare Clients: Bulk bill. Uninsured Private Clients: negotiable.	4 weeks for Huonville, approx 4-5 weeks for Kingston	09d944d527414393a47fe1770c4e3ac2
4964		Disorders: anxiety, depression, bipolar, phobic, adjustment, sexual, conduct, PTSD, bereavement, eating, panic, sleep problems, alcohol and drug use, psychotic, schizophrenia, obsessive compulsive, co-occurring anxiety and depression and pain management.	Merse		\N	Kerry	None - discount negotiable with treating Psycologist in cases of financial hardship.	APS rate $241, discounted to $175 if paid on day of consultation.	Please call to check availability for new referrals.	0ab0a253199449aab43a625401df6916
4965		Children, adolescents and adults, parents and carers, when required. Management of anxiety, phobias, school refusal, grief and loss, depression etc. Health psychology especially chronic health conditions (including cancer, chronic pain, stroke). Children of mental health consumers. Pain Management.	Mertens		\N	Brad		Standard $170 appt or APS rates for 3rd party (Gregory St and Federal St)	Usually around 2 weeks (Gregory St and Federal St)	662e8bf8d6f64467ab68f9eaa47107bc
4966		Post traumatic stress disorder, complex trauma, anxiety, GLBTI, transgender, AOD issues. Exclusions: Children	Milner		\N	Karla	Yes	Nil with mental health plan	2-4 weeks	71b6fcbabb9a4a75bfc4fa068b6e829b
4967		Attachment, Children, Adolescents, Anxiety, Depression, Trauma, ASD	Morgan		\N	Michaela	Health Care Card and Pension Card Holders	$190 per session	1-2 weeks	70fe6caa80494603a04abb9578f8f9a5
5000		Adults (17+), couples, predominantly CBT, IPT and Schema Therapy for depression, anxiety, adjustment, trauma, grief end life changing events.	Bindoff		\N	Helen	No			f604eb4b0dbf4102826e35166d272366
4968		Anxiety, stress, depression and behaviour change therapy; \n \n Psychoeducation and wellbeing services for adolescents, children, adults and families. Educational, behavioural and autism assessments. NDIS (National Disability Insurance Scheme) Approved and Registered Support Provider.	Morse		\N	Ali	Offered to clients who hold a current Pension card and Mental Health Care Plan	Fee reduction avail. to clients with a HCC and MHCP.	Approximately 3 weeks.	e4e0553e45d44162b613f36eccd91dda
4969		MAIB and workers' compensation, trauma, work related issues, couples, rehabilitation, intellectual disability, orthopaedic and traumatic brain injury. Chronic pain, depression and anxiety disorders. Veterans.	Nelson		\N	Peter	Low income earners & Health Care card holders.	Private Individual $175. Recommended fees for MAIB and workers	1 week or same day if urgent.	afade52c5dfe4a41b629021ee2411f63
4992		Trauma, relationship counselling, self-harm, mood disorders, anxiety, adults and children.	Washington		\N	Amy	Yes	$145 per hour	Approximately 3-4 weeks	cac72cf40c4741d2be32766adbd970cc
4952		Pain & injury management, health management, anxiety, sleep, stress and depression.	Lane		\N	Sabina	By arrangement only.	$165 if pay on the day.	Generally 1-2 weeks	ed3c203328f54b4eba440da4e8d85c2f
5321	\N		De La Rue		\N	Anna				fd6b5be4798b4514875dc6e1fa41c791
5320	\N	Pain, family law, relationship, trauma, depression. EXCLUSIONS: children.	De Jong		\N	John	No. But reduced fees for health card			03f59ea3579d48d7acb5f8eeef29454c
4881			Chamley		\N	Christina				b9d9219c54ef47849d9b81fcc9c7380b
4882			Cooper		\N	Geoff				f3669538e6b5453e93d1f5f671d4303b
4883			Dawson		\N	Rachel				9974040ddde6487da16d9786a1d3bba4
4886			Ellsmore		\N	Wendy				ed6ed10e3f754c0ea6289269d4bc08cb
4887		Provisional Psychologist	George		\N	Mikalha				3a4cc1bf407f44a9bc208a89bb72d674
4888			Henderson		\N	Vivien				e82302bcaad345af84d410bc2cec0917
4889			Jensen		\N	Claire				2057dd27eafa44cd97a0f07535d82f68
4868			Lack		\N	Abbey				b2b41b10c1ab489aa8330d3f02a505d9
4890			Lennon		\N	Robyne				f06bb99411b9491e9e041fecf8d588c1
4892			Mainwaring		\N	Nicole				c6f09a96c1b44018a367ab3620025038
4893		Attachment, anxiety, depression, children and adolescents, grief and loss, trauma. EXCLUSIONS: drug and alcohol disorders, gambling, eating disorders.	Martin-Cole		\N	Tracey	Not the initial appointment			60b2d85712e74ec4bfecda89ddd00557
4894			Mcclure		\N	Cathy				913ef80e4323474386ab26e7fc020e2a
4895		General adult psychological services, CBT - men's health couple counselling, mindfulness for anxiety and depression	Mcclymont		\N	Andrew				4e44fcfa7b6541388b89454f3a051e54
4896			Mclean		\N	Mark				3a5f157b4ce543c7aa4206df177d8a79
4897			Murphy		\N	John				2e11dfe7f8a64f6e980388b03d93f043
4898			O'Donnell		\N	Michael	Not routinely - Clinician/Client discussion	Non concession $140, Concession $110, 50+ minute consult will require MHTP to receive Medicare rebate of $84.80	within the week	a15d5062bb8b4ed7a680f1a0fe8e705a
4899			Partridge		\N	Ali				609dd058d6a74e80b6dd95178244ad16
4900			Rutherford		\N	Heather				204a16c9bcbb443b8928dbe5683257a5
4901		Chronic pain	Smith		\N	Bernadette				f7bdc29f462445528421abed30f913d6
4902			Spinks		\N	Helen				0a75485c54e746ef96217fac6e77570c
4903			Wagner		\N	Andrew				3ea87f26124f4d9a9b3760b5165ef30f
4904			Winter		\N	Katharine				f8373c750e834b6194fe08321e7c22e7
5024		Aged 65+, also Under 65's through TAS Care Referral. 50+ for Aboriginal and TSI	Williams		\N	Claire	No	$16 pwe hour throug My Aged Care referral	No waiting. Contact made through My Aged Care referral 1800 200 422	245cbaf6c2b047b3827065ad4cceb2cb
4905		Mark works from a variety of therapeutic models including CBT, Mindfulness-based treatments, and Neuropsychotherapy. For clients who wish to explore their lives and how they got to where they are, Mark can also utilise a relatively long-term psychodynamic psychotherapy approach.	Andersen		\N	Mark		$180 per hour	Usually less than 2 weeks	0b44f74478444852a92d50911dfc313d
4906		Adults, adolescents & children, anxiety disorders: particularly PTSD, depression, victims of crime, veteran clients, general stress, occupational injuries, eating disorders, adjustment problems. Drug and Alcohol.	Anderson		\N	Christina	Bulk billing for health care card holders.	$170 private individuals.	Varies. Please check answering message for current waiting times.	5f04897c4bfb4f91828039bcda4222ff
4907		Anxiety and mood disorders; developmental trauma, PTSD, grief/loss, life transitions, stress, self-esteem, dual diagnosis	Avery		\N	Rachel		Concession $150 ($25 gap); Full fee: $180 ($55 gap)	1 week	2244dfd49d35498882137ebaf281a1c8
4908		Depression, anxiety, sleep, trauma, motor accidents, victims of crime, relationships, workers compensation, postnatal depression & phase of life. EMDR practitioner, Hypnosis EFT	Badcock		\N	Roslyn	Special consideration may be given.	Full fee $241. Discount for same day payment, $180 or if Health Card holder $150	Usually same week as referral.	d6004b82ab654aa0b2d8dc8250f66ee5
5300		Providing Outreach Counselling Services - visiting clients	Nolan		\N	Andrew		$120 - $160 per hour	Assessed by need	8ae2aadd705b46b591927c8c06a39729
4909		Adults and adolescents experiencing a broad range of difficulties and works collaboratively to improve mental health and wellbeing using evidence based treatments. A special interest in chronic health conditions and works as the Renal Psychologist with the Tasmania Health Service	Baker		\N	Carolyn	Negotiable - health care card holders and pensioners	$160 per 50 minutes session, $150 if paid on day	1-2 weeks	bc789a0cc28a474ba77de8f75e15e509
4910		Anxiety, Depression, Technology Use	Bakker		\N	David	No	$185, ($150 concession)	1 - 2 months	70571f138d284ecda207e08ab413163f
4911		Autism Spectrum Disorder in children; Anxiety related disorders in childrem	Balmer		\N	Sian	No	$185 hour consultation in clinic rooms and $215 hour consulation outside clinic rooms	approx 4 months	94898cdc5a2842d4862b8b0e2d7ddfca
4913		Adults, adolescents, children (age 6-12). depression, anxiety, personality disorders, DVA, trauma focus.	Beaumont		\N	Sally	Will bulk bill Health Care Card holders and pensioner under Mental Health Care plan.	$175	1-2 weeks	1167f1b712484edb898ec3c6ad420417
4914		Child, adolescent and adult mental health, relationships, trauma recovery and men's health.	Bradford		\N	Steven	Yes	Standard Fee $175	Call to check availability	8ec30831ecfb43b1a2ad1ac9b40fad41
5001		Paediatric Psychology; Families and Parenting	Boer		\N	Olivia	No	Please contact Centre for details		060366f9c1fe4f6c809dbe3c8316d58d
4915		Couples counselling, mental health issues arising from or exacerbated by relationship issues, or mental health issues adversely affecting relationships.	Brumby		\N	Roseanne	$10 gap for Health Care Card Holders with Betther Access MHCPs	$170 if paid on the day. 10 Gap. Note: Medicare will not rebate for couples counselling.	Variable, 4-6 weeks	9125f39c3cdb4cfa8c7dfe807df80b95
4916		Anxiety disorders including PTSD and panic disorder. Depression including postnatal depression. Workers compensation. Veterans and military compensation.	Burrows		\N	Linda		$254 discounted to $175 if paid on the day for private patients	Variable, approximately 2-3 weeks, depending on time of year	e9be51c3a9ed4f3fbd63f138ca1394ce
4917		Adolescent Mental Health, Perinatal Mental Health, BPO, Anxiety, depression	Cannan		\N	Philippa	at Discretion	$185	1-2 weeks	0066149ff7fb410f901e7f5853470ad6
4918		Mindfulness and cognitive behaviour therapy for most psychological disorders. All ages from late adolescence.	Cayoun		\N	Bruno	Negotiable - Health Care card holders	$55 Gap	Usually between 2 and 4 weeks	93fce6f1eb914a52871de37d259cb2c5
4919		Adults (18 years and over), complicated grief, anxiety, depression	Chilcott		\N	Karen	Bulk billing with mental health care plan			b6cf6677fc15458aa798016ae3698ace
4920		Anxiety disorders, (panic, generalised anxiety disorder, post traumatic stress disorder, OCD, etc)\n \n Adjustment & mood disorders\n \n Critical incident stress debriefing / acute psychological trauma	Chiranakorn		\N	Parinda	No	Please ring to discuss	Approximately 2-3 weeks	bfa3a7b62d524404a176a2c0e27b8f51
4921		General adult.	Cholajda		\N	Clair	In some circumstances	$150 per hour	Generally 2 weeks, but emergency appointment available on Wednesdays	8610041ae2ad47bf943d61f8a5008846
4922		Chronic illness, cancer, loss and grief, depression, end of life issues.	Clifford		\N	Christine	Yes	Bulk bill	2 weeks	ca04dd9653bf47e5b2764394dcf6578d
4923		Anxiety & OCD, depression, PTSD, substance abuse, pain management, sexual abuse.	Craske		\N	Marie-Louise	Discount Health Care card holders (gap $20)	$185 ($160 for health care card holders)	2-4 weeks	28274955cbf34765bd456ea0f599ec4b
4924		Adult and adolescent mental health (including trauma recovery, self-harm, suicide risk, personality disorders, gender identity, occupational stress). Perinatal and infant mental health (including perinatal depression/anxiety, perinatal loss, attachment difficulties). Forensic psychology (including medico-legal assessments and reports for victims of crime, workers compensation, MAIB).	Crawley		\N	Tess		30 min consult $140, 50 min consult $180, APS rates for 3rd party payers	3 weeks waiting list	69af7df342544fb3bce4e29052f8a7e5
4925		Adult and older adult mental health. Health and illness, chronic health conditions.	Croft		\N	Tobias				f41a38872b09458dbd2122b44b07936c
4926		PTSD & Trauma; Problem sexual behaviour in children	Dance		\N	Gemma		$185 Full fee, $150 Concession - $124.50 rebate available	6 - 8 weeks	fcf132ac9932439aa855b3a8bf99347c
4927		Trauma, depression and anxiety.	Dawson		\N	Ty	Health Care Card holders only	$175 per hour		f130babbcc5049e5843e3387936df872
4950		Working with adults to manage anxiety, stress, panic & perfectionism. Assisting to build self-esteem and confidence, enhance communication skills, manage depression & develop effective parenting skills. Therapy for children & adolescents: anxiety, depre	Kelly		\N	Erin	Bulk Billing for Health Care Card holders with valid MHCP experiencing financial hardship)	$165 per hour ($40.50 gap for MHCP). APS rates for 3rd Party	Approx 2 - 4 weeks (Wednesdays and Thursdays only)	773794f438774bd6abef353de9a29a89
4928		Children, adolescents and adults. Cognitive Behavioural Therapy, DBT, ACT and other mindfulness-based approaches for a range of issues including: stress, anxiety, depression, adjustment disorders, psychosis, bipolar disorder, addiction, OCD, trauma and PTSD, eating disorders and chronic pain. Men's health, sports and performance psychology.	Declerck		\N	Andre	None. Discount negotiable with treating psychologist in case of financial hardship.	APS rate is now $241 per session, discounted to $175 if paid on day of consultation.	Please cal to check availability for new referrals	ca5d48d171e8476e887c5ffcd3f957b8
4929			Denehey		\N	Sigrid				d0731b4c1abe462d8b1749006a6521e4
4930		CBT, DBT, ACT and other mindfulness-based approaches for a range of issues including anxiety/mood disorders, substance use, trauma, self-harm, emotional regulation difficulties, PTSD, psychosis and eating disorders and persistent pain. Adolescents (12yo) to Adults.	Dewis		\N	Louise	None. Discount negotiable with treating psychologist in case of financial hardship.	APS rate is $241 per session, discounted to $175 if paid on the day of consultation	Please call to check availability for new referrals	2e6bd1c6d4d243e5b7a62f9db2d4e86d
4931		Anxiety, depression, stress, trauma, substance abuse, relationships.	Dobber		\N	Rosemary	Low income clients on Medicare Item 2710. A $50.50 gap otherwise applies.	$175 per session (negotiable)	1-2 weeks	15793875676f4eaeb85b4ded12c6f004
4932			Fernandez		\N	Shirin				26adfed2be5b41269ec78c6f662120e9
4933		Infant, child and adolescent psychotherapy and counselling. Especially attachment issues and attachment disruption. Child and adolescent anxiety and depression. Behavioural problems. Family relationship issues, blended family difficulties and family restructuring. Family therapy, couple/relationship counselling and Psychotherapy. Individual psychotherapy.	Freeman		\N	Brad	Yes, depending on circumstances.	Generally $150-$220 depending on circumstances and duration of session. Medicare rebate at specialist rate if under MH Plan.	1-2 weeks	193a53dfc4f341a38a8835c50b77cf80
4934		Mindfulness; Adjustment Disorder; Grief & Loss	Freestun		\N	Janet	Generally charge a small gap fee ($5-$10) for Health Care Card Holders	$170	6 weeks	16a313815bd743f4874cdf807afb8c82
5301			Waller		\N	Tony				9838d900c6234e61a863a392132fd5cf
4812		Anxiety, dependency, eating disorders, trauma, sport psychology and depression	Adams		\N	Jeremy	No	$170 per session - Health Care Plan rebate	within 2 weeks	79618655f7f94babb367c9bcfbeb4372
4935		Special Interests: Anxiety Disorders including GAD, Social and Specific Phobias (including stuttering), Panic/Agoraphobia/Avoidance, OCD; Stress/Trauma and Complex Trauma/Personality Disorders. Life Adjustment following loss, separation, relationships. Mood disorders and associated difficulties in low self-esteem and perfectionism. CBT, Schema Therapy and ACT evidence-based treatments.	Gilroy		\N	Lisa	Heath care card/concession holdersand those under financial distress	$35 gap unless under financial distress then bulk billed	1-2 weeks	9a5b1d2ce9534e06b5684973a1c9a915
4936		Children and adolescents, trauma, chronic/severe depression, anxiety disorders and family therapy.	Gore		\N	Rohini	For Health Care card holders & low income earners	$170 per hour	Approximately 2 months	714dff40316a4807ada434b0ef458a86
4255			Bellchambers		\N	Jess				ed62af2f051e4bb5a0d4704c3f35bb4b
4937		Anxiety, anger, abuse, trauma, substance use, clinical mood disorders, personality disorders, life crises.	Haines		\N	Janet	Yes	If not bulk bill - sliding scale - generally around $90 to $145.	Approximately 2 weeks	bcc1f3c189ba4fb2955950d87e641612
4938			Hall		\N	Graham				29183f5b5f674ce39f228ed7bf1539d3
4939		Depression, social anxiety, relationship counselling, anger management, childhood trauma, pain management, PTSD, workers compensation counselling, emotional disturbances due to motor accident claims (MAIB Claims).	Hamer		\N	Peter	Pensioners, students and unemployed.	$160.00	Non-urgent 10-14 days. Urgent 48 hours.	7217174a271b4c4bb7b6f8decc67bf7a
4940		Weight management	Harrison		\N	Noelene		$164.50	Nil	36b60d6e36e84d439b2ed6a4d7baf779
4941			Hartley		\N	Jessica	Concession rates apply	$185		172dd48692464c30888e5699486f0487
4942		Peri-natal & infant mh, including peri-natal anxiety & depression, impact of infertility/IVF treatment, peri-natal-loss, attachment/parenting. Adolescent & adult mental health, including eating disorders, self-harm, PTSD depression & anxiety, OCD, relational & sexual difficulties. Adjustment to medical conditions such as MRKH, CAIS, Turners Syndrome and Premature Ovarian Failure etc.	Heller-Boersma		\N	Jacoline	Negotiable	$199.50 (2 hr assessment), $169.50 following 1 hr session. $124.50 rebate.	Approximately 2-4 weeks depending on urgency.	ce45285dd675465192cbfc6d1cddb7fc
4943		Anxiety and phobias, depression, bipolar disorder, personality disorders, eating disorders, psychosis, self-harm, low self-esteem, sleeping problems, grief and loss, interpersonal issues, behavioural disorders, addictions. Trauma, suicide. Children, adolescents, adults and couples DBT, CBT ACT and mindfulness based therapies.	Hill		\N	Kristy	Yes	Bulk billing for Health Care card holders, students, low income earners with a MHCP.	Please phone to check waiting times.	dc5152154e334cc4973191fdfcc6760a
4944		Anxiety, Depression, Adjustment, Trauma, Stress, Loss/Grief, Anger, Self-esteem, Identity, DVA and MAIB	Hope		\N	Dallas	Health Care Card Holders	$180	2 weeks	842b2d13caac455a8b0f231de0d27e25
4945		Anxiety & mood disorders, trauma, personality disorders, grief & work stress.	House		\N	Janine	Salamanca Psychology: Bulk billing for concession card holders; Archer Street Health: Negotiable if in financial hardship	Salamanca Psychology: $180 per session; Archer Street Health: $185 per session	Salamanca Psychology: 6-8 weeks; Archer Street Health: 2-4 weeks	b9ff101c0f904388b3212c666fe4816f
4946		Perinatal Mental Health, Anxiety, Trauma, Grief, Eating Disorders, Children	Hunn		\N	Alexandra	At Discretion	$185, ($150 concession)	3 weeks	bdb07072fa4f48158764f99123ac3aca
4947		Adult mental health - cognitive behavioural therapy & dialectical behavioural therapy. Exclusion: EMDR	Hunter		\N	Joanne	No	$176.50. $146.50 concession	3 - 4 weeks	a4a23d66be5b44c9b9cb9362ae224643
4948		Alcohol & drug dependence, PTSD, Relationship counselling, workplace stress or anxiety and depression.\n \n Prefer to work with adults and teenagers. Also run group treatment programs on depression, panic disorder and anxiety, positive psychology, chronic pain, personality disorders & chronic illness.	Hyslop		\N	Elizabeth	98% of patients are bulk billed, including single parents and couples in financial difficulty.	Range between $124-$150. Also open to specific bulk billing requests from GP.	1-2 weeks if non-urgent, within 1 day for urgent situation.	e9af703e9098413e9b9e9b49e35d967d
4949		Child, adolescent & adult mental health - assessment, diagnosis & treatment.	Josephs		\N	Angela	Yes	Bulk billing available	Depends on urgency/priority of client needs. Generally 2-4 weeks.	773e9ec4bfbd41d1ac5b63ce079d2252
4970		Disorders: anxiety, depression, bipolar, phobic, adjustment, sexual, PTSD, bereavement, eating, panic, sleep problems, alcohol and drug use, psychotic, schizophrenia, obsessive compulsive, co-occurring anxiety and depression and pain management.	Nichols		\N	Jennifer	None. Discount negotiable with treating psychologist in case of financial hardship.	APS rate is now $241 per sessio, discounted to $175 if paid on the day of consultation.	Please call to check availability for new referrals.	2ad33d617e74497fa76a3c664534b63d
3107			Ballingall		\N	Clare	\N	\N	\N	91f815c4f1ff4999ad220facca210f77
3108			Banham		\N	Elizabeth	\N	\N	\N	59e4de84a7c74c95ad453a62a6b06dfc
3109			Banks		\N	John	\N	\N	\N	9789c17ba96e4d898c39463eb025b8e5
3110			Baratosy		\N	Peter	\N	\N	\N	f1cac4f45d5b4eafad2940d89f8308b7
3111			Barnes		\N	Tim	\N	\N	\N	4528497fb7ed466496c9e4431564711d
3112			Barratt		\N	Annette	\N	\N	\N	fa6822b9dd55476c9aacc7fada42b25b
3113			Barrenger		\N	Mark	\N	\N	\N	5861625fc9064087b64280648ae3c180
3114			Bates		\N	Elizabeth	\N	\N	\N	cf511e98861e49cc995f73e6e8c9f19d
3115		Mental Health; Skin Cancers; Chronic Disease	Baudoeuf		\N	Michelle (Suzy)	\N	\N	\N	76e6a1b3ae174cd2899168d34232e506
3999			Russell		\N	David	\N	\N	\N	547c34f9e26e4be786b759004230b97a
4817		Children/Adolescents	Chalmers		\N	Emma	No	$180	Fortnight	fff3038f6c174ae2b045d30ec77cd376
4847			Stark		\N	Ann				8b5098b323b64950a94622db799d57d9
4971		Anxiety, depression, anger management, work stress, legal assessments, cognitive assessments, behavioural assessments.	Norris		\N	Kimberley	Available only on Mental Health Treatment Plan.	Private Health approximately $110 per session.	3-4 weeks.	cc561583058a45f98428cbcd7a37ae0e
4972		Anxiety and panic, stress, grief, anger management, pain management, trauma, depression, relationship issues, personality disorder, workplace/school issues, children & teenagers, perinatal mental health, transgender identity. Emphasis on: cancer and life threatening illnesses (including family members). Health issues. EXCLUSION: No children	Nutting		\N	Kym	Bulk Billing is offered to Health care card holders with a MHTP	$170 per hour, $130 per half hour.	Available Tuesdays and Thursdays.	ae29ecd4d5fc44869ba22a9afb19857f
4973			O'Rourke		\N	Stefanie	Yes if holder of Concession Card	$190 per session	Generally 5-7 weeks	1450324df7c74fa2b78dab09144a48af
5306			Ikin		\N	Raelene				48d2f1a716524a7bae63be5e64b4af4d
4974		All common mental health conditions. Particular interest in anxiety disorders. Dyslexia and learning difficulty assessments.\n \n Educational and Developmental Psychology.	Parkyn		\N	Kelly	No	$155 per session. $135 for Health Care card holders. $995 flat rate for cognitive assessment.	Waiting time: 4 weeks approx. Available: Tuesday and Wednesdays.	a03082be667146f2a100837ef1b92e82
4975		Trauma, complex trauma, anxiety, depression, borderline PD, behavioural issues	Pettit		\N	Kelly	yes			c62d1f7be9bd4638b2d0be4e3a803ae0
4976		Child and adolescent, family work, separation, sexual abuse survivors, self harm/suicide	Pinkus		\N	Stephen	Health Care Card holders or equivalent under Medicare item 2710	$175	2-4 weeks but cancellations available at short notice.	9c57e1b0b91f48618a1bb9296a10d7e7
4977		Disorders: Anxiety, depression, bipolar, phobic, adjustment, conduct, PTSD, bereavement, eating, panic, sleep problems, alcohol use, drug use, attention deficit, obsessive compulsive, co-occurring anxiety and depression.	Prichard		\N	Jacqueline	None. Discount negotiable with treating psychologist in case of financial hardship.	APS rate is now $241 per session, discounted to $175 if paid on day of consultation.	Please call to check availability for new referrals.	0859253ded884ae4830b055891ef863a
5302		Narrative therapy: therapeutic work with trauma legacies, grief, anxiety, PTSD, depression, relationship work, life transitions. - \n \n Not accepting new clients at this stage	Wever		\N	Christine	No	$140 per hour; rebate $75 per session	Approximately 3-4 weeks	6e7e03a8449547229e1a74a43eacae79
4978		I work with adults through trauma, anxiety, depression, injury, workers compensation matters and the full realm perinatal mental health matters (trauma, depression, anxiety, birth preparation, early parenting). Acceptance and commitment therapy and mindfulness based therapies & hypnotherapy. Hypnobirthing Australia childbirth education classes.	Purvey		\N	Sarah	For health care card holders: $145 - $20.50 out of pocket. Full fee: $174.50 - $50 out of pocket, with a care plan.		No waiting list	30fdd28f1aa54eadaded2426fe0fca55
4979		Adult mental health, including depression, eating disorders, personality disorders and anxiety disorders, CBT, DBT & mindfulness	Savage		\N	Kate	No	$170	2-4 weeks - waiting list	bb3b474d2a4c4971adec3042e7a68d58
4980		Eating Disorders (Anorexia Nervosa, Bulimia Nervosa, Binge Eating Disorder, EDNOS)	Scanlan		\N	Meg	Bulk billing is for health care card holders only	$170 per session	Variable - Will endeavour to see patients with Anerexia Nervosa as quickly as possible.	5deeb4d71a10465688b864c543a8a3d5
4982		Depression disorders, anxiety disorders, anger management, bipolar, abuse, trauma, substance abuse, personality disorders, relationship issues, life crisis, grief, work stress, OCD	Scott		\N	Janita	Bulk billing for concession card holders. Discounts negotiable in the case of financial difficulties	$180 per full session. $120 per half session. APS rate for 3rd party	Generally 3-6 weeks for new referrals. Please phone to check availability	1fea1ffed42141e092e1700d9cf80db0
4983		Adolescent and adult mental health, including perinatal, anxiety, depression, trauma, stress, substance abuse and personality disorders. Will treat anxiety in younger children. EXCLUSIONS: Autism spectrum disorders, childhood behaviour problems, couples	Slym		\N	Renee		$130 per 30 minute consult; $170 per 60 minute consult;	1 - 2 weeks	3eebb38ec3164189933255598fa01621
4984		Anxiety, depression, trauma, personality, gambling and other addictive disorders and adolescents.	Spurrier		\N	Michael		$180 per hour	Currently accepting patients	131cfdbcd40b4aa8b4cf091e5d34fea9
4985		Habit change, smoking, alcohol, eating, confidence-building, weight loss, sports psychology, psychology of investment anxiety, stress, insomnia.	Stanton		\N	Harry	No	$150 per 1 hour session	Approximately 1-2 weeks.	d79ff3f73c4147caa9fcd9bdf03d3029
4986		Child and adolescent therapy: anxiety, depression, trauma, selective mutism, social and challenging behaviour assessment.	Stewart		\N	Laura		$185	6-8 weeks	14eb76c1c1f94cd7ad14c8b88618e03f
4987		Treatment of anxiety, depression and trauma in children and adults. Diagnosis/management of children/adolescent learning/behavioural/emotional issues. Hypnosis. 30 years clinical experience with training in the USA and Australia.	Stoklosa		\N	Margaret	No	$175 per 50 minute session	4 weeks	525fd7ab155e4893ab76bab1c2401de8
4988		Anxiety & OCD, incl. panic, generalized anxiety, phobias, PTSD, & mixed anxiety/depression. Adults & adolescents (children also seen if OCD is a prominent feature of the child's problem). Individual treatment & an OCD group for suitable clients.	Storchheim		\N	Lisa	For clients under severe financial hardship	$165	Varies	5a220b2e8d17451bbd78ec912d89848c
4989		Mood disorders, child and adolescent mental health, neurodevelopmental disorders, anger management, abuse, trauma, life crises, grief and work stress.	Sutherland		\N	Karen	For children, seniors card holders and health care card holders.	$150 ($25.50 gap if on a MHP)	1 - 3 weeks	2cebf2e0ff74492da811a0be8d1b8d07
4990		Perinatal and infant mental health, perinatal loss, parenting, anxiety disorders, mood disorders, trauma relationship issues, worker's compensation. Practices with CBT and ACT and frameworks. Children 12 and under and adults.	Tremayne		\N	Lauren	Negotiable	$180 - 50 minute consultation; $150 Concession rate for health care card holders for 50 minute consultation	2-4 weeks	24cc7a7330de4ca4956b5a58ef2fd02a
4991		Anxiety, depression, PTSD, fear of driving (Back in the Driver's Seat programme), sport psychology, workers and accident compensation claims.\n \n Sport and Exercise Psychology.	Triffitt		\N	Jacqueline	No	APS recommended $228, Agreed payable fee for privare clients $190 & Medicare and Private Health.	Dependent on caseload 1-2 weeks	224d11b6306042769c56691df835f5f9
4993		Children, adolescents and adults. Depression and anxiety, grief, bereavement and trauma. Relationship counselling and family intervention. Medico-legal, matters including family court and child protection.	Watchorn		\N	Julian	In cases of financial hardship	Please ring to discuss	2-4 weeks	552cdec8b8b042b3a22f0eca6cebc899
4994		Anxiety and mood disorders, perinatal and infant mental health, women's health	Weaver-Pirie		\N	Bronwyn	No	$155 full fee; $120 Concession	2 weeks	ef2a787d2ee2486ea484a77cc14c8e41
4995		All Adult Mental Health	Westland		\N	Josh	Available for all Concession Card Holders	$125 per session	Generally 2-3 weeks	9bfb1a8a2a1e4c608462b66ed24a8e6d
4996		Treatment regarding mental health and social/emotional issues for children, adolescents and adults.\n \n Psychological/educational assessments of learning, behavioural and emotional difficulties.	Woolley		\N	Claire	No	$160 per 50 minute session	1-2 weeks	d6c2034e271e4bd78320d426d4cacde5
5014			Doherty		\N	Maureen				6f5bc4f6d11245a6bddb415a80dbe524
5015			Macleod		\N	Caroline	By arrangement only			4046255024a14fdcbc9c8dc2335f32d0
4997		CBT, DBT Schema & mindfulness-based approaches for a range of issues including anxiety & mood disorders, perpetration, substance abuse, trauma, emotional regulation difficulties, family violence and anger management. Adults and adolescents.	Yaxley		\N	Robyn	Limited availability	$180 full fee; $150 Concession (conditions apply)	3-4 Weeks	1cee1e257e6e43a0b3644dd4ed8b4c6c
5295		Educational Psychology Testing Service for children aged 6 years to 16 years	Lodge		\N	Jodie	n/a	APS Rates	Variable	7565adfa3b664316b9819a8bf65e84d6
4998		Pain management, health psychology, chronic condition management, PTSD.\n \n Therapeutic approaches: CBT, EMDR, Motivational Interviewing and Schema Therapy Exclusion: Children under 15 yrs	Bakker		\N	Vanessa	No	refer to website www.in-balance.com.au	6-8 weeks	ee80ce3b6acb4cb389df075dad706556
4981		Health Psychologist. Health-related problems, chronic disease management esp. cancer and pain, grief and loss, stress and anxiety disorders, phobias, depression, motor accidents, worker√¢‚Ç¨‚Ñ¢s compensation, victims of crime, veterans, palliative hospital visits.	Schwerkolt		\N	Caroline		$175 appt, APS rates for 3rd party.	Approximately 2 weeks. Urgent appointments usually available.	2de9b23012974cf09cde8b088d82a1bb
5296		Trauma and Attachment work with young people and adults	Friend		\N	Jai	No	Employed $160, Low income $105	5 months	3a554040c83042f796c25e2f952dbaf0
5297		Child, adolescent and adults, trauma, sexual assault, depression, anxiety, dissociative disorders, eating disorders, carer support. Grief and loss counselling and couples and family counselling.	Fryer		\N	Helen	No	$45 gap payment	1 week	6544e665a1a543ef85595e2e25729c47
5298		COVID-19 Telehealth MBS items available\n \n Focussed psychological interventions to adults/adolescents/children relationship counselling trauma recovery specialist: ( physical / psychological injuries ) - including Registered Veterans Clinician Grief Loss and Adjustment Therapist (incl. pet loss) life crises & stress management support CBT & narrative therapies - strengths resilliencies and mindfullness foci.	Monash		\N	Linda (Lin)	Yes - Conditions Apply	$90 Indiv Priv Session / Medicare Gap $30 / Extend (50 mins+) $120 / Cpls - Families Note: Travel surcharge applies for Home Visiting Services	No waiting at present	90702426cc30444c961a8023a0615ad6
5299		Trauma informed; care/practice; women's health; hoarding; coping with change. Outreach services provided	Morgan		\N	Lorraine				d7a5abeba100481e92a49b4da8b15029
4813		Cognitive behaviour therapy, ACT, mindfulness skills, especially working with children and adolescents.	Baron		\N	Mawgoshia-Annia (Meg)	None - discount negotiable with treating psychologist in cases of financial hardship.	APS rate $238, discounted if paying on day of consultation to $130.	Please call to check availability for new referrals	66d0b5ec986b434aa15b1a01c8f38e1d
4814		PTSD and co morbid conditions, anxiety, depression, pain management, alcohol & drug dependency, grief counselling. Children and Adolescent Issues	Bendall		\N	Cecilia	Yes	$150	within 1-2 days	8da547ee9c784924ac50a8d45be55ec0
4815		Lydia is a registered Psychologist with a Master‚Äôs Degree in Clinical Psychology and has many years‚Äô experience, she has experience working in the areas of;\n \n  - Pregnancy (perinatal) and infant mental health (Anti-natal/postnatal depression or anxiety, baby blues, mother-infant attachment, infant developmental concerns and parental relationship\n \n - Depression and anxiety in adults, adolescents and children\n \n - Sport and performance psychology	Black		\N	Lydia				9f869fac95374bad9531941d8abc7506
4816		Body Image; Eating Disorders; Anxiety; Depression; Autism	Cassone		\N	Sarah	n/a	$220 per hour	Fortnight	9778399590bb47809e5ed5d9856e0678
4819		Couples; Substance Abuse; Mental Illness & Trauma; Relationship Counselling	Crowe		\N	Trevor	Yes, if Client on Mental Health Care Plan and Health Care Card or under Financial Stress			4817a225c30f483bba85e14ed8b8aefe
4820		PTSD	Daltonalomes		\N	April	No			9c74c195f8b04f879a5afd2d9ae1aa9d
4821		Adults with mental illness; Adolescents; Couples counselling	Davis		\N	Lionel	No	$150 per session (medicare rebate $84.80)		fc9537def3804235a7dbc27e91ed113c
4822		Anxiety, trauma, chronic health conditions, fatigue. Exclusions: Children	Direen		\N	Jane		$220		e0f053d04bd447c098fccec80a00a027
4824		Child adolescent and adult mental health, cognitive and behavioural assessments. Child and family assessments.	Dykes		\N	Katie	Yes		2-3 weeks	6072ff620ae443c1a5c4f9eb03ec45ee
4825		Clinical Registrar. \n \n Youth mental health aged 12-25 years; Adults; All presentations	Fitzgerald		\N	Natalie	Bulk bill at Headspace for young people 12-25 years	Fees at Psychologyworks are $140 for 50 minute session		a18d913916ca4274bca82c4a37a6e8e5
4826		Anxiety and depression, children and adolescent learning problems, children-behaviour problems and assessment of gifted children.	Fraser		\N	Lesley	By arrangement for Health Care Card holders only at GP's request	$160 per hour, with $10 discount if paid on day	about 2 weeks	27b2731db7604ccdacc58daf91633a00
4827			Green		\N	Simon				8e5b78789f4f4f859d03742e235fe08c
4828			Hale		\N	Tina				9f57faddc98b4e169b118fdd9644803b
4829		Children, Adolescents, Young Adults and their Families (ages 5-25)	Jones		\N	Kathryn (Kate)	Only at present with COVID-19 Telehealth Items	$170 - $260	No Wait List	e0e620810c2e4c2782254b5c053fed8e
4830		Mild to severe mental health issues including anxiety, depression, personality disorders, psychosis, self-harm, addictions, stress, grief and loss, and more.	King		\N	Louise	negotiable	$120 per hour session, $35 in toal with Medicare rebate		d3c5ed234c3d4a35a46a830861e76f1e
4831		Adults/Older Adults; Anxiety' Mood' Adjustment' Grief' Fear of Flying	Kirkwood		\N	Murray	No	$140	3 weeks	a33033322b1643179c0303e712086cf6
4832		Jan works with adults and adolescents providing focussed psychological strategies for anxiety, depression, life adjustments, trauma, grief & loss, workplace related stress & other difficulties including Workers Compensation, sleep problems, anger management and communication & social skills training.	Lee		\N	Jan	When required	$170 per hour.	Varies from 1-3 weeks	2bda8105447047efb06d37029454171f
4833		Sleep for Ages 3 - 25 years	Mandari		\N	Jasmin	Yes - gap fee payable at time of consultation	$60 - 25 mins, $100 - 50 mins and $250 for outreach visit	Nil	90cb92edb7e845188944d785b3e42187
4834		Benzodiazepine dependence and underlying causes eg anxiety disorders, stress, trauma, depression, neglect, abuse, grief and loss. Individuals from late adolescence especially older population, couples counselling, all forms of relationship difficulties.	Marston		\N	Josephine	For Disadvantaged clients under Mental Health Treatment Plan	$110 for individuals, $130 for couples.		d835d622bbc545cb9d1bcd3d09425e73
4835			Matuszek		\N	Anne				c8b9bc955ea948fda1b22482732704f6
4836			Minehan		\N	Penny				ae49075cb22c4e2e822084543dc40b93
4837		Children and adolescent therapy, anxiety depression, social and challenging behaviour, psycho-educational assessment.	Muskett		\N	Sarah	Reduced fees for those with financial hardship.	$178 per hour.	3-4 weeks. .	015114c6892c4114a2ba0cc00f1386a5
4838		Eclectic, holistic therapy; adolescents, adults, couples; depression, anxiety, stress and adjustment, trauma, family and relationship issues, adoption, intimacy and sexuality.	Parkinson		\N	Emily	No, but reduced fee available to clients with financial hardship.	$140 per session, Medicare rebate with Mental Health Care Plan.		915d8203b08c4b4f9bbf461d73a5b20b
4839		Alcohol and Drug addictions; Dialectical Behaviour Therapy; Anxiety Management	Poorter		\N	Aneliese				1a7f977eba39478497f83f4550e3380b
4840		PTSD recovery, panic, workplace stress pathways between physical disorders and psychological outcomes and vice versa. Psychoneurolmmunology, comparison of therapies principle including hypnosis. Skill base is people with drug related issues or cluster B personality disorders	Rayner-Brosnan		\N	Dawn	Due to overheads and current return of old bulk bill clients this is not possible this time.	for people paying on the day a sliding scaled beginning at $150 and moving down to $120	Varies between 1 to 3 weeks.	ec2860846b274aa0861380eb9779cdb9
4841		Anxiety, stress management, depression, substance use, co-morbid disorders and CBT for psychosis.	Rooke		\N	Nicholas	None. Discount negotiable with treating psychologist in case of financial hardship	APS rate $241, discounted to $135 if paying on day of consultation	Please call to check availability for new referrals	5150faf370614ab78cb6231c8850b064
4842		Any clinically diagnosable disorders that significantly impact on emotions, thoughts, social skills and decision-making. eg phobias, anxiety, adjustment, depression, conduct,bereavement, PTSD, eating disorders (inc. lap-band support), panic, drug & alcohol, sleep, ADHD, OCD, co-ocurring anxiety & depression. Sexual orientation/relationships, HIV+ support.\n \n Youth and children's specialist (educational psychology services inc. disability assessment & programming). Group counselling. Marriage and relationship counselling. Work cover and MVA referrals.	Sanderson		\N	Tim	Yes, for low income & students. MAIB/Workers comp billed direct to insurer. DVA to be confirmed.	Per session $120 ($84.80 Medicare rebate). Health Care card $100 ($84.80 Medicare rebate). Group counselling $25 per group session, Medicare rebate applies w	Approximately 1 week.	c17fbaf4b2cf43ca96cd9daf7df0febc
5012		Pain management, mental illness, depression, anxiety, trauma, eating disorders, personality disorders, head injury.	Wise		\N	Lucy				a15149dac6864bbc88c69eb1f40026e1
5304			Wijngaart		\N	Samantha Van Der				c01969940b814f8eb027259baee69c9d
4843		Specialist areas : treatment of post traumatic stress disorder, anxiety, depression & alcohol/drug use. The treatment approach used is based upon cognitive behavioural therapy & utilises mindfulness & family therapy techniques with individuals & couples	Schall		\N	Ernest	Bulk billing for all clients with an Mental Health Care Plan.	All Mental Health Care Plan clients are bulk billed. Standard fee for other clients is $130 per session.	Approximately 1 week	fd9019b205334cdb9d3d343c5cd877c8
4844		Childhood to adult	Shepherd		\N	Donna	Available for people with financial difficulties	$125per session, $100 (full-time students, healthcare/pension card holders).	None	96a99ba475c34413bbfaa27e0eb763a9
4845		Children and adolescents, anxiety, depression in young people & adults. Diagnosis and intervention of a learning disorder & autism spectrum disorder assessment and intervention.	Spanjer		\N	Karen	By arrangement for Health Care Card holders only at GP's request	$160 per hour, $105 per 30 mins. Discount of $10/$5 for payment on the day.	1-2 weeks.	cbdc378ff4514c7aa3e934389ece5a7a
4846		Anxiety and depressive disorders, addictions, relationships, grief.	Spaulding		\N	Glyn	Health care card holders, students or on request of referring GP	$120	Usually 1 week	cfa63c9edf6e418d8247c5002b89e8b4
4848		Adolescents, children & families. Depression,anxiety, stress, coping and adjustment. Separation loss and trauma, health issues, post-traumatic stress. Self esteem and body image. Developmental issues and disablity. Parenting and behaviour modification. Workplace issues.	Stops		\N	Darren	Variable fee for financial hardship.	$150 standard fee, $130 discount rate	4-6 weeks. Weekend appointments available.	6d4924b186f04ac99c4f4e2f978fcffe
4849		Survivors of sexual trauma, domestic violence, general trauma issues eg bullying at work and persons with work stress from trauma. Adults and children. Victims of crime. Work Cover. DVA Provider	Taylor		\N	Desiree	Bulk bill for pension patients & DVA	For payment within one week - $130. Otherwise $96 per 50 minutes consutlation.	1 month, urgent cases can be accommodated as soon as possible.	96ff2c1de4d244adac539e46c2944f42
4850			Toms		\N	Evan				12f00340ddf044e1af7d48b22ff9f0cc
4851		Trauma (past and present), employment, children, adolescents, grief (including fertility issues), separation, stress, adjustment to health and disability, parent child relationships coaching. Specialist endorsements, health and organisational. MBTI & MHFA accredited.	Turner		\N	Katharine	In exceptional circumstances.	$140 (cash, pensioner/student discounts available). Eligible for Medicare and Private Health Fund rebates	1-2 weeks	85339a694afc49d19335a673eb80af84
4852		Free service for adults, children & adolescents presenting with common mental health conditions. Service provided by provisional psychologists under supervision by experienced clinical psychologists. Clients with discrete clinical issues requiring 10‚Äì15 weekly sessions are particularly well-suited. Exclusions: suicidal risk, psychotic behaviour, serious substance use, medico-legal assessments/reports, complex disorders requiring long-term treatment & crisis situations. NB: UTAS Psych students, staff & their families are not eligible	University		\N	Psychology Clinic	not applicable	Free Service	Approx 2-4 weeks	880d33e2433f4a8594b9aa3e41a5fde0
4853		CBT, ACT, mindfulness approaches. Experience with adolescents and adults. Focus in general well-being and mental health care. Anxiety, depression, stress management, Workers Compensation, life transitional focused counselling, workplace/occupational matters, sleep issues, women's health, relationships. Eligible to provide non-directive pregnancy support counselling.	Waite		\N	Angela		Some bulk billing/low fee appointments available. Please contact for additional fee information.	Not seeing new patients, only existing currently.	4386856508434c3d8a8ddfc8d2a48f0c
4854			Walker		\N	Nicole				ec99a7479b0d4610bd8def8e8bdd7a61
4855		Anxiety, Depression, OCD, Personality disorders, Anger & Eating Disorders EXCLUSIONS: ADS & Sex offenders	Wasdell		\N	Kezia	$86.15	$145 Full fee; $120 Concession (during hours)	4 weeks	5ead44f0d3c44a7582fb1f06f2ea20be
4856			White		\N	Emily				ef7ce91835db43eb96edb29a3fa1a6b9
5303		Relationship problems with associated clinical consequences	Hoy		\N	Ashley Wong	only for limited numbers of bulk billing clients per month	$154.80 per hour	14 days	2008613cd9494745a620e5d0e7542a80
5016		Brain injury, trauma, depression, anxiety, pain, adults and children. EXCLUSIONS: Eating disorders	Marriott		\N	Michael	Yes			f75d1982d5ea44408d238570e313f4ce
4858		CBT, DBT and ACT approaches; Psychosis; Anxiety; Depression; Emotional Dysregulation issues; Interpersonal issues; Lifestyle changes (alcohol, smoking, diet, sleep etc.); Anger and Stress management. Older Adolescents and Adults.	Yeoh		\N	Elaine		Please contact reception for more information	None	97c93df8f1bd4550ae0da99c11fad63e
5020			Cavanagh		\N	Shane				e48687d2fbc1417eab22d8a59cc28fb8
5021			Neumann		\N	Ruth				cce2cd609fb243e1b15afb226e6ab15b
5002		Adults, children (6-12 years), anxiety, depression, trauma, workers compensation, learning disorders	Cooper		\N	Dee				b6a173a7401a46918c14122a4cf75a4d
5003		Depression, anxiety, personality disorders, psychological and physical health, supervision.	Fleming		\N	Patrick				56141da6b6e643ecae13af602b00bafc
5004		Working with children and adults.	Fourie		\N	Charl				5f07823d22804a9d862eb60ce769d878
5005			Freeman		\N	Joe				af41bea062ec4f5b8c51eb06af9f6705
5006		Adolescents - adults, bereavement, trauma, mood and anxiety disorders. Exclusions: Children under 12 years old, eating disorders, couples/relationship counselling.	Guest		\N	Holly	No			3f78dd1ebb444572aee8af553959664c
5007		PTSD/trauma, chronic illness/cancer counselling, self-harm, relationship counselling.	Heyward		\N	Lib				df3a09bd50d94692ad31ccc31e570200
5008		Clinical psychology & clinical neuropsychology (medicare does not apply for neuro). Adults only.	Mccrum		\N	Emma-Jane			Available Monday and Friday	bf39b910ed004d5b999851ef3d47bd20
5009		Post Traumatic Stress Disorder and other trauma-related difficulties, anxiety and mood disorders, drug and alcohol difficulties, anger management issues, chronic pain difficulties, grief and loss and relationship counselling.	Paul		\N	Ruth	Concession card holder			2259d34ca04b41b595b218b71baf75c1
5010			Quarmby		\N	Lyndsay				e3d7117d2673479f8d0e3601d4a2127a
5011		Working with children with all forms of anxiety and phobias and has specific training in working with transgender children and adolescents. \n \n Is fluent in Auslan and can work profoundly with deaf clients and/or hard of hearing clients and directly with interpreters.	Smoak		\N	Megan				cbc8dfab08f141fdaa3eaa10c3b7900c
5305		Depression, Anxiety, Stress - PTSD and Trauma, Relationship and Teenagers, Indigenous Health	Hurst		\N	Andrew	No	$140 per hour	9am - 8pm (Mon-Fri)	ecd2a115888b4d5eb0cb1df43cb70313
5307			Jackson		\N	Danielle				7b42d13e0f5440f480922494748b616c
5308		Anxiety, Trauma related difficulties, serious Mental Illness	Keen		\N	Emma	Not unless previously arranged	$120		c8c7fbface76405dbdbc2c44d5e24b79
5309		Mental health, employee assistance, professional supervision, couple counselling. All ages.\n \n \n \n Clinical College Member	Klye		\N	Deborah				d50ee863cb0a41daa6b9305f8e6c4874
4859		Educational and developmental psychology.	Bertoia		\N	Paul				e30389d896e64a9a95bc070a92a9ac2a
5310		Trauma/Complex PTSD; Men's Health; Military & Emergency Services\n \n \n \n EXCLUSIONS: OCD; Personality disorders; Eating disorders	Mccashney		\N	Russell				306314f824024c10a89ec58b10ac0892
5312		Anxiety, Depression, Grief/Loss, Trauma, Relationships, Mental Illness, Personality Disorders, Professional Supervision, Workers Compensation, DVA and MAIB. Adults and Children 14yrs+	Pearce		\N	Rob				02d30476a8264ef4b1bdaa0bd9e09fc2
5313			Pennington-Smith		\N	Karen				d19ea0150e78435da278d8f6d8dee5b2
5314		Child and Family therapy; Veterans and Veterans family counselling and treatment; Grief and loss; Anxiety disorders; Depression EXCLUSION: Eating disorders	Zeeman		\N	Bernadette	Not available	$130 individual therapy per hour; $150 couples and families per hour; Medicare rebate available	1 - 2 weeks	168e8d5b28ad48918361a2b87c09085a
4860		Clinical Psychologist Registrar \n \n \n \n All age groups especially Adult Mental Health;\n \n Trauma, OCD, anxiety and grief; Self-esteem and body image concerns; CBT and DBT informed approaches;	Bishop		\N	Catherine	No			10063146919c4703866e10b3a98bf524
4861		Transition points - retirement, divorce, chronic illness, EMDR, weight loss, anxiety an depression. EXCLUSION: Children	Crave		\N	Susan	No	Initial assessment $180, follow Up: $160		598fbee65a974e0fa1916f414df62bd9
4862			Deeth		\N	Lily				7e59fb7020f94db880c8fc40cac4a8ac
4863		Clinical Psychologist Registrar	Dicker		\N	Michelle				a665a5989ea24f2eb4476d6e72dc96a0
4864		Depression, anxiety, trauma (PTSD), workers compensation/MAIB, couples therapy, schizophrenia and personality disorders. Bulk billing for over 65's and students, others by negotiation.	Ernst		\N	Beverley	Yes	$140 (110 for low income earners)	3-4 weeks	24a9fd5a1b584a1eba99e9ba552fc6f3
4865			Farrell		\N	Amy				f60b5a77e74b4f278be700f61730aba4
4866		Working with adults only treating PTSD, Depression and Anxiety along with Workers Compensation cases and MAIB.	Feely		\N	Tim				7d589381801a4cde9e77aca3a25f782e
4867			Gall		\N	Wendy			Not accepting new patients until February 2020.	361a316e0f2244208ad5dda68067bd6c
4869			Langley		\N	Emma				4662c68d266840fd8f05e61e74b5f1f7
4871		Eating disorders, disordered eating and obesity - child and adolescent (across lifespan). EXCLUSIONS: High risk (suicidality), drugs including alcohol addictions.	Osenieks		\N	Lesley	No			06523fa0e0344078a7104dd8c8aa76db
4872		Anxiety, depression, stress, behaviour management in children	Plakalovic		\N	Martine	No	$130	4 weeks	ce9838840fb143ccbedf27329f55d98b
4873			Richards		\N	Janis				252a01b63454464ebd0d78f65876e0c7
4874			Tagliabue		\N	Lidia				9fe1c94697a8488090201eae2d0388f3
4875		Psychologist, Psychotherapist, Individual, Couple & Family Counselling, Mediator, Conciliator, Dispute Resolution Practitioner	Walker		\N	Lyndon				b22f70418aaf4618827660e896394903
5023		Adolescents & Families	Shand		\N	Samuel				5533740529f542d8853a3e2de91e80d2
5013		ASD - Asperger's syndrome - Autism Spectrum EXCLUSIONS: Marriage counselling & Children u/12 yrs.	Bilsborrow		\N	Glenn	Health Care Card Holders	$193	Approximately 2 weeks	db5148a65c3c4cdba69e5faf7185df77
5315		Mental Health counselling specialising in solution focused interviewing, mindfulness, cognitive behavioural therapy, motivational interviewing, Drug and alcohol intervention, harm minimisation, Disability, clients living with acquired brain injuries and Aboriginal and Torres Strait Islander mental health	Brown		\N	Janine	Bulk Billing options may be available for clients experiencing hardship. Outreach Services are currently bulk billed	MHTP non Concession Card Holder $25.20 out of pocket after rebate, Concesssion card holder $11.20 out of pocket after rebate.	Outreach services in Rosebery fortnightly, capacity to increase days as required. Outreach services will commence in Sheffield once referrals are received.	394928ff88e4475297481db864171ab0
5316			Cooper		\N	Maree				08e3d326ddc849f98929c2156ba8d31e
5317			Hall		\N	Katrina				2f8a84ae0b4c474fa42ab3a37d0225a8
5311			Mckinnon		\N	Robyn				8858e779c5b147a69265c0421a8e948f
5318			Sansom-Gower		\N	Tony				3d86a408c1964b3487c3f2d997b53316
5319		Aboriginal & TSI clients and adolescents	Seymour		\N	Kristen				b1148263bfea4a3a807ced56ad4bcb75
4876		Children with emotional regulation difficulties and problematic video game use and parenting strategies.	Adams		\N	Baxter	No	Variable depending on funding	Variable	fb5011f3222541789db424dc1f4d2fed
4877		Hypnotherapy + EMDR, PTSD, grief, depression, anxiety, phobias.	Aitken		\N	Patricia				163348fafcd44a7dad76a45bdaf0103d
4878			Barrett		\N	Mary				c16557fad05a4f1a8df4c9cde5ce636d
4879			Binns		\N	Sonia				a757ac830d72455281eb61bb57dc9186
4880			Campbell		\N	Paul				27ff3ca42139428798cf6225f70550b7
\.


--
-- Data for Name: professionals_professionalgroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_professionalgroup (id, name, description, user_id, uid) FROM stdin;
48	Pain Management	Team for pain management spec, psychiatrist, ps	9	03940a370a7747cf81febe88d3516c47
47	Favourites	m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	9	f37a50d5d4e646a4b3630248a1a9984c
50	Favourites	A group of your favourite health professionals	16	242e815ac5414c3ea479bd548f8b8ff0
51	Favourites	A group of your favourite health professionals	17	0fcd650566584121a618675574d900e8
52	Favourites	A group of your favourite health professionals	18	6215386fd0ec4fe899d0085b77167932
53	Favourites	A group of your favourite health professionals	19	e4867dc4914146f5b2a49f137bd1144e
54	Favourites	A group of your favourite health professionals	20	dd553427a7b543208e9b15c448985748
\.


--
-- Data for Name: professionals_professionalgroupmapping; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_professionalgroupmapping (id, group_id, professional_id) FROM stdin;
\.


--
-- Data for Name: professionals_professiontype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_professiontype (id, name, description, uid) FROM stdin;
41	General Practitioner	\N	4e08b6e01d7340b29fee94ac87054b72
42	Addiction Medicine Specialist	\N	491aff8de60e47899b513a3838611c9c
43	Anaesthetist	\N	1b49eb99ae7d463eba07f51cfede51db
44	Cardiologist	\N	ea4e1889641140259e1f5f26997f7ed5
45	Cardiothoracic Surgeon	\N	55d42effb399415b94ba08d86fa53841
46	Clinical Haematologist	\N	6c1aeac5e01f403aa24275536d6a7480
47	Clinical Immunologistand Allergist	\N	a8f03ae075ac48179e2767497bf28c8f
48	Colorectal Surgeon	\N	88621ea743014e1d87c721ad38f1b4e7
49	Dermatologist	\N	097a9c16dda9499684e34fb94fb3703f
50	Diagnosticandinterventional Radiologist	\N	7953fbfd58bf4e06bcd7f3eaee8a2e41
51	Endocrinologist	\N	8bd92f9713824580865a5cbf1d81fcbc
52	E N T Headand Neck Surgeon	\N	bec8c9c761314775964540ae6234b332
53	Gastroenterologist	\N	26ffcacd3e5c46b9bf936c9b5722bf0f
54	General Medicine	\N	18b426fe4892499fa2fec048b8698e42
55	Geriatrician	\N	88e8476d737b461aa99657a57648052a
56	Gynaecological Oncologist	\N	75d4a8a470134f4d804e79560a6fbae5
57	Infectious Disease Specialist	\N	04ed704875554948b0a13c37ba8ecf9d
58	Neurologist	\N	0904cda9f81a42a8b84af247c0bfd9c0
59	Neurosurgeon	\N	bebe8e177a384765bf619cbc8202c2ac
60	Obstetricianand Gynaecologist	\N	ca22f4dc5d7b4cf6ad303483861c7ae9
61	Occupational Medicine Specialist	\N	beef05db2fa0494b99378080805ddf99
62	Oncologist	\N	a74eebbf63c842db9becb69b2fd55982
63	Ophthalmologist	\N	5132ce55a81f456fb6d09b8235f05d4f
64	Orthopaedic Surgeon	\N	80ee9f482a614fedb4611d9487a01e6e
65	Oraland Maxillofacial Surgeon	\N	161ae918fc454b8a9abd501df3cddb2c
66	Paediatrician	\N	2e3bd31c655c4a509807e7714a618f55
67	Pain Management Specialist	\N	6e948315487d40cbadb1bc37d0093bbf
68	Plasticand Reconstructive Surgeon	\N	7af6576730fa4aeca77e11b6b9226f1c
69	Psychiatrist	\N	53c6251e5eed45f6a5e4f3e08d8eb22b
70	Radiation Oncologist	\N	bb33e86f018842e0bee1d758a4281fea
71	Rehabilitation Medicine Physician	\N	50d6642031a84c08a5054f71d2877050
72	Renal Medicine Specialist	\N	4214f27ae14f45358f1168b40741f053
73	Respiratory Medicine Physician	\N	60c453232c024853be134c9f42f00dfb
74	Reproductive Infertility Specialist	\N	95b195d89d254663b791cc849e1181d4
75	Rheumatologist	\N	d073efae329b43af9d263dbcdb13fef0
76	Sleep Medicine Specialist	\N	9a37357f9d854e5b9ff119591ca9f5a2
77	Sports Physician	\N	1d5ec203c9ec4fd7b69cff6075100713
78	Surgeon General	\N	a140d6d4a2474bf1b3be9dccf49b7ecb
79	Urologist	\N	06c839e3a3634315bc91070547cd8502
80	Vascular Surgeon	\N	51a11f181116457b96a998e29647a1d2
81	Acupuncturist	\N	3f7fd527ded04fe5acf8a5bcb9eb7173
82	Audiologist	\N	46e437cfbd6e48f3b2179605701e1c29
83	Chiropractor	\N	0cf249fa02f2457b8e5285ee4abdef64
84	Dietitian	\N	08e6d5913b4b47ad811708bb916807e2
85	Diabetes Nurse Educator	\N	a7dd984a98f84b03af4eba849be6b6cb
86	Exercise Physiologist	\N	4e38e33340934f87ab0ec62e11a96456
87	Nurse Practitioner	\N	601a9a3f72ec47c588478f6cc0c61818
88	Occupational Therapist	\N	54d284b93f344f9d9a898bbbde314dd9
89	Osteopath	\N	ffb62debeb4b45cfb757406f77be171f
90	Physiotherapist	\N	6ef91feb90454292bcde2e74856438ae
91	Podiatrist	\N	8e45c45d8d7a492291ceba379d41155f
92	Psychologist	\N	392e49f648774e29a2453957a799cc6e
93	Clinical Psychologist	\N	0979ebb822b64f7fa518a3c8624bf6bb
94	Forensic Psychologist	\N	a04ca9229f2c41ca8bad3151c23a336c
95	Health Psychologist	\N	e50e45a9bc1d469686609a56480855cd
96	Social Worker	\N	48b567f0672744159dc629e214817959
97	Speech Pathologist	\N	11d34c74e66b4ff9b9dfcac580365c07
101	Educational Psychologist	\N	62f56b7cc6e84c7aa71df6eadf4eef44
102	Mental Health Social Worker	\N	dadd7079b226456a9e9dcf19f4e9e1bb
\.


--
-- Data for Name: professionals_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_rate (id, hourly_pay_max, hourly_pay_min, annual_pay_max, annual_pay_min, currency) FROM stdin;
\.


--
-- Data for Name: professionals_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.professionals_role (id, description, start_date, end_date, clinic_id, professional_id, rate_id, healthlink_address) FROM stdin;
3850	\N	\N	\N	1725	3085	\N	salamamc
3851	\N	\N	\N	1720	3086	\N	rosnyprk
3852	\N	\N	\N	1997	3087	\N	johnstmc
3853	\N	\N	\N	1669	3088	\N	knopwdmc
3854	\N	\N	\N	1998	3089	\N	CLAREVMC
3855	\N	\N	\N	1998	3090	\N	CLAREVMC
3856	\N	\N	\N	1720	3091	\N	rosnyprk
3857	\N	\N	\N	1678	3092	\N	AFTERDRS
3858	\N	\N	\N	1722	3092	\N	sandybcl
3859	\N	\N	\N	1999	3093	\N	richmndm
3860	\N	\N	\N	1711	3094	\N	huonvall
3861	\N	\N	\N	1725	3095	\N	salamamc
3862	\N	\N	\N	1711	3096	\N	huonvall
3863	\N	\N	\N	2000	3097	\N	camrdsrg
3864	\N	\N	\N	1878	3098	\N	sorellmc
3865	\N	\N	\N	1678	3099	\N	AFTERDRS
3866	\N	\N	\N	1711	3100	\N	huonvall
3867	\N	\N	\N	2001	3101	\N	
3868	\N	\N	\N	2002	3101	\N	
3869	\N	\N	\N	1669	3101	\N	knopwdmc
3870	\N	\N	\N	2003	3102	\N	FAMPLANT
3871	\N	\N	\N	1878	3102	\N	sorellmc
3872	\N	\N	\N	1664	3102	\N	bqhealth
3873	\N	\N	\N	1878	3103	\N	sorellmc
3874	\N	\N	\N	1678	3104	\N	AFTERDRS
3875	\N	\N	\N	2004	3104	\N	lenahval
3876	\N	\N	\N	2005	3105	\N	unidrsur
3877	\N	\N	\N	2006	3105	\N	unidrsur
3878	\N	\N	\N	2007	3105	\N	unidrsur
3879	\N	\N	\N	2008	3106	\N	greenptc
3880	\N	\N	\N	1678	3107	\N	AFTERDRS
3881	\N	\N	\N	2009	3107	\N	batteryp
3882	\N	\N	\N	2010	3108	\N	
3883	\N	\N	\N	2011	3108	\N	kingbomc
3884	\N	\N	\N	1722	3109	\N	sandybcl
3885	\N	\N	\N	1708	3110	\N	GORESTRM
3886	\N	\N	\N	2012	3111	\N	ntskincr
3887	\N	\N	\N	1678	3112	\N	AFTERDRS
3888	\N	\N	\N	2013	3112	\N	argylegp
3889	\N	\N	\N	1717	3113	\N	derwentv
3890	\N	\N	\N	2011	3114	\N	kingbomc
3891	\N	\N	\N	2008	3115	\N	greenptc
3892	\N	\N	\N	2011	3116	\N	kingbomc
3893	\N	\N	\N	2014	3117	\N	hopkinst
3894	\N	\N	\N	2015	3118	\N	
3895	\N	\N	\N	2016	3119	\N	northnsc
3896	\N	\N	\N	2017	3120	\N	rivervws
3897	\N	\N	\N	1997	3120	\N	johnstmc
3898	\N	\N	\N	1725	3121	\N	salamamc
3899	\N	\N	\N	2018	3122	\N	
3900	\N	\N	\N	2013	3123	\N	argylegp
3901	\N	\N	\N	2019	3123	\N	longbchm
3902	\N	\N	\N	1660	3124	\N	linkyhsv
3903	\N	\N	\N	1878	3124	\N	sorellmc
3904	\N	\N	\N	2004	3125	\N	lenahval
3905	\N	\N	\N	1678	3126	\N	AFTERDRS
3906	\N	\N	\N	2014	3126	\N	hopkinst
3907	\N	\N	\N	2020	3127	\N	eastshrm
3908	\N	\N	\N	2021	3128	\N	grosvsgp
3909	\N	\N	\N	2022	3128	\N	grosvsgp
3910	\N	\N	\N	2023	3129	\N	rivervws
3911	\N	\N	\N	2016	3130	\N	northnsc
3912	\N	\N	\N	1678	3131	\N	AFTERDRS
3913	\N	\N	\N	2024	3131	\N	clacomhc
3914	\N	\N	\N	2025	3132	\N	
3915	\N	\N	\N	1678	3133	\N	AFTERDRS
3916	\N	\N	\N	2026	3133	\N	Augustmc
3917	\N	\N	\N	2012	3134	\N	ntskincr
3918	\N	\N	\N	2027	3135	\N	nwtwncmc
3919	\N	\N	\N	1717	3136	\N	derwentv
3920	\N	\N	\N	1722	3137	\N	sandybcl
3921	\N	\N	\N	2028	3138	\N	cascderd
3922	\N	\N	\N	2008	3139	\N	greenptc
3923	\N	\N	\N	2029	3140	\N	brightdr
3924	\N	\N	\N	2003	3140	\N	FAMPLANT
3925	\N	\N	\N	2030	3141	\N	tdnurseh
3926	\N	\N	\N	2031	3142	\N	baysdemc
3927	\N	\N	\N	2032	3143	\N	cascderd
3928	\N	\N	\N	2033	3143	\N	cascderd
3929	\N	\N	\N	2034	3144	\N	huonvall
3930	\N	\N	\N	2029	3145	\N	brightdr
3931	\N	\N	\N	1710	3146	\N	huonvall
3932	\N	\N	\N	1711	3146	\N	huonvall
3933	\N	\N	\N	2035	3147	\N	
3934	\N	\N	\N	2021	3148	\N	grosvsgp
3935	\N	\N	\N	2022	3148	\N	grosvsgp
3936	\N	\N	\N	1721	3149	\N	amienscl
3937	\N	\N	\N	2036	3150	\N	rivervws
3938	\N	\N	\N	2014	3151	\N	hopkinst
3939	\N	\N	\N	2009	3152	\N	batteryp
3940	\N	\N	\N	2000	3153	\N	camrdsrg
3941	\N	\N	\N	2033	3154	\N	cascderd
3942	\N	\N	\N	1692	3155	\N	
3943	\N	\N	\N	2037	3156	\N	HEALTHCH
3944	\N	\N	\N	2028	3157	\N	cascderd
3945	\N	\N	\N	2012	3157	\N	ntskincr
3946	\N	\N	\N	2031	3158	\N	baysdemc
3947	\N	\N	\N	2004	3159	\N	lenahval
3948	\N	\N	\N	1716	3160	\N	Newdegat
3949	\N	\N	\N	1722	3161	\N	sandybcl
3950	\N	\N	\N	1723	3162	\N	lincolnc
3951	\N	\N	\N	2026	3163	\N	Augustmc
3952	\N	\N	\N	2038	3164	\N	snugmedi
3953	\N	\N	\N	2008	3165	\N	greenptc
3954	\N	\N	\N	2039	3166	\N	sorellds
3955	\N	\N	\N	1839	3167	\N	
3956	\N	\N	\N	1997	3167	\N	johnstmc
3957	\N	\N	\N	1717	3168	\N	derwentv
3958	\N	\N	\N	2040	3169	\N	unidrsur
3959	\N	\N	\N	2021	3170	\N	grosvsgp
3960	\N	\N	\N	2022	3170	\N	grosvsgp
3961	\N	\N	\N	2041	3171	\N	glebehfp
3962	\N	\N	\N	1839	3172	\N	
3963	\N	\N	\N	1878	3172	\N	sorellmc
3964	\N	\N	\N	2024	3173	\N	clacomhc
3965	\N	\N	\N	2042	3173	\N	
3966	\N	\N	\N	2004	3174	\N	lenahval
3967	\N	\N	\N	2043	3175	\N	claretas
3968	\N	\N	\N	1872	3175	\N	tasspine
3969	\N	\N	\N	1878	3176	\N	sorellmc
3970	\N	\N	\N	2032	3177	\N	cascderd
3971	\N	\N	\N	2032	3178	\N	cascderd
3972	\N	\N	\N	2021	3179	\N	grosvsgp
3973	\N	\N	\N	2022	3179	\N	grosvsgp
3974	\N	\N	\N	2014	3180	\N	hopkinst
3975	\N	\N	\N	2044	3181	\N	
3976	\N	\N	\N	2031	3182	\N	baysdemc
3977	\N	\N	\N	2045	3183	\N	
3978	\N	\N	\N	2010	3184	\N	
3979	\N	\N	\N	2046	3185	\N	rogercox
3980	\N	\N	\N	2014	3186	\N	hopkinst
3981	\N	\N	\N	1872	3187	\N	tasspine
3982	\N	\N	\N	2047	3188	\N	yourhobd
3983	\N	\N	\N	2048	3188	\N	bothwemc
3984	\N	\N	\N	2049	3188	\N	yourhobd
3985	\N	\N	\N	2043	3189	\N	claretas
3986	\N	\N	\N	1998	3190	\N	CLAREVMC
3987	\N	\N	\N	1878	3191	\N	sorellmc
3988	\N	\N	\N	2028	3192	\N	cascderd
3989	\N	\N	\N	2050	3193	\N	triabumc
3990	\N	\N	\N	2041	3194	\N	glebehfp
3991	\N	\N	\N	2000	3195	\N	camrdsrg
3992	\N	\N	\N	2039	3196	\N	sorellds
3993	\N	\N	\N	2026	3197	\N	Augustmc
3994	\N	\N	\N	1717	3198	\N	derwentv
3995	\N	\N	\N	1699	3199	\N	allabout
3996	\N	\N	\N	2021	3199	\N	grosvsgp
3997	\N	\N	\N	2022	3199	\N	grosvsgp
3998	\N	\N	\N	2021	3200	\N	grosvsgp
3999	\N	\N	\N	2022	3200	\N	grosvsgp
4000	\N	\N	\N	2043	3201	\N	claretas
4001	\N	\N	\N	1678	3202	\N	AFTERDRS
4002	\N	\N	\N	2051	3202	\N	med23pms
4003	\N	\N	\N	2028	3203	\N	cascderd
4004	\N	\N	\N	2052	3204	\N	barackst
4005	\N	\N	\N	1678	3205	\N	AFTERDRS
4006	\N	\N	\N	2021	3206	\N	grosvsgp
4007	\N	\N	\N	2022	3206	\N	grosvsgp
4008	\N	\N	\N	2032	3207	\N	cascderd
4009	\N	\N	\N	1722	3208	\N	sandybcl
4010	\N	\N	\N	2006	3209	\N	unidrsur
4011	\N	\N	\N	2053	3210	\N	risdonvf
4012	\N	\N	\N	1720	3210	\N	rosnyprk
4013	\N	\N	\N	1997	3211	\N	johnstmc
4014	\N	\N	\N	2014	3212	\N	hopkinst
4015	\N	\N	\N	2008	3213	\N	greenptc
4016	\N	\N	\N	2003	3214	\N	FAMPLANT
4017	\N	\N	\N	1660	3214	\N	linkyhsv
4018	\N	\N	\N	2054	3215	\N	wjohnson
4019	\N	\N	\N	2014	3216	\N	hopkinst
4020	\N	\N	\N	2023	3217	\N	rivervws
4021	\N	\N	\N	2023	3218	\N	rivervws
4022	\N	\N	\N	2017	3218	\N	rivervws
4023	\N	\N	\N	2010	3219	\N	
4024	\N	\N	\N	2055	3219	\N	
4025	\N	\N	\N	2056	3220	\N	
4026	\N	\N	\N	2032	3221	\N	cascderd
4027	\N	\N	\N	2057	3222	\N	cascderd
4028	\N	\N	\N	2036	3223	\N	rivervws
4029	\N	\N	\N	2058	3223	\N	vallheru
4030	\N	\N	\N	2059	3223	\N	
4031	\N	\N	\N	2041	3224	\N	glebehfp
4032	\N	\N	\N	2005	3225	\N	unidrsur
4033	\N	\N	\N	2060	3226	\N	faulkner
4034	\N	\N	\N	2061	3227	\N	drmercad
4035	\N	\N	\N	2030	3227	\N	tdnurseh
4036	\N	\N	\N	2024	3228	\N	clacomhc
4037	\N	\N	\N	2007	3229	\N	unidrsur
4038	\N	\N	\N	1725	3230	\N	salamamc
4039	\N	\N	\N	2032	3231	\N	cascderd
4040	\N	\N	\N	2033	3231	\N	cascderd
4041	\N	\N	\N	2062	3232	\N	yourhobd
4042	\N	\N	\N	2049	3232	\N	yourhobd
4043	\N	\N	\N	2021	3233	\N	grosvsgp
4044	\N	\N	\N	1721	3234	\N	amienscl
4045	\N	\N	\N	2047	3235	\N	yourhobd
4046	\N	\N	\N	2049	3235	\N	yourhobd
4047	\N	\N	\N	2032	3236	\N	cascderd
4048	\N	\N	\N	2041	3237	\N	glebehfp
4049	\N	\N	\N	2000	3238	\N	camrdsrg
4050	\N	\N	\N	1704	3239	\N	
4051	\N	\N	\N	1998	3240	\N	CLAREVMC
4052	\N	\N	\N	1722	3241	\N	sandybcl
4053	\N	\N	\N	1720	3242	\N	rosnyprk
4054	\N	\N	\N	2011	3243	\N	kingbomc
4055	\N	\N	\N	2038	3244	\N	snugmedi
4056	\N	\N	\N	1723	3245	\N	lincolnc
4057	\N	\N	\N	2048	3246	\N	bothwemc
4058	\N	\N	\N	2021	3247	\N	grosvsgp
4059	\N	\N	\N	2022	3247	\N	grosvsgp
4060	\N	\N	\N	2052	3248	\N	barackst
4061	\N	\N	\N	2008	3249	\N	greenptc
4062	\N	\N	\N	1878	3250	\N	sorellmc
4063	\N	\N	\N	1717	3251	\N	derwentv
4064	\N	\N	\N	2011	3252	\N	kingbomc
4065	\N	\N	\N	2026	3253	\N	Augustmc
4066	\N	\N	\N	1722	3254	\N	sandybcl
4067	\N	\N	\N	2001	3255	\N	
4068	\N	\N	\N	2023	3256	\N	rivervws
4069	\N	\N	\N	1998	3257	\N	CLAREVMC
4070	\N	\N	\N	2038	3258	\N	snugmedi
4071	\N	\N	\N	1678	3259	\N	AFTERDRS
4072	\N	\N	\N	2011	3259	\N	kingbomc
4073	\N	\N	\N	2042	3259	\N	
4074	\N	\N	\N	2012	3259	\N	ntskincr
4075	\N	\N	\N	2047	3260	\N	yourhobd
4076	\N	\N	\N	1891	3260	\N	iconhobm
4077	\N	\N	\N	2035	3261	\N	
4078	\N	\N	\N	1711	3262	\N	huonvall
4079	\N	\N	\N	2005	3263	\N	unidrsur
4080	\N	\N	\N	1720	3264	\N	rosnyprk
4081	\N	\N	\N	1678	3265	\N	AFTERDRS
4082	\N	\N	\N	2036	3266	\N	rivervws
4083	\N	\N	\N	2017	3266	\N	rivervws
4084	\N	\N	\N	1716	3267	\N	Newdegat
4085	\N	\N	\N	2003	3268	\N	FAMPLANT
4086	\N	\N	\N	2063	3268	\N	unidrsur
4087	\N	\N	\N	2040	3268	\N	unidrsur
4088	\N	\N	\N	2031	3269	\N	baysdemc
4089	\N	\N	\N	2057	3270	\N	cascderd
4090	\N	\N	\N	2064	3270	\N	cascderd
4091	\N	\N	\N	2033	3270	\N	cascderd
4092	\N	\N	\N	2038	3271	\N	snugmedi
4093	\N	\N	\N	2052	3272	\N	barackst
4094	\N	\N	\N	2065	3273	\N	surgquee
4095	\N	\N	\N	2064	3274	\N	cascderd
4096	\N	\N	\N	2033	3274	\N	cascderd
4097	\N	\N	\N	2001	3275	\N	
4098	\N	\N	\N	2064	3275	\N	cascderd
4099	\N	\N	\N	1878	3276	\N	sorellmc
4100	\N	\N	\N	1723	3277	\N	lincolnc
4101	\N	\N	\N	2034	3278	\N	huonvall
4102	\N	\N	\N	1711	3278	\N	huonvall
4103	\N	\N	\N	1708	3279	\N	GORESTRM
4104	\N	\N	\N	1669	3280	\N	knopwdmc
4105	\N	\N	\N	2006	3281	\N	unidrsur
4106	\N	\N	\N	1878	3282	\N	sorellmc
4107	\N	\N	\N	2034	3283	\N	huonvall
4108	\N	\N	\N	2038	3283	\N	snugmedi
4109	\N	\N	\N	1717	3284	\N	derwentv
4110	\N	\N	\N	2025	3285	\N	
4111	\N	\N	\N	2063	3285	\N	unidrsur
4112	\N	\N	\N	2040	3285	\N	unidrsur
4113	\N	\N	\N	2066	3286	\N	obrienmc
4114	\N	\N	\N	2036	3287	\N	rivervws
4115	\N	\N	\N	1839	3288	\N	
4116	\N	\N	\N	2026	3289	\N	Augustmc
4117	\N	\N	\N	2010	3290	\N	
4118	\N	\N	\N	2014	3290	\N	hopkinst
4119	\N	\N	\N	2003	3291	\N	FAMPLANT
4120	\N	\N	\N	1878	3291	\N	sorellmc
4121	\N	\N	\N	2057	3292	\N	cascderd
4122	\N	\N	\N	2008	3293	\N	greenptc
4123	\N	\N	\N	2043	3294	\N	claretas
4124	\N	\N	\N	2011	3295	\N	kingbomc
4125	\N	\N	\N	2007	3296	\N	unidrsur
4126	\N	\N	\N	2031	3297	\N	baysdemc
4127	\N	\N	\N	2016	3298	\N	northnsc
4128	\N	\N	\N	1723	3299	\N	lincolnc
4129	\N	\N	\N	2023	3300	\N	rivervws
4130	\N	\N	\N	2017	3300	\N	rivervws
4131	\N	\N	\N	2010	3300	\N	
4132	\N	\N	\N	2067	3301	\N	espernan
4133	\N	\N	\N	2028	3302	\N	cascderd
4134	\N	\N	\N	1717	3303	\N	derwentv
4135	\N	\N	\N	2023	3304	\N	rivervws
4136	\N	\N	\N	2010	3304	\N	
4137	\N	\N	\N	2021	3305	\N	grosvsgp
4138	\N	\N	\N	2022	3305	\N	grosvsgp
4139	\N	\N	\N	1725	3306	\N	salamamc
4140	\N	\N	\N	2011	3307	\N	kingbomc
4141	\N	\N	\N	2057	3308	\N	cascderd
4142	\N	\N	\N	1839	3309	\N	
4143	\N	\N	\N	1998	3309	\N	CLAREVMC
4144	\N	\N	\N	2054	3310	\N	wjohnson
4145	\N	\N	\N	2028	3311	\N	cascderd
4146	\N	\N	\N	2011	3312	\N	kingbomc
4147	\N	\N	\N	2011	3313	\N	kingbomc
4148	\N	\N	\N	2041	3314	\N	glebehfp
4149	\N	\N	\N	1669	3315	\N	knopwdmc
4150	\N	\N	\N	2041	3316	\N	glebehfp
4151	\N	\N	\N	2007	3317	\N	unidrsur
4152	\N	\N	\N	2005	3318	\N	unidrsur
4153	\N	\N	\N	1721	3319	\N	amienscl
4154	\N	\N	\N	2026	3320	\N	Augustmc
4155	\N	\N	\N	2036	3321	\N	rivervws
4156	\N	\N	\N	1723	3322	\N	lincolnc
4157	\N	\N	\N	2009	3323	\N	batteryp
4158	\N	\N	\N	1998	3324	\N	CLAREVMC
4159	\N	\N	\N	2004	3325	\N	lenahval
4160	\N	\N	\N	2012	3326	\N	ntskincr
4161	\N	\N	\N	2041	3327	\N	glebehfp
4162	\N	\N	\N	2026	3328	\N	Augustmc
4163	\N	\N	\N	1878	3329	\N	sorellmc
4164	\N	\N	\N	2028	3330	\N	cascderd
4165	\N	\N	\N	1839	3331	\N	
4166	\N	\N	\N	1699	3331	\N	allabout
4167	\N	\N	\N	2068	3331	\N	allabout
4168	\N	\N	\N	2023	3332	\N	rivervws
4169	\N	\N	\N	2017	3332	\N	rivervws
4170	\N	\N	\N	2000	3333	\N	camrdsrg
4171	\N	\N	\N	2020	3334	\N	eastshrm
4172	\N	\N	\N	2032	3335	\N	cascderd
4173	\N	\N	\N	2064	3335	\N	cascderd
4174	\N	\N	\N	2033	3335	\N	cascderd
4175	\N	\N	\N	2026	3336	\N	Augustmc
4176	\N	\N	\N	2003	3337	\N	FAMPLANT
4177	\N	\N	\N	2069	3338	\N	blackbay
4178	\N	\N	\N	2069	3339	\N	blackbay
4179	\N	\N	\N	2014	3340	\N	hopkinst
4180	\N	\N	\N	2070	3341	\N	huondrsu
4181	\N	\N	\N	2026	3342	\N	Augustmc
4182	\N	\N	\N	2071	3343	\N	cygfampr
4183	\N	\N	\N	2066	3344	\N	obrienmc
4184	\N	\N	\N	2047	3345	\N	yourhobd
4185	\N	\N	\N	2049	3345	\N	yourhobd
4186	\N	\N	\N	2007	3346	\N	unidrsur
4187	\N	\N	\N	1878	3347	\N	sorellmc
4188	\N	\N	\N	2005	3348	\N	unidrsur
4189	\N	\N	\N	2032	3349	\N	cascderd
4190	\N	\N	\N	2028	3349	\N	cascderd
4191	\N	\N	\N	2057	3350	\N	cascderd
4192	\N	\N	\N	1711	3351	\N	huonvall
4193	\N	\N	\N	2003	3352	\N	FAMPLANT
4194	\N	\N	\N	2057	3352	\N	cascderd
4195	\N	\N	\N	2028	3352	\N	cascderd
4196	\N	\N	\N	2011	3353	\N	kingbomc
4197	\N	\N	\N	2011	3354	\N	kingbomc
4198	\N	\N	\N	1839	3355	\N	
4199	\N	\N	\N	2036	3355	\N	rivervws
4200	\N	\N	\N	2017	3355	\N	rivervws
4201	\N	\N	\N	2005	3356	\N	unidrsur
4202	\N	\N	\N	2006	3356	\N	unidrsur
4203	\N	\N	\N	2007	3356	\N	unidrsur
4204	\N	\N	\N	2000	3357	\N	camrdsrg
4205	\N	\N	\N	1669	3358	\N	knopwdmc
4206	\N	\N	\N	1678	3359	\N	AFTERDRS
4207	\N	\N	\N	2024	3360	\N	clacomhc
4208	\N	\N	\N	2052	3361	\N	barackst
4209	\N	\N	\N	2048	3362	\N	bothwemc
4210	\N	\N	\N	2029	3362	\N	brightdr
4211	\N	\N	\N	2072	3363	\N	geevestn
4212	\N	\N	\N	2072	3364	\N	geevestn
4213	\N	\N	\N	2009	3365	\N	batteryp
4214	\N	\N	\N	2021	3366	\N	grosvsgp
4215	\N	\N	\N	2022	3366	\N	grosvsgp
4216	\N	\N	\N	2028	3367	\N	cascderd
4217	\N	\N	\N	1721	3368	\N	amienscl
4218	\N	\N	\N	2011	3369	\N	kingbomc
4219	\N	\N	\N	2022	3370	\N	grosvsgp
4220	\N	\N	\N	2021	3371	\N	grosvsgp
4221	\N	\N	\N	2022	3371	\N	grosvsgp
4222	\N	\N	\N	2043	3372	\N	claretas
4223	\N	\N	\N	2073	3372	\N	connewrc
4224	\N	\N	\N	1669	3372	\N	knopwdmc
4225	\N	\N	\N	2012	3372	\N	ntskincr
4226	\N	\N	\N	2074	3373	\N	bridgess
4227	\N	\N	\N	2052	3374	\N	barackst
4228	\N	\N	\N	2033	3375	\N	cascderd
4229	\N	\N	\N	2031	3376	\N	baysdemc
4230	\N	\N	\N	2075	3377	\N	macqmedi
4231	\N	\N	\N	2023	3378	\N	rivervws
4232	\N	\N	\N	2017	3378	\N	rivervws
4233	\N	\N	\N	2024	3379	\N	clacomhc
4234	\N	\N	\N	2071	3380	\N	cygfampr
4235	\N	\N	\N	2009	3381	\N	batteryp
4236	\N	\N	\N	2057	3382	\N	cascderd
4237	\N	\N	\N	2032	3383	\N	cascderd
4238	\N	\N	\N	2033	3383	\N	cascderd
4239	\N	\N	\N	2016	3384	\N	northnsc
4240	\N	\N	\N	2011	3385	\N	kingbomc
4241	\N	\N	\N	1723	3386	\N	lincolnc
4242	\N	\N	\N	2076	3387	\N	moretong
4243	\N	\N	\N	1839	3388	\N	
4244	\N	\N	\N	1839	3389	\N	
4245	\N	\N	\N	2016	3390	\N	northnsc
4246	\N	\N	\N	2031	3391	\N	baysdemc
4247	\N	\N	\N	2032	3391	\N	cascderd
4248	\N	\N	\N	1999	3392	\N	richmndm
4249	\N	\N	\N	2061	3393	\N	drmercad
4250	\N	\N	\N	2067	3394	\N	espernan
4251	\N	\N	\N	1998	3395	\N	CLAREVMC
4252	\N	\N	\N	1711	3396	\N	huonvall
4253	\N	\N	\N	2011	3397	\N	kingbomc
4254	\N	\N	\N	2011	3398	\N	kingbomc
4255	\N	\N	\N	1998	3399	\N	CLAREVMC
4256	\N	\N	\N	1722	3400	\N	sandybcl
4257	\N	\N	\N	2020	3401	\N	eastshrm
4258	\N	\N	\N	2039	3402	\N	sorellds
4259	\N	\N	\N	1878	3403	\N	sorellmc
4260	\N	\N	\N	2077	3404	\N	
4261	\N	\N	\N	2058	3404	\N	vallheru
4262	\N	\N	\N	2032	3405	\N	cascderd
4263	\N	\N	\N	2033	3405	\N	cascderd
4264	\N	\N	\N	1998	3406	\N	CLAREVMC
4265	\N	\N	\N	1711	3407	\N	huonvall
4266	\N	\N	\N	2011	3408	\N	kingbomc
4267	\N	\N	\N	2032	3409	\N	cascderd
4268	\N	\N	\N	2033	3409	\N	cascderd
4269	\N	\N	\N	2039	3410	\N	sorellds
4270	\N	\N	\N	1660	3411	\N	linkyhsv
4271	\N	\N	\N	1669	3412	\N	knopwdmc
4272	\N	\N	\N	2053	3412	\N	risdonvf
4273	\N	\N	\N	1720	3412	\N	rosnyprk
4274	\N	\N	\N	1972	3413	\N	
4275	\N	\N	\N	2005	3414	\N	unidrsur
4276	\N	\N	\N	2078	3415	\N	drmonica
4277	\N	\N	\N	2050	3416	\N	triabumc
4278	\N	\N	\N	1878	3417	\N	sorellmc
4279	\N	\N	\N	2014	3418	\N	hopkinst
4280	\N	\N	\N	2012	3418	\N	ntskincr
4281	\N	\N	\N	1723	3419	\N	lincolnc
4282	\N	\N	\N	1717	3420	\N	derwentv
4283	\N	\N	\N	2079	3421	\N	highland
4284	\N	\N	\N	2024	3422	\N	clacomhc
4285	\N	\N	\N	2017	3423	\N	rivervws
4286	\N	\N	\N	2021	3424	\N	grosvsgp
4287	\N	\N	\N	2022	3424	\N	grosvsgp
4288	\N	\N	\N	2006	3425	\N	unidrsur
4289	\N	\N	\N	1721	3426	\N	amienscl
4290	\N	\N	\N	2019	3426	\N	longbchm
4291	\N	\N	\N	2040	3426	\N	unidrsur
4292	\N	\N	\N	2071	3427	\N	cygfampr
4293	\N	\N	\N	1878	3428	\N	sorellmc
4294	\N	\N	\N	2056	3429	\N	
4295	\N	\N	\N	2064	3430	\N	cascderd
4296	\N	\N	\N	2033	3430	\N	cascderd
4297	\N	\N	\N	2067	3431	\N	espernan
4298	\N	\N	\N	2042	3432	\N	
4299	\N	\N	\N	2011	3433	\N	kingbomc
4300	\N	\N	\N	2024	3434	\N	clacomhc
4301	\N	\N	\N	2041	3435	\N	glebehfp
4302	\N	\N	\N	2034	3436	\N	huonvall
4303	\N	\N	\N	1711	3436	\N	huonvall
4304	\N	\N	\N	2049	3437	\N	yourhobd
4305	\N	\N	\N	1999	3438	\N	richmndm
4306	\N	\N	\N	2005	3439	\N	unidrsur
4307	\N	\N	\N	2023	3440	\N	rivervws
4308	\N	\N	\N	2004	3441	\N	lenahval
4309	\N	\N	\N	2051	3442	\N	med23pms
4310	\N	\N	\N	1717	3443	\N	derwentv
4311	\N	\N	\N	2014	3444	\N	hopkinst
4312	\N	\N	\N	1678	3445	\N	AFTERDRS
4313	\N	\N	\N	2005	3445	\N	unidrsur
4314	\N	\N	\N	2040	3445	\N	unidrsur
4315	\N	\N	\N	1721	3446	\N	amienscl
4316	\N	\N	\N	2073	3446	\N	connewrc
4317	\N	\N	\N	1721	3447	\N	amienscl
4318	\N	\N	\N	2047	3448	\N	yourhobd
4319	\N	\N	\N	2044	3448	\N	
4320	\N	\N	\N	2016	3448	\N	northnsc
4321	\N	\N	\N	2049	3448	\N	yourhobd
4322	\N	\N	\N	1660	3449	\N	linkyhsv
4323	\N	\N	\N	2003	3450	\N	FAMPLANT
4324	\N	\N	\N	1878	3450	\N	sorellmc
4325	\N	\N	\N	1710	3451	\N	huonvall
4326	\N	\N	\N	2003	3451	\N	FAMPLANT
4327	\N	\N	\N	1710	3452	\N	huonvall
4328	\N	\N	\N	2032	3453	\N	cascderd
4329	\N	\N	\N	2057	3453	\N	cascderd
4330	\N	\N	\N	2033	3453	\N	cascderd
4331	\N	\N	\N	1839	3454	\N	
4332	\N	\N	\N	1999	3455	\N	richmndm
4333	\N	\N	\N	1723	3456	\N	lincolnc
4334	\N	\N	\N	2041	3457	\N	glebehfp
4335	\N	\N	\N	2076	3457	\N	moretong
4336	\N	\N	\N	2017	3458	\N	rivervws
4337	\N	\N	\N	2006	3459	\N	unidrsur
4338	\N	\N	\N	2052	3460	\N	barackst
4339	\N	\N	\N	2012	3460	\N	ntskincr
4340	\N	\N	\N	1710	3461	\N	huonvall
4341	\N	\N	\N	2072	3461	\N	geevestn
4342	\N	\N	\N	2034	3462	\N	huonvall
4343	\N	\N	\N	2079	3463	\N	highland
4344	\N	\N	\N	2031	3464	\N	baysdemc
4345	\N	\N	\N	2003	3465	\N	FAMPLANT
4346	\N	\N	\N	2064	3465	\N	cascderd
4347	\N	\N	\N	2003	3466	\N	FAMPLANT
4348	\N	\N	\N	2004	3466	\N	lenahval
4349	\N	\N	\N	1878	3467	\N	sorellmc
4350	\N	\N	\N	2004	3468	\N	lenahval
4351	\N	\N	\N	1678	3469	\N	AFTERDRS
4352	\N	\N	\N	1660	3469	\N	linkyhsv
4353	\N	\N	\N	1720	3469	\N	rosnyprk
4354	\N	\N	\N	1711	3470	\N	huonvall
4355	\N	\N	\N	1998	3471	\N	CLAREVMC
4356	\N	\N	\N	2080	3472	\N	nthhobmc
4357	\N	\N	\N	1725	3473	\N	salamamc
4358	\N	\N	\N	2036	3474	\N	rivervws
4359	\N	\N	\N	2023	3475	\N	rivervws
4360	\N	\N	\N	2005	3476	\N	unidrsur
4361	\N	\N	\N	2032	3477	\N	cascderd
4362	\N	\N	\N	2008	3478	\N	greenptc
4363	\N	\N	\N	2032	3479	\N	cascderd
4364	\N	\N	\N	1725	3480	\N	salamamc
4365	\N	\N	\N	2070	3480	\N	huondrsu
4366	\N	\N	\N	1699	3481	\N	allabout
4367	\N	\N	\N	2068	3481	\N	allabout
4368	\N	\N	\N	1716	3481	\N	Newdegat
4369	\N	\N	\N	2071	3482	\N	cygfampr
4370	\N	\N	\N	1664	3483	\N	bqhealth
4371	\N	\N	\N	2019	3484	\N	longbchm
4372	\N	\N	\N	2032	3485	\N	cascderd
4373	\N	\N	\N	2026	3486	\N	Augustmc
4374	\N	\N	\N	2047	3487	\N	yourhobd
4375	\N	\N	\N	2062	3487	\N	yourhobd
4376	\N	\N	\N	2049	3487	\N	yourhobd
4377	\N	\N	\N	2014	3488	\N	hopkinst
4378	\N	\N	\N	2036	3489	\N	rivervws
4379	\N	\N	\N	2023	3489	\N	rivervws
4380	\N	\N	\N	2012	3490	\N	ntskincr
4381	\N	\N	\N	1678	3491	\N	AFTERDRS
4382	\N	\N	\N	1998	3491	\N	CLAREVMC
4383	\N	\N	\N	2024	3492	\N	clacomhc
4384	\N	\N	\N	2036	3493	\N	rivervws
4385	\N	\N	\N	2017	3493	\N	rivervws
4386	\N	\N	\N	1708	3494	\N	GORESTRM
4387	\N	\N	\N	2031	3495	\N	baysdemc
4388	\N	\N	\N	2057	3495	\N	cascderd
4389	\N	\N	\N	2011	3495	\N	kingbomc
4390	\N	\N	\N	2070	3496	\N	huondrsu
4391	\N	\N	\N	1711	3497	\N	huonvall
4392	\N	\N	\N	1710	3498	\N	huonvall
4393	\N	\N	\N	2034	3498	\N	huonvall
4394	\N	\N	\N	1711	3498	\N	huonvall
4395	\N	\N	\N	1997	3499	\N	johnstmc
4396	\N	\N	\N	2024	3500	\N	clacomhc
4397	\N	\N	\N	2032	3501	\N	cascderd
4398	\N	\N	\N	2064	3501	\N	cascderd
4399	\N	\N	\N	2033	3501	\N	cascderd
4400	\N	\N	\N	1692	3501	\N	
4401	\N	\N	\N	2023	3502	\N	rivervws
4402	\N	\N	\N	1997	3503	\N	johnstmc
4403	\N	\N	\N	2020	3504	\N	eastshrm
4404	\N	\N	\N	2042	3505	\N	
4405	\N	\N	\N	2052	3506	\N	barackst
4406	\N	\N	\N	2016	3507	\N	northnsc
4407	\N	\N	\N	1711	3508	\N	huonvall
4408	\N	\N	\N	2023	3509	\N	rivervws
4409	\N	\N	\N	2017	3509	\N	rivervws
4410	\N	\N	\N	1721	3510	\N	amienscl
4411	\N	\N	\N	2073	3510	\N	connewrc
4412	\N	\N	\N	2031	3511	\N	baysdemc
4413	\N	\N	\N	2051	3512	\N	med23pms
4414	\N	\N	\N	2026	3513	\N	Augustmc
4415	\N	\N	\N	1660	3513	\N	linkyhsv
4416	\N	\N	\N	2034	3514	\N	huonvall
4417	\N	\N	\N	1997	3515	\N	johnstmc
4418	\N	\N	\N	2076	3516	\N	moretong
4419	\N	\N	\N	2012	3516	\N	ntskincr
4420	\N	\N	\N	2011	3517	\N	kingbomc
4421	\N	\N	\N	2024	3518	\N	clacomhc
4422	\N	\N	\N	2031	3519	\N	baysdemc
4423	\N	\N	\N	2014	3519	\N	hopkinst
4424	\N	\N	\N	1998	3520	\N	CLAREVMC
4425	\N	\N	\N	2028	3521	\N	cascderd
4426	\N	\N	\N	2023	3522	\N	rivervws
4427	\N	\N	\N	2032	3523	\N	cascderd
4428	\N	\N	\N	2057	3523	\N	cascderd
4429	\N	\N	\N	1678	3524	\N	AFTERDRS
4430	\N	\N	\N	2040	3524	\N	unidrsur
4431	\N	\N	\N	2007	3524	\N	unidrsur
4432	\N	\N	\N	2057	3525	\N	cascderd
4433	\N	\N	\N	1716	3526	\N	Newdegat
4434	\N	\N	\N	2079	3527	\N	highland
4435	\N	\N	\N	2001	3528	\N	
4436	\N	\N	\N	2005	3528	\N	unidrsur
4437	\N	\N	\N	2007	3528	\N	unidrsur
4438	\N	\N	\N	2014	3529	\N	hopkinst
4439	\N	\N	\N	2052	3530	\N	barackst
4440	\N	\N	\N	2017	3531	\N	rivervws
4441	\N	\N	\N	2019	3532	\N	longbchm
4442	\N	\N	\N	1669	3533	\N	knopwdmc
4443	\N	\N	\N	2031	3534	\N	baysdemc
4444	\N	\N	\N	2031	3535	\N	baysdemc
4445	\N	\N	\N	1872	3535	\N	tasspine
4446	\N	\N	\N	2047	3536	\N	yourhobd
4447	\N	\N	\N	2026	3536	\N	Augustmc
4448	\N	\N	\N	1669	3537	\N	knopwdmc
4449	\N	\N	\N	2039	3537	\N	sorellds
4450	\N	\N	\N	2036	3538	\N	rivervws
4451	\N	\N	\N	2014	3539	\N	hopkinst
4452	\N	\N	\N	1722	3540	\N	sandybcl
4453	\N	\N	\N	2032	3541	\N	cascderd
4454	\N	\N	\N	2064	3541	\N	cascderd
4455	\N	\N	\N	2007	3542	\N	unidrsur
4456	\N	\N	\N	2013	3543	\N	argylegp
4457	\N	\N	\N	1722	3544	\N	sandybcl
4458	\N	\N	\N	2069	3545	\N	blackbay
4459	\N	\N	\N	2019	3546	\N	longbchm
4460	\N	\N	\N	2016	3547	\N	northnsc
4461	\N	\N	\N	2052	3548	\N	barackst
4462	\N	\N	\N	2031	3549	\N	baysdemc
4463	\N	\N	\N	2049	3550	\N	yourhobd
4464	\N	\N	\N	1878	3551	\N	sorellmc
4465	\N	\N	\N	1723	3552	\N	lincolnc
4466	\N	\N	\N	2019	3553	\N	longbchm
4467	\N	\N	\N	2016	3554	\N	northnsc
4468	\N	\N	\N	2016	3555	\N	northnsc
4469	\N	\N	\N	1839	3556	\N	
4470	\N	\N	\N	2005	3556	\N	unidrsur
4471	\N	\N	\N	2040	3556	\N	unidrsur
4472	\N	\N	\N	2014	3557	\N	hopkinst
4473	\N	\N	\N	2041	3558	\N	glebehfp
4474	\N	\N	\N	1711	3558	\N	huonvall
4475	\N	\N	\N	1723	3559	\N	lincolnc
4476	\N	\N	\N	1945	3560	\N	sjthomso
4477	\N	\N	\N	2031	3561	\N	baysdemc
4478	\N	\N	\N	2019	3562	\N	longbchm
4479	\N	\N	\N	2065	3562	\N	surgquee
4480	\N	\N	\N	1716	3562	\N	Newdegat
4481	\N	\N	\N	1997	3563	\N	johnstmc
4482	\N	\N	\N	1997	3564	\N	johnstmc
4483	\N	\N	\N	2026	3565	\N	Augustmc
4484	\N	\N	\N	1692	3565	\N	
4485	\N	\N	\N	2008	3566	\N	greenptc
4486	\N	\N	\N	2011	3567	\N	kingbomc
4487	\N	\N	\N	2023	3568	\N	rivervws
4488	\N	\N	\N	2003	3568	\N	FAMPLANT
4489	\N	\N	\N	2021	3569	\N	grosvsgp
4490	\N	\N	\N	2022	3569	\N	grosvsgp
4491	\N	\N	\N	1998	3570	\N	CLAREVMC
4492	\N	\N	\N	2053	3571	\N	risdonvf
4493	\N	\N	\N	2013	3572	\N	argylegp
4494	\N	\N	\N	1708	3573	\N	GORESTRM
4495	\N	\N	\N	1716	3574	\N	Newdegat
4496	\N	\N	\N	2021	3575	\N	grosvsgp
4497	\N	\N	\N	2022	3575	\N	grosvsgp
4498	\N	\N	\N	2063	3576	\N	unidrsur
4499	\N	\N	\N	2006	3576	\N	unidrsur
4500	\N	\N	\N	1878	3577	\N	sorellmc
4501	\N	\N	\N	1723	3578	\N	lincolnc
4502	\N	\N	\N	2036	3579	\N	rivervws
4503	\N	\N	\N	2081	3580	\N	Augustmc
4504	\N	\N	\N	2071	3581	\N	cygfampr
4505	\N	\N	\N	2036	3582	\N	rivervws
4506	\N	\N	\N	2017	3582	\N	rivervws
4507	\N	\N	\N	2032	3583	\N	cascderd
4508	\N	\N	\N	2057	3583	\N	cascderd
4509	\N	\N	\N	1725	3584	\N	salamamc
4510	\N	\N	\N	2011	3585	\N	kingbomc
4511	\N	\N	\N	2011	3586	\N	kingbomc
4512	\N	\N	\N	2070	3587	\N	huondrsu
4513	\N	\N	\N	2082	3588	\N	OCHRESTH
4514	\N	\N	\N	2083	3589	\N	
4515	\N	\N	\N	2084	3589	\N	LMC32LMC
4516	\N	\N	\N	2082	3590	\N	OCHRESTH
4517	\N	\N	\N	2085	3591	\N	scottsds
4518	\N	\N	\N	2083	3592	\N	
4519	\N	\N	\N	2086	3592	\N	prospect
4520	\N	\N	\N	2087	3593	\N	tremaurm
4521	\N	\N	\N	2088	3594	\N	
4522	\N	\N	\N	2089	3595	\N	northsub
4523	\N	\N	\N	2086	3596	\N	prospect
4524	\N	\N	\N	2090	3597	\N	annestmc
4525	\N	\N	\N	2091	3598	\N	lmc32lmc
4526	\N	\N	\N	2092	3599	\N	
4527	\N	\N	\N	2093	3600	\N	JABASSOC
4528	\N	\N	\N	2094	3601	\N	newstead
4529	\N	\N	\N	2095	3602	\N	famdocsv
4530	\N	\N	\N	2090	3603	\N	annestmc
4531	\N	\N	\N	2085	3604	\N	scottsds
4532	\N	\N	\N	2086	3605	\N	prospect
4533	\N	\N	\N	2085	3606	\N	scottsds
4534	\N	\N	\N	2096	3607	\N	FAMILYPC
4535	\N	\N	\N	2085	3608	\N	scottsds
4536	\N	\N	\N	2087	3608	\N	tremaurm
4537	\N	\N	\N	2097	3609	\N	scottsds
4538	\N	\N	\N	2085	3609	\N	scottsds
4539	\N	\N	\N	2084	3610	\N	LMC32LMC
4540	\N	\N	\N	2084	3611	\N	LMC32LMC
4541	\N	\N	\N	2098	3612	\N	longford
4542	\N	\N	\N	2099	3613	\N	DELORAIN
4543	\N	\N	\N	2100	3613	\N	DELORAIN
4544	\N	\N	\N	2101	3614	\N	exetermc
4545	\N	\N	\N	2089	3615	\N	northsub
4546	\N	\N	\N	2090	3616	\N	annestmc
4547	\N	\N	\N	1933	3617	\N	riversmg
4548	\N	\N	\N	2085	3618	\N	scottsds
4549	\N	\N	\N	1933	3619	\N	riversmg
4550	\N	\N	\N	1933	3620	\N	riversmg
4551	\N	\N	\N	2102	3621	\N	civicsqs
4552	\N	\N	\N	2103	3622	\N	flinders
4553	\N	\N	\N	2084	3623	\N	LMC32LMC
4554	\N	\N	\N	2090	3624	\N	annestmc
4555	\N	\N	\N	2104	3625	\N	j7henley
4556	\N	\N	\N	2089	3626	\N	northsub
4557	\N	\N	\N	2095	3627	\N	famdocsv
4558	\N	\N	\N	2085	3628	\N	scottsds
4559	\N	\N	\N	1933	3629	\N	riversmg
4560	\N	\N	\N	1765	3630	\N	EVANDMED
4561	\N	\N	\N	1764	3630	\N	WSTBURDS
4562	\N	\N	\N	2091	3631	\N	lmc32lmc
4563	\N	\N	\N	2105	3632	\N	
4564	\N	\N	\N	2094	3632	\N	newstead
4565	\N	\N	\N	2094	3633	\N	newstead
4566	\N	\N	\N	2085	3634	\N	scottsds
4567	\N	\N	\N	2106	3635	\N	windmill
4568	\N	\N	\N	2107	3636	\N	summdale
4569	\N	\N	\N	2107	3637	\N	summdale
4570	\N	\N	\N	2108	3638	\N	
4571	\N	\N	\N	2098	3638	\N	longford
4572	\N	\N	\N	2109	3638	\N	longford
4573	\N	\N	\N	1762	3639	\N	WSTBURDS
4574	\N	\N	\N	1764	3639	\N	WSTBURDS
4575	\N	\N	\N	2107	3640	\N	summdale
4576	\N	\N	\N	2094	3641	\N	newstead
4577	\N	\N	\N	2085	3642	\N	scottsds
4578	\N	\N	\N	2082	3239	\N	OCHRESTH
4579	\N	\N	\N	2094	3643	\N	newstead
4580	\N	\N	\N	2107	3644	\N	summdale
4581	\N	\N	\N	2094	3645	\N	newstead
4582	\N	\N	\N	2094	3646	\N	newstead
4583	\N	\N	\N	2090	3647	\N	annestmc
4584	\N	\N	\N	2090	3648	\N	annestmc
4585	\N	\N	\N	2097	3649	\N	scottsds
4586	\N	\N	\N	2085	3649	\N	scottsds
4587	\N	\N	\N	2084	3650	\N	LMC32LMC
4588	\N	\N	\N	2098	3651	\N	longford
4589	\N	\N	\N	2109	3651	\N	longford
4590	\N	\N	\N	2110	3652	\N	campbtns
4591	\N	\N	\N	2111	3653	\N	bichengp
4592	\N	\N	\N	2094	3654	\N	newstead
4593	\N	\N	\N	2098	3655	\N	longford
4594	\N	\N	\N	2109	3655	\N	longford
4595	\N	\N	\N	2112	3656	\N	MOWBRAYH
4596	\N	\N	\N	2094	3657	\N	newstead
4597	\N	\N	\N	1933	3658	\N	riversmg
4598	\N	\N	\N	2089	3659	\N	northsub
4599	\N	\N	\N	2098	3660	\N	longford
4600	\N	\N	\N	2109	3660	\N	longford
4601	\N	\N	\N	2104	3661	\N	j7henley
4602	\N	\N	\N	2099	3662	\N	DELORAIN
4603	\N	\N	\N	2100	3662	\N	DELORAIN
4604	\N	\N	\N	2107	3663	\N	summdale
4605	\N	\N	\N	2094	3664	\N	newstead
4606	\N	\N	\N	2086	3665	\N	prospect
4607	\N	\N	\N	2093	3666	\N	JABASSOC
4608	\N	\N	\N	2103	3292	\N	flinders
4609	\N	\N	\N	2107	3667	\N	summdale
4610	\N	\N	\N	2107	3668	\N	summdale
4611	\N	\N	\N	2094	3669	\N	newstead
4612	\N	\N	\N	2094	3670	\N	newstead
4613	\N	\N	\N	1765	3671	\N	EVANDMED
4614	\N	\N	\N	1764	3671	\N	WSTBURDS
4615	\N	\N	\N	2113	3672	\N	exetermc
4616	\N	\N	\N	2089	3673	\N	northsub
4617	\N	\N	\N	2082	3674	\N	OCHRESTH
4618	\N	\N	\N	2086	3675	\N	prospect
4619	\N	\N	\N	2093	3676	\N	JABASSOC
4620	\N	\N	\N	2084	3677	\N	LMC32LMC
4621	\N	\N	\N	2094	3677	\N	newstead
4622	\N	\N	\N	2103	3678	\N	flinders
4623	\N	\N	\N	2107	3679	\N	summdale
4624	\N	\N	\N	2094	3680	\N	newstead
4625	\N	\N	\N	2106	3681	\N	windmill
4626	\N	\N	\N	1933	3682	\N	riversmg
4627	\N	\N	\N	2098	3683	\N	longford
4628	\N	\N	\N	2109	3683	\N	longford
4629	\N	\N	\N	2091	3684	\N	lmc32lmc
4630	\N	\N	\N	2110	3685	\N	campbtns
4631	\N	\N	\N	1763	3686	\N	rosecott
4632	\N	\N	\N	2089	3687	\N	northsub
4633	\N	\N	\N	1933	3688	\N	riversmg
4634	\N	\N	\N	2104	3689	\N	j7henley
4635	\N	\N	\N	2114	3690	\N	
4636	\N	\N	\N	2093	3691	\N	JABASSOC
4637	\N	\N	\N	2084	3692	\N	LMC32LMC
4638	\N	\N	\N	1762	3693	\N	WSTBURDS
4639	\N	\N	\N	1764	3693	\N	WSTBURDS
4640	\N	\N	\N	2086	3694	\N	prospect
4641	\N	\N	\N	2099	3695	\N	DELORAIN
4642	\N	\N	\N	2094	3696	\N	newstead
4643	\N	\N	\N	2115	3697	\N	drkulins
4644	\N	\N	\N	1933	3698	\N	riversmg
4645	\N	\N	\N	2107	3699	\N	summdale
4646	\N	\N	\N	2116	3700	\N	stmarymd
4647	\N	\N	\N	2101	3701	\N	exetermc
4648	\N	\N	\N	2087	3702	\N	tremaurm
4649	\N	\N	\N	2094	3703	\N	newstead
4650	\N	\N	\N	2117	3704	\N	LMC32LMC
4651	\N	\N	\N	2086	3705	\N	prospect
4652	\N	\N	\N	2082	3706	\N	OCHRESTH
4653	\N	\N	\N	2107	3707	\N	summdale
4654	\N	\N	\N	2097	3708	\N	scottsds
4655	\N	\N	\N	2085	3708	\N	scottsds
4656	\N	\N	\N	2087	3709	\N	tremaurm
4657	\N	\N	\N	2118	3710	\N	beaconms
4658	\N	\N	\N	1764	3711	\N	WSTBURDS
4659	\N	\N	\N	2085	3712	\N	scottsds
4660	\N	\N	\N	2099	3713	\N	DELORAIN
4661	\N	\N	\N	2100	3713	\N	DELORAIN
4662	\N	\N	\N	2084	3714	\N	LMC32LMC
4663	\N	\N	\N	2088	3714	\N	
4664	\N	\N	\N	2084	3715	\N	LMC32LMC
4665	\N	\N	\N	2099	3716	\N	DELORAIN
4666	\N	\N	\N	2100	3716	\N	DELORAIN
4667	\N	\N	\N	2119	3717	\N	
4668	\N	\N	\N	2094	3718	\N	newstead
4669	\N	\N	\N	2085	3719	\N	scottsds
4670	\N	\N	\N	2090	3720	\N	annestmc
4671	\N	\N	\N	2090	3721	\N	annestmc
4672	\N	\N	\N	2096	3722	\N	FAMILYPC
4673	\N	\N	\N	2086	3723	\N	prospect
4674	\N	\N	\N	1749	3724	\N	cnryouth
4675	\N	\N	\N	2084	3724	\N	LMC32LMC
4676	\N	\N	\N	2084	3725	\N	LMC32LMC
4677	\N	\N	\N	2084	3726	\N	LMC32LMC
4678	\N	\N	\N	2085	3727	\N	scottsds
4679	\N	\N	\N	2099	3728	\N	DELORAIN
4680	\N	\N	\N	2100	3728	\N	DELORAIN
4681	\N	\N	\N	2099	3729	\N	DELORAIN
4682	\N	\N	\N	2100	3729	\N	DELORAIN
4683	\N	\N	\N	2116	3730	\N	stmarymd
4684	\N	\N	\N	2112	3731	\N	MOWBRAYH
4685	\N	\N	\N	2116	3421	\N	stmarymd
4686	\N	\N	\N	2083	3732	\N	
4687	\N	\N	\N	2084	3733	\N	LMC32LMC
4688	\N	\N	\N	2085	3734	\N	scottsds
4689	\N	\N	\N	2096	3735	\N	FAMILYPC
4690	\N	\N	\N	2086	3735	\N	prospect
4691	\N	\N	\N	2111	3736	\N	bichengp
4692	\N	\N	\N	2082	3737	\N	OCHRESTH
4693	\N	\N	\N	1933	3738	\N	riversmg
4694	\N	\N	\N	2101	3739	\N	exetermc
4695	\N	\N	\N	2094	3740	\N	newstead
4696	\N	\N	\N	2098	3741	\N	longford
4697	\N	\N	\N	2109	3741	\N	longford
4698	\N	\N	\N	2084	3742	\N	LMC32LMC
4699	\N	\N	\N	2084	3743	\N	LMC32LMC
4700	\N	\N	\N	2093	3744	\N	JABASSOC
4701	\N	\N	\N	2120	3745	\N	point1st
4702	\N	\N	\N	2109	3746	\N	longford
4703	\N	\N	\N	2120	3747	\N	point1st
4704	\N	\N	\N	2094	3748	\N	newstead
4705	\N	\N	\N	2099	3749	\N	DELORAIN
4706	\N	\N	\N	2095	3750	\N	famdocsv
4707	\N	\N	\N	1933	3751	\N	riversmg
4708	\N	\N	\N	2098	3752	\N	longford
4709	\N	\N	\N	2109	3752	\N	longford
4710	\N	\N	\N	2084	3753	\N	LMC32LMC
4711	\N	\N	\N	2084	3754	\N	LMC32LMC
4712	\N	\N	\N	1933	3755	\N	riversmg
4713	\N	\N	\N	2082	3756	\N	OCHRESTH
4714	\N	\N	\N	2088	3757	\N	
4715	\N	\N	\N	2106	3757	\N	windmill
4716	\N	\N	\N	2107	3758	\N	summdale
4717	\N	\N	\N	2097	3489	\N	scottsds
4718	\N	\N	\N	2085	3489	\N	scottsds
4719	\N	\N	\N	2099	3759	\N	DELORAIN
4720	\N	\N	\N	2095	3759	\N	famdocsv
4721	\N	\N	\N	2115	3759	\N	drkulins
4722	\N	\N	\N	2100	3759	\N	DELORAIN
4723	\N	\N	\N	1933	3760	\N	riversmg
4724	\N	\N	\N	2112	3761	\N	MOWBRAYH
4725	\N	\N	\N	2086	3761	\N	prospect
4726	\N	\N	\N	2099	3762	\N	DELORAIN
4727	\N	\N	\N	2100	3762	\N	DELORAIN
4728	\N	\N	\N	2084	3763	\N	LMC32LMC
4729	\N	\N	\N	2106	3764	\N	windmill
4730	\N	\N	\N	1749	3765	\N	cnryouth
4731	\N	\N	\N	2112	3766	\N	MOWBRAYH
4732	\N	\N	\N	1933	3767	\N	riversmg
4733	\N	\N	\N	2121	3768	\N	eskfamhc
4734	\N	\N	\N	2107	3769	\N	summdale
4735	\N	\N	\N	2087	3770	\N	tremaurm
4736	\N	\N	\N	1763	3771	\N	rosecott
4737	\N	\N	\N	2084	3772	\N	LMC32LMC
4738	\N	\N	\N	2117	3773	\N	LMC32LMC
4739	\N	\N	\N	2101	3774	\N	exetermc
4740	\N	\N	\N	2084	3775	\N	LMC32LMC
4741	\N	\N	\N	2095	3776	\N	famdocsv
4742	\N	\N	\N	2122	3776	\N	
4743	\N	\N	\N	2082	3777	\N	OCHRESTH
4744	\N	\N	\N	2084	3778	\N	LMC32LMC
4745	\N	\N	\N	2102	3524	\N	civicsqs
4746	\N	\N	\N	1933	3779	\N	riversmg
4747	\N	\N	\N	2093	3780	\N	JABASSOC
4748	\N	\N	\N	2095	3781	\N	famdocsv
4749	\N	\N	\N	2096	3782	\N	FAMILYPC
4750	\N	\N	\N	2084	3782	\N	LMC32LMC
4751	\N	\N	\N	2107	3783	\N	summdale
4752	\N	\N	\N	2091	3784	\N	lmc32lmc
4753	\N	\N	\N	2094	3785	\N	newstead
4754	\N	\N	\N	2121	3786	\N	eskfamhc
4755	\N	\N	\N	2084	3787	\N	LMC32LMC
4756	\N	\N	\N	2121	3788	\N	eskfamhc
4757	\N	\N	\N	2084	3788	\N	LMC32LMC
4758	\N	\N	\N	2107	3789	\N	summdale
4759	\N	\N	\N	2084	3790	\N	LMC32LMC
4760	\N	\N	\N	2086	3791	\N	prospect
4761	\N	\N	\N	2123	3792	\N	
4762	\N	\N	\N	2099	3793	\N	DELORAIN
4763	\N	\N	\N	2098	3794	\N	longford
4764	\N	\N	\N	2109	3794	\N	longford
4765	\N	\N	\N	2104	3795	\N	j7henley
4766	\N	\N	\N	2105	3796	\N	
4767	\N	\N	\N	2086	3796	\N	prospect
4768	\N	\N	\N	2107	3797	\N	summdale
4769	\N	\N	\N	1933	3798	\N	riversmg
4770	\N	\N	\N	2121	3799	\N	eskfamhc
4771	\N	\N	\N	2084	3800	\N	LMC32LMC
4772	\N	\N	\N	2091	3801	\N	lmc32lmc
4773	\N	\N	\N	2087	3802	\N	tremaurm
4774	\N	\N	\N	1762	3803	\N	WSTBURDS
4775	\N	\N	\N	2105	3803	\N	
4776	\N	\N	\N	2084	3804	\N	LMC32LMC
4777	\N	\N	\N	2088	3805	\N	
4778	\N	\N	\N	2107	3806	\N	summdale
4779	\N	\N	\N	2094	3807	\N	newstead
4780	\N	\N	\N	2094	3808	\N	newstead
4781	\N	\N	\N	2107	3809	\N	summdale
4782	\N	\N	\N	2084	3810	\N	LMC32LMC
4783	\N	\N	\N	2105	3810	\N	
4784	\N	\N	\N	2124	3811	\N	latrobef
4785	\N	\N	\N	2125	3812	\N	janecoop
4786	\N	\N	\N	2126	3813	\N	victorsc
4787	\N	\N	\N	2127	3814	\N	citymedi
4788	\N	\N	\N	1773	3815	\N	somerset
4789	\N	\N	\N	1773	3816	\N	somerset
4790	\N	\N	\N	2128	3817	\N	upburnie
4791	\N	\N	\N	2129	3817	\N	FAMPLNNW
4792	\N	\N	\N	2126	3818	\N	victorsc
4793	\N	\N	\N	2130	3819	\N	smithton
4794	\N	\N	\N	1789	3820	\N	saunders
4795	\N	\N	\N	1789	3821	\N	saunders
4796	\N	\N	\N	2131	3822	\N	wynyardd
4797	\N	\N	\N	2124	3823	\N	latrobef
4798	\N	\N	\N	2132	3824	\N	patrickc
4799	\N	\N	\N	2133	3825	\N	bashouse
4800	\N	\N	\N	2129	3825	\N	FAMPLNNW
4801	\N	\N	\N	1789	3826	\N	saunders
4802	\N	\N	\N	2134	3827	\N	TIN523EK
4803	\N	\N	\N	2135	3828	\N	eastdpmc
4804	\N	\N	\N	2133	3829	\N	bashouse
4805	\N	\N	\N	2136	3830	\N	valleyrd
4806	\N	\N	\N	2137	3831	\N	citymdvn
4807	\N	\N	\N	2138	3832	\N	kingisgp
4808	\N	\N	\N	1788	3833	\N	tasfamil
4809	\N	\N	\N	1796	3834	\N	shefmedi
4810	\N	\N	\N	2132	3835	\N	patrickc
4811	\N	\N	\N	2139	3608	\N	QSTOWNGP
4812	\N	\N	\N	2132	3836	\N	patrickc
4813	\N	\N	\N	2140	3836	\N	patrickc
4814	\N	\N	\N	2141	3837	\N	tassknbd
4815	\N	\N	\N	2135	3838	\N	eastdpmc
4816	\N	\N	\N	2124	3839	\N	latrobef
4817	\N	\N	\N	2132	3840	\N	patrickc
4818	\N	\N	\N	2140	3840	\N	patrickc
4819	\N	\N	\N	2135	3841	\N	eastdpmc
4820	\N	\N	\N	2128	3842	\N	upburnie
4821	\N	\N	\N	2125	3843	\N	janecoop
4822	\N	\N	\N	2136	3844	\N	valleyrd
4823	\N	\N	\N	2130	3622	\N	smithton
4824	\N	\N	\N	1790	3845	\N	burniegp
4825	\N	\N	\N	1790	3846	\N	burniegp
4826	\N	\N	\N	2132	3847	\N	patrickc
4827	\N	\N	\N	2140	3847	\N	patrickc
4828	\N	\N	\N	2139	3848	\N	QSTOWNGP
4829	\N	\N	\N	2139	3628	\N	QSTOWNGP
4830	\N	\N	\N	2132	3849	\N	patrickc
4831	\N	\N	\N	2140	3849	\N	patrickc
4832	\N	\N	\N	2133	3850	\N	bashouse
4833	\N	\N	\N	2126	3851	\N	victorsc
4834	\N	\N	\N	2142	3852	\N	
4835	\N	\N	\N	2143	3853	\N	portsomc
4836	\N	\N	\N	2130	3854	\N	smithton
4837	\N	\N	\N	2126	3855	\N	victorsc
4838	\N	\N	\N	2137	3856	\N	citymdvn
4839	\N	\N	\N	2124	3857	\N	latrobef
4840	\N	\N	\N	2126	3858	\N	victorsc
4841	\N	\N	\N	2136	3859	\N	valleyrd
4842	\N	\N	\N	2124	3860	\N	latrobef
4843	\N	\N	\N	2124	3861	\N	latrobef
4844	\N	\N	\N	2132	3862	\N	patrickc
4845	\N	\N	\N	2144	3863	\N	penguins
4846	\N	\N	\N	2134	3864	\N	TIN523EK
4847	\N	\N	\N	2131	3865	\N	wynyardd
4848	\N	\N	\N	2137	3866	\N	citymdvn
4849	\N	\N	\N	2130	3867	\N	smithton
4850	\N	\N	\N	2126	3868	\N	victorsc
4851	\N	\N	\N	2136	3869	\N	valleyrd
4852	\N	\N	\N	1788	3870	\N	tasfamil
4853	\N	\N	\N	1789	3871	\N	saunders
4854	\N	\N	\N	2124	3872	\N	latrobef
4855	\N	\N	\N	2136	3873	\N	valleyrd
4856	\N	\N	\N	2124	3874	\N	latrobef
4857	\N	\N	\N	2127	3875	\N	citymedi
4858	\N	\N	\N	2126	3876	\N	victorsc
4859	\N	\N	\N	2145	3877	\N	
4860	\N	\N	\N	1789	3877	\N	saunders
4861	\N	\N	\N	1773	3878	\N	somerset
4862	\N	\N	\N	2135	3879	\N	eastdpmc
4863	\N	\N	\N	2141	3880	\N	tassknbd
4864	\N	\N	\N	2143	3881	\N	portsomc
4865	\N	\N	\N	1796	3693	\N	shefmedi
4866	\N	\N	\N	2137	3882	\N	citymdvn
4867	\N	\N	\N	2124	3883	\N	latrobef
4868	\N	\N	\N	1790	3884	\N	burniegp
4869	\N	\N	\N	2124	3885	\N	latrobef
4870	\N	\N	\N	2143	3886	\N	portsomc
4871	\N	\N	\N	2141	3887	\N	tassknbd
4872	\N	\N	\N	2137	3888	\N	citymdvn
4873	\N	\N	\N	2128	3889	\N	upburnie
4874	\N	\N	\N	2146	3889	\N	
4875	\N	\N	\N	2127	3890	\N	citymedi
4876	\N	\N	\N	2139	3891	\N	QSTOWNGP
4877	\N	\N	\N	2147	3891	\N	ROSEBERY
4878	\N	\N	\N	2143	3892	\N	portsomc
4879	\N	\N	\N	2135	3893	\N	eastdpmc
4880	\N	\N	\N	2137	3894	\N	citymdvn
4881	\N	\N	\N	2126	3895	\N	victorsc
4882	\N	\N	\N	2125	3896	\N	janecoop
4883	\N	\N	\N	2127	3897	\N	citymedi
4884	\N	\N	\N	2130	3898	\N	smithton
4885	\N	\N	\N	2126	3899	\N	victorsc
4886	\N	\N	\N	2132	3900	\N	patrickc
4887	\N	\N	\N	2128	3901	\N	upburnie
4888	\N	\N	\N	2127	3902	\N	citymedi
4889	\N	\N	\N	2130	3903	\N	smithton
4890	\N	\N	\N	2124	3904	\N	latrobef
4891	\N	\N	\N	2143	3905	\N	portsomc
4892	\N	\N	\N	2135	3906	\N	eastdpmc
4893	\N	\N	\N	2139	3907	\N	QSTOWNGP
4894	\N	\N	\N	2128	3908	\N	upburnie
4895	\N	\N	\N	2137	3909	\N	citymdvn
4896	\N	\N	\N	2143	3910	\N	portsomc
4897	\N	\N	\N	1773	3911	\N	somerset
4898	\N	\N	\N	2131	3912	\N	wynyardd
4899	\N	\N	\N	2130	3913	\N	smithton
4900	\N	\N	\N	1788	3914	\N	tasfamil
4901	\N	\N	\N	2126	3915	\N	victorsc
4902	\N	\N	\N	2135	3916	\N	eastdpmc
4903	\N	\N	\N	2126	3917	\N	victorsc
4904	\N	\N	\N	1789	3918	\N	saunders
4905	\N	\N	\N	2143	3919	\N	portsomc
4906	\N	\N	\N	2136	3920	\N	valleyrd
4907	\N	\N	\N	1773	3921	\N	somerset
4908	\N	\N	\N	2132	3922	\N	patrickc
4909	\N	\N	\N	1796	3923	\N	shefmedi
4910	\N	\N	\N	2132	3924	\N	patrickc
4911	\N	\N	\N	2124	3925	\N	latrobef
4912	\N	\N	\N	1789	3926	\N	saunders
4913	\N	\N	\N	1788	3927	\N	tasfamil
4914	\N	\N	\N	2131	3928	\N	wynyardd
4915	\N	\N	\N	2126	3929	\N	victorsc
4916	\N	\N	\N	2137	3930	\N	citymdvn
4917	\N	\N	\N	2137	3763	\N	citymdvn
4918	\N	\N	\N	2132	3931	\N	patrickc
4919	\N	\N	\N	1789	3932	\N	saunders
4920	\N	\N	\N	2135	3933	\N	eastdpmc
4921	\N	\N	\N	2128	3934	\N	upburnie
4922	\N	\N	\N	2136	3935	\N	valleyrd
4923	\N	\N	\N	2133	3936	\N	bashouse
4924	\N	\N	\N	2133	3937	\N	bashouse
4925	\N	\N	\N	1789	3937	\N	saunders
4926	\N	\N	\N	1796	3938	\N	shefmedi
4927	\N	\N	\N	1789	3939	\N	saunders
4928	\N	\N	\N	2145	3940	\N	
4929	\N	\N	\N	2128	3940	\N	upburnie
4930	\N	\N	\N	2129	3940	\N	FAMPLNNW
4931	\N	\N	\N	1790	3941	\N	burniegp
4932	\N	\N	\N	2137	3942	\N	citymdvn
4933	\N	\N	\N	2134	3943	\N	TIN523EK
4934	\N	\N	\N	2143	3802	\N	portsomc
4935	\N	\N	\N	1790	3944	\N	burniegp
4936	\N	\N	\N	2124	3945	\N	latrobef
4937	\N	\N	\N	2132	3946	\N	patrickc
4938	\N	\N	\N	2140	3946	\N	patrickc
4939	\N	\N	\N	2147	3947	\N	ROSEBERY
4940	\N	\N	\N	2148	3947	\N	ZEEHANMC
4941	\N	\N	\N	2127	3948	\N	citymedi
4942	\N	\N	\N	2132	3949	\N	patrickc
4943	\N	\N	\N	2133	3950	\N	bashouse
4944	\N	\N	\N	1789	3951	\N	saunders
4945	\N	\N	\N	2145	3952	\N	
4946	\N	\N	\N	2149	3952	\N	
4947	\N	\N	\N	2135	3953	\N	eastdpmc
4948	\N	\N	\N	1796	3954	\N	shefmedi
4949	\N	\N	\N	2129	3955	\N	FAMPLNNW
4950	\N	\N	\N	2132	3955	\N	patrickc
4951	\N	\N	\N	2132	3956	\N	patrickc
4952	\N	\N	\N	1802	3957	\N	
4953	\N	\N	\N	1803	3958	\N	
4954	\N	\N	\N	1804	3959	\N	
4955	\N	\N	\N	1805	3960	\N	
4956	\N	\N	\N	1805	3961	\N	
4957	\N	\N	\N	1806	3962	\N	sthpains
4958	\N	\N	\N	1805	3963	\N	
4959	\N	\N	\N	1805	3964	\N	
4960	\N	\N	\N	1805	3965	\N	
4961	\N	\N	\N	1804	3966	\N	
4962	\N	\N	\N	1804	3967	\N	
4963	\N	\N	\N	1805	3968	\N	
4964	\N	\N	\N	1804	3969	\N	
4965	\N	\N	\N	1804	3970	\N	
4966	\N	\N	\N	1805	3971	\N	
4967	\N	\N	\N	1805	3972	\N	
4968	\N	\N	\N	1805	3973	\N	
4969	\N	\N	\N	1805	3974	\N	
4970	\N	\N	\N	1807	3975	\N	
4971	\N	\N	\N	1807	3976	\N	
4972	\N	\N	\N	1807	3977	\N	
4973	\N	\N	\N	1808	3978	\N	
4974	\N	\N	\N	1807	3979	\N	
4975	\N	\N	\N	1807	3980	\N	
4976	\N	\N	\N	1807	3981	\N	
4977	\N	\N	\N	1807	3982	\N	
4978	\N	\N	\N	1809	3983	\N	CHCTLVCS
4979	\N	\N	\N	1810	3983	\N	lgallign
4980	\N	\N	\N	1809	3984	\N	CHCTLVCS
4981	\N	\N	\N	1809	3985	\N	CHCTLVCS
4982	\N	\N	\N	1809	3986	\N	CHCTLVCS
4983	\N	\N	\N	1810	3987	\N	lgallign
4984	\N	\N	\N	1809	3988	\N	CHCTLVCS
4985	\N	\N	\N	1811	3989	\N	hcardiol
4986	\N	\N	\N	1810	3990	\N	lgallign
4987	\N	\N	\N	1810	3991	\N	lgallign
4988	\N	\N	\N	1811	3992	\N	hcardiol
4989	\N	\N	\N	1810	3993	\N	lgallign
4990	\N	\N	\N	1810	3994	\N	lgallign
4991	\N	\N	\N	1809	3995	\N	CHCTLVCS
4992	\N	\N	\N	1810	3995	\N	lgallign
4993	\N	\N	\N	1810	3996	\N	lgallign
4994	\N	\N	\N	1809	3997	\N	CHCTLVCS
4995	\N	\N	\N	1810	3997	\N	lgallign
4996	\N	\N	\N	1810	3998	\N	lgallign
4997	\N	\N	\N	1810	3999	\N	lgallign
4998	\N	\N	\N	1812	4000	\N	heartctr
4999	\N	\N	\N	1813	4001	\N	
5000	\N	\N	\N	1812	4002	\N	heartctr
5001	\N	\N	\N	1813	4003	\N	
5002	\N	\N	\N	1812	4004	\N	heartctr
5003	\N	\N	\N	1812	4005	\N	heartctr
5004	\N	\N	\N	1812	4006	\N	heartctr
5005	\N	\N	\N	1814	4007	\N	lmc32lmc
5006	\N	\N	\N	1812	3992	\N	heartctr
5007	\N	\N	\N	1815	4008	\N	
5008	\N	\N	\N	1812	4009	\N	heartctr
5009	\N	\N	\N	1816	4010	\N	
5010	\N	\N	\N	1812	4011	\N	heartctr
5011	\N	\N	\N	1812	3995	\N	heartctr
5012	\N	\N	\N	1812	4012	\N	heartctr
5013	\N	\N	\N	1817	4013	\N	
5014	\N	\N	\N	1812	4014	\N	heartctr
5015	\N	\N	\N	1812	4015	\N	heartctr
5016	\N	\N	\N	1812	4016	\N	heartctr
5017	\N	\N	\N	1818	4017	\N	
5018	\N	\N	\N	1812	4018	\N	heartctr
5019	\N	\N	\N	1812	4019	\N	heartctr
5020	\N	\N	\N	1812	4020	\N	heartctr
5021	\N	\N	\N	1819	4000	\N	heartctr
5022	\N	\N	\N	1819	4004	\N	heartctr
5023	\N	\N	\N	1819	4006	\N	heartctr
5024	\N	\N	\N	1819	4012	\N	heartctr
5025	\N	\N	\N	1820	4021	\N	CHCTLVCS
5026	\N	\N	\N	1821	4021	\N	
5027	\N	\N	\N	1820	4022	\N	CHCTLVCS
5028	\N	\N	\N	1822	4022	\N	
5029	\N	\N	\N	1820	4023	\N	CHCTLVCS
5030	\N	\N	\N	1823	4024	\N	
5031	\N	\N	\N	1824	4025	\N	CHCTLVCS
5032	\N	\N	\N	1824	4026	\N	CHCTLVCS
5033	\N	\N	\N	1825	4027	\N	welldayh
5034	\N	\N	\N	1826	4027	\N	welldayh
5035	\N	\N	\N	1813	4028	\N	
5036	\N	\N	\N	1824	4029	\N	CHCTLVCS
5037	\N	\N	\N	1825	4030	\N	welldayh
5038	\N	\N	\N	1826	4030	\N	welldayh
5039	\N	\N	\N	1824	4031	\N	CHCTLVCS
5040	\N	\N	\N	1825	4032	\N	welldayh
5041	\N	\N	\N	1826	4032	\N	welldayh
5042	\N	\N	\N	1827	4033	\N	
5043	\N	\N	\N	1763	4034	\N	rosecott
5044	\N	\N	\N	1828	4035	\N	hobcolon
5045	\N	\N	\N	1829	4036	\N	
5046	\N	\N	\N	1830	4037	\N	
5047	\N	\N	\N	1828	4038	\N	hobcolon
5048	\N	\N	\N	1831	4039	\N	
5049	\N	\N	\N	1832	4040	\N	syellapu
5050	\N	\N	\N	1827	4041	\N	
5051	\N	\N	\N	1833	4042	\N	launderm
5052	\N	\N	\N	1834	4043	\N	drjevtic
5053	\N	\N	\N	1835	4043	\N	drjevtic
5054	\N	\N	\N	1827	4044	\N	
5055	\N	\N	\N	1833	4044	\N	launderm
5056	\N	\N	\N	1827	4045	\N	
5057	\N	\N	\N	1836	4046	\N	
5058	\N	\N	\N	1837	4047	\N	
5059	\N	\N	\N	1837	4048	\N	
5060	\N	\N	\N	1837	4049	\N	
5061	\N	\N	\N	1837	4050	\N	
5062	\N	\N	\N	1811	4051	\N	hcardiol
5063	\N	\N	\N	1811	4052	\N	hcardiol
5064	\N	\N	\N	1838	4053	\N	
5065	\N	\N	\N	1839	4054	\N	
5066	\N	\N	\N	1811	4054	\N	hcardiol
5067	\N	\N	\N	1840	4055	\N	lresleep
5068	\N	\N	\N	1692	4056	\N	
5069	\N	\N	\N	1841	4057	\N	gkirklnd
5070	\N	\N	\N	1811	4058	\N	hcardiol
5071	\N	\N	\N	1842	4059	\N	
5072	\N	\N	\N	1843	4060	\N	
5073	\N	\N	\N	1844	4061	\N	
5074	\N	\N	\N	1845	4061	\N	
5075	\N	\N	\N	1846	4062	\N	drearles
5076	\N	\N	\N	1847	4063	\N	hbartent
5077	\N	\N	\N	1847	4064	\N	hbartent
5078	\N	\N	\N	1848	4065	\N	
5079	\N	\N	\N	1849	4066	\N	nmsrgicl
5080	\N	\N	\N	1850	4067	\N	hgastroc
5081	\N	\N	\N	1851	4068	\N	gastrohh
5082	\N	\N	\N	1811	4069	\N	hcardiol
5083	\N	\N	\N	1852	4070	\N	CHCTLVCS
5084	\N	\N	\N	1853	4071	\N	cntgastr
5085	\N	\N	\N	1854	4072	\N	
5086	\N	\N	\N	1855	4073	\N	mwgastro
5087	\N	\N	\N	1851	4074	\N	gastrohh
5088	\N	\N	\N	1856	4075	\N	sfanning
5089	\N	\N	\N	1857	4076	\N	
5090	\N	\N	\N	1858	4077	\N	
5091	\N	\N	\N	1859	4078	\N	veldhuis
5092	\N	\N	\N	1860	4079	\N	
5093	\N	\N	\N	1826	4079	\N	welldayh
5094	\N	\N	\N	1789	4080	\N	saunders
5095	\N	\N	\N	1812	4081	\N	heartctr
5096	\N	\N	\N	1852	4082	\N	CHCTLVCS
5097	\N	\N	\N	1852	4083	\N	CHCTLVCS
5098	\N	\N	\N	1861	4083	\N	
5099	\N	\N	\N	1852	4084	\N	CHCTLVCS
5100	\N	\N	\N	1825	4085	\N	welldayh
5101	\N	\N	\N	1826	4085	\N	welldayh
5102	\N	\N	\N	1812	4086	\N	heartctr
5103	\N	\N	\N	1862	4086	\N	
5104	\N	\N	\N	1813	4087	\N	
5105	\N	\N	\N	1811	4088	\N	hcardiol
5106	\N	\N	\N	1852	4089	\N	CHCTLVCS
5107	\N	\N	\N	1852	4090	\N	CHCTLVCS
5108	\N	\N	\N	1841	4091	\N	gkirklnd
5109	\N	\N	\N	1861	4092	\N	
5110	\N	\N	\N	1802	4093	\N	
5111	\N	\N	\N	1863	4094	\N	
5112	\N	\N	\N	1813	4095	\N	
5113	\N	\N	\N	1864	4095	\N	
5114	\N	\N	\N	1865	4096	\N	
5115	\N	\N	\N	1866	4097	\N	
5116	\N	\N	\N	1867	4098	\N	bwtsurge
5117	\N	\N	\N	1861	4099	\N	
5118	\N	\N	\N	1824	4100	\N	CHCTLVCS
5119	\N	\N	\N	1861	4101	\N	
5120	\N	\N	\N	1861	4102	\N	
5121	\N	\N	\N	1824	4103	\N	CHCTLVCS
5122	\N	\N	\N	1868	4104	\N	
5123	\N	\N	\N	1861	4105	\N	
5124	\N	\N	\N	1811	4106	\N	hcardiol
5125	\N	\N	\N	1813	4107	\N	
5126	\N	\N	\N	1811	4108	\N	hcardiol
5127	\N	\N	\N	1869	4109	\N	CHCTLVCS
5128	\N	\N	\N	1870	4110	\N	neurotas
5129	\N	\N	\N	1871	4110	\N	tasspine
5130	\N	\N	\N	1872	4110	\N	tasspine
5131	\N	\N	\N	1873	4111	\N	CHCTLVCS
5132	\N	\N	\N	1870	4112	\N	neurotas
5133	\N	\N	\N	1871	4112	\N	tasspine
5134	\N	\N	\N	1872	4112	\N	tasspine
5135	\N	\N	\N	1874	4113	\N	
5136	\N	\N	\N	1875	4114	\N	hobartog
5137	\N	\N	\N	1876	4115	\N	ewhealth
5138	\N	\N	\N	1692	4116	\N	
5139	\N	\N	\N	1877	4117	\N	bdaniels
5140	\N	\N	\N	1867	4118	\N	bwtsurge
5141	\N	\N	\N	1878	4118	\N	sorellmc
5142	\N	\N	\N	1876	4119	\N	ewhealth
5143	\N	\N	\N	1879	4120	\N	
5144	\N	\N	\N	1879	4121	\N	
5145	\N	\N	\N	1867	4122	\N	bwtsurge
5146	\N	\N	\N	1875	4123	\N	hobartog
5147	\N	\N	\N	1875	4124	\N	hobartog
5148	\N	\N	\N	1880	4125	\N	
5149	\N	\N	\N	1876	4126	\N	ewhealth
5150	\N	\N	\N	1881	4126	\N	
5151	\N	\N	\N	1875	4127	\N	hobartog
5152	\N	\N	\N	1875	4128	\N	hobartog
5153	\N	\N	\N	1882	4129	\N	
5154	\N	\N	\N	1881	4129	\N	
5155	\N	\N	\N	1692	4130	\N	
5156	\N	\N	\N	1881	4131	\N	
5157	\N	\N	\N	1883	4132	\N	
5158	\N	\N	\N	1884	4133	\N	tamarobg
5159	\N	\N	\N	1884	4134	\N	tamarobg
5160	\N	\N	\N	1883	4135	\N	
5161	\N	\N	\N	1883	4136	\N	
5162	\N	\N	\N	1883	4137	\N	
5163	\N	\N	\N	1813	4138	\N	
5164	\N	\N	\N	1885	4139	\N	
5165	\N	\N	\N	1886	4140	\N	drkimdob
5166	\N	\N	\N	1887	4141	\N	wrkfftas
5167	\N	\N	\N	1888	4142	\N	hobocmed
5168	\N	\N	\N	1888	4143	\N	hobocmed
5169	\N	\N	\N	1889	4144	\N	
5170	\N	\N	\N	1890	4145	\N	ianbyard
5171	\N	\N	\N	1891	4146	\N	iconhobm
5172	\N	\N	\N	1891	4147	\N	iconhobm
5173	\N	\N	\N	1825	4148	\N	welldayh
5174	\N	\N	\N	1892	4149	\N	
5175	\N	\N	\N	1893	4149	\N	
5176	\N	\N	\N	1892	4150	\N	
5177	\N	\N	\N	1893	4150	\N	
5178	\N	\N	\N	1894	4151	\N	
5179	\N	\N	\N	1892	4152	\N	
5180	\N	\N	\N	1893	4152	\N	
5181	\N	\N	\N	1894	4153	\N	
5182	\N	\N	\N	1895	4154	\N	dwnteyes
5183	\N	\N	\N	1892	4155	\N	
5184	\N	\N	\N	1893	4155	\N	
5185	\N	\N	\N	1894	4156	\N	
5186	\N	\N	\N	1892	4157	\N	
5187	\N	\N	\N	1893	4157	\N	
5188	\N	\N	\N	1895	4158	\N	dwnteyes
5189	\N	\N	\N	1896	4159	\N	taseyecl
5190	\N	\N	\N	1897	4159	\N	taseyecl
5191	\N	\N	\N	1898	4159	\N	taseyecl
5192	\N	\N	\N	1892	4160	\N	
5193	\N	\N	\N	1893	4160	\N	
5194	\N	\N	\N	1892	4161	\N	
5195	\N	\N	\N	1893	4161	\N	
5196	\N	\N	\N	1896	4162	\N	taseyecl
5197	\N	\N	\N	1897	4162	\N	taseyecl
5198	\N	\N	\N	1898	4162	\N	taseyecl
5199	\N	\N	\N	1899	4163	\N	teyehosp
5200	\N	\N	\N	1899	4164	\N	teyehosp
5201	\N	\N	\N	1900	4165	\N	
5202	\N	\N	\N	1900	4166	\N	
5203	\N	\N	\N	1899	4167	\N	teyehosp
5204	\N	\N	\N	1899	4168	\N	teyehosp
5205	\N	\N	\N	1899	4169	\N	teyehosp
5206	\N	\N	\N	1900	4170	\N	
5207	\N	\N	\N	1901	4171	\N	
5208	\N	\N	\N	1902	4171	\N	
5209	\N	\N	\N	1903	4165	\N	
5210	\N	\N	\N	1901	4172	\N	
5211	\N	\N	\N	1904	4172	\N	
5212	\N	\N	\N	1905	4166	\N	
5213	\N	\N	\N	1903	4166	\N	
5214	\N	\N	\N	1901	4160	\N	
5215	\N	\N	\N	1903	4170	\N	
5216	\N	\N	\N	1906	4173	\N	Callahan
5217	\N	\N	\N	1907	4174	\N	
5218	\N	\N	\N	1908	4175	\N	
5219	\N	\N	\N	1861	4176	\N	
5220	\N	\N	\N	1909	4177	\N	
5221	\N	\N	\N	1910	4178	\N	
5222	\N	\N	\N	1863	4179	\N	
5223	\N	\N	\N	1911	4180	\N	jmillsdr
5224	\N	\N	\N	1912	4181	\N	pettorth
5225	\N	\N	\N	1913	4182	\N	
5226	\N	\N	\N	1914	4183	\N	CHCTLVCS
5227	\N	\N	\N	1915	4184	\N	jmillsdr
5228	\N	\N	\N	1916	4185	\N	matwil
5229	\N	\N	\N	1861	4185	\N	
5230	\N	\N	\N	1917	4186	\N	
5231	\N	\N	\N	1918	4187	\N	
5232	\N	\N	\N	1919	4188	\N	newjoint
5233	\N	\N	\N	1920	4189	\N	timortho
5234	\N	\N	\N	1921	4190	\N	
5235	\N	\N	\N	1921	4191	\N	
5236	\N	\N	\N	1922	4192	\N	davdpenn
5237	\N	\N	\N	1923	4193	\N	
5238	\N	\N	\N	1924	4194	\N	fletcher
5239	\N	\N	\N	1925	4195	\N	
5240	\N	\N	\N	1926	4196	\N	tas2omis
5241	\N	\N	\N	1927	4197	\N	tas2omis
5242	\N	\N	\N	1928	4197	\N	tas2omis
5243	\N	\N	\N	1929	4197	\N	tas2omis
5244	\N	\N	\N	1930	4198	\N	
5245	\N	\N	\N	1931	4198	\N	
5246	\N	\N	\N	1932	4199	\N	
5247	\N	\N	\N	1933	4200	\N	riversmg
5248	\N	\N	\N	1934	4201	\N	hobpaedg
5249	\N	\N	\N	1935	4202	\N	
5250	\N	\N	\N	1934	4203	\N	hobpaedg
5251	\N	\N	\N	1839	4204	\N	
5252	\N	\N	\N	1934	4204	\N	hobpaedg
5253	\N	\N	\N	1936	4205	\N	
5254	\N	\N	\N	1723	4206	\N	lincolnc
5255	\N	\N	\N	1934	4207	\N	hobpaedg
5256	\N	\N	\N	1934	4208	\N	hobpaedg
5257	\N	\N	\N	1723	4208	\N	lincolnc
5258	\N	\N	\N	1934	4209	\N	hobpaedg
5259	\N	\N	\N	1937	4210	\N	drpascoe
5260	\N	\N	\N	1638	4211	\N	
5261	\N	\N	\N	1723	4212	\N	lincolnc
5262	\N	\N	\N	1934	4213	\N	hobpaedg
5263	\N	\N	\N	1934	4214	\N	hobpaedg
5264	\N	\N	\N	1934	4215	\N	hobpaedg
5265	\N	\N	\N	1938	4216	\N	
5266	\N	\N	\N	1872	4217	\N	tasspine
5267	\N	\N	\N	1861	4218	\N	
5268	\N	\N	\N	1675	4219	\N	
5269	\N	\N	\N	1939	4220	\N	mac4plas
5270	\N	\N	\N	1940	4221	\N	hobartph
5271	\N	\N	\N	1941	4222	\N	hobplast
5272	\N	\N	\N	1942	4223	\N	
5273	\N	\N	\N	1943	4224	\N	
5274	\N	\N	\N	1827	4225	\N	
5275	\N	\N	\N	1940	4226	\N	hobartph
5276	\N	\N	\N	1944	4227	\N	
5277	\N	\N	\N	1945	4228	\N	sjthomso
5278	\N	\N	\N	1946	4229	\N	
5279	\N	\N	\N	1802	4230	\N	
5280	\N	\N	\N	1839	4231	\N	
5281	\N	\N	\N	1802	4232	\N	
5282	\N	\N	\N	1947	4232	\N	
5283	\N	\N	\N	1948	4233	\N	
5284	\N	\N	\N	1638	4234	\N	
5285	\N	\N	\N	1802	4234	\N	
5286	\N	\N	\N	1947	4234	\N	
5287	\N	\N	\N	1949	4235	\N	telepsyc
5288	\N	\N	\N	1684	4236	\N	
5289	\N	\N	\N	1950	4237	\N	
5290	\N	\N	\N	1802	4238	\N	
5291	\N	\N	\N	1951	4239	\N	
5292	\N	\N	\N	1947	4240	\N	
5293	\N	\N	\N	1952	4241	\N	
5294	\N	\N	\N	1934	4242	\N	hobpaedg
5295	\N	\N	\N	1684	4243	\N	
5296	\N	\N	\N	1684	4244	\N	
5297	\N	\N	\N	1638	4245	\N	
5298	\N	\N	\N	1684	4246	\N	
5299	\N	\N	\N	1934	4247	\N	hobpaedg
5300	\N	\N	\N	1802	4248	\N	
5301	\N	\N	\N	1953	4249	\N	
5302	\N	\N	\N	1954	4250	\N	
5303	\N	\N	\N	1955	4251	\N	
5304	\N	\N	\N	1813	4252	\N	
5305	\N	\N	\N	1956	4253	\N	
5306	\N	\N	\N	1957	4254	\N	
5307	\N	\N	\N	1782	4255	\N	
5308	\N	\N	\N	1782	4256	\N	
5309	\N	\N	\N	1891	4257	\N	iconhobm
5310	\N	\N	\N	1958	4258	\N	
5311	\N	\N	\N	1959	4258	\N	
5312	\N	\N	\N	1891	4259	\N	iconhobm
5313	\N	\N	\N	1891	4260	\N	iconhobm
5314	\N	\N	\N	1960	4261	\N	
5315	\N	\N	\N	1869	4262	\N	CHCTLVCS
5316	\N	\N	\N	1824	4263	\N	CHCTLVCS
5317	\N	\N	\N	1961	4264	\N	
5318	\N	\N	\N	1824	4265	\N	CHCTLVCS
5319	\N	\N	\N	1962	4266	\N	
5320	\N	\N	\N	1841	4267	\N	gkirklnd
5321	\N	\N	\N	1841	4268	\N	gkirklnd
5322	\N	\N	\N	1963	4269	\N	bfieldsg
5323	\N	\N	\N	1813	4270	\N	
5324	\N	\N	\N	1964	4270	\N	lmc32lmc
5325	\N	\N	\N	1840	4271	\N	lresleep
5326	\N	\N	\N	1840	4272	\N	lresleep
5327	\N	\N	\N	1965	4273	\N	ltonlung
5328	\N	\N	\N	1966	4274	\N	
5329	\N	\N	\N	1881	4275	\N	
5330	\N	\N	\N	1967	4275	\N	
5331	\N	\N	\N	1968	4276	\N	jzrheuma
5332	\N	\N	\N	1841	4277	\N	gkirklnd
5333	\N	\N	\N	1969	4278	\N	
5334	\N	\N	\N	1970	4279	\N	
5335	\N	\N	\N	1968	4280	\N	jzrheuma
5336	\N	\N	\N	1811	4281	\N	hcardiol
5337	\N	\N	\N	1968	4282	\N	jzrheuma
5338	\N	\N	\N	1841	4283	\N	gkirklnd
5339	\N	\N	\N	1968	4284	\N	jzrheuma
5340	\N	\N	\N	1971	4285	\N	
5341	\N	\N	\N	1971	4286	\N	
5342	\N	\N	\N	1971	4287	\N	
5343	\N	\N	\N	1972	4288	\N	
5344	\N	\N	\N	1973	4289	\N	
5345	\N	\N	\N	1974	4290	\N	
5346	\N	\N	\N	1975	4291	\N	
5347	\N	\N	\N	1869	4292	\N	CHCTLVCS
5348	\N	\N	\N	1976	4293	\N	robertbo
5349	\N	\N	\N	1869	4294	\N	CHCTLVCS
5350	\N	\N	\N	1977	4295	\N	dvdstary
5351	\N	\N	\N	1972	4296	\N	
5352	\N	\N	\N	1978	4297	\N	
5353	\N	\N	\N	1979	4298	\N	
5354	\N	\N	\N	1813	4295	\N	
5355	\N	\N	\N	1980	4299	\N	
5356	\N	\N	\N	1981	4300	\N	
5357	\N	\N	\N	1982	4301	\N	
5358	\N	\N	\N	1983	4302	\N	jrobthom
5359	\N	\N	\N	1984	4303	\N	
5360	\N	\N	\N	1985	4304	\N	
5361	\N	\N	\N	1986	4305	\N	iansmidd
5362	\N	\N	\N	1987	4306	\N	nuwayhid
5363	\N	\N	\N	1988	4307	\N	
5364	\N	\N	\N	1989	4308	\N	
5365	\N	\N	\N	1990	4309	\N	
5366	\N	\N	\N	1991	4309	\N	
5367	\N	\N	\N	1990	4310	\N	
5368	\N	\N	\N	1992	4309	\N	
5369	\N	\N	\N	1993	4309	\N	
5370	\N	\N	\N	1994	4311	\N	dvdstary
5371	\N	\N	\N	1995	4311	\N	dvdstary
5372	\N	\N	\N	1996	4312	\N	drcathyt
5373	\N	\N	\N	1869	4313	\N	CHCTLVCS
5374	\N	\N	\N	1885	4313	\N	
5375	\N	\N	\N	2150	4314	\N	
5376	\N	\N	\N	2151	4315	\N	
5377	\N	\N	\N	2081	3580	\N	
5378	\N	\N	\N	2152	4316	\N	
5379	\N	\N	\N	2153	4317	\N	
5380	\N	\N	\N	2154	4318	\N	
5381	\N	\N	\N	2155	4319	\N	
5382	\N	\N	\N	2156	4319	\N	
5383	\N	\N	\N	2157	4319	\N	
5384	\N	\N	\N	2158	4319	\N	
5385	\N	\N	\N	2155	4320	\N	
5386	\N	\N	\N	2156	4320	\N	
5387	\N	\N	\N	2157	4320	\N	
5388	\N	\N	\N	2158	4320	\N	
5389	\N	\N	\N	2153	4321	\N	
5390	\N	\N	\N	2159	4321	\N	
5391	\N	\N	\N	2160	4322	\N	
5392	\N	\N	\N	2161	4323	\N	
5393	\N	\N	\N	2162	4319	\N	
5394	\N	\N	\N	2162	4320	\N	
5395	\N	\N	\N	2161	4324	\N	
5396	\N	\N	\N	2163	4325	\N	
5397	\N	\N	\N	2164	4326	\N	
5398	\N	\N	\N	2165	4327	\N	
5399	\N	\N	\N	2166	4328	\N	
5400	\N	\N	\N	2164	4329	\N	
5401	\N	\N	\N	2167	4330	\N	
5402	\N	\N	\N	2168	4331	\N	
5403	\N	\N	\N	2169	4332	\N	
5404	\N	\N	\N	2170	4332	\N	
5405	\N	\N	\N	2169	4333	\N	
5406	\N	\N	\N	2170	4333	\N	
5407	\N	\N	\N	2171	4334	\N	
5408	\N	\N	\N	2172	4335	\N	
5409	\N	\N	\N	2173	4336	\N	
5410	\N	\N	\N	2174	4337	\N	
5411	\N	\N	\N	2175	4338	\N	
5412	\N	\N	\N	2176	4339	\N	
5413	\N	\N	\N	2171	4340	\N	
5414	\N	\N	\N	2172	4341	\N	
5415	\N	\N	\N	2177	4342	\N	
5416	\N	\N	\N	2177	4343	\N	
5417	\N	\N	\N	2173	4344	\N	
5418	\N	\N	\N	2178	4345	\N	
5419	\N	\N	\N	2173	4346	\N	
5420	\N	\N	\N	2175	4347	\N	
5421	\N	\N	\N	2177	4348	\N	
5422	\N	\N	\N	1652	4349	\N	
5423	\N	\N	\N	2173	4350	\N	
5424	\N	\N	\N	2179	4351	\N	
5425	\N	\N	\N	2180	4352	\N	
5426	\N	\N	\N	2181	4352	\N	
5427	\N	\N	\N	2180	4353	\N	
5428	\N	\N	\N	2181	4353	\N	
5429	\N	\N	\N	2182	4353	\N	
5430	\N	\N	\N	2183	4354	\N	
5431	\N	\N	\N	2184	4355	\N	
5432	\N	\N	\N	2185	4356	\N	
5433	\N	\N	\N	2180	4357	\N	
5434	\N	\N	\N	2181	4357	\N	
5435	\N	\N	\N	2182	4357	\N	
5436	\N	\N	\N	2186	4358	\N	
5437	\N	\N	\N	2187	4359	\N	
5438	\N	\N	\N	2186	4360	\N	
5439	\N	\N	\N	2188	4361	\N	
5440	\N	\N	\N	2183	4362	\N	
5441	\N	\N	\N	2180	4363	\N	
5442	\N	\N	\N	2182	4363	\N	
5443	\N	\N	\N	2180	4364	\N	
5444	\N	\N	\N	2181	4364	\N	
5445	\N	\N	\N	2182	4364	\N	
5446	\N	\N	\N	2187	4365	\N	
5447	\N	\N	\N	2187	4366	\N	
5448	\N	\N	\N	2189	4367	\N	
5449	\N	\N	\N	2188	4368	\N	
5450	\N	\N	\N	2188	4369	\N	
5451	\N	\N	\N	2190	4370	\N	
5452	\N	\N	\N	2191	4371	\N	
5453	\N	\N	\N	2141	4372	\N	
5454	\N	\N	\N	2191	4373	\N	
5455	\N	\N	\N	2190	4374	\N	
5456	\N	\N	\N	2192	4375	\N	
5457	\N	\N	\N	2193	4376	\N	
5458	\N	\N	\N	1701	4377	\N	
5459	\N	\N	\N	1664	4377	\N	
5460	\N	\N	\N	1664	4378	\N	
5461	\N	\N	\N	2194	4379	\N	
5462	\N	\N	\N	2195	4379	\N	
5463	\N	\N	\N	2196	4379	\N	
5464	\N	\N	\N	2193	4380	\N	
5465	\N	\N	\N	1685	4381	\N	
5466	\N	\N	\N	2197	4382	\N	
5467	\N	\N	\N	2031	4383	\N	
5468	\N	\N	\N	1664	4383	\N	
5469	\N	\N	\N	2039	4384	\N	
5470	\N	\N	\N	2198	4384	\N	
5471	\N	\N	\N	2199	4384	\N	
5472	\N	\N	\N	2193	4385	\N	
5473	\N	\N	\N	2032	4386	\N	
5474	\N	\N	\N	2023	4387	\N	
5475	\N	\N	\N	2017	4387	\N	
5476	\N	\N	\N	2200	4387	\N	
5477	\N	\N	\N	1723	4387	\N	
5478	\N	\N	\N	1722	4388	\N	
5479	\N	\N	\N	2201	4389	\N	
5480	\N	\N	\N	2202	4378	\N	
5481	\N	\N	\N	2112	4390	\N	
5482	\N	\N	\N	2203	4390	\N	
5483	\N	\N	\N	2107	4390	\N	
5484	\N	\N	\N	1933	4390	\N	
5485	\N	\N	\N	2114	4391	\N	
5486	\N	\N	\N	2104	4392	\N	
5487	\N	\N	\N	2202	4393	\N	
5488	\N	\N	\N	2203	4393	\N	
5489	\N	\N	\N	1763	4393	\N	
5490	\N	\N	\N	2204	4394	\N	
5491	\N	\N	\N	2205	4395	\N	
5492	\N	\N	\N	2206	4396	\N	
5493	\N	\N	\N	1765	4397	\N	
5494	\N	\N	\N	2095	4397	\N	
5495	\N	\N	\N	2093	4397	\N	
5496	\N	\N	\N	1767	4397	\N	
5497	\N	\N	\N	1764	4397	\N	
5498	\N	\N	\N	2207	4398	\N	
5499	\N	\N	\N	2208	4394	\N	
5500	\N	\N	\N	1801	4395	\N	
5501	\N	\N	\N	1796	4397	\N	
5502	\N	\N	\N	1773	4399	\N	
5503	\N	\N	\N	2071	4400	\N	
5504	\N	\N	\N	2011	4400	\N	
5505	\N	\N	\N	1664	4400	\N	
5506	\N	\N	\N	1762	4401	\N	
5507	\N	\N	\N	1765	4401	\N	
5508	\N	\N	\N	1796	4401	\N	
5509	\N	\N	\N	1764	4401	\N	
5510	\N	\N	\N	2209	4402	\N	
5511	\N	\N	\N	2210	4402	\N	
5512	\N	\N	\N	2211	4402	\N	
5513	\N	\N	\N	1839	4403	\N	
5514	\N	\N	\N	1878	4403	\N	
5515	\N	\N	\N	2212	4404	\N	
5516	\N	\N	\N	2213	4405	\N	
5517	\N	\N	\N	2214	4406	\N	
5518	\N	\N	\N	2215	4406	\N	
5519	\N	\N	\N	2194	4406	\N	
5520	\N	\N	\N	2195	4406	\N	
5521	\N	\N	\N	1717	4407	\N	
5522	\N	\N	\N	2055	4407	\N	
5523	\N	\N	\N	2216	4408	\N	
5524	\N	\N	\N	2198	4408	\N	
5525	\N	\N	\N	2199	4408	\N	
5526	\N	\N	\N	2194	4409	\N	
5527	\N	\N	\N	2196	4409	\N	
5528	\N	\N	\N	2217	4410	\N	
5529	\N	\N	\N	2218	4411	\N	
5530	\N	\N	\N	2219	4412	\N	
5531	\N	\N	\N	2220	4413	\N	
5532	\N	\N	\N	2221	4414	\N	
5533	\N	\N	\N	2198	4415	\N	
5534	\N	\N	\N	2199	4415	\N	
5535	\N	\N	\N	2219	4416	\N	
5536	\N	\N	\N	1664	4416	\N	
5537	\N	\N	\N	2198	4417	\N	
5538	\N	\N	\N	2199	4417	\N	
5539	\N	\N	\N	2198	4418	\N	
5540	\N	\N	\N	2199	4418	\N	
5541	\N	\N	\N	2067	4419	\N	
5542	\N	\N	\N	2072	4419	\N	
5543	\N	\N	\N	2212	4420	\N	
5544	\N	\N	\N	2221	4421	\N	
5545	\N	\N	\N	2036	4422	\N	
5546	\N	\N	\N	2023	4422	\N	
5547	\N	\N	\N	2221	4422	\N	
5548	\N	\N	\N	2041	4423	\N	
5549	\N	\N	\N	2200	4424	\N	
5550	\N	\N	\N	2222	4425	\N	
5551	\N	\N	\N	2223	4426	\N	
5552	\N	\N	\N	2221	4427	\N	
5553	\N	\N	\N	2039	4427	\N	
5554	\N	\N	\N	2212	4428	\N	
5555	\N	\N	\N	2055	4429	\N	
5556	\N	\N	\N	2222	4430	\N	
5557	\N	\N	\N	2224	4431	\N	
5558	\N	\N	\N	1734	4431	\N	
5559	\N	\N	\N	2201	4432	\N	
5560	\N	\N	\N	2225	4433	\N	
5561	\N	\N	\N	2201	4434	\N	
5562	\N	\N	\N	2225	4435	\N	
5563	\N	\N	\N	2226	4436	\N	
5564	\N	\N	\N	2227	4437	\N	
5565	\N	\N	\N	2228	4438	\N	
5566	\N	\N	\N	2229	4439	\N	
5567	\N	\N	\N	2230	4440	\N	
5568	\N	\N	\N	2231	4441	\N	
5569	\N	\N	\N	2232	4442	\N	
5570	\N	\N	\N	2233	4443	\N	
5571	\N	\N	\N	1801	4444	\N	
5572	\N	\N	\N	2234	4444	\N	
5573	\N	\N	\N	2235	4445	\N	
5574	\N	\N	\N	1801	4446	\N	
5575	\N	\N	\N	2234	4446	\N	
5576	\N	\N	\N	2236	4447	\N	
5577	\N	\N	\N	2231	4448	\N	
5578	\N	\N	\N	2236	4448	\N	
5579	\N	\N	\N	2237	4449	\N	
5580	\N	\N	\N	2238	4450	\N	
5581	\N	\N	\N	2237	4451	\N	
5582	\N	\N	\N	2239	4452	\N	
5583	\N	\N	\N	2041	4453	\N	
5584	\N	\N	\N	2071	4454	\N	
5585	\N	\N	\N	2240	4455	\N	
5586	\N	\N	\N	1699	4456	\N	
5587	\N	\N	\N	2068	4456	\N	
5588	\N	\N	\N	2034	4457	\N	
5589	\N	\N	\N	1711	4457	\N	
5590	\N	\N	\N	1664	4458	\N	
5591	\N	\N	\N	1664	4459	\N	
5592	\N	\N	\N	2098	4460	\N	
5593	\N	\N	\N	2109	4460	\N	
5594	\N	\N	\N	1767	4460	\N	
5595	\N	\N	\N	2093	4461	\N	
5596	\N	\N	\N	2106	4461	\N	
5597	\N	\N	\N	2241	4462	\N	
5598	\N	\N	\N	2242	4463	\N	
5599	\N	\N	\N	2221	4464	\N	
5600	\N	\N	\N	2243	4465	\N	
5601	\N	\N	\N	1707	4466	\N	
5602	\N	\N	\N	2243	4467	\N	
5603	\N	\N	\N	2244	4468	\N	
5604	\N	\N	\N	2245	4469	\N	
5605	\N	\N	\N	2246	4470	\N	
5606	\N	\N	\N	2213	4471	\N	
5607	\N	\N	\N	2247	4472	\N	
5608	\N	\N	\N	1707	4473	\N	
5609	\N	\N	\N	2246	4474	\N	
5610	\N	\N	\N	1638	4475	\N	
5611	\N	\N	\N	2041	4475	\N	
5612	\N	\N	\N	1707	4476	\N	
5613	\N	\N	\N	1649	4477	\N	
5614	\N	\N	\N	2248	4478	\N	
5615	\N	\N	\N	2249	4479	\N	
5616	\N	\N	\N	2222	4480	\N	
5617	\N	\N	\N	2250	4481	\N	
5618	\N	\N	\N	2212	4482	\N	
5619	\N	\N	\N	2245	4483	\N	
5620	\N	\N	\N	2246	4484	\N	
5621	\N	\N	\N	1707	4485	\N	
5622	\N	\N	\N	2245	4486	\N	
5623	\N	\N	\N	2251	4487	\N	
5624	\N	\N	\N	2251	4488	\N	
5625	\N	\N	\N	2252	4489	\N	
5626	\N	\N	\N	2246	4490	\N	
5627	\N	\N	\N	2243	4491	\N	
5628	\N	\N	\N	2253	4492	\N	
5629	\N	\N	\N	2254	4493	\N	
5630	\N	\N	\N	2224	4494	\N	
5631	\N	\N	\N	1734	4494	\N	
5632	\N	\N	\N	2255	4495	\N	
5633	\N	\N	\N	2256	4476	\N	
5634	\N	\N	\N	2257	4496	\N	
5635	\N	\N	\N	1749	4497	\N	
5636	\N	\N	\N	2258	4498	\N	
5637	\N	\N	\N	2259	4499	\N	
5638	\N	\N	\N	1801	4500	\N	
5639	\N	\N	\N	2260	4501	\N	
5640	\N	\N	\N	2261	4502	\N	
5641	\N	\N	\N	2039	4503	\N	
5642	\N	\N	\N	1664	4503	\N	
5643	\N	\N	\N	2198	4503	\N	
5644	\N	\N	\N	2260	4504	\N	
5645	\N	\N	\N	2262	4505	\N	
5646	\N	\N	\N	2263	4506	\N	
5647	\N	\N	\N	2264	4507	\N	
5648	\N	\N	\N	2265	4508	\N	
5649	\N	\N	\N	2261	4509	\N	
5650	\N	\N	\N	2261	4510	\N	
5651	\N	\N	\N	2266	4511	\N	
5652	\N	\N	\N	2267	4511	\N	
5653	\N	\N	\N	2266	4512	\N	
5654	\N	\N	\N	2267	4512	\N	
5655	\N	\N	\N	2261	4513	\N	
5656	\N	\N	\N	2266	4514	\N	
5657	\N	\N	\N	2267	4514	\N	
5658	\N	\N	\N	2260	4515	\N	
5659	\N	\N	\N	2260	4516	\N	
5660	\N	\N	\N	2268	4517	\N	
5661	\N	\N	\N	2266	4518	\N	
5662	\N	\N	\N	2267	4518	\N	
5663	\N	\N	\N	2269	4519	\N	
5664	\N	\N	\N	2270	4520	\N	
5665	\N	\N	\N	2270	4521	\N	
5666	\N	\N	\N	2271	4522	\N	
5667	\N	\N	\N	2272	4523	\N	
5668	\N	\N	\N	2273	4523	\N	
5669	\N	\N	\N	2274	4524	\N	
5670	\N	\N	\N	2270	4525	\N	
5671	\N	\N	\N	2273	4526	\N	
5672	\N	\N	\N	2270	4527	\N	
5673	\N	\N	\N	2270	4528	\N	
5674	\N	\N	\N	2270	4529	\N	
5675	\N	\N	\N	2273	4530	\N	
5676	\N	\N	\N	2270	4531	\N	
5677	\N	\N	\N	2270	4532	\N	
5678	\N	\N	\N	2273	4533	\N	
5679	\N	\N	\N	2273	4534	\N	
5680	\N	\N	\N	2184	4535	\N	
5681	\N	\N	\N	2275	4536	\N	
5682	\N	\N	\N	2276	4537	\N	
5683	\N	\N	\N	2277	4537	\N	
5684	\N	\N	\N	2278	4538	\N	
5685	\N	\N	\N	2279	4539	\N	
5686	\N	\N	\N	1692	4539	\N	
5687	\N	\N	\N	2194	4540	\N	
5688	\N	\N	\N	2280	4541	\N	
5689	\N	\N	\N	2281	4542	\N	
5690	\N	\N	\N	2282	4543	\N	
5691	\N	\N	\N	2280	4544	\N	
5692	\N	\N	\N	2283	4545	\N	
5693	\N	\N	\N	2284	4545	\N	
5694	\N	\N	\N	2222	4546	\N	
5695	\N	\N	\N	2278	4547	\N	
5696	\N	\N	\N	2216	4548	\N	
5697	\N	\N	\N	2194	4549	\N	
5698	\N	\N	\N	2276	4550	\N	
5699	\N	\N	\N	2285	4550	\N	
5700	\N	\N	\N	2195	4551	\N	
5701	\N	\N	\N	2286	4552	\N	
5702	\N	\N	\N	2287	4553	\N	
5703	\N	\N	\N	2222	4554	\N	
5704	\N	\N	\N	2216	4555	\N	
5705	\N	\N	\N	2288	4556	\N	
5706	\N	\N	\N	2278	4557	\N	
5707	\N	\N	\N	2194	4558	\N	
5708	\N	\N	\N	2287	4559	\N	
5709	\N	\N	\N	2288	4560	\N	
5710	\N	\N	\N	2289	4561	\N	
5711	\N	\N	\N	2222	4562	\N	
5712	\N	\N	\N	2284	4563	\N	
5713	\N	\N	\N	2278	4564	\N	
5714	\N	\N	\N	2290	4565	\N	
5715	\N	\N	\N	2251	4566	\N	
5716	\N	\N	\N	2041	4567	\N	
5717	\N	\N	\N	2055	4567	\N	
5718	\N	\N	\N	2291	4568	\N	
5719	\N	\N	\N	2281	4569	\N	
5720	\N	\N	\N	2280	4570	\N	
5721	\N	\N	\N	2222	4571	\N	
5722	\N	\N	\N	2291	4572	\N	
5723	\N	\N	\N	2215	4572	\N	
5724	\N	\N	\N	2288	4573	\N	
5725	\N	\N	\N	2278	4574	\N	
5726	\N	\N	\N	2222	4575	\N	
5727	\N	\N	\N	2292	4576	\N	
5728	\N	\N	\N	2222	4577	\N	
5729	\N	\N	\N	2195	4578	\N	
5730	\N	\N	\N	2289	4579	\N	
5731	\N	\N	\N	2293	4580	\N	
5732	\N	\N	\N	2222	4581	\N	
5733	\N	\N	\N	2280	4582	\N	
5734	\N	\N	\N	2287	4583	\N	
5735	\N	\N	\N	2294	4584	\N	
5736	\N	\N	\N	2215	4585	\N	
5737	\N	\N	\N	2295	4586	\N	
5738	\N	\N	\N	2216	4587	\N	
5739	\N	\N	\N	2296	4588	\N	
5740	\N	\N	\N	2216	4589	\N	
5741	\N	\N	\N	2197	4590	\N	
5742	\N	\N	\N	2216	4591	\N	
5743	\N	\N	\N	2216	4592	\N	
5744	\N	\N	\N	2280	4593	\N	
5745	\N	\N	\N	2195	4594	\N	
5746	\N	\N	\N	2289	4595	\N	
5747	\N	\N	\N	2214	4596	\N	
5748	\N	\N	\N	2292	4596	\N	
5749	\N	\N	\N	2287	4597	\N	
5750	\N	\N	\N	2215	4598	\N	
5751	\N	\N	\N	2289	4599	\N	
5752	\N	\N	\N	2200	4599	\N	
5753	\N	\N	\N	2200	4600	\N	
5754	\N	\N	\N	2221	4601	\N	
5755	\N	\N	\N	2278	4602	\N	
5756	\N	\N	\N	2196	4603	\N	
5757	\N	\N	\N	2216	4604	\N	
5758	\N	\N	\N	2222	4605	\N	
5759	\N	\N	\N	2197	4606	\N	
5760	\N	\N	\N	2283	4607	\N	
5761	\N	\N	\N	2215	4608	\N	
5762	\N	\N	\N	2276	4609	\N	
5763	\N	\N	\N	2289	4610	\N	
5764	\N	\N	\N	2222	4611	\N	
5765	\N	\N	\N	2295	4612	\N	
5766	\N	\N	\N	1675	4612	\N	
5767	\N	\N	\N	2294	4613	\N	
5768	\N	\N	\N	2286	4614	\N	
5769	\N	\N	\N	2291	4615	\N	
5770	\N	\N	\N	2294	4616	\N	
5771	\N	\N	\N	2287	4617	\N	
5772	\N	\N	\N	2249	4618	\N	
5773	\N	\N	\N	2288	4619	\N	
5774	\N	\N	\N	2283	4620	\N	
5775	\N	\N	\N	2278	4621	\N	
5776	\N	\N	\N	2286	4622	\N	
5777	\N	\N	\N	1664	4623	\N	
5778	\N	\N	\N	2289	4624	\N	
5779	\N	\N	\N	2297	4625	\N	
5780	\N	\N	\N	2297	4626	\N	
5781	\N	\N	\N	2216	4627	\N	
5782	\N	\N	\N	2298	4628	\N	
5783	\N	\N	\N	2194	4629	\N	
5784	\N	\N	\N	2294	4630	\N	
5785	\N	\N	\N	1934	4631	\N	
5786	\N	\N	\N	2288	4632	\N	
5787	\N	\N	\N	2299	4632	\N	
5788	\N	\N	\N	2217	4633	\N	
5789	\N	\N	\N	2300	4634	\N	
5790	\N	\N	\N	2292	4635	\N	
5791	\N	\N	\N	2288	4636	\N	
5792	\N	\N	\N	2286	4637	\N	
5793	\N	\N	\N	2292	4638	\N	
5794	\N	\N	\N	2222	4639	\N	
5795	\N	\N	\N	2216	4640	\N	
5796	\N	\N	\N	2286	4641	\N	
5797	\N	\N	\N	2283	4642	\N	
5798	\N	\N	\N	2284	4642	\N	
5799	\N	\N	\N	2292	4643	\N	
5800	\N	\N	\N	2301	4644	\N	
5801	\N	\N	\N	2216	4645	\N	
5802	\N	\N	\N	2286	4646	\N	
5803	\N	\N	\N	2284	4646	\N	
5804	\N	\N	\N	2302	4647	\N	
5805	\N	\N	\N	2194	4648	\N	
5806	\N	\N	\N	2198	4649	\N	
5807	\N	\N	\N	2303	4650	\N	
5808	\N	\N	\N	2289	4651	\N	
5809	\N	\N	\N	2294	4652	\N	
5810	\N	\N	\N	1652	4653	\N	
5811	\N	\N	\N	2278	4654	\N	
5812	\N	\N	\N	2213	4655	\N	
5813	\N	\N	\N	2222	4656	\N	
5814	\N	\N	\N	2215	4657	\N	
5815	\N	\N	\N	2222	4658	\N	
5816	\N	\N	\N	2200	4659	\N	
5817	\N	\N	\N	2195	4660	\N	
5818	\N	\N	\N	1675	4661	\N	
5819	\N	\N	\N	2222	4662	\N	
5820	\N	\N	\N	2288	4663	\N	
5821	\N	\N	\N	1675	4664	\N	
5822	\N	\N	\N	2222	4665	\N	
5823	\N	\N	\N	2224	4666	\N	
5824	\N	\N	\N	2227	4667	\N	
5825	\N	\N	\N	2224	4668	\N	
5826	\N	\N	\N	2224	4669	\N	
5827	\N	\N	\N	1734	4669	\N	
5828	\N	\N	\N	2304	4670	\N	
5829	\N	\N	\N	2227	4671	\N	
5830	\N	\N	\N	2201	4672	\N	
5831	\N	\N	\N	2201	4673	\N	
5832	\N	\N	\N	2201	4674	\N	
5833	\N	\N	\N	2224	4675	\N	
5834	\N	\N	\N	2227	4676	\N	
5835	\N	\N	\N	2305	4677	\N	
5836	\N	\N	\N	2306	4677	\N	
5837	\N	\N	\N	2201	4678	\N	
5838	\N	\N	\N	2201	4679	\N	
5839	\N	\N	\N	2201	4680	\N	
5840	\N	\N	\N	2227	4681	\N	
5841	\N	\N	\N	2227	4682	\N	
5842	\N	\N	\N	2306	4683	\N	
5843	\N	\N	\N	2307	4684	\N	
5844	\N	\N	\N	2224	4685	\N	
5845	\N	\N	\N	2227	4686	\N	
5846	\N	\N	\N	2224	4687	\N	
5847	\N	\N	\N	2308	4688	\N	
5848	\N	\N	\N	1764	4688	\N	
5849	\N	\N	\N	2204	4689	\N	
5850	\N	\N	\N	2305	4690	\N	
5851	\N	\N	\N	2306	4690	\N	
5852	\N	\N	\N	2306	4691	\N	
5853	\N	\N	\N	2201	4692	\N	
5854	\N	\N	\N	2201	4693	\N	
5855	\N	\N	\N	2309	4694	\N	
5856	\N	\N	\N	2201	4695	\N	
5857	\N	\N	\N	2224	4696	\N	
5858	\N	\N	\N	2310	4697	\N	
5859	\N	\N	\N	2311	4697	\N	
5860	\N	\N	\N	2312	4697	\N	
5861	\N	\N	\N	2307	4698	\N	
5862	\N	\N	\N	2201	4699	\N	
5863	\N	\N	\N	2227	4700	\N	
5864	\N	\N	\N	2224	4701	\N	
5865	\N	\N	\N	2224	4702	\N	
5866	\N	\N	\N	2305	4703	\N	
5867	\N	\N	\N	2306	4703	\N	
5868	\N	\N	\N	2201	4704	\N	
5869	\N	\N	\N	2309	4705	\N	
5870	\N	\N	\N	2224	4706	\N	
5871	\N	\N	\N	1734	4706	\N	
5872	\N	\N	\N	2224	4707	\N	
5873	\N	\N	\N	1734	4707	\N	
5874	\N	\N	\N	2201	4708	\N	
5875	\N	\N	\N	2313	4709	\N	
5876	\N	\N	\N	2314	4709	\N	
5877	\N	\N	\N	2236	4710	\N	
5878	\N	\N	\N	2315	4711	\N	
5879	\N	\N	\N	2231	4712	\N	
5880	\N	\N	\N	2231	4713	\N	
5881	\N	\N	\N	2316	4713	\N	
5882	\N	\N	\N	2237	4714	\N	
5883	\N	\N	\N	2317	4714	\N	
5884	\N	\N	\N	2315	4715	\N	
5885	\N	\N	\N	2236	4716	\N	
5886	\N	\N	\N	2315	4717	\N	
5887	\N	\N	\N	2231	4718	\N	
5888	\N	\N	\N	2316	4718	\N	
5889	\N	\N	\N	1789	4719	\N	
5890	\N	\N	\N	2315	4719	\N	
5891	\N	\N	\N	2231	4720	\N	
5892	\N	\N	\N	2231	4721	\N	
5893	\N	\N	\N	2236	4721	\N	
5894	\N	\N	\N	2318	4722	\N	
5895	\N	\N	\N	2231	4723	\N	
5896	\N	\N	\N	2236	4723	\N	
5897	\N	\N	\N	2237	4724	\N	
5898	\N	\N	\N	2319	4725	\N	
5899	\N	\N	\N	2235	4726	\N	
5900	\N	\N	\N	2237	4727	\N	
5901	\N	\N	\N	2231	4728	\N	
5902	\N	\N	\N	2320	4729	\N	
5903	\N	\N	\N	2237	4730	\N	
5904	\N	\N	\N	2313	4731	\N	
5905	\N	\N	\N	2237	4732	\N	
5906	\N	\N	\N	2320	4733	\N	
5907	\N	\N	\N	2236	4733	\N	
5908	\N	\N	\N	2320	4734	\N	
5909	\N	\N	\N	2321	4735	\N	
5910	\N	\N	\N	2322	4736	\N	
5911	\N	\N	\N	2231	4737	\N	
5912	\N	\N	\N	2231	4738	\N	
5913	\N	\N	\N	2237	4739	\N	
5914	\N	\N	\N	2317	4739	\N	
5915	\N	\N	\N	2231	4740	\N	
5916	\N	\N	\N	2320	4740	\N	
5917	\N	\N	\N	2323	4741	\N	
5918	\N	\N	\N	2324	4742	\N	
5919	\N	\N	\N	2200	4743	\N	
5920	\N	\N	\N	2325	4744	\N	
5921	\N	\N	\N	2326	4745	\N	
5922	\N	\N	\N	2327	4745	\N	
5923	\N	\N	\N	2328	4746	\N	
5924	\N	\N	\N	2329	4747	\N	
5925	\N	\N	\N	2330	4748	\N	
5926	\N	\N	\N	2072	4749	\N	
5927	\N	\N	\N	2039	4749	\N	
5928	\N	\N	\N	2331	4749	\N	
5929	\N	\N	\N	2332	4750	\N	
5930	\N	\N	\N	2333	4750	\N	
5931	\N	\N	\N	2334	4750	\N	
5932	\N	\N	\N	2325	4751	\N	
5933	\N	\N	\N	2324	4752	\N	
5934	\N	\N	\N	2214	4753	\N	
5935	\N	\N	\N	2335	4754	\N	
5936	\N	\N	\N	1717	4754	\N	
5937	\N	\N	\N	2327	4754	\N	
5938	\N	\N	\N	2214	4755	\N	
5939	\N	\N	\N	2195	4755	\N	
5940	\N	\N	\N	2329	4756	\N	
5941	\N	\N	\N	2327	4757	\N	
5942	\N	\N	\N	2336	4758	\N	
5943	\N	\N	\N	2200	4759	\N	
5944	\N	\N	\N	2336	4760	\N	
5945	\N	\N	\N	2337	4760	\N	
5946	\N	\N	\N	1652	4761	\N	
5947	\N	\N	\N	2336	4762	\N	
5948	\N	\N	\N	2338	4762	\N	
5949	\N	\N	\N	2327	4763	\N	
5950	\N	\N	\N	2323	4764	\N	
5951	\N	\N	\N	2336	4765	\N	
5952	\N	\N	\N	2339	4765	\N	
5953	\N	\N	\N	2339	4766	\N	
5954	\N	\N	\N	2324	4767	\N	
5955	\N	\N	\N	2335	4768	\N	
5956	\N	\N	\N	2324	4769	\N	
5957	\N	\N	\N	2200	4770	\N	
5958	\N	\N	\N	2329	4771	\N	
5959	\N	\N	\N	2327	4771	\N	
5960	\N	\N	\N	2323	4772	\N	
5961	\N	\N	\N	2340	4773	\N	
5962	\N	\N	\N	2336	4774	\N	
5963	\N	\N	\N	2336	4775	\N	
5964	\N	\N	\N	1652	4776	\N	
5965	\N	\N	\N	2292	4777	\N	
5966	\N	\N	\N	2326	4778	\N	
5967	\N	\N	\N	2341	4779	\N	
5968	\N	\N	\N	2342	4780	\N	
5969	\N	\N	\N	2343	4780	\N	
5970	\N	\N	\N	2344	4780	\N	
5971	\N	\N	\N	2345	4780	\N	
5972	\N	\N	\N	2341	4781	\N	
5973	\N	\N	\N	2346	4782	\N	
5974	\N	\N	\N	2347	4783	\N	
5975	\N	\N	\N	2348	4784	\N	
5976	\N	\N	\N	2349	4785	\N	
5977	\N	\N	\N	2112	4786	\N	
5978	\N	\N	\N	2341	4787	\N	
5979	\N	\N	\N	2348	4788	\N	
5980	\N	\N	\N	2349	4789	\N	
5981	\N	\N	\N	2349	4790	\N	
5982	\N	\N	\N	2350	4791	\N	
5983	\N	\N	\N	2350	4792	\N	
5984	\N	\N	\N	2347	4793	\N	
5985	\N	\N	\N	2341	4794	\N	
5986	\N	\N	\N	2347	4795	\N	
5987	\N	\N	\N	2341	4796	\N	
5988	\N	\N	\N	2347	4797	\N	
5989	\N	\N	\N	2351	4741	\N	
5990	\N	\N	\N	2352	4780	\N	
5991	\N	\N	\N	2353	4782	\N	
5992	\N	\N	\N	2351	4798	\N	
5993	\N	\N	\N	2351	4799	\N	
5994	\N	\N	\N	2354	4800	\N	
5995	\N	\N	\N	2355	4800	\N	
5996	\N	\N	\N	2356	4800	\N	
5997	\N	\N	\N	2351	4801	\N	
5998	\N	\N	\N	2357	4802	\N	
5999	\N	\N	\N	2354	4803	\N	
6000	\N	\N	\N	2356	4803	\N	
6001	\N	\N	\N	2354	4804	\N	
6002	\N	\N	\N	2358	4805	\N	
6003	\N	\N	\N	2354	4806	\N	
6004	\N	\N	\N	2359	4806	\N	
6005	\N	\N	\N	2351	4807	\N	
6006	\N	\N	\N	2360	4808	\N	
6007	\N	\N	\N	2361	4808	\N	
6008	\N	\N	\N	2362	4808	\N	
6009	\N	\N	\N	2358	4808	\N	
6010	\N	\N	\N	2360	4809	\N	
6011	\N	\N	\N	2361	4809	\N	
6012	\N	\N	\N	2362	4809	\N	
6013	\N	\N	\N	2358	4809	\N	
6014	\N	\N	\N	2351	4810	\N	
6015	\N	\N	\N	2362	4811	\N	
6016	\N	\N	\N	1653	4812	\N	
6017	\N	\N	\N	1701	4813	\N	
6018	\N	\N	\N	1654	4813	\N	
6019	\N	\N	\N	1702	4814	\N	
6020	\N	\N	\N	1703	4815	\N	
6021	\N	\N	\N	1704	4815	\N	
6022	\N	\N	\N	1705	4816	\N	
6023	\N	\N	\N	1705	4817	\N	
6024	\N	\N	\N	1637	4818	\N	
6025	\N	\N	\N	1706	4819	\N	
6026	\N	\N	\N	1707	4820	\N	
6027	\N	\N	\N	1708	4821	\N	
6028	\N	\N	\N	1709	4821	\N	
6029	\N	\N	\N	1649	4822	\N	
6030	\N	\N	\N	1664	4823	\N	
6031	\N	\N	\N	1637	4824	\N	
6032	\N	\N	\N	1660	4825	\N	
6033	\N	\N	\N	1654	4825	\N	
6034	\N	\N	\N	1701	4826	\N	
6035	\N	\N	\N	1707	4827	\N	
6036	\N	\N	\N	1710	4828	\N	
6037	\N	\N	\N	1711	4828	\N	
6038	\N	\N	\N	1712	4829	\N	
6039	\N	\N	\N	1713	4830	\N	
6040	\N	\N	\N	1654	4831	\N	
6041	\N	\N	\N	1714	4832	\N	
6042	\N	\N	\N	1715	4833	\N	
6043	\N	\N	\N	1716	4834	\N	
6044	\N	\N	\N	1632	4835	\N	
6045	\N	\N	\N	1699	4836	\N	
6046	\N	\N	\N	1717	4836	\N	
6047	\N	\N	\N	1705	4837	\N	
6048	\N	\N	\N	1718	4838	\N	
6049	\N	\N	\N	1701	4839	\N	
6050	\N	\N	\N	1694	4840	\N	
6051	\N	\N	\N	1654	4841	\N	
6052	\N	\N	\N	1652	4842	\N	
6053	\N	\N	\N	1719	4843	\N	
6054	\N	\N	\N	1717	4844	\N	
6055	\N	\N	\N	1720	4844	\N	
6056	\N	\N	\N	1701	4845	\N	
6057	\N	\N	\N	1721	4846	\N	
6058	\N	\N	\N	1717	4846	\N	
6059	\N	\N	\N	1722	4846	\N	
6060	\N	\N	\N	1723	4846	\N	
6061	\N	\N	\N	1639	4847	\N	
6062	\N	\N	\N	1724	4848	\N	
6063	\N	\N	\N	1725	4849	\N	
6064	\N	\N	\N	1699	4850	\N	
6065	\N	\N	\N	1726	4851	\N	
6066	\N	\N	\N	1727	4852	\N	
6067	\N	\N	\N	1728	4853	\N	
6068	\N	\N	\N	1660	4853	\N	
6069	\N	\N	\N	1637	4854	\N	
6070	\N	\N	\N	1638	4855	\N	
6071	\N	\N	\N	1654	4856	\N	
6072	\N	\N	\N	1730	4857	\N	
6073	\N	\N	\N	1729	4857	\N	
6074	\N	\N	\N	1731	4857	\N	
6075	\N	\N	\N	1664	4858	\N	
6076	\N	\N	\N	1737	4859	\N	
6077	\N	\N	\N	1736	4860	\N	
6078	\N	\N	\N	1757	4861	\N	
6079	\N	\N	\N	1737	4862	\N	
6080	\N	\N	\N	1737	4863	\N	
6081	\N	\N	\N	1758	4864	\N	
6082	\N	\N	\N	1736	4865	\N	
6083	\N	\N	\N	1759	4866	\N	
6084	\N	\N	\N	1760	4867	\N	
6085	\N	\N	\N	1761	4868	\N	
6086	\N	\N	\N	1736	4869	\N	
6087	\N	\N	\N	1762	4870	\N	
6088	\N	\N	\N	1765	4870	\N	
6089	\N	\N	\N	1763	4870	\N	
6090	\N	\N	\N	1764	4870	\N	
6091	\N	\N	\N	1766	4871	\N	
6092	\N	\N	\N	1767	4872	\N	
6093	\N	\N	\N	1768	4873	\N	
6094	\N	\N	\N	1769	4873	\N	
6095	\N	\N	\N	1770	4874	\N	
6096	\N	\N	\N	1771	4875	\N	
6097	\N	\N	\N	1783	4876	\N	
6098	\N	\N	\N	1786	4876	\N	
6099	\N	\N	\N	1787	4877	\N	
6100	\N	\N	\N	1783	4878	\N	
6101	\N	\N	\N	1782	4878	\N	
6102	\N	\N	\N	1786	4879	\N	
6103	\N	\N	\N	1790	4880	\N	
6104	\N	\N	\N	1789	4880	\N	
6105	\N	\N	\N	1788	4880	\N	
6106	\N	\N	\N	1791	4881	\N	
6107	\N	\N	\N	1781	4882	\N	
6108	\N	\N	\N	1780	4882	\N	
6109	\N	\N	\N	1786	4883	\N	
6110	\N	\N	\N	1792	4883	\N	
6111	\N	\N	\N	1775	4884	\N	
6112	\N	\N	\N	1793	4885	\N	
6113	\N	\N	\N	1775	4886	\N	
6114	\N	\N	\N	1786	4887	\N	
6115	\N	\N	\N	1792	4887	\N	
6116	\N	\N	\N	1782	4887	\N	
6117	\N	\N	\N	1794	4888	\N	
6118	\N	\N	\N	1787	4889	\N	
6119	\N	\N	\N	1786	4868	\N	
6120	\N	\N	\N	1795	4890	\N	
6121	\N	\N	\N	1796	4891	\N	
6122	\N	\N	\N	1787	4892	\N	
6123	\N	\N	\N	1786	4893	\N	
6124	\N	\N	\N	1782	4893	\N	
6125	\N	\N	\N	1786	4894	\N	
6126	\N	\N	\N	1797	4895	\N	
6127	\N	\N	\N	1798	4896	\N	
6128	\N	\N	\N	1786	4897	\N	
6129	\N	\N	\N	1782	4897	\N	
6130	\N	\N	\N	1777	4898	\N	
6131	\N	\N	\N	1799	4898	\N	
6132	\N	\N	\N	1785	4899	\N	
6133	\N	\N	\N	1786	4899	\N	
6134	\N	\N	\N	1787	4900	\N	
6135	\N	\N	\N	1787	4901	\N	
6136	\N	\N	\N	1775	4902	\N	
6137	\N	\N	\N	1800	4903	\N	
6138	\N	\N	\N	1798	4904	\N	
6139	\N	\N	\N	1632	4905	\N	
6140	\N	\N	\N	1633	4906	\N	
6141	\N	\N	\N	1634	4907	\N	
6142	\N	\N	\N	1635	4908	\N	
6143	\N	\N	\N	1636	4908	\N	
6144	\N	\N	\N	1637	4909	\N	
6145	\N	\N	\N	1638	4910	\N	
6146	\N	\N	\N	1637	4910	\N	
6147	\N	\N	\N	1638	4911	\N	
6148	\N	\N	\N	1632	4912	\N	
6149	\N	\N	\N	1639	4913	\N	
6150	\N	\N	\N	1640	4914	\N	
6151	\N	\N	\N	1641	4915	\N	
6152	\N	\N	\N	1642	4916	\N	
6153	\N	\N	\N	1638	4917	\N	
6154	\N	\N	\N	1643	4918	\N	
6155	\N	\N	\N	1644	4919	\N	
6156	\N	\N	\N	1645	4920	\N	
6157	\N	\N	\N	1646	4921	\N	
6158	\N	\N	\N	1647	4922	\N	
6159	\N	\N	\N	1648	4923	\N	
6160	\N	\N	\N	1649	4924	\N	
6161	\N	\N	\N	1653	4925	\N	
6162	\N	\N	\N	1652	4925	\N	
6163	\N	\N	\N	1650	4925	\N	
6164	\N	\N	\N	1651	4925	\N	
6165	\N	\N	\N	1638	4926	\N	
6166	\N	\N	\N	1639	4927	\N	
6167	\N	\N	\N	1654	4928	\N	
6168	\N	\N	\N	1643	4929	\N	
6169	\N	\N	\N	1654	4930	\N	
6170	\N	\N	\N	1639	4931	\N	
6171	\N	\N	\N	1655	4932	\N	
6172	\N	\N	\N	1656	4933	\N	
6173	\N	\N	\N	1657	4934	\N	
6174	\N	\N	\N	1658	4935	\N	
6175	\N	\N	\N	1659	4936	\N	
6176	\N	\N	\N	1637	4937	\N	
6177	\N	\N	\N	1660	4938	\N	
6178	\N	\N	\N	1662	4939	\N	
6179	\N	\N	\N	1661	4939	\N	
6180	\N	\N	\N	1663	4939	\N	
6181	\N	\N	\N	1664	4940	\N	
6182	\N	\N	\N	1638	4941	\N	
6183	\N	\N	\N	1665	4942	\N	
6184	\N	\N	\N	1666	4943	\N	
6185	\N	\N	\N	1643	4944	\N	
6186	\N	\N	\N	1638	4945	\N	
6187	\N	\N	\N	1637	4945	\N	
6188	\N	\N	\N	1638	4946	\N	
6189	\N	\N	\N	1667	4947	\N	
6190	\N	\N	\N	1668	4948	\N	
6191	\N	\N	\N	1669	4949	\N	
6192	\N	\N	\N	1632	4950	\N	
6193	\N	\N	\N	1643	4951	\N	
6194	\N	\N	\N	1670	4952	\N	
6195	\N	\N	\N	1654	4953	\N	
6196	\N	\N	\N	1638	4954	\N	
6197	\N	\N	\N	1660	4954	\N	
6198	\N	\N	\N	1643	4955	\N	
6199	\N	\N	\N	1671	4956	\N	
6200	\N	\N	\N	1638	4957	\N	
6201	\N	\N	\N	1672	4957	\N	
6202	\N	\N	\N	1673	4958	\N	
6203	\N	\N	\N	1635	4959	\N	
6204	\N	\N	\N	1636	4959	\N	
6205	\N	\N	\N	1660	4960	\N	
6206	\N	\N	\N	1639	4960	\N	
6207	\N	\N	\N	1637	4961	\N	
6208	\N	\N	\N	1643	4962	\N	
6209	\N	\N	\N	1674	4963	\N	
6210	\N	\N	\N	1654	4964	\N	
6211	\N	\N	\N	1675	4965	\N	
6212	\N	\N	\N	1632	4965	\N	
6213	\N	\N	\N	1676	4966	\N	
6214	\N	\N	\N	1677	4967	\N	
6215	\N	\N	\N	1672	4968	\N	
6216	\N	\N	\N	1678	4969	\N	
6217	\N	\N	\N	1679	4969	\N	
6218	\N	\N	\N	1654	4970	\N	
6219	\N	\N	\N	1637	4971	\N	
6220	\N	\N	\N	1680	4972	\N	
6221	\N	\N	\N	1637	4973	\N	
6222	\N	\N	\N	1681	4974	\N	
6223	\N	\N	\N	1682	4975	\N	
6224	\N	\N	\N	1639	4976	\N	
6225	\N	\N	\N	1654	4977	\N	
6226	\N	\N	\N	1683	4978	\N	
6227	\N	\N	\N	1684	4979	\N	
6228	\N	\N	\N	1685	4980	\N	
6229	\N	\N	\N	1632	4981	\N	
6230	\N	\N	\N	1637	4982	\N	
6231	\N	\N	\N	1643	4983	\N	
6232	\N	\N	\N	1632	4984	\N	
6233	\N	\N	\N	1686	4985	\N	
6234	\N	\N	\N	1638	4986	\N	
6235	\N	\N	\N	1687	4987	\N	
6236	\N	\N	\N	1688	4987	\N	
6237	\N	\N	\N	1689	4988	\N	
6238	\N	\N	\N	1637	4989	\N	
6239	\N	\N	\N	1638	4990	\N	
6240	\N	\N	\N	1690	4991	\N	
6241	\N	\N	\N	1637	4992	\N	
6242	\N	\N	\N	1691	4993	\N	
6243	\N	\N	\N	1638	4994	\N	
6244	\N	\N	\N	1692	4994	\N	
6245	\N	\N	\N	1637	4995	\N	
6246	\N	\N	\N	1654	4996	\N	
6247	\N	\N	\N	1681	4997	\N	
6248	\N	\N	\N	1734	4998	\N	
6249	\N	\N	\N	1733	4998	\N	
6250	\N	\N	\N	2363	4999	\N	
6251	\N	\N	\N	1735	5000	\N	
6252	\N	\N	\N	1736	5001	\N	
6253	\N	\N	\N	1737	5002	\N	
6254	\N	\N	\N	1738	5003	\N	
6255	\N	\N	\N	1739	5004	\N	
6256	\N	\N	\N	1740	5005	\N	
6257	\N	\N	\N	1741	5006	\N	
6258	\N	\N	\N	1742	5007	\N	
6259	\N	\N	\N	1743	5008	\N	
6260	\N	\N	\N	1744	5009	\N	
6261	\N	\N	\N	1745	5010	\N	
6262	\N	\N	\N	1746	5011	\N	
6263	\N	\N	\N	1737	5012	\N	
6264	\N	\N	\N	1772	5013	\N	
6265	\N	\N	\N	1773	5013	\N	
6266	\N	\N	\N	1774	5014	\N	
6267	\N	\N	\N	1775	5015	\N	
6268	\N	\N	\N	1776	5016	\N	
6269	\N	\N	\N	1775	5017	\N	
6270	\N	\N	\N	1775	5018	\N	
6271	\N	\N	\N	1747	5019	\N	
6272	\N	\N	\N	1652	5020	\N	
6273	\N	\N	\N	1732	5020	\N	
6274	\N	\N	\N	1710	5021	\N	
6275	\N	\N	\N	1711	5021	\N	
6276	\N	\N	\N	2364	5022	\N	
6277	\N	\N	\N	1736	5023	\N	
6278	\N	\N	\N	1801	5024	\N	
6279	\N	\N	\N	2365	5025	\N	
6280	\N	\N	\N	2365	5026	\N	
6281	\N	\N	\N	2251	5027	\N	
6282	\N	\N	\N	2243	5028	\N	
6283	\N	\N	\N	2366	5029	\N	
6284	\N	\N	\N	2243	5030	\N	
6285	\N	\N	\N	2367	5031	\N	
6286	\N	\N	\N	2243	5032	\N	
6287	\N	\N	\N	2368	5033	\N	
6288	\N	\N	\N	2368	5034	\N	
6289	\N	\N	\N	2251	5035	\N	
6290	\N	\N	\N	2365	5036	\N	
6291	\N	\N	\N	2369	5037	\N	
6292	\N	\N	\N	2370	5037	\N	
6293	\N	\N	\N	2365	5038	\N	
6294	\N	\N	\N	2365	5039	\N	
6295	\N	\N	\N	2365	5040	\N	
6296	\N	\N	\N	2365	5041	\N	
6297	\N	\N	\N	2243	5042	\N	
6298	\N	\N	\N	2243	5043	\N	
6299	\N	\N	\N	2365	5044	\N	
6300	\N	\N	\N	2365	5045	\N	
6301	\N	\N	\N	2365	5046	\N	
6302	\N	\N	\N	2368	5047	\N	
6303	\N	\N	\N	2365	5048	\N	
6304	\N	\N	\N	2371	5049	\N	
6305	\N	\N	\N	2372	5050	\N	
6306	\N	\N	\N	2373	5051	\N	
6307	\N	\N	\N	2204	5052	\N	
6308	\N	\N	\N	2204	5053	\N	
6309	\N	\N	\N	2372	5054	\N	
6310	\N	\N	\N	2374	5055	\N	
6311	\N	\N	\N	2375	5056	\N	
6312	\N	\N	\N	2376	5057	\N	
6313	\N	\N	\N	2377	5058	\N	
6314	\N	\N	\N	2378	5059	\N	
6315	\N	\N	\N	2379	5048	\N	
6316	\N	\N	\N	2380	5048	\N	
6610	\N	\N	\N	1693	5295	\N	\N
6611	\N	\N	\N	1638	5296	\N	\N
6612	\N	\N	\N	1695	5297	\N	\N
6613	\N	\N	\N	1696	5298	\N	\N
6614	\N	\N	\N	1697	5299	\N	\N
6615	\N	\N	\N	1698	5300	\N	\N
6616	\N	\N	\N	1699	5301	\N	\N
6617	\N	\N	\N	1700	5302	\N	\N
6618	\N	\N	\N	1729	5303	\N	\N
6619	\N	\N	\N	1747	5304	\N	\N
6620	\N	\N	\N	1748	5305	\N	\N
6621	\N	\N	\N	1749	5306	\N	\N
6622	\N	\N	\N	1749	5307	\N	\N
6623	\N	\N	\N	1737	5308	\N	\N
6624	\N	\N	\N	1750	5309	\N	\N
6625	\N	\N	\N	1751	5310	\N	\N
6626	\N	\N	\N	1752	5311	\N	\N
6627	\N	\N	\N	1755	5312	\N	\N
6628	\N	\N	\N	1737	5313	\N	\N
6629	\N	\N	\N	1756	5314	\N	\N
6630	\N	\N	\N	1762	5314	\N	\N
6631	\N	\N	\N	1763	5314	\N	\N
6632	\N	\N	\N	1764	5314	\N	\N
6633	\N	\N	\N	1765	5314	\N	\N
6634	\N	\N	\N	1777	5315	\N	\N
6635	\N	\N	\N	1780	5316	\N	\N
6636	\N	\N	\N	1782	5317	\N	\N
6637	\N	\N	\N	1785	5318	\N	\N
6638	\N	\N	\N	1782	5319	\N	\N
6639	\N	\N	\N	1775	5320	\N	\N
6640	\N	\N	\N	1793	5321	\N	\N
6641	\N	\N	\N	1796	5321	\N	\N
\.


--
-- Data for Name: questions_choice; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_choice (id, display_name, internal_id, weight) FROM stdin;
\.


--
-- Data for Name: questions_clinicanswer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_clinicanswer (id, choice_id, clinic_id, position_id, question_id) FROM stdin;
\.


--
-- Data for Name: questions_position; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_position (id, description) FROM stdin;
\.


--
-- Data for Name: questions_professionalanswer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_professionalanswer (id, choice_id, professional_id, question_id) FROM stdin;
\.


--
-- Data for Name: questions_question; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_question (id, name, clinic_question, professional_question) FROM stdin;
\.


--
-- Data for Name: questions_question_questionnaire; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_question_questionnaire (id, question_id, questionnaire_id) FROM stdin;
\.


--
-- Data for Name: questions_questionnaire; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions_questionnaire (id, description) FROM stdin;
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_user (id, auth_id, professional_id, email, user_key) FROM stdin;
9	auth_id_example	\N	elliott@repositpower.com	UK4BSGB9
10	sdasdff	\N	elliottdd@gmail.com	U8JP8995
11	sdadsdff	\N	elliottddd@gmail.com	UM6LUFME
12	sdasdf	\N	ellidotdftd@gmail.com	URWL7YJ3
13	sdasddf	\N	ellidodtdftd@gmail.com	UHSLF5BS
14	sdasdfsfddf	\N	ellidsdodtdftd@gmail.com	UHW9QZQJ
15	1sdasfsdfsfddf	\N	1ellidsdsdodtdftd@gmail.com	UTT8F9J5
16	2sdasfsdfsfddf	\N	2ellidsdsdodtdftd@gmail.com	UHY4RC6D
17	2sdasfsdfasdfsfddf	\N	2ellidsdsdodtdfsdftd@gmail.com	ULJFAZWB
18	2sdasfsdfsasdfersfddf	\N	2ellidsdsdfodtdfsdasftd@gmail.com	UEUE3DAS
19	2sdasfsdfsasdferfsfddf	\N	2ellidsdsdfodtdfsdasftdd@gmail.com	UH453U4L
20	asdferfsfddf	\N	fsdasftdd@gmail.com	U6NUDQUA
\.


--
-- Data for Name: users_usernotesclinic; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_usernotesclinic (id, notes, clinic_id, user_id, uid) FROM stdin;
\.


--
-- Data for Name: users_usernotesprofessional; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_usernotesprofessional (id, notes, professional_id, user_id, uid) FROM stdin;
1	Hello\n\ntjere\n\nyo\nwhat up\ndfsa\n\n\nasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf\ndf	4326	9	d173977c483f4da89674fff8a0d2115d
2	Hello there	3968	9	9d6f27387b7b4c67b4cbdf7e0ef92131
5	Bubba	3957	9	207fb97168104d519f89e7f83f1e68b7
6	Poop notes	4922	9	49a663a016b94172a05234db05246b26
7	asdfasdf	4021	9	817a11564c0a423ca2dd2be0d0dc9480
4	Hi there do it	4023	9	26318f0cd1d24b7db5c2639ab7eff2af
3	Here are some test notes asdf\n\nasdf\nasdf	4022	9	dee744d4e83e4baa888209e9c27d6378
8	Hi there	3969	9	8bdc392b54fc4ff4867eea11d4a57dfd
9	This person is shit	4999	9	e5b05cf3c1ff42aba2bc3b3271306590
11	this person is also great	4996	9	e3d1b6250c9b421cb8b1eb31eb6361dc
12	Here\n\nare some \n\nmore\n\nnotes\n\nyou need\nto \nscroll\nto \n\n\nsee	4946	9	fd92403eb59847abbfa6305340769750
13	sees pts with blue hair 	4208	9	58b42d6e762d4bfab6469c77d0aef81a
14	This person is great! I love them	4949	9	e1fca775d9084fb087aafbb825fbbfb9
10	This person is great\nasdf\nadf\n\n\nasdf\n\nasdf	4960	9	f33a26934bbb462e9cddee47bc9f2ad2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 120, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: clinics_clinic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinics_clinic_id_seq', 2380, true);


--
-- Name: clinics_clinicflaggedclinic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinics_clinicflaggedclinic_id_seq', 1, false);


--
-- Name: clinics_clinicflaggedprofessional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinics_clinicflaggedprofessional_id_seq', 1, false);


--
-- Name: clinics_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinics_location_id_seq', 2257, true);


--
-- Name: clinics_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinics_organisation_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2655, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 30, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 77, true);


--
-- Name: professionals_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_area_id_seq', 1, false);


--
-- Name: professionals_profession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_profession_id_seq', 5349, true);


--
-- Name: professionals_professional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_professional_id_seq', 5321, true);


--
-- Name: professionals_professionalgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_professionalgroup_id_seq', 54, true);


--
-- Name: professionals_professionalgroupmapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_professionalgroupmapping_id_seq', 129, true);


--
-- Name: professionals_professiontype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_professiontype_id_seq', 103, true);


--
-- Name: professionals_rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_rate_id_seq', 1, false);


--
-- Name: professionals_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professionals_role_id_seq', 6641, true);


--
-- Name: questions_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_choice_id_seq', 1, false);


--
-- Name: questions_clinicanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_clinicanswer_id_seq', 1, false);


--
-- Name: questions_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_position_id_seq', 1, false);


--
-- Name: questions_professionalanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_professionalanswer_id_seq', 1, false);


--
-- Name: questions_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_question_id_seq', 1, false);


--
-- Name: questions_question_questionnaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_question_questionnaire_id_seq', 1, false);


--
-- Name: questions_questionnaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_questionnaire_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: users_usernotesclinic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_usernotesclinic_id_seq', 1, false);


--
-- Name: users_usernotesprofessional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_usernotesprofessional_id_seq', 14, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: clinics_clinic clinics_clinic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinic
    ADD CONSTRAINT clinics_clinic_pkey PRIMARY KEY (id);


--
-- Name: clinics_clinicflaggedclinic clinics_clinicflaggedclinic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedclinic
    ADD CONSTRAINT clinics_clinicflaggedclinic_pkey PRIMARY KEY (id);


--
-- Name: clinics_clinicflaggedprofessional clinics_clinicflaggedprofessional_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedprofessional
    ADD CONSTRAINT clinics_clinicflaggedprofessional_pkey PRIMARY KEY (id);


--
-- Name: clinics_location clinics_location_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_location
    ADD CONSTRAINT clinics_location_pkey PRIMARY KEY (id);


--
-- Name: clinics_organisation clinics_organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_organisation
    ADD CONSTRAINT clinics_organisation_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: professionals_area professionals_area_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_area
    ADD CONSTRAINT professionals_area_pkey PRIMARY KEY (id);


--
-- Name: professionals_profession professionals_profession_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_profession
    ADD CONSTRAINT professionals_profession_pkey PRIMARY KEY (id);


--
-- Name: professionals_professionalgroupmapping professionals_profession_professional_id_group_id_8c135156_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroupmapping
    ADD CONSTRAINT professionals_profession_professional_id_group_id_8c135156_uniq UNIQUE (professional_id, group_id);


--
-- Name: professionals_profession professionals_profession_uid_55df005c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_profession
    ADD CONSTRAINT professionals_profession_uid_55df005c_uniq UNIQUE (uid);


--
-- Name: professionals_professional professionals_professional_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professional
    ADD CONSTRAINT professionals_professional_pkey PRIMARY KEY (id);


--
-- Name: professionals_professional professionals_professional_uid_b1160172_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professional
    ADD CONSTRAINT professionals_professional_uid_b1160172_uniq UNIQUE (uid);


--
-- Name: professionals_professionalgroup professionals_professionalgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroup
    ADD CONSTRAINT professionals_professionalgroup_pkey PRIMARY KEY (id);


--
-- Name: professionals_professionalgroup professionals_professionalgroup_uid_6a8837e1_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroup
    ADD CONSTRAINT professionals_professionalgroup_uid_6a8837e1_uniq UNIQUE (uid);


--
-- Name: professionals_professionalgroup professionals_professionalgroup_user_id_name_42e23e61_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroup
    ADD CONSTRAINT professionals_professionalgroup_user_id_name_42e23e61_uniq UNIQUE (user_id, name);


--
-- Name: professionals_professionalgroupmapping professionals_professionalgroupmapping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroupmapping
    ADD CONSTRAINT professionals_professionalgroupmapping_pkey PRIMARY KEY (id);


--
-- Name: professionals_professiontype professionals_professiontype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professiontype
    ADD CONSTRAINT professionals_professiontype_pkey PRIMARY KEY (id);


--
-- Name: professionals_professiontype professionals_professiontype_uid_81537b27_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professiontype
    ADD CONSTRAINT professionals_professiontype_uid_81537b27_uniq UNIQUE (uid);


--
-- Name: professionals_rate professionals_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_rate
    ADD CONSTRAINT professionals_rate_pkey PRIMARY KEY (id);


--
-- Name: professionals_role professionals_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_role
    ADD CONSTRAINT professionals_role_pkey PRIMARY KEY (id);


--
-- Name: questions_choice questions_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_choice
    ADD CONSTRAINT questions_choice_pkey PRIMARY KEY (id);


--
-- Name: questions_clinicanswer questions_clinicanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer
    ADD CONSTRAINT questions_clinicanswer_pkey PRIMARY KEY (id);


--
-- Name: questions_position questions_position_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_position
    ADD CONSTRAINT questions_position_pkey PRIMARY KEY (id);


--
-- Name: questions_professionalanswer questions_professionalanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_professionalanswer
    ADD CONSTRAINT questions_professionalanswer_pkey PRIMARY KEY (id);


--
-- Name: questions_question questions_question_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question
    ADD CONSTRAINT questions_question_pkey PRIMARY KEY (id);


--
-- Name: questions_question_questionnaire questions_question_quest_question_id_questionnair_40b01470_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question_questionnaire
    ADD CONSTRAINT questions_question_quest_question_id_questionnair_40b01470_uniq UNIQUE (question_id, questionnaire_id);


--
-- Name: questions_question_questionnaire questions_question_questionnaire_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question_questionnaire
    ADD CONSTRAINT questions_question_questionnaire_pkey PRIMARY KEY (id);


--
-- Name: questions_questionnaire questions_questionnaire_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_questionnaire
    ADD CONSTRAINT questions_questionnaire_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_auth_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_auth_id_key UNIQUE (auth_id);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_professional_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_professional_id_key UNIQUE (professional_id);


--
-- Name: users_user users_user_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_user_id_key UNIQUE (user_key);


--
-- Name: users_usernotesclinic users_usernotesclinic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesclinic
    ADD CONSTRAINT users_usernotesclinic_pkey PRIMARY KEY (id);


--
-- Name: users_usernotesclinic users_usernotesclinic_uid_9a598f49_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesclinic
    ADD CONSTRAINT users_usernotesclinic_uid_9a598f49_uniq UNIQUE (uid);


--
-- Name: users_usernotesprofessional users_usernotesprofessional_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesprofessional
    ADD CONSTRAINT users_usernotesprofessional_pkey PRIMARY KEY (id);


--
-- Name: users_usernotesprofessional users_usernotesprofessional_uid_513f9ede_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesprofessional
    ADD CONSTRAINT users_usernotesprofessional_uid_513f9ede_uniq UNIQUE (uid);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: clinics_clinic_location_id_e8796f2d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinic_location_id_e8796f2d ON public.clinics_clinic USING btree (location_id);


--
-- Name: clinics_clinic_organisation_id_9bc52b30; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinic_organisation_id_9bc52b30 ON public.clinics_clinic USING btree (organisation_id);


--
-- Name: clinics_clinicflaggedclinic_clinic_id_05ae3ed9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinicflaggedclinic_clinic_id_05ae3ed9 ON public.clinics_clinicflaggedclinic USING btree (clinic_id);


--
-- Name: clinics_clinicflaggedclinic_clinic_noted_id_d8862ff0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinicflaggedclinic_clinic_noted_id_d8862ff0 ON public.clinics_clinicflaggedclinic USING btree (clinic_noted_id);


--
-- Name: clinics_clinicflaggedprofessional_clinic_id_94fe611d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinicflaggedprofessional_clinic_id_94fe611d ON public.clinics_clinicflaggedprofessional USING btree (clinic_id);


--
-- Name: clinics_clinicflaggedprofessional_professional_id_b286a91e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_clinicflaggedprofessional_professional_id_b286a91e ON public.clinics_clinicflaggedprofessional USING btree (professional_id);


--
-- Name: clinics_organisation_headquarters_id_b9b0f12e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX clinics_organisation_headquarters_id_b9b0f12e ON public.clinics_organisation USING btree (headquarters_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: professionals_profession_profession_type_id_ea0e9c08; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_profession_profession_type_id_ea0e9c08 ON public.professionals_profession USING btree (profession_type_id);


--
-- Name: professionals_profession_professional_id_20ee8dfb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_profession_professional_id_20ee8dfb ON public.professionals_profession USING btree (professional_id);


--
-- Name: professionals_profession_uid_55df005c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_profession_uid_55df005c_like ON public.professionals_profession USING btree (uid varchar_pattern_ops);


--
-- Name: professionals_professional_uid_b1160172_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professional_uid_b1160172_like ON public.professionals_professional USING btree (uid varchar_pattern_ops);


--
-- Name: professionals_professionalgroup_uid_6a8837e1_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professionalgroup_uid_6a8837e1_like ON public.professionals_professionalgroup USING btree (uid varchar_pattern_ops);


--
-- Name: professionals_professionalgroup_user_id_55be52bb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professionalgroup_user_id_55be52bb ON public.professionals_professionalgroup USING btree (user_id);


--
-- Name: professionals_professionalgroupmapping_group_id_edcd7975; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professionalgroupmapping_group_id_edcd7975 ON public.professionals_professionalgroupmapping USING btree (group_id);


--
-- Name: professionals_professionalgroupmapping_professional_id_b67ec507; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professionalgroupmapping_professional_id_b67ec507 ON public.professionals_professionalgroupmapping USING btree (professional_id);


--
-- Name: professionals_professiontype_uid_81537b27_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_professiontype_uid_81537b27_like ON public.professionals_professiontype USING btree (uid varchar_pattern_ops);


--
-- Name: professionals_role_clinic_id_bd0f51ab; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_role_clinic_id_bd0f51ab ON public.professionals_role USING btree (clinic_id);


--
-- Name: professionals_role_professional_id_f7ec4724; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_role_professional_id_f7ec4724 ON public.professionals_role USING btree (professional_id);


--
-- Name: professionals_role_rate_id_1a7994d0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professionals_role_rate_id_1a7994d0 ON public.professionals_role USING btree (rate_id);


--
-- Name: questions_clinicanswer_choice_id_9989d18a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_clinicanswer_choice_id_9989d18a ON public.questions_clinicanswer USING btree (choice_id);


--
-- Name: questions_clinicanswer_clinic_id_0c38fa52; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_clinicanswer_clinic_id_0c38fa52 ON public.questions_clinicanswer USING btree (clinic_id);


--
-- Name: questions_clinicanswer_position_id_56c1c008; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_clinicanswer_position_id_56c1c008 ON public.questions_clinicanswer USING btree (position_id);


--
-- Name: questions_clinicanswer_question_id_f99f83ab; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_clinicanswer_question_id_f99f83ab ON public.questions_clinicanswer USING btree (question_id);


--
-- Name: questions_professionalanswer_choice_id_ef6a42ff; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_professionalanswer_choice_id_ef6a42ff ON public.questions_professionalanswer USING btree (choice_id);


--
-- Name: questions_professionalanswer_professional_id_c2f320ee; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_professionalanswer_professional_id_c2f320ee ON public.questions_professionalanswer USING btree (professional_id);


--
-- Name: questions_professionalanswer_question_id_12e91e86; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_professionalanswer_question_id_12e91e86 ON public.questions_professionalanswer USING btree (question_id);


--
-- Name: questions_question_questionnaire_question_id_0441248d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_question_questionnaire_question_id_0441248d ON public.questions_question_questionnaire USING btree (question_id);


--
-- Name: questions_question_questionnaire_questionnaire_id_bfaa8642; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_question_questionnaire_questionnaire_id_bfaa8642 ON public.questions_question_questionnaire USING btree (questionnaire_id);


--
-- Name: users_user_auth_id_39852a94_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_user_auth_id_39852a94_like ON public.users_user USING btree (auth_id varchar_pattern_ops);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_user_id_4120b7b9_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_user_user_id_4120b7b9_like ON public.users_user USING btree (user_key varchar_pattern_ops);


--
-- Name: users_usernotesclinic_clinic_id_fa6af244; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesclinic_clinic_id_fa6af244 ON public.users_usernotesclinic USING btree (clinic_id);


--
-- Name: users_usernotesclinic_uid_9a598f49_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesclinic_uid_9a598f49_like ON public.users_usernotesclinic USING btree (uid varchar_pattern_ops);


--
-- Name: users_usernotesclinic_user_id_1feb2521; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesclinic_user_id_1feb2521 ON public.users_usernotesclinic USING btree (user_id);


--
-- Name: users_usernotesprofessional_professional_id_2d7be954; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesprofessional_professional_id_2d7be954 ON public.users_usernotesprofessional USING btree (professional_id);


--
-- Name: users_usernotesprofessional_uid_513f9ede_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesprofessional_uid_513f9ede_like ON public.users_usernotesprofessional USING btree (uid varchar_pattern_ops);


--
-- Name: users_usernotesprofessional_user_id_8eb8a8f2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_usernotesprofessional_user_id_8eb8a8f2 ON public.users_usernotesprofessional USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinic clinics_clinic_location_id_e8796f2d_fk_clinics_location_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinic
    ADD CONSTRAINT clinics_clinic_location_id_e8796f2d_fk_clinics_location_id FOREIGN KEY (location_id) REFERENCES public.clinics_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinic clinics_clinic_organisation_id_9bc52b30_fk_clinics_o; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinic
    ADD CONSTRAINT clinics_clinic_organisation_id_9bc52b30_fk_clinics_o FOREIGN KEY (organisation_id) REFERENCES public.clinics_organisation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinicflaggedclinic clinics_clinicflagge_clinic_id_05ae3ed9_fk_clinics_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedclinic
    ADD CONSTRAINT clinics_clinicflagge_clinic_id_05ae3ed9_fk_clinics_c FOREIGN KEY (clinic_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinicflaggedprofessional clinics_clinicflagge_clinic_id_94fe611d_fk_clinics_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedprofessional
    ADD CONSTRAINT clinics_clinicflagge_clinic_id_94fe611d_fk_clinics_c FOREIGN KEY (clinic_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinicflaggedclinic clinics_clinicflagge_clinic_noted_id_d8862ff0_fk_clinics_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedclinic
    ADD CONSTRAINT clinics_clinicflagge_clinic_noted_id_d8862ff0_fk_clinics_c FOREIGN KEY (clinic_noted_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_clinicflaggedprofessional clinics_clinicflagge_professional_id_b286a91e_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_clinicflaggedprofessional
    ADD CONSTRAINT clinics_clinicflagge_professional_id_b286a91e_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clinics_organisation clinics_organisation_headquarters_id_b9b0f12e_fk_clinics_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics_organisation
    ADD CONSTRAINT clinics_organisation_headquarters_id_b9b0f12e_fk_clinics_l FOREIGN KEY (headquarters_id) REFERENCES public.clinics_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_professionalgroupmapping professionals_profes_group_id_edcd7975_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroupmapping
    ADD CONSTRAINT professionals_profes_group_id_edcd7975_fk_professio FOREIGN KEY (group_id) REFERENCES public.professionals_professionalgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_profession professionals_profes_profession_type_id_ea0e9c08_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_profession
    ADD CONSTRAINT professionals_profes_profession_type_id_ea0e9c08_fk_professio FOREIGN KEY (profession_type_id) REFERENCES public.professionals_professiontype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_profession professionals_profes_professional_id_20ee8dfb_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_profession
    ADD CONSTRAINT professionals_profes_professional_id_20ee8dfb_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_professionalgroupmapping professionals_profes_professional_id_b67ec507_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroupmapping
    ADD CONSTRAINT professionals_profes_professional_id_b67ec507_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_professionalgroup professionals_profes_user_id_55be52bb_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_professionalgroup
    ADD CONSTRAINT professionals_profes_user_id_55be52bb_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_role professionals_role_clinic_id_bd0f51ab_fk_clinics_clinic_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_role
    ADD CONSTRAINT professionals_role_clinic_id_bd0f51ab_fk_clinics_clinic_id FOREIGN KEY (clinic_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_role professionals_role_professional_id_f7ec4724_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_role
    ADD CONSTRAINT professionals_role_professional_id_f7ec4724_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professionals_role professionals_role_rate_id_1a7994d0_fk_professionals_rate_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professionals_role
    ADD CONSTRAINT professionals_role_rate_id_1a7994d0_fk_professionals_rate_id FOREIGN KEY (rate_id) REFERENCES public.professionals_rate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_clinicanswer questions_clinicansw_choice_id_9989d18a_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer
    ADD CONSTRAINT questions_clinicansw_choice_id_9989d18a_fk_questions FOREIGN KEY (choice_id) REFERENCES public.questions_choice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_clinicanswer questions_clinicansw_position_id_56c1c008_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer
    ADD CONSTRAINT questions_clinicansw_position_id_56c1c008_fk_questions FOREIGN KEY (position_id) REFERENCES public.questions_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_clinicanswer questions_clinicansw_question_id_f99f83ab_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer
    ADD CONSTRAINT questions_clinicansw_question_id_f99f83ab_fk_questions FOREIGN KEY (question_id) REFERENCES public.questions_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_clinicanswer questions_clinicanswer_clinic_id_0c38fa52_fk_clinics_clinic_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_clinicanswer
    ADD CONSTRAINT questions_clinicanswer_clinic_id_0c38fa52_fk_clinics_clinic_id FOREIGN KEY (clinic_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_professionalanswer questions_profession_choice_id_ef6a42ff_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_professionalanswer
    ADD CONSTRAINT questions_profession_choice_id_ef6a42ff_fk_questions FOREIGN KEY (choice_id) REFERENCES public.questions_choice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_professionalanswer questions_profession_professional_id_c2f320ee_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_professionalanswer
    ADD CONSTRAINT questions_profession_professional_id_c2f320ee_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_professionalanswer questions_profession_question_id_12e91e86_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_professionalanswer
    ADD CONSTRAINT questions_profession_question_id_12e91e86_fk_questions FOREIGN KEY (question_id) REFERENCES public.questions_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_question_questionnaire questions_question_q_question_id_0441248d_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question_questionnaire
    ADD CONSTRAINT questions_question_q_question_id_0441248d_fk_questions FOREIGN KEY (question_id) REFERENCES public.questions_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questions_question_questionnaire questions_question_q_questionnaire_id_bfaa8642_fk_questions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions_question_questionnaire
    ADD CONSTRAINT questions_question_q_questionnaire_id_bfaa8642_fk_questions FOREIGN KEY (questionnaire_id) REFERENCES public.questions_questionnaire(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user users_user_professional_id_45a124e7_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_professional_id_45a124e7_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usernotesclinic users_usernotesclinic_clinic_id_fa6af244_fk_clinics_clinic_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesclinic
    ADD CONSTRAINT users_usernotesclinic_clinic_id_fa6af244_fk_clinics_clinic_id FOREIGN KEY (clinic_id) REFERENCES public.clinics_clinic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usernotesclinic users_usernotesclinic_user_id_1feb2521_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesclinic
    ADD CONSTRAINT users_usernotesclinic_user_id_1feb2521_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usernotesprofessional users_usernotesprofe_professional_id_2d7be954_fk_professio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesprofessional
    ADD CONSTRAINT users_usernotesprofe_professional_id_2d7be954_fk_professio FOREIGN KEY (professional_id) REFERENCES public.professionals_professional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usernotesprofessional users_usernotesprofessional_user_id_8eb8a8f2_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_usernotesprofessional
    ADD CONSTRAINT users_usernotesprofessional_user_id_8eb8a8f2_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

