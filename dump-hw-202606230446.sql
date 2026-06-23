--
-- PostgreSQL database dump
--

\restrict BGjQ6uDOTNpkOwr5T5GK8kWO7WIOwbcXYtIh9Rhb4GEXsMhL8CVluBpNGUdRiFg

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-06-23 04:46:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 18208)
-- Name: public2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public2;


ALTER SCHEMA public2 OWNER TO postgres;

--
-- TOC entry 947 (class 1247 OID 18370)
-- Name: access_level_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.access_level_type AS ENUM (
    'чтение',
    'запись',
    'удаление'
);


ALTER TYPE public2.access_level_type OWNER TO postgres;

--
-- TOC entry 902 (class 1247 OID 18238)
-- Name: agreement_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.agreement_status_type AS ENUM (
    'активен',
    'просрочка',
    'закрыт',
    'реструктуризация'
);


ALTER TYPE public2.agreement_status_type OWNER TO postgres;

--
-- TOC entry 899 (class 1247 OID 18228)
-- Name: application_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.application_status_type AS ENUM (
    'новая',
    'рассмотрение',
    'одобрена',
    'отклонена'
);


ALTER TYPE public2.application_status_type OWNER TO postgres;

--
-- TOC entry 893 (class 1247 OID 18211)
-- Name: borrower_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.borrower_status_type AS ENUM (
    'активный',
    'проблемный',
    'архив'
);


ALTER TYPE public2.borrower_status_type OWNER TO postgres;

--
-- TOC entry 911 (class 1247 OID 18264)
-- Name: delay_stage_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.delay_stage_type AS ENUM (
    '1-30',
    '31-60',
    '61-90',
    '90+'
);


ALTER TYPE public2.delay_stage_type OWNER TO postgres;

--
-- TOC entry 914 (class 1247 OID 18274)
-- Name: delay_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.delay_status_type AS ENUM (
    'новая',
    'в_работе',
    'в_суде',
    'урегулирована'
);


ALTER TYPE public2.delay_status_type OWNER TO postgres;

--
-- TOC entry 944 (class 1247 OID 18360)
-- Name: document_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.document_type AS ENUM (
    'паспорт',
    'справка',
    'договор',
    'отчет'
);


ALTER TYPE public2.document_type OWNER TO postgres;

--
-- TOC entry 935 (class 1247 OID 18330)
-- Name: employee_role_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.employee_role_type AS ENUM (
    'аналитик',
    'риск-менеджер',
    'коллекшен',
    'руководитель'
);


ALTER TYPE public2.employee_role_type OWNER TO postgres;

--
-- TOC entry 932 (class 1247 OID 18322)
-- Name: limit_period_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.limit_period_type AS ENUM (
    'день',
    'месяц',
    'квартал'
);


ALTER TYPE public2.limit_period_type OWNER TO postgres;

--
-- TOC entry 929 (class 1247 OID 18314)
-- Name: limit_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.limit_type AS ENUM (
    'региональный',
    'отраслевой',
    'продуктовый'
);


ALTER TYPE public2.limit_type OWNER TO postgres;

--
-- TOC entry 908 (class 1247 OID 18256)
-- Name: payment_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.payment_status_type AS ENUM (
    'ожидается',
    'оплачен',
    'просрочен'
);


ALTER TYPE public2.payment_status_type OWNER TO postgres;

--
-- TOC entry 905 (class 1247 OID 18248)
-- Name: payment_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.payment_type AS ENUM (
    'основной',
    'проценты',
    'штраф'
);


ALTER TYPE public2.payment_type OWNER TO postgres;

--
-- TOC entry 896 (class 1247 OID 18218)
-- Name: product_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.product_type AS ENUM (
    'ипотека',
    'потребительский',
    'авто',
    'pos'
);


ALTER TYPE public2.product_type OWNER TO postgres;

--
-- TOC entry 926 (class 1247 OID 18306)
-- Name: reserve_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.reserve_status_type AS ENUM (
    'сформирован',
    'скорректирован',
    'списан'
);


ALTER TYPE public2.reserve_status_type OWNER TO postgres;

--
-- TOC entry 923 (class 1247 OID 18300)
-- Name: reserve_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.reserve_type AS ENUM (
    'индивидуальный',
    'портфельный'
);


ALTER TYPE public2.reserve_type OWNER TO postgres;

--
-- TOC entry 920 (class 1247 OID 18292)
-- Name: restructuring_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.restructuring_status_type AS ENUM (
    'заявка',
    'одобрена',
    'отклонена'
);


ALTER TYPE public2.restructuring_status_type OWNER TO postgres;

--
-- TOC entry 917 (class 1247 OID 18284)
-- Name: restructuring_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.restructuring_type AS ENUM (
    'отсрочка',
    'уменьшение_платежа',
    'пролонгация'
);


ALTER TYPE public2.restructuring_type OWNER TO postgres;

--
-- TOC entry 938 (class 1247 OID 18340)
-- Name: task_priority_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.task_priority_type AS ENUM (
    'низкий',
    'средний',
    'высокий',
    'критичный'
);


ALTER TYPE public2.task_priority_type OWNER TO postgres;

--
-- TOC entry 941 (class 1247 OID 18350)
-- Name: task_status_type; Type: TYPE; Schema: public2; Owner: postgres
--

CREATE TYPE public2.task_status_type AS ENUM (
    'новая',
    'в_работе',
    'завершена',
    'просрочена'
);


ALTER TYPE public2.task_status_type OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 18378)
-- Name: borrowers; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.borrowers (
    borrower_id integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    passport character varying NOT NULL,
    email character varying NOT NULL,
    credit_score numeric NOT NULL,
    income numeric NOT NULL,
    status public2.borrower_status_type NOT NULL,
    registration_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.borrowers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18377)
-- Name: borrowers_borrower_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.borrowers_borrower_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.borrowers_borrower_id_seq OWNER TO postgres;

--
-- TOC entry 5337 (class 0 OID 0)
-- Dependencies: 219
-- Name: borrowers_borrower_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.borrowers_borrower_id_seq OWNED BY public2.borrowers.borrower_id;


--
-- TOC entry 230 (class 1259 OID 18499)
-- Name: credit_agreements; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.credit_agreements (
    agreement_id integer NOT NULL,
    application_id integer NOT NULL,
    borrower_id integer NOT NULL,
    agreement_number character varying NOT NULL,
    amount numeric NOT NULL,
    interest_rate numeric NOT NULL,
    term integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    agreement_status public2.agreement_status_type,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.credit_agreements OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 18498)
-- Name: credit_agreements_agreement_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.credit_agreements_agreement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.credit_agreements_agreement_id_seq OWNER TO postgres;

--
-- TOC entry 5338 (class 0 OID 0)
-- Dependencies: 229
-- Name: credit_agreements_agreement_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.credit_agreements_agreement_id_seq OWNED BY public2.credit_agreements.agreement_id;


--
-- TOC entry 228 (class 1259 OID 18459)
-- Name: credit_applications; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.credit_applications (
    application_id integer NOT NULL,
    borrower_id integer NOT NULL,
    product_id integer NOT NULL,
    employee_id integer NOT NULL,
    limit_id integer NOT NULL,
    amount numeric NOT NULL,
    term integer NOT NULL,
    purpose text NOT NULL,
    application_status public2.application_status_type NOT NULL,
    comment text,
    application_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.credit_applications OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 18458)
-- Name: credit_applications_application_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.credit_applications_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.credit_applications_application_id_seq OWNER TO postgres;

--
-- TOC entry 5339 (class 0 OID 0)
-- Dependencies: 227
-- Name: credit_applications_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.credit_applications_application_id_seq OWNED BY public2.credit_applications.application_id;


--
-- TOC entry 222 (class 1259 OID 18401)
-- Name: credit_products; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.credit_products (
    product_id integer NOT NULL,
    product_name character varying NOT NULL,
    product_type public2.product_type NOT NULL,
    min_amount numeric NOT NULL,
    max_amount numeric NOT NULL,
    interest_rate numeric NOT NULL,
    min_term integer NOT NULL,
    max_term integer NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.credit_products OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18400)
-- Name: credit_products_product_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.credit_products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.credit_products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5340 (class 0 OID 0)
-- Dependencies: 221
-- Name: credit_products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.credit_products_product_id_seq OWNED BY public2.credit_products.product_id;


--
-- TOC entry 234 (class 1259 OID 18553)
-- Name: delays; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.delays (
    delay_id integer NOT NULL,
    agreement_id integer NOT NULL,
    responsible_manager_id integer NOT NULL,
    amount numeric NOT NULL,
    days_delayed integer NOT NULL,
    delay_stage public2.delay_stage_type NOT NULL,
    reason text,
    occurrence_date date NOT NULL,
    delay_status public2.delay_status_type NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.delays OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 18552)
-- Name: delays_delay_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.delays_delay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.delays_delay_id_seq OWNER TO postgres;

--
-- TOC entry 5341 (class 0 OID 0)
-- Dependencies: 233
-- Name: delays_delay_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.delays_delay_id_seq OWNED BY public2.delays.delay_id;


--
-- TOC entry 244 (class 1259 OID 18686)
-- Name: document_access; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.document_access (
    access_id integer NOT NULL,
    document_id integer NOT NULL,
    employee_id integer NOT NULL,
    access_level public2.access_level_type NOT NULL,
    grant_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.document_access OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 18685)
-- Name: document_access_access_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.document_access_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.document_access_access_id_seq OWNER TO postgres;

--
-- TOC entry 5342 (class 0 OID 0)
-- Dependencies: 243
-- Name: document_access_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.document_access_access_id_seq OWNED BY public2.document_access.access_id;


--
-- TOC entry 252 (class 1259 OID 18782)
-- Name: document_agreements; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.document_agreements (
    binding_id integer NOT NULL,
    document_id integer NOT NULL,
    agreement_id integer NOT NULL,
    binding_type character varying,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.document_agreements OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 18781)
-- Name: document_agreements_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.document_agreements_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.document_agreements_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5343 (class 0 OID 0)
-- Dependencies: 251
-- Name: document_agreements_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.document_agreements_binding_id_seq OWNED BY public2.document_agreements.binding_id;


--
-- TOC entry 250 (class 1259 OID 18758)
-- Name: document_applications; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.document_applications (
    binding_id integer NOT NULL,
    document_id integer NOT NULL,
    application_id integer NOT NULL,
    binding_type character varying,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.document_applications OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 18757)
-- Name: document_applications_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.document_applications_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.document_applications_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5344 (class 0 OID 0)
-- Dependencies: 249
-- Name: document_applications_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.document_applications_binding_id_seq OWNED BY public2.document_applications.binding_id;


--
-- TOC entry 254 (class 1259 OID 18806)
-- Name: document_borrowers; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.document_borrowers (
    binding_id integer NOT NULL,
    document_id integer NOT NULL,
    borrower_id integer NOT NULL,
    binding_type character varying,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.document_borrowers OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 18805)
-- Name: document_borrowers_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.document_borrowers_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.document_borrowers_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5345 (class 0 OID 0)
-- Dependencies: 253
-- Name: document_borrowers_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.document_borrowers_binding_id_seq OWNED BY public2.document_borrowers.binding_id;


--
-- TOC entry 242 (class 1259 OID 18665)
-- Name: documents; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.documents (
    document_id integer NOT NULL,
    author_id integer NOT NULL,
    document_name character varying NOT NULL,
    document_type public2.document_type NOT NULL,
    file_path character varying NOT NULL,
    upload_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.documents OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 18664)
-- Name: documents_document_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.documents_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.documents_document_id_seq OWNER TO postgres;

--
-- TOC entry 5346 (class 0 OID 0)
-- Dependencies: 241
-- Name: documents_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.documents_document_id_seq OWNED BY public2.documents.document_id;


--
-- TOC entry 224 (class 1259 OID 18420)
-- Name: employees; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.employees (
    employee_id integer NOT NULL,
    login character varying NOT NULL,
    full_name character varying NOT NULL,
    role public2.employee_role_type NOT NULL,
    department character varying NOT NULL,
    email character varying NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.employees OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18419)
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.employees_employee_id_seq OWNER TO postgres;

--
-- TOC entry 5347 (class 0 OID 0)
-- Dependencies: 223
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.employees_employee_id_seq OWNED BY public2.employees.employee_id;


--
-- TOC entry 248 (class 1259 OID 18733)
-- Name: limit_products; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.limit_products (
    relation_id integer NOT NULL,
    limit_id integer NOT NULL,
    product_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    notes text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.limit_products OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 18732)
-- Name: limit_products_relation_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.limit_products_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.limit_products_relation_id_seq OWNER TO postgres;

--
-- TOC entry 5348 (class 0 OID 0)
-- Dependencies: 247
-- Name: limit_products_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.limit_products_relation_id_seq OWNED BY public2.limit_products.relation_id;


--
-- TOC entry 226 (class 1259 OID 18441)
-- Name: limits; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.limits (
    limit_id integer NOT NULL,
    limit_type public2.limit_type NOT NULL,
    limit_value numeric NOT NULL,
    currency character varying NOT NULL,
    period public2.limit_period_type NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.limits OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 18440)
-- Name: limits_limit_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.limits_limit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.limits_limit_id_seq OWNER TO postgres;

--
-- TOC entry 5349 (class 0 OID 0)
-- Dependencies: 225
-- Name: limits_limit_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.limits_limit_id_seq OWNED BY public2.limits.limit_id;


--
-- TOC entry 232 (class 1259 OID 18532)
-- Name: payments; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.payments (
    payment_id integer NOT NULL,
    agreement_id integer NOT NULL,
    planned_date date NOT NULL,
    actual_date date,
    amount numeric NOT NULL,
    payment_type public2.payment_type NOT NULL,
    payment_status public2.payment_status_type NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.payments OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 18531)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.payments_payment_id_seq OWNER TO postgres;

--
-- TOC entry 5350 (class 0 OID 0)
-- Dependencies: 231
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.payments_payment_id_seq OWNED BY public2.payments.payment_id;


--
-- TOC entry 238 (class 1259 OID 18610)
-- Name: reserves; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.reserves (
    reserve_id integer NOT NULL,
    agreement_id integer NOT NULL,
    employee_id integer NOT NULL,
    amount numeric NOT NULL,
    reserve_type public2.reserve_type NOT NULL,
    calculation_method character varying NOT NULL,
    calculation_date date NOT NULL,
    reserve_status public2.reserve_status_type NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.reserves OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 18609)
-- Name: reserves_reserve_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.reserves_reserve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.reserves_reserve_id_seq OWNER TO postgres;

--
-- TOC entry 5351 (class 0 OID 0)
-- Dependencies: 237
-- Name: reserves_reserve_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.reserves_reserve_id_seq OWNED BY public2.reserves.reserve_id;


--
-- TOC entry 236 (class 1259 OID 18581)
-- Name: restructurings; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.restructurings (
    restructuring_id integer NOT NULL,
    agreement_id integer NOT NULL,
    employee_id integer NOT NULL,
    restructuring_type public2.restructuring_type NOT NULL,
    old_rate numeric NOT NULL,
    new_rate numeric NOT NULL,
    new_term integer NOT NULL,
    restructuring_date date NOT NULL,
    restructuring_status public2.restructuring_status_type NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.restructurings OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 18580)
-- Name: restructurings_restructuring_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.restructurings_restructuring_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.restructurings_restructuring_id_seq OWNER TO postgres;

--
-- TOC entry 5352 (class 0 OID 0)
-- Dependencies: 235
-- Name: restructurings_restructuring_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.restructurings_restructuring_id_seq OWNED BY public2.restructurings.restructuring_id;


--
-- TOC entry 258 (class 1259 OID 18852)
-- Name: task_agreements; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.task_agreements (
    binding_id integer NOT NULL,
    task_id integer NOT NULL,
    agreement_id integer NOT NULL,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.task_agreements OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 18851)
-- Name: task_agreements_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.task_agreements_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.task_agreements_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5353 (class 0 OID 0)
-- Dependencies: 257
-- Name: task_agreements_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.task_agreements_binding_id_seq OWNED BY public2.task_agreements.binding_id;


--
-- TOC entry 256 (class 1259 OID 18830)
-- Name: task_applications; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.task_applications (
    binding_id integer NOT NULL,
    task_id integer NOT NULL,
    application_id integer NOT NULL,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.task_applications OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 18829)
-- Name: task_applications_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.task_applications_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.task_applications_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5354 (class 0 OID 0)
-- Dependencies: 255
-- Name: task_applications_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.task_applications_binding_id_seq OWNED BY public2.task_applications.binding_id;


--
-- TOC entry 246 (class 1259 OID 18709)
-- Name: task_comments; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.task_comments (
    comment_id integer NOT NULL,
    task_id integer NOT NULL,
    author_id integer NOT NULL,
    comment_text text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.task_comments OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 18708)
-- Name: task_comments_comment_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.task_comments_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.task_comments_comment_id_seq OWNER TO postgres;

--
-- TOC entry 5355 (class 0 OID 0)
-- Dependencies: 245
-- Name: task_comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.task_comments_comment_id_seq OWNED BY public2.task_comments.comment_id;


--
-- TOC entry 260 (class 1259 OID 18874)
-- Name: task_delays; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.task_delays (
    binding_id integer NOT NULL,
    task_id integer NOT NULL,
    delay_id integer NOT NULL,
    binding_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.task_delays OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 18873)
-- Name: task_delays_binding_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.task_delays_binding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.task_delays_binding_id_seq OWNER TO postgres;

--
-- TOC entry 5356 (class 0 OID 0)
-- Dependencies: 259
-- Name: task_delays_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.task_delays_binding_id_seq OWNED BY public2.task_delays.binding_id;


--
-- TOC entry 240 (class 1259 OID 18638)
-- Name: tasks; Type: TABLE; Schema: public2; Owner: postgres
--

CREATE TABLE public2.tasks (
    task_id integer NOT NULL,
    executor_id integer NOT NULL,
    creator_id integer NOT NULL,
    description text NOT NULL,
    deadline date NOT NULL,
    priority public2.task_priority_type NOT NULL,
    task_status public2.task_status_type NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public2.tasks OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 18637)
-- Name: tasks_task_id_seq; Type: SEQUENCE; Schema: public2; Owner: postgres
--

CREATE SEQUENCE public2.tasks_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public2.tasks_task_id_seq OWNER TO postgres;

--
-- TOC entry 5357 (class 0 OID 0)
-- Dependencies: 239
-- Name: tasks_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public2; Owner: postgres
--

ALTER SEQUENCE public2.tasks_task_id_seq OWNED BY public2.tasks.task_id;


--
-- TOC entry 5013 (class 2604 OID 18381)
-- Name: borrowers borrower_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.borrowers ALTER COLUMN borrower_id SET DEFAULT nextval('public2.borrowers_borrower_id_seq'::regclass);


--
-- TOC entry 5023 (class 2604 OID 18502)
-- Name: credit_agreements agreement_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements ALTER COLUMN agreement_id SET DEFAULT nextval('public2.credit_agreements_agreement_id_seq'::regclass);


--
-- TOC entry 5021 (class 2604 OID 18462)
-- Name: credit_applications application_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications ALTER COLUMN application_id SET DEFAULT nextval('public2.credit_applications_application_id_seq'::regclass);


--
-- TOC entry 5015 (class 2604 OID 18404)
-- Name: credit_products product_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_products ALTER COLUMN product_id SET DEFAULT nextval('public2.credit_products_product_id_seq'::regclass);


--
-- TOC entry 5027 (class 2604 OID 18556)
-- Name: delays delay_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.delays ALTER COLUMN delay_id SET DEFAULT nextval('public2.delays_delay_id_seq'::regclass);


--
-- TOC entry 5037 (class 2604 OID 18689)
-- Name: document_access access_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_access ALTER COLUMN access_id SET DEFAULT nextval('public2.document_access_access_id_seq'::regclass);


--
-- TOC entry 5045 (class 2604 OID 18785)
-- Name: document_agreements binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_agreements ALTER COLUMN binding_id SET DEFAULT nextval('public2.document_agreements_binding_id_seq'::regclass);


--
-- TOC entry 5043 (class 2604 OID 18761)
-- Name: document_applications binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_applications ALTER COLUMN binding_id SET DEFAULT nextval('public2.document_applications_binding_id_seq'::regclass);


--
-- TOC entry 5047 (class 2604 OID 18809)
-- Name: document_borrowers binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_borrowers ALTER COLUMN binding_id SET DEFAULT nextval('public2.document_borrowers_binding_id_seq'::regclass);


--
-- TOC entry 5035 (class 2604 OID 18668)
-- Name: documents document_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.documents ALTER COLUMN document_id SET DEFAULT nextval('public2.documents_document_id_seq'::regclass);


--
-- TOC entry 5017 (class 2604 OID 18423)
-- Name: employees employee_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.employees ALTER COLUMN employee_id SET DEFAULT nextval('public2.employees_employee_id_seq'::regclass);


--
-- TOC entry 5041 (class 2604 OID 18736)
-- Name: limit_products relation_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limit_products ALTER COLUMN relation_id SET DEFAULT nextval('public2.limit_products_relation_id_seq'::regclass);


--
-- TOC entry 5019 (class 2604 OID 18444)
-- Name: limits limit_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limits ALTER COLUMN limit_id SET DEFAULT nextval('public2.limits_limit_id_seq'::regclass);


--
-- TOC entry 5025 (class 2604 OID 18535)
-- Name: payments payment_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.payments ALTER COLUMN payment_id SET DEFAULT nextval('public2.payments_payment_id_seq'::regclass);


--
-- TOC entry 5031 (class 2604 OID 18613)
-- Name: reserves reserve_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.reserves ALTER COLUMN reserve_id SET DEFAULT nextval('public2.reserves_reserve_id_seq'::regclass);


--
-- TOC entry 5029 (class 2604 OID 18584)
-- Name: restructurings restructuring_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.restructurings ALTER COLUMN restructuring_id SET DEFAULT nextval('public2.restructurings_restructuring_id_seq'::regclass);


--
-- TOC entry 5051 (class 2604 OID 18855)
-- Name: task_agreements binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_agreements ALTER COLUMN binding_id SET DEFAULT nextval('public2.task_agreements_binding_id_seq'::regclass);


--
-- TOC entry 5049 (class 2604 OID 18833)
-- Name: task_applications binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_applications ALTER COLUMN binding_id SET DEFAULT nextval('public2.task_applications_binding_id_seq'::regclass);


--
-- TOC entry 5039 (class 2604 OID 18712)
-- Name: task_comments comment_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_comments ALTER COLUMN comment_id SET DEFAULT nextval('public2.task_comments_comment_id_seq'::regclass);


--
-- TOC entry 5053 (class 2604 OID 18877)
-- Name: task_delays binding_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_delays ALTER COLUMN binding_id SET DEFAULT nextval('public2.task_delays_binding_id_seq'::regclass);


--
-- TOC entry 5033 (class 2604 OID 18641)
-- Name: tasks task_id; Type: DEFAULT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.tasks ALTER COLUMN task_id SET DEFAULT nextval('public2.tasks_task_id_seq'::regclass);


--
-- TOC entry 5291 (class 0 OID 18378)
-- Dependencies: 220
-- Data for Name: borrowers; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.borrowers (borrower_id, full_name, phone, passport, email, credit_score, income, status, registration_date, created_at) FROM stdin;
\.


--
-- TOC entry 5301 (class 0 OID 18499)
-- Dependencies: 230
-- Data for Name: credit_agreements; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.credit_agreements (agreement_id, application_id, borrower_id, agreement_number, amount, interest_rate, term, start_date, end_date, agreement_status, created_at) FROM stdin;
\.


--
-- TOC entry 5299 (class 0 OID 18459)
-- Dependencies: 228
-- Data for Name: credit_applications; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.credit_applications (application_id, borrower_id, product_id, employee_id, limit_id, amount, term, purpose, application_status, comment, application_date, created_at) FROM stdin;
\.


--
-- TOC entry 5293 (class 0 OID 18401)
-- Dependencies: 222
-- Data for Name: credit_products; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.credit_products (product_id, product_name, product_type, min_amount, max_amount, interest_rate, min_term, max_term, is_active, created_at) FROM stdin;
\.


--
-- TOC entry 5305 (class 0 OID 18553)
-- Dependencies: 234
-- Data for Name: delays; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.delays (delay_id, agreement_id, responsible_manager_id, amount, days_delayed, delay_stage, reason, occurrence_date, delay_status, created_at) FROM stdin;
\.


--
-- TOC entry 5315 (class 0 OID 18686)
-- Dependencies: 244
-- Data for Name: document_access; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.document_access (access_id, document_id, employee_id, access_level, grant_date, created_at) FROM stdin;
\.


--
-- TOC entry 5323 (class 0 OID 18782)
-- Dependencies: 252
-- Data for Name: document_agreements; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.document_agreements (binding_id, document_id, agreement_id, binding_type, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5321 (class 0 OID 18758)
-- Dependencies: 250
-- Data for Name: document_applications; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.document_applications (binding_id, document_id, application_id, binding_type, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5325 (class 0 OID 18806)
-- Dependencies: 254
-- Data for Name: document_borrowers; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.document_borrowers (binding_id, document_id, borrower_id, binding_type, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5313 (class 0 OID 18665)
-- Dependencies: 242
-- Data for Name: documents; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.documents (document_id, author_id, document_name, document_type, file_path, upload_date, created_at) FROM stdin;
\.


--
-- TOC entry 5295 (class 0 OID 18420)
-- Dependencies: 224
-- Data for Name: employees; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.employees (employee_id, login, full_name, role, department, email, is_active, created_at) FROM stdin;
\.


--
-- TOC entry 5319 (class 0 OID 18733)
-- Dependencies: 248
-- Data for Name: limit_products; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.limit_products (relation_id, limit_id, product_id, start_date, end_date, notes, created_at) FROM stdin;
\.


--
-- TOC entry 5297 (class 0 OID 18441)
-- Dependencies: 226
-- Data for Name: limits; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.limits (limit_id, limit_type, limit_value, currency, period, start_date, end_date, is_active, created_at) FROM stdin;
\.


--
-- TOC entry 5303 (class 0 OID 18532)
-- Dependencies: 232
-- Data for Name: payments; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.payments (payment_id, agreement_id, planned_date, actual_date, amount, payment_type, payment_status, created_at) FROM stdin;
\.


--
-- TOC entry 5309 (class 0 OID 18610)
-- Dependencies: 238
-- Data for Name: reserves; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.reserves (reserve_id, agreement_id, employee_id, amount, reserve_type, calculation_method, calculation_date, reserve_status, created_at) FROM stdin;
\.


--
-- TOC entry 5307 (class 0 OID 18581)
-- Dependencies: 236
-- Data for Name: restructurings; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.restructurings (restructuring_id, agreement_id, employee_id, restructuring_type, old_rate, new_rate, new_term, restructuring_date, restructuring_status, created_at) FROM stdin;
\.


--
-- TOC entry 5329 (class 0 OID 18852)
-- Dependencies: 258
-- Data for Name: task_agreements; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.task_agreements (binding_id, task_id, agreement_id, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5327 (class 0 OID 18830)
-- Dependencies: 256
-- Data for Name: task_applications; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.task_applications (binding_id, task_id, application_id, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5317 (class 0 OID 18709)
-- Dependencies: 246
-- Data for Name: task_comments; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.task_comments (comment_id, task_id, author_id, comment_text, created_at) FROM stdin;
\.


--
-- TOC entry 5331 (class 0 OID 18874)
-- Dependencies: 260
-- Data for Name: task_delays; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.task_delays (binding_id, task_id, delay_id, binding_date, created_at) FROM stdin;
\.


--
-- TOC entry 5311 (class 0 OID 18638)
-- Dependencies: 240
-- Data for Name: tasks; Type: TABLE DATA; Schema: public2; Owner: postgres
--

COPY public2.tasks (task_id, executor_id, creator_id, description, deadline, priority, task_status, created_at) FROM stdin;
\.


--
-- TOC entry 5358 (class 0 OID 0)
-- Dependencies: 219
-- Name: borrowers_borrower_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.borrowers_borrower_id_seq', 1, false);


--
-- TOC entry 5359 (class 0 OID 0)
-- Dependencies: 229
-- Name: credit_agreements_agreement_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.credit_agreements_agreement_id_seq', 1, false);


--
-- TOC entry 5360 (class 0 OID 0)
-- Dependencies: 227
-- Name: credit_applications_application_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.credit_applications_application_id_seq', 1, false);


--
-- TOC entry 5361 (class 0 OID 0)
-- Dependencies: 221
-- Name: credit_products_product_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.credit_products_product_id_seq', 1, false);


--
-- TOC entry 5362 (class 0 OID 0)
-- Dependencies: 233
-- Name: delays_delay_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.delays_delay_id_seq', 1, false);


--
-- TOC entry 5363 (class 0 OID 0)
-- Dependencies: 243
-- Name: document_access_access_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.document_access_access_id_seq', 1, false);


--
-- TOC entry 5364 (class 0 OID 0)
-- Dependencies: 251
-- Name: document_agreements_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.document_agreements_binding_id_seq', 1, false);


--
-- TOC entry 5365 (class 0 OID 0)
-- Dependencies: 249
-- Name: document_applications_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.document_applications_binding_id_seq', 1, false);


--
-- TOC entry 5366 (class 0 OID 0)
-- Dependencies: 253
-- Name: document_borrowers_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.document_borrowers_binding_id_seq', 1, false);


--
-- TOC entry 5367 (class 0 OID 0)
-- Dependencies: 241
-- Name: documents_document_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.documents_document_id_seq', 1, false);


--
-- TOC entry 5368 (class 0 OID 0)
-- Dependencies: 223
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.employees_employee_id_seq', 1, false);


--
-- TOC entry 5369 (class 0 OID 0)
-- Dependencies: 247
-- Name: limit_products_relation_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.limit_products_relation_id_seq', 1, false);


--
-- TOC entry 5370 (class 0 OID 0)
-- Dependencies: 225
-- Name: limits_limit_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.limits_limit_id_seq', 1, false);


--
-- TOC entry 5371 (class 0 OID 0)
-- Dependencies: 231
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.payments_payment_id_seq', 1, false);


--
-- TOC entry 5372 (class 0 OID 0)
-- Dependencies: 237
-- Name: reserves_reserve_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.reserves_reserve_id_seq', 1, false);


--
-- TOC entry 5373 (class 0 OID 0)
-- Dependencies: 235
-- Name: restructurings_restructuring_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.restructurings_restructuring_id_seq', 1, false);


--
-- TOC entry 5374 (class 0 OID 0)
-- Dependencies: 257
-- Name: task_agreements_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.task_agreements_binding_id_seq', 1, false);


--
-- TOC entry 5375 (class 0 OID 0)
-- Dependencies: 255
-- Name: task_applications_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.task_applications_binding_id_seq', 1, false);


--
-- TOC entry 5376 (class 0 OID 0)
-- Dependencies: 245
-- Name: task_comments_comment_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.task_comments_comment_id_seq', 1, false);


--
-- TOC entry 5377 (class 0 OID 0)
-- Dependencies: 259
-- Name: task_delays_binding_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.task_delays_binding_id_seq', 1, false);


--
-- TOC entry 5378 (class 0 OID 0)
-- Dependencies: 239
-- Name: tasks_task_id_seq; Type: SEQUENCE SET; Schema: public2; Owner: postgres
--

SELECT pg_catalog.setval('public2.tasks_task_id_seq', 1, false);


--
-- TOC entry 5056 (class 2606 OID 18399)
-- Name: borrowers borrowers_email_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.borrowers
    ADD CONSTRAINT borrowers_email_key UNIQUE (email);


--
-- TOC entry 5058 (class 2606 OID 18397)
-- Name: borrowers borrowers_passport_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.borrowers
    ADD CONSTRAINT borrowers_passport_key UNIQUE (passport);


--
-- TOC entry 5060 (class 2606 OID 18395)
-- Name: borrowers borrowers_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.borrowers
    ADD CONSTRAINT borrowers_pkey PRIMARY KEY (borrower_id);


--
-- TOC entry 5074 (class 2606 OID 18520)
-- Name: credit_agreements credit_agreements_agreement_number_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements
    ADD CONSTRAINT credit_agreements_agreement_number_key UNIQUE (agreement_number);


--
-- TOC entry 5076 (class 2606 OID 18518)
-- Name: credit_agreements credit_agreements_application_id_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements
    ADD CONSTRAINT credit_agreements_application_id_key UNIQUE (application_id);


--
-- TOC entry 5078 (class 2606 OID 18516)
-- Name: credit_agreements credit_agreements_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements
    ADD CONSTRAINT credit_agreements_pkey PRIMARY KEY (agreement_id);


--
-- TOC entry 5072 (class 2606 OID 18477)
-- Name: credit_applications credit_applications_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications
    ADD CONSTRAINT credit_applications_pkey PRIMARY KEY (application_id);


--
-- TOC entry 5062 (class 2606 OID 18418)
-- Name: credit_products credit_products_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_products
    ADD CONSTRAINT credit_products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 5082 (class 2606 OID 18569)
-- Name: delays delays_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.delays
    ADD CONSTRAINT delays_pkey PRIMARY KEY (delay_id);


--
-- TOC entry 5092 (class 2606 OID 18697)
-- Name: document_access document_access_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_access
    ADD CONSTRAINT document_access_pkey PRIMARY KEY (access_id);


--
-- TOC entry 5100 (class 2606 OID 18794)
-- Name: document_agreements document_agreements_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_agreements
    ADD CONSTRAINT document_agreements_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5098 (class 2606 OID 18770)
-- Name: document_applications document_applications_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_applications
    ADD CONSTRAINT document_applications_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5102 (class 2606 OID 18818)
-- Name: document_borrowers document_borrowers_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_borrowers
    ADD CONSTRAINT document_borrowers_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5090 (class 2606 OID 18679)
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (document_id);


--
-- TOC entry 5064 (class 2606 OID 18439)
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- TOC entry 5066 (class 2606 OID 18437)
-- Name: employees employees_login_key; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.employees
    ADD CONSTRAINT employees_login_key UNIQUE (login);


--
-- TOC entry 5068 (class 2606 OID 18435)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 5096 (class 2606 OID 18746)
-- Name: limit_products limit_products_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limit_products
    ADD CONSTRAINT limit_products_pkey PRIMARY KEY (relation_id);


--
-- TOC entry 5070 (class 2606 OID 18457)
-- Name: limits limits_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limits
    ADD CONSTRAINT limits_pkey PRIMARY KEY (limit_id);


--
-- TOC entry 5080 (class 2606 OID 18546)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 5086 (class 2606 OID 18626)
-- Name: reserves reserves_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.reserves
    ADD CONSTRAINT reserves_pkey PRIMARY KEY (reserve_id);


--
-- TOC entry 5084 (class 2606 OID 18598)
-- Name: restructurings restructurings_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.restructurings
    ADD CONSTRAINT restructurings_pkey PRIMARY KEY (restructuring_id);


--
-- TOC entry 5106 (class 2606 OID 18862)
-- Name: task_agreements task_agreements_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_agreements
    ADD CONSTRAINT task_agreements_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5104 (class 2606 OID 18840)
-- Name: task_applications task_applications_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_applications
    ADD CONSTRAINT task_applications_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5094 (class 2606 OID 18721)
-- Name: task_comments task_comments_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_comments
    ADD CONSTRAINT task_comments_pkey PRIMARY KEY (comment_id);


--
-- TOC entry 5108 (class 2606 OID 18884)
-- Name: task_delays task_delays_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_delays
    ADD CONSTRAINT task_delays_pkey PRIMARY KEY (binding_id);


--
-- TOC entry 5088 (class 2606 OID 18653)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (task_id);


--
-- TOC entry 5113 (class 2606 OID 18521)
-- Name: credit_agreements credit_agreements_application_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements
    ADD CONSTRAINT credit_agreements_application_id_fkey FOREIGN KEY (application_id) REFERENCES public2.credit_applications(application_id);


--
-- TOC entry 5114 (class 2606 OID 18526)
-- Name: credit_agreements credit_agreements_borrower_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_agreements
    ADD CONSTRAINT credit_agreements_borrower_id_fkey FOREIGN KEY (borrower_id) REFERENCES public2.borrowers(borrower_id);


--
-- TOC entry 5109 (class 2606 OID 18478)
-- Name: credit_applications credit_applications_borrower_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications
    ADD CONSTRAINT credit_applications_borrower_id_fkey FOREIGN KEY (borrower_id) REFERENCES public2.borrowers(borrower_id);


--
-- TOC entry 5110 (class 2606 OID 18488)
-- Name: credit_applications credit_applications_employee_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications
    ADD CONSTRAINT credit_applications_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5111 (class 2606 OID 18493)
-- Name: credit_applications credit_applications_limit_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications
    ADD CONSTRAINT credit_applications_limit_id_fkey FOREIGN KEY (limit_id) REFERENCES public2.limits(limit_id);


--
-- TOC entry 5112 (class 2606 OID 18483)
-- Name: credit_applications credit_applications_product_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.credit_applications
    ADD CONSTRAINT credit_applications_product_id_fkey FOREIGN KEY (product_id) REFERENCES public2.credit_products(product_id);


--
-- TOC entry 5116 (class 2606 OID 18570)
-- Name: delays delays_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.delays
    ADD CONSTRAINT delays_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5117 (class 2606 OID 18575)
-- Name: delays delays_responsible_manager_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.delays
    ADD CONSTRAINT delays_responsible_manager_id_fkey FOREIGN KEY (responsible_manager_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5125 (class 2606 OID 18698)
-- Name: document_access document_access_document_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_access
    ADD CONSTRAINT document_access_document_id_fkey FOREIGN KEY (document_id) REFERENCES public2.documents(document_id);


--
-- TOC entry 5126 (class 2606 OID 18703)
-- Name: document_access document_access_employee_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_access
    ADD CONSTRAINT document_access_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5133 (class 2606 OID 18800)
-- Name: document_agreements document_agreements_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_agreements
    ADD CONSTRAINT document_agreements_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5134 (class 2606 OID 18795)
-- Name: document_agreements document_agreements_document_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_agreements
    ADD CONSTRAINT document_agreements_document_id_fkey FOREIGN KEY (document_id) REFERENCES public2.documents(document_id);


--
-- TOC entry 5131 (class 2606 OID 18776)
-- Name: document_applications document_applications_application_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_applications
    ADD CONSTRAINT document_applications_application_id_fkey FOREIGN KEY (application_id) REFERENCES public2.credit_applications(application_id);


--
-- TOC entry 5132 (class 2606 OID 18771)
-- Name: document_applications document_applications_document_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_applications
    ADD CONSTRAINT document_applications_document_id_fkey FOREIGN KEY (document_id) REFERENCES public2.documents(document_id);


--
-- TOC entry 5135 (class 2606 OID 18824)
-- Name: document_borrowers document_borrowers_borrower_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_borrowers
    ADD CONSTRAINT document_borrowers_borrower_id_fkey FOREIGN KEY (borrower_id) REFERENCES public2.borrowers(borrower_id);


--
-- TOC entry 5136 (class 2606 OID 18819)
-- Name: document_borrowers document_borrowers_document_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.document_borrowers
    ADD CONSTRAINT document_borrowers_document_id_fkey FOREIGN KEY (document_id) REFERENCES public2.documents(document_id);


--
-- TOC entry 5124 (class 2606 OID 18680)
-- Name: documents documents_author_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.documents
    ADD CONSTRAINT documents_author_id_fkey FOREIGN KEY (author_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5129 (class 2606 OID 18747)
-- Name: limit_products limit_products_limit_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limit_products
    ADD CONSTRAINT limit_products_limit_id_fkey FOREIGN KEY (limit_id) REFERENCES public2.limits(limit_id);


--
-- TOC entry 5130 (class 2606 OID 18752)
-- Name: limit_products limit_products_product_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.limit_products
    ADD CONSTRAINT limit_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public2.credit_products(product_id);


--
-- TOC entry 5115 (class 2606 OID 18547)
-- Name: payments payments_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.payments
    ADD CONSTRAINT payments_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5120 (class 2606 OID 18627)
-- Name: reserves reserves_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.reserves
    ADD CONSTRAINT reserves_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5121 (class 2606 OID 18632)
-- Name: reserves reserves_employee_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.reserves
    ADD CONSTRAINT reserves_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5118 (class 2606 OID 18599)
-- Name: restructurings restructurings_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.restructurings
    ADD CONSTRAINT restructurings_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5119 (class 2606 OID 18604)
-- Name: restructurings restructurings_employee_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.restructurings
    ADD CONSTRAINT restructurings_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5139 (class 2606 OID 18868)
-- Name: task_agreements task_agreements_agreement_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_agreements
    ADD CONSTRAINT task_agreements_agreement_id_fkey FOREIGN KEY (agreement_id) REFERENCES public2.credit_agreements(agreement_id);


--
-- TOC entry 5140 (class 2606 OID 18863)
-- Name: task_agreements task_agreements_task_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_agreements
    ADD CONSTRAINT task_agreements_task_id_fkey FOREIGN KEY (task_id) REFERENCES public2.tasks(task_id);


--
-- TOC entry 5137 (class 2606 OID 18846)
-- Name: task_applications task_applications_application_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_applications
    ADD CONSTRAINT task_applications_application_id_fkey FOREIGN KEY (application_id) REFERENCES public2.credit_applications(application_id);


--
-- TOC entry 5138 (class 2606 OID 18841)
-- Name: task_applications task_applications_task_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_applications
    ADD CONSTRAINT task_applications_task_id_fkey FOREIGN KEY (task_id) REFERENCES public2.tasks(task_id);


--
-- TOC entry 5127 (class 2606 OID 18727)
-- Name: task_comments task_comments_author_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_comments
    ADD CONSTRAINT task_comments_author_id_fkey FOREIGN KEY (author_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5128 (class 2606 OID 18722)
-- Name: task_comments task_comments_task_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_comments
    ADD CONSTRAINT task_comments_task_id_fkey FOREIGN KEY (task_id) REFERENCES public2.tasks(task_id);


--
-- TOC entry 5141 (class 2606 OID 18890)
-- Name: task_delays task_delays_delay_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_delays
    ADD CONSTRAINT task_delays_delay_id_fkey FOREIGN KEY (delay_id) REFERENCES public2.delays(delay_id);


--
-- TOC entry 5142 (class 2606 OID 18885)
-- Name: task_delays task_delays_task_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.task_delays
    ADD CONSTRAINT task_delays_task_id_fkey FOREIGN KEY (task_id) REFERENCES public2.tasks(task_id);


--
-- TOC entry 5122 (class 2606 OID 18659)
-- Name: tasks tasks_creator_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.tasks
    ADD CONSTRAINT tasks_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES public2.employees(employee_id);


--
-- TOC entry 5123 (class 2606 OID 18654)
-- Name: tasks tasks_executor_id_fkey; Type: FK CONSTRAINT; Schema: public2; Owner: postgres
--

ALTER TABLE ONLY public2.tasks
    ADD CONSTRAINT tasks_executor_id_fkey FOREIGN KEY (executor_id) REFERENCES public2.employees(employee_id);


-- Completed on 2026-06-23 04:46:42

--
-- PostgreSQL database dump complete
--

\unrestrict BGjQ6uDOTNpkOwr5T5GK8kWO7WIOwbcXYtIh9Rhb4GEXsMhL8CVluBpNGUdRiFg

