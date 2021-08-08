--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "Ryowu";
ALTER ROLE "Ryowu" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE ryowu;
ALTER ROLE ryowu WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5aa90cb49927b38c83ed305bb177a4ffd';
CREATE ROLE ubuntu;
ALTER ROLE ubuntu WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "YfcaseDjango" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: YfcaseDjango; Type: DATABASE; Schema: -; Owner: Ryowu
--

CREATE DATABASE "YfcaseDjango" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Traditional)_Taiwan.950' LC_CTYPE = 'Chinese (Traditional)_Taiwan.950';


ALTER DATABASE "YfcaseDjango" OWNER TO "Ryowu";

\connect "YfcaseDjango"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ryowu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ryowu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ryowu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ryowu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ryowu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ryowu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ryowu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ryowu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ryowu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ryowu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ryowu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ryowu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ryowu;

--
-- Name: users_customuser; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.users_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    "userFirstName" character varying(50),
    "userLastName" character varying(50),
    "userFullName" character varying(50),
    "userWorkArea" character varying(50),
    "userRole" integer NOT NULL,
    "userIdentityCard" character varying(50),
    "userBirthday" date,
    "userLocalPhone" character varying(50),
    "userMobilePhone" character varying(50),
    "userCountry" character varying(50),
    "userTownship" character varying(50),
    "userVillage" character varying(50),
    "userNeighbor" character varying(50),
    "userStreet" character varying(50),
    "userSection" character varying(50),
    "userLane" character varying(50),
    "userAlley" character varying(50),
    "userNumber" character varying(50),
    "userFloor" character varying(50),
    "userPublicOrPrivate" character varying(50),
    CONSTRAINT "users_customuser_userRole_check" CHECK (("userRole" >= 0))
);


ALTER TABLE public.users_customuser OWNER TO ryowu;

--
-- Name: users_customuser_groups; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.users_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_customuser_groups OWNER TO ryowu;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.users_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_groups_id_seq OWNER TO ryowu;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.users_customuser_groups_id_seq OWNED BY public.users_customuser_groups.id;


--
-- Name: users_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.users_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_id_seq OWNER TO ryowu;

--
-- Name: users_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.users_customuser_id_seq OWNED BY public.users_customuser.id;


--
-- Name: users_customuser_user_permissions; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.users_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_customuser_user_permissions OWNER TO ryowu;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.users_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_user_permissions_id_seq OWNER TO ryowu;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.users_customuser_user_permissions_id_seq OWNED BY public.users_customuser_user_permissions.id;


--
-- Name: yfcase_city; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcase_city (
    id bigint NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.yfcase_city OWNER TO ryowu;

--
-- Name: yfcase_city_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcase_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcase_city_id_seq OWNER TO ryowu;

--
-- Name: yfcase_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcase_city_id_seq OWNED BY public.yfcase_city.id;


--
-- Name: yfcase_township; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcase_township (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    zip_code character varying(30) NOT NULL,
    district_court character varying(30) NOT NULL,
    land_office character varying(30) NOT NULL,
    finance_and_tax_bureau character varying(30) NOT NULL,
    police_station character varying(30) NOT NULL,
    irs character varying(30) NOT NULL,
    home_office character varying(30) NOT NULL,
    city_id bigint NOT NULL
);


ALTER TABLE public.yfcase_township OWNER TO ryowu;

--
-- Name: yfcase_township_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcase_township_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcase_township_id_seq OWNER TO ryowu;

--
-- Name: yfcase_township_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcase_township_id_seq OWNED BY public.yfcase_township.id;


--
-- Name: yfcase_yfcase; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcase_yfcase (
    id bigint NOT NULL,
    "yfcaseCaseNumber" character varying(100) NOT NULL,
    "yfcaseCompany" character varying(50),
    "yfcaseBigSection" character varying(10),
    "yfcaseSmallSection" character varying(10),
    "yfcaseVillage" character varying(100),
    "yfcaseNeighbor" character varying(100),
    "yfcaseStreet" character varying(100),
    "yfcaseSection" character varying(100),
    "yfcaseLane" character varying(100),
    "yfcaseAlley" character varying(100),
    "yfcaseNumber" character varying(100),
    "yfcaseFloor" character varying(100),
    "yfcaseDebtor" character varying(100),
    "yfcaseCreditor" character varying(100),
    "yfcaseCreditorMobilePhone" character varying(20),
    user_id bigint NOT NULL,
    "yfcaseCity_id" bigint,
    "yfcaseTownship_id" bigint,
    "yfcaseCityWithTownship" character varying(20),
    "yfcaseCaseStatus" character varying(10),
    "yfcaseSealUrl" character varying(255),
    "yfcaseDeedtaxBuildingTransferArea1" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferArea2" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferArea3" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferArea4" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferArea5" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferArea6" numeric(10,2),
    "yfcaseDeedtaxBuildingTransferLevel1" character varying(100),
    "yfcaseDeedtaxBuildingTransferLevel2" character varying(100),
    "yfcaseDeedtaxBuildingTransferLevel3" character varying(100),
    "yfcaseDeedtaxBuildingTransferLevel4" character varying(100),
    "yfcaseDeedtaxBuildingTransferLevel5" character varying(100),
    "yfcaseDeedtaxBuildingTransferLevel6" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicBuildingNumber1" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicBuildingNumber2" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicBuildingNumber3" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicBuildingNumber4" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicHoldings1" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicHoldings2" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicHoldings3" character varying(100),
    "yfcaseDeedtaxBuildingTransferPublicHoldings4" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure1" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure2" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure3" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure4" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure5" character varying(100),
    "yfcaseDeedtaxBuildingTransferStructure6" character varying(100),
    "yfcaseDeedtaxClient" character varying(100),
    "yfcaseDeedtaxClosingNewsletter" character varying(100),
    "yfcaseDeedtaxCoOwnerMatch" boolean NOT NULL,
    "yfcaseDeedtaxCreditorAlley" character varying(100),
    "yfcaseDeedtaxCreditorBirthday" date,
    "yfcaseDeedtaxCreditorBuildHoldingPointAll" numeric(8,0),
    "yfcaseDeedtaxCreditorBuildHoldingPointPersonal" numeric(8,0),
    "yfcaseDeedtaxCreditorCity" character varying(100),
    "yfcaseDeedtaxCreditorFloor" character varying(100),
    "yfcaseDeedtaxCreditorIdentityCard" character varying(100),
    "yfcaseDeedtaxCreditorLandHoldingPointAll" numeric(8,0),
    "yfcaseDeedtaxCreditorLandHoldingPointPersonal" numeric(8,0),
    "yfcaseDeedtaxCreditorLane" character varying(100),
    "yfcaseDeedtaxCreditorLocalPhone" character varying(100),
    "yfcaseDeedtaxCreditorMobilePhone" character varying(100),
    "yfcaseDeedtaxCreditorNeighbor" character varying(100),
    "yfcaseDeedtaxCreditorNumber" character varying(100),
    "yfcaseDeedtaxCreditorSection" character varying(100),
    "yfcaseDeedtaxCreditorStreet" character varying(100),
    "yfcaseDeedtaxCreditorTownship" character varying(100),
    "yfcaseDeedtaxCreditorVillage" character varying(100),
    "yfcaseDeedtaxDebtorAlley" character varying(100),
    "yfcaseDeedtaxDebtorBirthday" date,
    "yfcaseDeedtaxDebtorBuildHoldingPointAll" numeric(8,0),
    "yfcaseDeedtaxDebtorBuildHoldingPointPersonal" numeric(8,0),
    "yfcaseDeedtaxDebtorCity" character varying(100),
    "yfcaseDeedtaxDebtorFloor" character varying(100),
    "yfcaseDeedtaxDebtorIdentityCard" character varying(100),
    "yfcaseDeedtaxDebtorLandHoldingPointAll" numeric(8,0),
    "yfcaseDeedtaxDebtorLandHoldingPointPersonal" numeric(8,0),
    "yfcaseDeedtaxDebtorLane" character varying(100),
    "yfcaseDeedtaxDebtorLocalPhone" character varying(100),
    "yfcaseDeedtaxDebtorMobilePhone" character varying(100),
    "yfcaseDeedtaxDebtorNeighbor" character varying(100),
    "yfcaseDeedtaxDebtorNumber" character varying(100),
    "yfcaseDeedtaxDebtorSection" character varying(100),
    "yfcaseDeedtaxDebtorStreet" character varying(100),
    "yfcaseDeedtaxDebtorTownship" character varying(100),
    "yfcaseDeedtaxDebtorVillage" character varying(100),
    "yfcaseDeedtaxDeclarationDate" date,
    "yfcaseDeedtaxEstablishmentDate" date,
    "yfcaseDeedtaxHouseTaxRegistrationNumber" character varying(100),
    "yfcaseDeedtaxReclaimMethod" character varying(100),
    "yfcaseDeedtaxRemarks" character varying(100),
    "yfcaseDeedtaxReportAttached" character varying(100),
    "yfcaseDeedtaxTransferPrice" numeric(10,0),
    "yfcaseAcceptingAuthorityTownship" character varying(100),
    "yfcaseApplyAcrossInstitutions" boolean NOT NULL,
    "yfcaseRealEstateRegistrationDateOfCause" date,
    "yfcaseRealEstateRegistrationReasonForRegistration" character varying(100),
    "yfcaseRealEstateRegistrationRegisteredAgent" character varying(100),
    "yfcaseRealEstateRegistrationRegistrationNote" character varying(100),
    "yfcaseComplaintComplaintDate" date,
    "yfcaseComplaintExhibit1" character varying(100),
    "yfcaseComplaintExhibit2" character varying(100),
    "yfcaseComplaintExhibit3" character varying(100),
    "yfcaseComplaintExhibit4" character varying(100),
    "yfcaseComplaintLandDepth" numeric(4,2),
    "yfcaseComplaintLandWidth" numeric(4,2),
    "yfcaseComplaintLitigationAgent" character varying(100),
    "yfcaseComplaintPresentValueOfHouseTax" numeric(8,2),
    "yfcaseComplaintPresentValueOfLandAnnouncement" numeric(8,0),
    "yfcaseComplaintRefereeFee" numeric(10,2),
    "yfcaseComplaintUnsuccessfulDate" date,
    "yfcaseLetterAgent" character varying(100),
    "yfcaseCownerAgent" character varying(100),
    "yfcasecoOwnerBuildHPAll" numeric(8,0),
    "yfcasecoOwnerBuildHPPersonnal" numeric(8,0),
    "yfcasecoOwnerLandHPAll" numeric(8,0),
    "yfcasecoOwnerLandHPPersonnal" numeric(8,0)
);


ALTER TABLE public.yfcase_yfcase OWNER TO ryowu;

--
-- Name: yfcase_yfcase_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcase_yfcase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcase_yfcase_id_seq OWNER TO ryowu;

--
-- Name: yfcase_yfcase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcase_yfcase_id_seq OWNED BY public.yfcase_yfcase.id;


--
-- Name: yfcases_auction; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_auction (
    id bigint NOT NULL,
    "auctionDateFirst" character varying(100),
    "auctionDateSecond" character varying(100),
    "auctionDateThird" character varying(100),
    "auctionDateFourth" character varying(100),
    "auctionFloorPriceFirst" numeric(10,2),
    "auctionFloorPriceSecond" numeric(10,2),
    "auctionFloorPriceThird" numeric(10,2),
    "auctionFloorPriceFourth" numeric(10,2),
    "auctionClickFirst" numeric(4,0),
    "auctionClickSecond" numeric(4,0),
    "auctionClickThird" numeric(4,0),
    "auctionClickFourth" numeric(4,0),
    "auctionMonitorFirst" numeric(4,0),
    "auctionMonitorSecond" numeric(4,0),
    "auctionMonitorThird" numeric(4,0),
    "auctionMonitorFourth" numeric(4,0),
    "auctionMarginFirst" numeric(10,2),
    "auctionMarginSecond" numeric(10,2),
    "auctionMarginThird" numeric(10,2),
    "auctionMarginFourth" numeric(10,2),
    yfcase_id bigint NOT NULL
);


ALTER TABLE public.yfcases_auction OWNER TO ryowu;

--
-- Name: yfcases_auction_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_auction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_auction_id_seq OWNER TO ryowu;

--
-- Name: yfcases_auction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_auction_id_seq OWNED BY public.yfcases_auction.id;


--
-- Name: yfcases_build; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_build (
    id bigint NOT NULL,
    "buildNumber" character varying(100),
    "buildUrl" character varying(200),
    "buildArea" numeric(10,2),
    "buildHoldingPointPersonal" numeric(10,0),
    "buildHoldingPointAll" numeric(10,0),
    "buildTypeUse" character varying(100),
    "buildUsePartition" character varying(100),
    yfcase_id bigint NOT NULL,
    "buildAncillaryBuildingArea" numeric(6,2),
    "buildAncillaryBuildingUseBy" character varying(100),
    "buildRemark" character varying(100)
);


ALTER TABLE public.yfcases_build OWNER TO ryowu;

--
-- Name: yfcases_build_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_build_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_build_id_seq OWNER TO ryowu;

--
-- Name: yfcases_build_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_build_id_seq OWNED BY public.yfcases_build.id;


--
-- Name: yfcases_coownerheir; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_coownerheir (
    id bigint NOT NULL,
    "coOwnerHeirName" character varying(10),
    "coOwnerHeirAddress" character varying(50),
    "coOwnerHeirLandHPPersonnal" numeric(8,0),
    "coOwnerHeirLandHPAll" numeric(8,0),
    "coOwnerHeirBuildHPPersonnal" numeric(8,0),
    "coOwnerHeirBuildHPAll" numeric(8,0),
    "coOwnerHeirLifeOrDie" character varying(4),
    coowner_id bigint NOT NULL,
    "coOwnerHeirIdentityCard" character varying(50)
);


ALTER TABLE public.yfcases_coownerheir OWNER TO ryowu;

--
-- Name: yfcases_coownerheir_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_coownerheir_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_coownerheir_id_seq OWNER TO ryowu;

--
-- Name: yfcases_coownerheir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_coownerheir_id_seq OWNED BY public.yfcases_coownerheir.id;


--
-- Name: yfcases_coownerinfo; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_coownerinfo (
    id bigint NOT NULL,
    "coOwnerName" character varying(10),
    "coOwnerAddress" character varying(50),
    "coOwnerLandHPPersonnal" numeric(8,0),
    "coOwnerLandHPAll" numeric(8,0),
    "coOwnerBuildHPPersonnal" numeric(8,0),
    "coOwnerBuildHPAll" numeric(8,0),
    yfcase_id bigint NOT NULL,
    "coOwnerLifeOrDie" character varying(4),
    "coOwnerIdentityCard" character varying(50)
);


ALTER TABLE public.yfcases_coownerinfo OWNER TO ryowu;

--
-- Name: yfcases_coownerinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_coownerinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_coownerinfo_id_seq OWNER TO ryowu;

--
-- Name: yfcases_coownerinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_coownerinfo_id_seq OWNED BY public.yfcases_coownerinfo.id;


--
-- Name: yfcases_coownerlitigation; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_coownerlitigation (
    id bigint NOT NULL,
    "coOwnerLitigationName" character varying(10),
    "coOwnerLitigationIdentityCard" character varying(50),
    "coOwnerLitigationAddress" character varying(50),
    "coOwnerLitigationLandHPPersonnal" numeric(8,0),
    "coOwnerLitigationLandHPAll" numeric(8,0),
    "coOwnerLitigationBuildHPPersonnal" numeric(8,0),
    "coOwnerLitigationBuildHPAll" numeric(8,0),
    "coOwnerLitigationLifeOrDie" character varying(4),
    coownerheir_id bigint NOT NULL
);


ALTER TABLE public.yfcases_coownerlitigation OWNER TO ryowu;

--
-- Name: yfcases_coownerlitigation_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_coownerlitigation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_coownerlitigation_id_seq OWNER TO ryowu;

--
-- Name: yfcases_coownerlitigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_coownerlitigation_id_seq OWNED BY public.yfcases_coownerlitigation.id;


--
-- Name: yfcases_finaldecision; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_finaldecision (
    id bigint NOT NULL,
    "finalDecision" character varying(10),
    "finalDecisionRemark" character varying(100),
    "regionalHead" character varying(10),
    "regionalHeadDate" character varying(10),
    "regionalHeadWorkArea" character varying(10),
    "subSigntrueA" character varying(10),
    "subSigntrueDateA" character varying(10),
    "subSigntrueWorkAreaA" character varying(10),
    "subSigntrueB" character varying(10),
    "subSigntrueDateB" character varying(10),
    "subSigntrueWorkAreaB" character varying(10),
    yfcase_id bigint NOT NULL
);


ALTER TABLE public.yfcases_finaldecision OWNER TO ryowu;

--
-- Name: yfcases_finaldecision_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_finaldecision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_finaldecision_id_seq OWNER TO ryowu;

--
-- Name: yfcases_finaldecision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_finaldecision_id_seq OWNED BY public.yfcases_finaldecision.id;


--
-- Name: yfcases_land; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_land (
    id bigint NOT NULL,
    "landNumber" character varying(100),
    "landUrl" character varying(200),
    "landArea" numeric(10,2),
    "landHoldingPointPersonal" numeric(10,0),
    "landHoldingPointAll" numeric(10,0),
    yfcase_id bigint NOT NULL,
    "landRemark" character varying(100)
);


ALTER TABLE public.yfcases_land OWNER TO ryowu;

--
-- Name: yfcases_land_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_land_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_land_id_seq OWNER TO ryowu;

--
-- Name: yfcases_land_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_land_id_seq OWNED BY public.yfcases_land.id;


--
-- Name: yfcases_objectbuild; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_objectbuild (
    id bigint NOT NULL,
    "objectBuildAddress" character varying(100),
    "objectBuildTotalPrice" numeric(10,0),
    "objectBuildBuildArea" numeric(10,2),
    "objectBuildHouseAge" numeric(5,2),
    "objectBuildFloorHeight" character varying(100),
    "objectBuildStatus" character varying(100),
    "objectBuildTransactionDate" character varying(100),
    "objectBuildUrl" character varying(1000),
    "objectBuildScorerA" character varying(100),
    "objectBuildScorerB" character varying(100),
    "objectBuildScorerC" character varying(100),
    "objectBuildScorRateA" numeric(4,2),
    "objectBuildScorRateB" numeric(4,2),
    "objectBuildScorRateC" numeric(4,2),
    "objectBuildScorReasonA" character varying(100),
    "objectBuildScorReasonB" character varying(100),
    "objectBuildScorReasonC" character varying(100),
    "plusItemA1" character varying(100),
    "plusItemA2" character varying(100),
    "plusItemA3" character varying(100),
    "plusItemA4" character varying(100),
    "plusItemA5" character varying(100),
    "plusItemOtherA" character varying(100),
    "plusValueA1" numeric(4,2),
    "plusValueA2" numeric(4,2),
    "plusValueA3" numeric(4,2),
    "plusValueA4" numeric(4,2),
    "plusValueA5" numeric(4,2),
    "plusValueOtherA" numeric(4,2),
    "plusItemB1" character varying(100),
    "plusItemB2" character varying(100),
    "plusItemB3" character varying(100),
    "plusItemB4" character varying(100),
    "plusItemB5" character varying(100),
    "plusItemOtherB" character varying(100),
    "plusValueB1" numeric(4,2),
    "plusValueB2" numeric(4,2),
    "plusValueB3" numeric(4,2),
    "plusValueB4" numeric(4,2),
    "plusValueB5" numeric(4,2),
    "plusValueOtherB" numeric(4,2),
    "plusItemC1" character varying(100),
    "plusItemC2" character varying(100),
    "plusItemC3" character varying(100),
    "plusItemC4" character varying(100),
    "plusItemC5" character varying(100),
    "plusItemOtherC" character varying(100),
    "plusValueC1" numeric(4,2),
    "plusValueC2" numeric(4,2),
    "plusValueC3" numeric(4,2),
    "plusValueC4" numeric(4,2),
    "plusValueC5" numeric(4,2),
    "plusValueOtherC" numeric(4,2),
    yfcase_id bigint NOT NULL,
    "objectBuildSubBuildArea" numeric(10,2)
);


ALTER TABLE public.yfcases_objectbuild OWNER TO ryowu;

--
-- Name: yfcases_objectbuild_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_objectbuild_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_objectbuild_id_seq OWNER TO ryowu;

--
-- Name: yfcases_objectbuild_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_objectbuild_id_seq OWNED BY public.yfcases_objectbuild.id;


--
-- Name: yfcases_result; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_result (
    id bigint NOT NULL,
    "stopBuyDate" character varying(20),
    "actionResult" character varying(20),
    "bidAuctionTime" character varying(20),
    "bidMoney" numeric(10,2),
    "objectNumber" character varying(20),
    yfcase_id bigint NOT NULL
);


ALTER TABLE public.yfcases_result OWNER TO ryowu;

--
-- Name: yfcases_result_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_result_id_seq OWNER TO ryowu;

--
-- Name: yfcases_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_result_id_seq OWNED BY public.yfcases_result.id;


--
-- Name: yfcases_survey; Type: TABLE; Schema: public; Owner: ryowu
--

CREATE TABLE public.yfcases_survey (
    id bigint NOT NULL,
    "surveyFirstDay" character varying(100),
    "surveySecondDay" character varying(100),
    "surveyForeclosureAnnouncementLink" character varying(1000),
    "survey988Link" character varying(1000),
    "surveyObjectPhotoLink" character varying(1000),
    "surveyNetMarketPriceLink" character varying(1000),
    "surveyForeclosureRecordLink" character varying(1000),
    "surveyObjectViewLink" character varying(1000),
    yfcase_id bigint NOT NULL
);


ALTER TABLE public.yfcases_survey OWNER TO ryowu;

--
-- Name: yfcases_survey_id_seq; Type: SEQUENCE; Schema: public; Owner: ryowu
--

CREATE SEQUENCE public.yfcases_survey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_survey_id_seq OWNER TO ryowu;

--
-- Name: yfcases_survey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ryowu
--

ALTER SEQUENCE public.yfcases_survey_id_seq OWNED BY public.yfcases_survey.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: users_customuser id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_id_seq'::regclass);


--
-- Name: users_customuser_groups id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_groups_id_seq'::regclass);


--
-- Name: users_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_user_permissions_id_seq'::regclass);


--
-- Name: yfcase_city id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_city ALTER COLUMN id SET DEFAULT nextval('public.yfcase_city_id_seq'::regclass);


--
-- Name: yfcase_township id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_township ALTER COLUMN id SET DEFAULT nextval('public.yfcase_township_id_seq'::regclass);


--
-- Name: yfcase_yfcase id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_yfcase ALTER COLUMN id SET DEFAULT nextval('public.yfcase_yfcase_id_seq'::regclass);


--
-- Name: yfcases_auction id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_auction ALTER COLUMN id SET DEFAULT nextval('public.yfcases_auction_id_seq'::regclass);


--
-- Name: yfcases_build id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_build ALTER COLUMN id SET DEFAULT nextval('public.yfcases_build_id_seq'::regclass);


--
-- Name: yfcases_coownerheir id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerheir ALTER COLUMN id SET DEFAULT nextval('public.yfcases_coownerheir_id_seq'::regclass);


--
-- Name: yfcases_coownerinfo id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerinfo ALTER COLUMN id SET DEFAULT nextval('public.yfcases_coownerinfo_id_seq'::regclass);


--
-- Name: yfcases_coownerlitigation id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerlitigation ALTER COLUMN id SET DEFAULT nextval('public.yfcases_coownerlitigation_id_seq'::regclass);


--
-- Name: yfcases_finaldecision id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_finaldecision ALTER COLUMN id SET DEFAULT nextval('public.yfcases_finaldecision_id_seq'::regclass);


--
-- Name: yfcases_land id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_land ALTER COLUMN id SET DEFAULT nextval('public.yfcases_land_id_seq'::regclass);


--
-- Name: yfcases_objectbuild id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_objectbuild ALTER COLUMN id SET DEFAULT nextval('public.yfcases_objectbuild_id_seq'::regclass);


--
-- Name: yfcases_result id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_result ALTER COLUMN id SET DEFAULT nextval('public.yfcases_result_id_seq'::regclass);


--
-- Name: yfcases_survey id; Type: DEFAULT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_survey ALTER COLUMN id SET DEFAULT nextval('public.yfcases_survey_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ryowu
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_customuser
22	Can change user	6	change_customuser
23	Can delete user	6	delete_customuser
24	Can view user	6	view_customuser
25	Can add city	7	add_city
26	Can change city	7	change_city
27	Can delete city	7	delete_city
28	Can view city	7	view_city
29	Can add township	8	add_township
30	Can change township	8	change_township
31	Can delete township	8	delete_township
32	Can view township	8	view_township
33	Can add yfcase	9	add_yfcase
34	Can change yfcase	9	change_yfcase
35	Can delete yfcase	9	delete_yfcase
36	Can view yfcase	9	view_yfcase
37	Can add survey	10	add_survey
38	Can change survey	10	change_survey
39	Can delete survey	10	delete_survey
40	Can view survey	10	view_survey
41	Can add result	11	add_result
42	Can change result	11	change_result
43	Can delete result	11	delete_result
44	Can view result	11	view_result
45	Can add object build	12	add_objectbuild
46	Can change object build	12	change_objectbuild
47	Can delete object build	12	delete_objectbuild
48	Can view object build	12	view_objectbuild
49	Can add land	13	add_land
50	Can change land	13	change_land
51	Can delete land	13	delete_land
52	Can view land	13	view_land
53	Can add final decision	14	add_finaldecision
54	Can change final decision	14	change_finaldecision
55	Can delete final decision	14	delete_finaldecision
56	Can view final decision	14	view_finaldecision
57	Can add build	15	add_build
58	Can change build	15	change_build
59	Can delete build	15	delete_build
60	Can view build	15	view_build
61	Can add auction	16	add_auction
62	Can change auction	16	change_auction
63	Can delete auction	16	delete_auction
64	Can view auction	16	view_auction
65	Can add co owner info	17	add_coownerinfo
66	Can change co owner info	17	change_coownerinfo
67	Can delete co owner info	17	delete_coownerinfo
68	Can view co owner info	17	view_coownerinfo
69	Can add co owner heir	18	add_coownerheir
70	Can change co owner heir	18	change_coownerheir
71	Can delete co owner heir	18	delete_coownerheir
72	Can view co owner heir	18	view_coownerheir
73	Can add co owner litigation	19	add_coownerlitigation
74	Can change co owner litigation	19	change_coownerlitigation
75	Can delete co owner litigation	19	delete_coownerlitigation
76	Can view co owner litigation	19	view_coownerlitigation
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	customuser
7	yfcases	city
8	yfcases	township
9	yfcases	yfcase
10	yfcases	survey
11	yfcases	result
12	yfcases	objectbuild
13	yfcases	land
14	yfcases	finaldecision
15	yfcases	build
16	yfcases	auction
17	yfcases	coownerinfo
18	yfcases	coownerheir
19	yfcases	coownerlitigation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-08-05 00:27:40.018591+08
2	contenttypes	0002_remove_content_type_name	2021-08-05 00:27:40.033586+08
3	auth	0001_initial	2021-08-05 00:27:40.118534+08
4	auth	0002_alter_permission_name_max_length	2021-08-05 00:27:40.12553+08
5	auth	0003_alter_user_email_max_length	2021-08-05 00:27:40.135526+08
6	auth	0004_alter_user_username_opts	2021-08-05 00:27:40.14552+08
7	auth	0005_alter_user_last_login_null	2021-08-05 00:27:40.154515+08
8	auth	0006_require_contenttypes_0002	2021-08-05 00:27:40.157513+08
9	auth	0007_alter_validators_add_error_messages	2021-08-05 00:27:40.167506+08
10	auth	0008_alter_user_username_max_length	2021-08-05 00:27:40.175502+08
11	auth	0009_alter_user_last_name_max_length	2021-08-05 00:27:40.187495+08
12	auth	0010_alter_group_name_max_length	2021-08-05 00:27:40.202487+08
13	auth	0011_update_proxy_permissions	2021-08-05 00:27:40.21448+08
14	auth	0012_alter_user_first_name_max_length	2021-08-05 00:27:40.224474+08
15	users	0001_initial	2021-08-05 00:27:40.316368+08
16	admin	0001_initial	2021-08-05 00:27:40.354347+08
17	admin	0002_logentry_remove_auto_add	2021-08-05 00:27:40.367341+08
18	admin	0003_logentry_add_action_flag_choices	2021-08-05 00:27:40.377336+08
19	sessions	0001_initial	2021-08-05 00:27:40.405318+08
20	yfcases	0001_initial	2021-08-05 00:27:40.718117+08
21	yfcases	0002_result_casestatus	2021-08-05 00:27:40.738089+08
22	yfcases	0003_yfcase_yfcasecitywithtownship	2021-08-05 00:27:40.764075+08
23	yfcases	0004_yfcase_yfcasecasestatus	2021-08-05 00:27:40.792059+08
24	yfcases	0005_auto_20210620_1127	2021-08-05 00:27:40.85902+08
25	yfcases	0006_yfcase_yfcasesealurl	2021-08-05 00:27:40.93398+08
26	yfcases	0007_auto_20210623_1207	2021-08-05 00:27:42.44911+08
27	yfcases	0008_auto_20210623_1603	2021-08-05 00:27:42.670135+08
28	yfcases	0009_auto_20210623_1752	2021-08-05 00:27:42.96009+08
29	yfcases	0010_coownerinfo	2021-08-05 00:27:43.008063+08
30	yfcases	0011_yfcase_yfcaseletteragent	2021-08-05 00:27:43.043045+08
31	yfcases	0012_land_landremark	2021-08-05 00:27:43.069028+08
32	yfcases	0013_auto_20210629_1633	2021-08-05 00:27:43.21994+08
33	yfcases	0014_objectbuild_objectbuildsubbuildarea	2021-08-05 00:27:43.243928+08
34	yfcases	0015_coownerinfo_coownerlifeordie	2021-08-05 00:27:43.270911+08
35	yfcases	0016_coownerheir	2021-08-05 00:27:43.317886+08
36	yfcases	0017_coownerheir_coownerserial	2021-08-05 00:27:43.330878+08
37	yfcases	0018_rename_coownerserial_coownerheir_coownerheirserial	2021-08-05 00:27:43.34287+08
38	yfcases	0019_auto_20210704_0307	2021-08-05 00:27:43.390844+08
39	yfcases	0020_coownerheir_coownerheirtype	2021-08-05 00:27:43.410831+08
40	yfcases	0021_remove_coownerheir_coownerheirtype	2021-08-05 00:27:43.429821+08
41	yfcases	0022_coownerlitigation	2021-08-05 00:27:43.476793+08
42	yfcases	0023_alter_coownerlitigation_coownerheir	2021-08-05 00:27:43.511774+08
43	yfcases	0024_alter_coownerlitigation_coownerheir	2021-08-05 00:27:43.539759+08
44	yfcases	0025_auto_20210709_1405	2021-08-05 00:27:43.704665+08
45	yfcases	0026_yfcase_yfcasedeedtaxsendaddress	2021-08-05 00:27:43.743641+08
46	yfcases	0027_remove_yfcase_yfcasedeedtaxsendaddress	2021-08-05 00:27:43.78062+08
47	yfcases	0028_auto_20210807_1101	2021-08-07 11:01:17.904158+08
48	yfcases	0029_alter_survey_surveyobjectviewlink	2021-08-07 13:40:01.26755+08
49	yfcases	0030_alter_survey_surveyforeclosureannouncementlink	2021-08-07 13:44:08.271393+08
50	yfcases	0031_auto_20210807_1345	2021-08-07 13:45:18.276488+08
51	yfcases	0032_alter_objectbuild_objectbuildurl	2021-08-07 15:26:14.709848+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
gdrthxqa3bom6utblbsuhpn9c05nt1dt	.eJxVjMsOwiAUBf-FtSHlVcSl-34D4T6QqoGktCvjv2uTLnR7Zua8REzbWuLWeYkziYsw4vS7QcIH1x3QPdVbk9jquswgd0UetMupET-vh_t3UFIv33rIzmn2aLXlwWXSqBKYENCDo6BgREDiQAw2ZPbGMMEYlHKobMYziPcHAFA4-Q:1mC1Xy:tvMXq7fMJoybmQPuR0fT_XWZ5Zrc4bHcpS8S-yGPhrY	2021-08-20 23:14:06.175711+08
enw35n2298oei9zjdezvyc1ax8yxbbk2	.eJxVjMsOwiAUBf-FtSHlVcSl-34D4T6QqoGktCvjv2uTLnR7Zua8REzbWuLWeYkziYvQ4vS7QcIH1x3QPdVbk9jquswgd0UetMupET-vh_t3UFIv33rIzmn2aLXlwWXSqBKYENCDo6BgREDiQAw2ZPbGMMEYlHKobMYziPcH_6g4-A:1mCZ2h:cTM1HxCTlZG-QrL2t5LG2HgzRYMCxLSxxIydme-TAVU	2021-08-22 11:00:03.3909+08
\.


--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, "userFirstName", "userLastName", "userFullName", "userWorkArea", "userRole", "userIdentityCard", "userBirthday", "userLocalPhone", "userMobilePhone", "userCountry", "userTownship", "userVillage", "userNeighbor", "userStreet", "userSection", "userLane", "userAlley", "userNumber", "userFloor", "userPublicOrPrivate") FROM stdin;
1	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	admin	true	true	admin@gmail.com	t	t	2021-08-06 23:13:42.573381+08	管	理者	管理者	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	私
3	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	waterhao0709	true	true	waterhao0709@gmail.com	t	t	2021-08-06 23:13:42.573381+08	張	浩文	張浩文	雙北桃竹苗	0	\N	\N	\N	0920005858	新北巿	中和區	\N	\N	圓通路	\N	198巷	\N	32號	\N	私
7	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	7531karl	true	true	7531karl@gmail.com	t	t	2021-08-06 23:13:42.573381+08	曾	友志	曾友志	中彰投	0	L121920838	\N	\N	0935770043	臺中市	大里區	\N	\N	新仁路	三段	\N	\N	49號	\N	私
12	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	sunmarbo	true	true	sunmarbo@gmail.com	t	t	2021-08-06 23:13:42.573381+08	曾	智翊	曾智翊	中彰投	0	\N	\N	\N	0912676719	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	私
13	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	yangfu	true	true	yangfu@gmail.com	t	t	2021-08-06 23:13:42.573381+08	揚富	開發有限公司	揚富開發有限公司	\N	0	64187207	2018-01-23	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	\N	\N	49號	1樓	公
14	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	jutai	true	true	jutai@gmail.com	t	t	2021-08-06 23:13:42.573381+08	鉅鈦	開發有限公司	鉅鈦開發有限公司	\N	0	83554300	2020-03-11	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	72巷	\N	3號	1樓	公
6	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	nealeliu	true	true	nealeliu@gmail.com	t	t	2021-08-06 23:13:42.573381+08	劉	家彰	劉家彰	雲嘉南	0	P122190873	\N	\N	0918332707	臺南市	東區	\N	\N	東平路	\N	\N	\N	11號	5樓	私
8	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	sosan600715	true	true	sosan600715@gmail.com	t	t	2021-08-06 23:13:42.573381+08	曾	友和	曾友和	雲嘉南	0	L121924265	1971-07-15	\N	0921765023	臺南市	東區	\N	\N	東平路	\N	\N	\N	11號	5樓	私
9	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	bahg2001	true	true	bahg2001@gmail.com	t	t	2021-08-06 23:13:42.573381+08	王	建斌	王建斌	雲嘉南	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	私
4	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	acme6801	true	true	acme6801@gmail.com	t	t	2021-08-06 23:13:42.573381+08	曾	昱銓	曾昱銓	高高屏	0	L125051272	\N	\N	0911987707	高雄市	鳳山區	\N	\N	建國路	一段	17巷	\N	86號	\N	私
5	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-06 23:14:06.17271+08	t	brainsou	true	true	brainsou@gmail.com	t	t	2021-08-06 23:13:42.573381+08	曾	桂雄	曾桂雄	高高屏	0	L103230313	\N	\N	0911987701	高雄市	鳳山區	\N	\N	建國路	一段	17巷	\N	86號	\N	私
2	pbkdf2_sha256$260000$yW59QEQzhxVnuZ99jf3UJc$HRzwTTpVxtdIw8SGaSOWZWuiEwioAzw6/HGgE4Bttgg=	2021-08-08 11:00:03.387903+08	t	ryowu0329	true	true	ryowu0329@gmail.com	t	t	2021-08-06 23:13:42.573381+08	吳	俊男	吳俊男	雲嘉南	0	R111111333	1976-03-29	06-7222333	0921526137	台南市	東區	\N	\N	德東街	\N	\N	\N	222號	6樓6	私
\.


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: yfcase_city; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcase_city (id, name) FROM stdin;
1	台北市
2	基隆市
3	新北市
4	連江縣
5	宜蘭縣
6	釣魚台
7	新竹市
8	新竹縣
9	桃園縣
10	苗栗縣
11	台中市
12	彰化縣
13	南投縣
14	嘉義市
15	嘉義縣
16	雲林縣
17	台南市
18	高雄市
19	南海島
20	澎湖縣
21	金門縣
22	屏東縣
23	台東縣
24	花蓮縣
\.


--
-- Data for Name: yfcase_township; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcase_township (id, name, zip_code, district_court, land_office, finance_and_tax_bureau, police_station, irs, home_office, city_id) FROM stdin;
1	中正區	100	臺北	古亭	中正分處				1
2	大同區	103	士林	建成	大同分處				1
3	中山區	104	臺北	中山	中山分處				1
4	松山區	105	臺北	松山	松山分處				1
5	大安區	106	臺北	大安	大安分處				1
6	萬華區	108	臺北	建成	萬華分處				1
7	信義區	110	臺北	松山	信義分處				1
8	士林區	111	士林	士林	士林分處				1
9	北投區	112	士林	士林	北投分處				1
10	內湖區	114	士林	中山	內湖分處				1
11	南港區	115	士林	松山	南港分處				1
12	文山區	116	臺北	古亭	文山分處				1
13	仁愛區	200	基隆	信義	總局				2
14	信義區	201	臺北	松山	信義分處				2
15	中正區	202	臺北	古亭	中正分處				2
16	中山區	203	臺北	中山	中山分處				2
17	安樂區	204	基隆	安樂	總局				2
18	暖暖區	205	基隆	安樂	七堵分局				2
19	七堵區	206	基隆	安樂	七堵分局				2
20	萬里區	207	基隆	汐止	淡水分處				3
21	金山區	208	基隆	汐止	淡水分處				3
22	板橋區	220	新北	板橋	板橋分處				3
23	汐止區	221	士林	汐止	汐止分處				3
24	深坑區	222	臺北	新店	新店分處				3
25	石碇區	223	臺北	新店	新店分處				3
26	瑞芳區	224	基隆	瑞芳	瑞芳分處				3
27	平溪區	226	基隆	瑞芳	瑞芳分處				3
28	雙溪區	227	基隆	瑞芳	瑞芳分處				3
29	貢寮區	228	基隆	瑞芳	瑞芳分處				3
30	新店區	231	臺北	新店	新店分處				3
31	坪林區	232	臺北	新店	新店分處				3
32	烏來區	233	臺北	新店	新店分處				3
33	永和區	234	新北	中和	中和分處				3
34	中和區	235	新北	中和	中和分處				3
35	土城區	236	新北	板橋	總處				3
36	三峽區	237	新北	樹林	三鶯分處				3
37	樹林區	238	新北	樹林	總處				3
38	鶯歌區	239	新北	樹林	三鶯分處				3
39	三重區	241	新北	三重	三重分處				3
40	新莊區	242	新北	新莊	新莊分處				3
41	泰山區	243	新北	新莊	新莊分處				3
42	林口區	244	新北	新莊	林口分處				3
43	蘆洲區	247	新北	三重	三重分處				3
44	五股區	248	新北	新莊	新莊分處				3
45	八里區	249	士林	淡水	淡水分處				3
46	淡水區	251	士林	淡水	淡水分處				3
47	三芝區	252	士林	淡水	淡水分處				3
48	石門區	253	士林	淡水	淡水分處				3
49	南竿鄉	209							4
50	北竿鄉	210							4
51	莒光鄉	211							4
52	東引鄉	212							4
53	宜蘭市	260							5
54	頭城鎮	261							5
55	礁溪鄉	262							5
56	壯圍鄉	263							5
57	員山鄉	264							5
58	羅東鎮	265							5
59	三星鄉	266							5
60	大同鄉	267							5
61	五結鄉	268							5
62	冬山鄉	269							5
63	蘇澳鎮	270							5
64	南澳鄉	272							5
65	釣魚台	290							6
66	東區	300							7
67	北區	300							7
68	香山區	300							7
69	竹北市	302							8
70	湖口鄉	303							8
71	新豐鄉	304							8
72	新埔鎮	305							8
73	關西鎮	306							8
74	芎林鄉	307							8
75	寶山鄉	308							8
76	竹東鎮	310							8
77	五峰鄉	311							8
78	橫山鄉	312							8
79	尖石鄉	313							8
80	北埔鄉	314							8
81	峨眉鄉	315							8
82	中壢市	320							9
83	平鎮市	324							9
84	龍潭鄉	325							9
85	楊梅市	326							9
86	新屋鄉	327							9
87	觀音鄉	328							9
88	桃園市	330							9
89	龜山鄉	333							9
90	八德市	334							9
91	大溪鎮	335							9
92	復興鄉	336							9
93	大園鄉	337							9
94	蘆竹鄉	338							9
95	竹南鎮	350							10
96	頭份鎮	351							10
97	三灣鄉	352							10
98	南庄鄉	353							10
99	獅潭鄉	354							10
100	後龍鎮	356							10
101	通霄鎮	357							10
102	苑裡鎮	358							10
103	苗栗市	360							10
104	造橋鄉	361							10
105	頭屋鄉	362							10
106	公館鄉	363							10
107	大湖鄉	364							10
108	泰安鄉	365							10
109	銅鑼鄉	366							10
110	三義鄉	367							10
111	西湖鄉	368							10
112	卓蘭鎮	369							10
113	中區	400							11
114	東區	401							11
115	南區	402							11
116	西區	403							11
117	北區	404							11
118	北屯區	406	臺中	中正	東山分局				11
119	西屯區	407	臺中	中興	文心分局				11
120	南屯區	408	臺中	中興	文心分局				11
121	太平區	411	臺中	太平	大屯分局				11
122	大里區	412	臺中	大里	大屯分局				11
123	霧峰區	413	臺中	大里	大屯分局				11
124	烏日區	414	臺中	大里	大屯分局				11
125	豐原區	420	臺中	豐原	豐原分局				11
126	后里區	421	臺中	豐原	豐原分局				11
127	石岡區	422	臺中	東勢	東勢分局				11
128	東勢區	423	臺中	東勢	東勢分局				11
129	和平區	424	臺中	東勢	東勢分局				11
130	新社區	426	臺中	東勢	東勢分局				11
131	潭子區	427	臺中	雅潭	豐原分局				11
132	大雅區	428	臺中	雅潭	豐原分局				11
133	神岡區	429	臺中	豐原	豐原分局				11
134	大肚區	432	臺中	龍井	沙鹿分局				11
135	沙鹿區	433	臺中	清水	沙鹿分局				11
136	龍井區	434	臺中	龍井	沙鹿分局				11
137	梧棲區	435	臺中	清水	沙鹿分局				11
138	清水區	436	臺中	清水	沙鹿分局				11
139	大甲區	437	臺中	大甲	沙鹿分局				11
140	外埔區	438	臺中	大甲	沙鹿分局				11
141	大安區	439	臺北	大安	大安分處				11
142	彰化市	500							12
143	芬園鄉	502							12
144	花壇鄉	503							12
145	秀水鄉	504							12
146	鹿港鎮	505							12
147	福興鄉	506							12
148	線西鄉	507							12
149	和美鎮	508							12
150	伸港鄉	509							12
151	員林鎮	510							12
152	社頭鄉	511							12
153	永靖鄉	512							12
154	埔心鄉	513							12
155	溪湖鎮	514							12
156	大村鄉	515							12
157	埔鹽鄉	516							12
158	田中鎮	520							12
159	北斗鎮	521							12
160	田尾鄉	522							12
161	埤頭鄉	523							12
162	溪州鄉	524							12
163	竹塘鄉	525							12
164	二林鎮	526							12
165	大城鄉	527							12
166	芳苑鄉	528							12
167	二水鄉	530							12
168	南投市	540							13
169	中寮鄉	541							13
170	草屯鎮	542							13
171	國姓鄉	544							13
172	埔里鎮	545							13
173	仁愛鄉	546							13
174	名間鄉	551							13
175	集集鎮	552							13
176	水里鄉	553							13
177	魚池鄉	555							13
178	信義鄉	556							13
179	竹山鎮	557							13
180	鹿谷鄉	558							13
181	東區	600							14
182	西區	600							14
183	番路鄉	602							15
184	梅山鄉	603							15
185	竹崎鄉	604							15
186	阿里山鄉	605							15
187	中埔鄉	606							15
188	大埔鄉	607							15
189	水上鄉	608							15
190	鹿草鄉	611							15
191	太保市	612							15
192	朴子市	613							15
193	東石鄉	614							15
194	六腳鄉	615							15
195	新港鄉	616							15
196	民雄鄉	621							15
197	大林鎮	622							15
198	溪口鄉	623							15
199	義竹鄉	624							15
200	布袋鎮	625							15
201	斗南鎮	630							16
202	大埤鄉	631							16
203	虎尾鎮	632							16
204	土庫鎮	633							16
205	褒忠鄉	634							16
206	東勢鄉	635							16
207	台西鄉	636							16
208	崙背鄉	637							16
209	麥寮鄉	638							16
210	斗六市	640							16
211	林內鄉	643							16
212	古坑鄉	646							16
213	莿桐鄉	647							16
214	西螺鎮	648							16
215	二崙鄉	649							16
216	北港鎮	651							16
217	水林鄉	652							16
218	口湖鄉	653							16
219	四湖鄉	654							16
220	元長鄉	655							16
225	安平區	708	臺南	臺南	臺南分局		臺南分局		17
226	安南區	709	臺南	安南	安南分局		安南稽徵所		17
227	永康區	710	臺南	永康	新化分局		新化稽徵所		17
228	歸仁區	711	臺南	歸仁	新化分局		新化稽徵所		17
229	新化區	712	臺南	新化	新化分局		新化稽徵所		17
230	左鎮區	713	臺南	新化	新化分局		新化稽徵所		17
231	玉井區	714	臺南	玉井	新化分局		新化稽徵所		17
232	楠西區	715	臺南	玉井	新化分局		新化稽徵所		17
233	南化區	716	臺南	玉井	新化分局		新化稽徵所		17
234	仁德區	717	臺南	歸仁	���化分局		新化稽徵所		17
235	關廟區	718	臺南	歸仁	新化分局		新化稽徵所		17
236	龍崎區	719	臺南	歸仁	新化分局		新化稽徵所		17
237	官田區	720	臺南	麻豆	新化分局		新化稽徵所		17
238	麻豆區	721	臺南	麻豆	佳里分局		佳里稽徵所		17
239	佳里區	722	臺南	佳里	佳里分局		佳里稽徵所		17
240	西港區	723	臺南	佳里	佳里分局		佳里稽徵所		17
241	七股區	724							17
242	將軍區	725	臺南	佳里	佳里分局		佳里稽徵所		17
243	學甲區	726	臺南	佳里	佳里分局		佳里稽徵所		17
244	北門區	727	臺南	佳里	佳里分局		佳里稽徵所		17
245	新營區	730	臺南	鹽水	新營分局		新營分局		17
246	後壁區	731	臺南	白河	新營分局		新營分局		17
247	白河區	732	臺南	白河	新營分局		新營分局		17
248	東山區	733	臺南	白河	新營分局		新營分局		17
249	六甲區	734	臺南	麻豆	新營分局		新營分局		17
250	下營區	735	臺南	麻豆	新營分局		新營分局		17
251	柳營區	736	臺南	鹽水	新營分局		新營分局		17
252	鹽水區	737	臺南	鹽水	新營分局		新營分局		17
253	善化區	741	臺南	新化	新營分局		新營分局		17
254	大內區	742	臺南	麻豆	新營分局		新營分局		17
255	山上區	743	臺南	新化	新化分局		新化稽徵所		17
256	新市區	744	臺南	新化	新化分局		新化稽徵所		17
257	安定區	745	臺南	新化	佳里分局		佳里稽徵所		17
258	新興區	800	高雄	新興	新興分處				18
259	前金區	801	高雄	鹽埕	鹽埕分處				18
260	苓雅區	802	高雄	新興	新興分處				18
261	鹽埕區	803	高雄	鹽埕	鹽埕分處				18
262	鼓山區	804	高雄	鹽埕	鹽埕分處				18
263	旗津區	805	高雄	鹽埕	鹽埕分處				18
264	前鎮區	806	高雄	前鎮	前鎮				18
265	三民區	807	高雄	三民	三民				18
266	楠梓區	811	橋頭	楠梓	楠梓				18
267	小港區	812	高雄	前鎮	前鎮				18
268	左營區	813	橋頭	楠梓	左營分處				18
269	仁武區	814	橋頭	仁武	仁武				18
270	大社區	815	橋頭	仁武	仁武				18
271	岡山區	820	橋頭	岡山	岡山分處				18
272	路竹區	821	橋頭	路竹	岡山分處				18
273	阿蓮區	822	橋頭	路竹	岡山分處				18
274	田寮區	823	橋頭	路竹	岡山分處				18
275	燕巢區	824	橋頭	岡山	岡山分處				18
222	東區	701	臺南	東南	臺南分局				17
223	南區	702	臺南	東南	臺南分局				17
276	橋頭區	825	橋頭	岡山	岡山分處				18
277	梓官區	826	橋頭	岡山	岡山分處				18
278	彌陀區	827	橋頭	岡山	岡山分處				18
279	永安區	828	橋頭	岡山	岡山分處				18
280	湖內區	829	橋頭	路竹	岡山分處				18
281	鳳山區	830	高雄	鳳山	鳳山分處				18
282	大寮區	831	高雄	大寮	大寮				18
283	林園區	832	高雄	大寮	大寮				18
284	鳥松區	833	橋頭	仁武	仁武				18
285	大樹區	840	橋頭	鳳山	仁武				18
286	旗山區	842	橋頭	旗山	旗山分處				18
287	美濃區	843	橋頭	美濃	旗山分處				18
288	六龜區	844	橋頭	美濃	旗山分處				18
289	內門區	845	橋頭	旗山	旗山分處				18
290	杉林區	846	橋頭	旗山	旗山分處				18
291	甲仙區	847	橋頭	旗山	旗山分處				18
292	桃源區	848	橋頭	美濃	旗山分處				18
293	那瑪夏區	849	橋頭	旗山	旗山分處				18
294	茂林區	851	橋頭	美濃	旗山分處				18
295	茄萣區	852	橋頭	路竹	岡山分處				18
296	東沙群島	817							19
297	南沙群島	819							19
298	馬公市	880							20
299	西嶼鄉	881							20
300	望安鄉	882							20
301	七美鄉	883							20
302	白沙鄉	884							20
303	湖西鄉	885							20
304	金沙鎮	890							21
305	金湖鎮	891							21
306	金寧鄉	892							21
307	金城鎮	893							21
308	烈嶼鄉	894							21
309	烏坵鄉	896							21
310	屏東市	900							22
311	三地門鄉	901							22
312	霧台鄉	902							22
313	瑪家鄉	903							22
314	九如鄉	904							22
315	里港鄉	905							22
316	高樹鄉	906							22
317	鹽埔鄉	907							22
318	長治鄉	908							22
319	麟洛鄉	909							22
320	竹田鄉	911							22
321	內埔鄉	912							22
322	萬丹鄉	913							22
323	潮州鎮	920							22
324	泰武鄉	921							22
325	來義鄉	922							22
326	萬巒鄉	923							22
327	崁頂鄉	924							22
328	新埤鄉	925							22
329	南州鄉	926							22
330	林邊鄉	927							22
331	東港鎮	928							22
332	琉球鄉	929							22
333	佳冬鄉	931							22
334	新園鄉	932							22
335	枋寮鄉	940							22
336	枋山鄉	941							22
337	春日鄉	942							22
338	獅子鄉	943							22
339	車城鄉	944							22
340	牡丹鄉	945							22
341	恆春鎮	946							22
342	滿州鄉	947							22
343	台東市	950							23
344	綠島鄉	951							23
345	蘭嶼鄉	952							23
346	延平鄉	953							23
347	卑南鄉	954							23
348	鹿野鄉	955							23
349	關山鎮	956							23
350	海端鄉	957							23
351	池上鄉	958							23
352	東河鄉	959							23
353	成功鎮	961							23
354	長濱鄉	962							23
355	太麻里鄉	963							23
356	金峰鄉	964							23
357	大武鄉	965							23
358	達仁鄉	966							23
359	花蓮市	970							24
360	新城鄉	971							24
361	秀林鄉	972							24
362	吉安鄉	973							24
363	壽豐鄉	974							24
364	鳳林鎮	975							24
365	光復鄉	976							24
366	豐濱鄉	977							24
367	瑞穗鄉	978							24
368	萬榮鄉	979							24
369	玉里鎮	981							24
370	卓溪鄉	982							24
371	富里鄉	983							24
221	中西區	700	臺南	臺南	臺南分局				17
224	北區	704	臺南	臺南	臺南分局				17
\.


--
-- Data for Name: yfcase_yfcase; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcase_yfcase (id, "yfcaseCaseNumber", "yfcaseCompany", "yfcaseBigSection", "yfcaseSmallSection", "yfcaseVillage", "yfcaseNeighbor", "yfcaseStreet", "yfcaseSection", "yfcaseLane", "yfcaseAlley", "yfcaseNumber", "yfcaseFloor", "yfcaseDebtor", "yfcaseCreditor", "yfcaseCreditorMobilePhone", user_id, "yfcaseCity_id", "yfcaseTownship_id", "yfcaseCityWithTownship", "yfcaseCaseStatus", "yfcaseSealUrl", "yfcaseDeedtaxBuildingTransferArea1", "yfcaseDeedtaxBuildingTransferArea2", "yfcaseDeedtaxBuildingTransferArea3", "yfcaseDeedtaxBuildingTransferArea4", "yfcaseDeedtaxBuildingTransferArea5", "yfcaseDeedtaxBuildingTransferArea6", "yfcaseDeedtaxBuildingTransferLevel1", "yfcaseDeedtaxBuildingTransferLevel2", "yfcaseDeedtaxBuildingTransferLevel3", "yfcaseDeedtaxBuildingTransferLevel4", "yfcaseDeedtaxBuildingTransferLevel5", "yfcaseDeedtaxBuildingTransferLevel6", "yfcaseDeedtaxBuildingTransferPublicBuildingNumber1", "yfcaseDeedtaxBuildingTransferPublicBuildingNumber2", "yfcaseDeedtaxBuildingTransferPublicBuildingNumber3", "yfcaseDeedtaxBuildingTransferPublicBuildingNumber4", "yfcaseDeedtaxBuildingTransferPublicHoldings1", "yfcaseDeedtaxBuildingTransferPublicHoldings2", "yfcaseDeedtaxBuildingTransferPublicHoldings3", "yfcaseDeedtaxBuildingTransferPublicHoldings4", "yfcaseDeedtaxBuildingTransferStructure1", "yfcaseDeedtaxBuildingTransferStructure2", "yfcaseDeedtaxBuildingTransferStructure3", "yfcaseDeedtaxBuildingTransferStructure4", "yfcaseDeedtaxBuildingTransferStructure5", "yfcaseDeedtaxBuildingTransferStructure6", "yfcaseDeedtaxClient", "yfcaseDeedtaxClosingNewsletter", "yfcaseDeedtaxCoOwnerMatch", "yfcaseDeedtaxCreditorAlley", "yfcaseDeedtaxCreditorBirthday", "yfcaseDeedtaxCreditorBuildHoldingPointAll", "yfcaseDeedtaxCreditorBuildHoldingPointPersonal", "yfcaseDeedtaxCreditorCity", "yfcaseDeedtaxCreditorFloor", "yfcaseDeedtaxCreditorIdentityCard", "yfcaseDeedtaxCreditorLandHoldingPointAll", "yfcaseDeedtaxCreditorLandHoldingPointPersonal", "yfcaseDeedtaxCreditorLane", "yfcaseDeedtaxCreditorLocalPhone", "yfcaseDeedtaxCreditorMobilePhone", "yfcaseDeedtaxCreditorNeighbor", "yfcaseDeedtaxCreditorNumber", "yfcaseDeedtaxCreditorSection", "yfcaseDeedtaxCreditorStreet", "yfcaseDeedtaxCreditorTownship", "yfcaseDeedtaxCreditorVillage", "yfcaseDeedtaxDebtorAlley", "yfcaseDeedtaxDebtorBirthday", "yfcaseDeedtaxDebtorBuildHoldingPointAll", "yfcaseDeedtaxDebtorBuildHoldingPointPersonal", "yfcaseDeedtaxDebtorCity", "yfcaseDeedtaxDebtorFloor", "yfcaseDeedtaxDebtorIdentityCard", "yfcaseDeedtaxDebtorLandHoldingPointAll", "yfcaseDeedtaxDebtorLandHoldingPointPersonal", "yfcaseDeedtaxDebtorLane", "yfcaseDeedtaxDebtorLocalPhone", "yfcaseDeedtaxDebtorMobilePhone", "yfcaseDeedtaxDebtorNeighbor", "yfcaseDeedtaxDebtorNumber", "yfcaseDeedtaxDebtorSection", "yfcaseDeedtaxDebtorStreet", "yfcaseDeedtaxDebtorTownship", "yfcaseDeedtaxDebtorVillage", "yfcaseDeedtaxDeclarationDate", "yfcaseDeedtaxEstablishmentDate", "yfcaseDeedtaxHouseTaxRegistrationNumber", "yfcaseDeedtaxReclaimMethod", "yfcaseDeedtaxRemarks", "yfcaseDeedtaxReportAttached", "yfcaseDeedtaxTransferPrice", "yfcaseAcceptingAuthorityTownship", "yfcaseApplyAcrossInstitutions", "yfcaseRealEstateRegistrationDateOfCause", "yfcaseRealEstateRegistrationReasonForRegistration", "yfcaseRealEstateRegistrationRegisteredAgent", "yfcaseRealEstateRegistrationRegistrationNote", "yfcaseComplaintComplaintDate", "yfcaseComplaintExhibit1", "yfcaseComplaintExhibit2", "yfcaseComplaintExhibit3", "yfcaseComplaintExhibit4", "yfcaseComplaintLandDepth", "yfcaseComplaintLandWidth", "yfcaseComplaintLitigationAgent", "yfcaseComplaintPresentValueOfHouseTax", "yfcaseComplaintPresentValueOfLandAnnouncement", "yfcaseComplaintRefereeFee", "yfcaseComplaintUnsuccessfulDate", "yfcaseLetterAgent", "yfcaseCownerAgent", "yfcasecoOwnerBuildHPAll", "yfcasecoOwnerBuildHPPersonnal", "yfcasecoOwnerLandHPAll", "yfcasecoOwnerLandHPPersonnal") FROM stdin;
7	109南金職亥字第223號	揚富開發有限公司	\N	\N	\N	\N	國華街	一段	56巷	\N	9號	\N	\N	\N	\N	6	17	223	台南市南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
15	109年司執字027357號	揚富開發有限公司	新安段	\N	\N	\N	\N	\N	\N	\N	中正路310之7號	\N	\N	\N	\N	6	17	229	台南市新化區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
72	109年度司執字第24439號	揚富開發有限公司	潭底	潭底	\N	\N	\N	\N	\N	\N	信義街46巷7號	\N	湯思彤	\N	\N	8	15	197	嘉義縣大林鎮	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
76	109南金職亥字第000610號	揚富開發有限公司	保安段	\N	\N	\N	\N	\N	\N	\N	忠孝路25之32號	\N	李宗翰	\N	\N	8	17	238	台南市麻豆區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
107	109司執42869	揚富開發有限公司	龍泉水	\N	\N	\N	\N	\N	\N	\N	山海路69之4號	\N	\N	\N	\N	4	22	341	屏東縣恆春鎮	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
117	109雄金酉263	揚富開發有限公司	大港	\N	\N	\N	\N	\N	\N	\N	九如1路883號6F-4	\N	\N	\N	\N	4	18	265	高雄市三民區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
134	109年度司執字第32750號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	光復路14號	\N	\N	\N	\N	8	15	192	嘉義縣朴子市	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
129	109年度司執字第53609號	揚富開發有限公司	中正	\N	\N	\N	\N	\N	\N	\N	未輸人	\N	\N	\N	\N	8	3	23	新北市汐止區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
161	110司執字第18606號	揚富開發有限公司	鹽埕	\N	\N	\N	\N	\N	\N	\N	新興路91巷14號	\N	\N	\N	\N	6	17	223	台南市南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
141	109年度司執字第35637號	揚富開發有限公司	金龍(不同段名)	\N	\N	\N	\N	\N	\N	\N	民族六街4巷9號3樓	\N	高右龍	\N	\N	8	3	23	新北市汐止區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
140	109年度司執字第53609號	揚富開發有限公司	中正段	\N	\N	\N	\N	\N	\N	\N	中正路99巷2號4樓	\N	蔡怡君	\N	\N	8	3	23	新北市汐止區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
125	108治18844	揚富開發有限公司	仁營	\N	\N	\N	\N	\N	\N	\N	安樂三街76巷8號	\N	沈國成	\N	\N	4	18	269	高雄市仁武區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
131	109北79276	揚富開發有限公司	新電	\N	\N	\N	\N	\N	\N	\N	新進路二段445巷4號	\N	\N	\N	\N	6	17	245	台南市新營區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
128	109年度司執字第95887號	揚富開發有限公司	大灣段	\N	\N	\N	\N	\N	\N	\N	永華路201巷32弄33號	\N	\N	\N	\N	8	17	227	台南市永康區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
138	109方121438	揚富開發有限公司	金華	\N	\N	\N	\N	\N	\N	\N	建平七街677號3樓之16	\N	\N	\N	\N	6	17	225	台南市安平區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
58	109源59965	揚富開發有限公司	龍泉	\N	\N	\N	\N	\N	\N	\N	光華街119巷22號	\N	袁幗蘭	\N	\N	6	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
92	109年度板金職字第336號	鉅鈦開發有限公司	樹德段	\N	\N	\N	\N	\N	\N	\N	樹德街136巷13弄8號2樓	\N	呂金印	\N	\N	6	3	37	新北市樹林區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
93	109士清算仁字第2號	鉅鈦開發有限公司	直興段	二小段	\N	\N	\N	\N	\N	\N	環河南路一段155巷4號3樓	\N	蘇珈瑩即蘇美玲	\N	\N	8	1	6	台北市萬華區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
96	109年度司執字第30319號	揚富開發有限公司	新峰段	\N	\N	\N	\N	\N	\N	\N	忠孝東路258巷16弄9號2樓	\N	李梓平	\N	\N	8	3	23	新北市汐止區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
181	110年度司執字第26782號(甲)	揚富開發有限公司	原佃	\N	\N	\N	\N	\N	\N	\N	長溪路二段643巷25號	\N	邱素津＿	\N	\N	8	17	226	台南市安南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
139	109年度司執字第43684號	鉅鈦開發有限公司	迪化	三	\N	\N	\N	\N	\N	\N	南京西路239巷17號	\N	林祺	\N	\N	8	1	2	台北市大同區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
82	109年度司執字第22608號	鉅鈦開發有限公司	公館段	\N	\N	\N	\N	\N	\N	\N	國光路197巷8號5樓	\N	林燕堂	\N	\N	8	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
97	109年度司執字第48074號	鉅鈦開發有限公司	大同	二	\N	\N	\N	\N	\N	\N	蘭州街56號	\N	王渝閩	\N	\N	8	1	2	台北市大同區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
103	109年司執字042850號	鉅鈦開發有限公司	江子翠	第一崁	\N	\N	\N	\N	\N	\N	未輸人	\N	陳俊明	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
109	109司執32479	揚富開發有限公司	草衙	二	\N	\N	\N	\N	\N	\N	和誠街96巷8號	\N	\N	\N	\N	4	18	264	高雄市前鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
108	109司執38502	揚富開發有限公司	竹寮	\N	\N	\N	\N	\N	\N	\N	蓬萊163號	\N	\N	\N	\N	4	18	285	高雄市大樹區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
106	106年度司執字第56950號	揚富開發有限公司	南港	四	\N	\N	\N	\N	\N	\N	東明街48號4樓	\N	張志榮	\N	\N	8	1	11	台北市南港區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
104	109年度司執字第28865號	揚富開發有限公司	長安	\N	\N	\N	\N	\N	\N	\N	大同路3段105巷1弄5號4樓	\N	蘇武銘	\N	\N	8	3	23	新北市汐止區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
180	109年度司執字第88333號	揚富開發有限公司	大港	\N	\N	\N	\N	\N	\N	\N	大興街280巷34弄17號	\N	錢金柱	\N	\N	8	17	224	台南市北區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
146	109司執字第79276號	揚富開發有限公司	新電段	\N	\N	\N	\N	\N	\N	\N	新進路二段445巷4號	\N	\N	\N	\N	8	17	245	台南市新營區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
24	108年度司執字第101063號	鉅鈦開發有限公司	全安	\N	\N	\N	\N	\N	\N	\N	建中街16巷9之1號	\N	周文郁	\N	\N	3	3	40	新北市新莊區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
43	109方68564	揚富開發有限公司	富強段	\N	\N	\N	\N	\N	\N	\N	社內28之34號	\N	陳秀鳳	\N	\N	6	17	256	台南市新市區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
20	106司執字第107512號	鉅鈦開發有限公司	民權	\N	\N	\N	\N	\N	\N	\N	民權路49巷5弄15號4樓	\N	周正濤	\N	\N	3	3	33	新北市永和區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
98	109司執字第32790號	鉅鈦開發有限公司	桃源段	五小段	\N	\N	\N	\N	\N	\N	一德街10巷7號4樓	\N	\N	\N	\N	8	1	9	台北市北投區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
57	109年度司執字第13135號	揚富開發有限公司	仁和段	\N	\N	\N	\N	\N	\N	\N	仁和路107巷12號	\N	黃臆潔即黃芳玉	\N	\N	8	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
41	109年度司執字第16332號	揚富開發有限公司	東門	七	\N	\N	\N	\N	\N	\N	和平路277號	\N	賴信章	\N	\N	8	14	181	嘉義市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
143	108年司執字125570號	鉅鈦開發有限公司	幸福段	\N	\N	\N	\N	\N	\N	\N	自強路四段31巷30號5樓	\N	林慧紅即林翠紅	\N	\N	3	3	39	新北市三重區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
144	109年司執助字006167號	鉅鈦開發有限公司	中山段	\N	\N	\N	\N	\N	\N	\N	中山路一段206巷117號2樓	\N	謝承峰	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
150	109年度司執字第89762號(甲標)	揚富開發有限公司	龍崗段	\N	\N	\N	\N	\N	\N	\N	鯤鯓路184巷11之1號	\N	陳順興	\N	\N	8	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
151	109司執81711	揚富開發有限公司	中芸	\N	\N	\N	\N	\N	\N	\N	中芸二路2巷35號	\N	\N	\N	\N	4	18	283	高雄市林園區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
149	109年司執字040017號	揚富開發有限公司	新厝	\N	\N	\N	\N	\N	\N	\N	文化路694巷29弄26號	\N	\N	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
147	110年度南金職字第14號	揚富開發有限公司	東安段	\N	\N	\N	\N	\N	\N	\N	長榮路二段24巷54號5樓	\N	陳麗如	\N	\N	8	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
16	109年度司執字第11399號	揚富開發有限公司	大灣段	\N	\N	\N	\N	\N	\N	\N	信義街44巷6號	\N	\N	\N	\N	6	17	227	台南市永康區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
59	109南金職戌600	揚富開發有限公司	鹽埕	\N	\N	\N	\N	\N	\N	\N	西門路一段380巷35號	\N	洪瑞鴻	\N	\N	6	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
28	108年度司執字第115385號	揚富開發有限公司	郡王祠	\N	\N	\N	\N	\N	\N	\N	南門路243之4號	\N	施明德	\N	\N	8	17	221	台南市中西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
27	109年度司執字第59682號	揚富開發有限公司	安慶	\N	\N	\N	\N	\N	\N	\N	怡安路一段237號	\N	唐士賢	\N	\N	8	17	226	台南市安南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
49	109公8838甲	揚富開發有限公司	北花	\N	\N	\N	\N	\N	\N	\N	北花里中正路567巷8弄6號	\N	陳琮霖	\N	\N	6	17	235	台南市關廟區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
12	測試文件(以109年度南金職字第31號為例)	鉅鈦開發有限公司	南門段	\N	\N	\N	\N	\N	\N	\N	西門路1段702巷17號	\N	李郭琴	\N	\N	8	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
105	109年度司執字第1687號	揚富開發有限公司	大同	二	\N	\N	\N	\N	\N	\N	民生西路423巷11弄2號5樓	\N	王渝閩	\N	\N	8	1	2	台北市大同區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
102	109司執字第59455號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	未輸人	\N	陳瓊卿	\N	\N	3	3	39	新北市三重區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
116	109年度司執字第74508號	揚富開發有限公司	佳里段	\N	\N	\N	\N	\N	\N	\N	建中街65號	\N	黃議弘	\N	\N	8	17	239	台南市佳里區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
114	109年度司執字第96558號	揚富開發有限公司	老古石段	\N	\N	\N	\N	\N	\N	\N	文賢路34號	\N	蘇興文	\N	\N	8	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
121	108年司執字118075號	揚富開發有限公司	五條港	\N	\N	\N	\N	\N	\N	\N	西門路二段307巷12號	\N	廖玲玉即廖章廷之繼承人、梁月雲即廖鐘富之繼承人即廖 章廷之繼承人	\N	\N	6	17	221	台南市中西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
11	108司執字43915	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	新生路52號	\N	\N	\N	\N	4	22	327	屏東縣崁頂鄉	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
182	110年度司執字第26782號(乙)	揚富開發有限公司	佃西	\N	\N	\N	\N	\N	\N	\N	海佃路四段490巷30弄31號	\N	邱素津	\N	\N	8	17	226	台南市安南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
145	110年度士金職字第28號	鉅鈦開發有限公司	三玉段	四小段	\N	\N	\N	\N	\N	\N	德行東路109巷67號2樓	\N	\N	\N	\N	8	1	8	台北市士林區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
152	109年度司執字第31027號	揚富開發有限公司	湖內	\N	\N	\N	\N	\N	\N	\N	民生南路618號	\N	張真	\N	\N	8	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
115	109年度司執字第58240號	揚富開發有限公司	後壁	\N	\N	\N	\N	\N	\N	\N	德善二街51巷17號	\N	黃俊傑	\N	\N	8	17	234	台南市仁德區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
9	109年度司執字第1330號	揚富開發有限公司	工建段	\N	\N	\N	泰安路	\N	\N	\N	23之7號	4樓	\N	\N	\N	3	2	19	基隆市七堵區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
18	109司執字第30344號	揚富開發有限公司	郡王祠	\N	\N	\N	健康路	一段	170巷	\N	3號之1	\N	陳俊銘	\N	\N	6	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
21	108司執字第20437號	鉅鈦開發有限公司	中山	\N	\N	\N	中山路	一段	206巷	\N	117之1號	\N	謝文閔	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
3	109雄金職申15	揚富開發有限公司	\N	\N	\N	\N	武德街	\N	140巷	\N	28號	\N	\N	\N	\N	4	18	264	高雄市前鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
6	108年度南金職字第751號	揚富開發有限公司	安西段	\N	\N	\N	安通路	四段	119巷	27弄	1號	\N	\N	\N	\N	8	17	226	台南市安南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
10	108年度司執字第47156號	揚富開發有限公司	江子翠段	\N	\N	\N	懷德街	\N	\N	\N	121號	3樓	\N	\N	\N	8	3	22	新北市板橋區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
56	109年度司執字第21251號	鉅鈦開發有限公司	板院	\N	\N	\N	學府路	一段	75巷	\N	11號	四樓	吳彥輝	\N	\N	3	3	35	新北市土城區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
19	109年司執字030899號	揚富開發有限公司	永仁段	\N	\N	\N	\N	\N	\N	\N	復國二路16巷9號	\N	黃文山	\N	\N	6	17	227	台南市永康區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
14	109南金職午290號(108年度司執字第32797號)	揚富開發有限公司	新南段	\N	\N	\N	\N	\N	\N	\N	安平路370巷3弄20號2樓	\N	林艮伶	\N	\N	6	17	225	台南市安平區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
4	108司執字114619號	揚富開發有限公司	鹽埕段	\N	\N	\N	\N	\N	\N	\N	金華路二段21巷1之1號	\N	\N	\N	\N	6	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
23	108年度司執字第52538號	鉅鈦開發有限公司	江子翠	溪頭	\N	\N	\N	\N	\N	\N	吳鳳路50巷42弄25號	\N	周真儀即周招悌	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
25	108司執助字第10318號	鉅鈦開發有限公司	臨沂	一	\N	\N	\N	\N	\N	\N	臨沂街25巷13號	\N	張禮真	\N	\N	3	1	1	台北市中正區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
29	109年度司執字第35052號	揚富開發有限公司	立人	\N	\N	\N	\N	\N	\N	\N	成功路600巷39弄4號	\N	曾永欽	\N	\N	8	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
44	108乾102489	揚富開發有限公司	柳營段	柳營小段	\N	\N	\N	\N	\N	\N	柳營276號之12	\N	\N	\N	\N	6	17	251	台南市柳營區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
40	109南金職亥480	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	那拔林224號之8	\N	\N	\N	\N	6	17	229	台南市新化區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
37	109東20361	揚富開發有限公司	內庄子段	\N	\N	\N	\N	\N	\N	\N	內庄里內庄76之1號	\N	\N	\N	\N	6	17	230	台南市左鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
1	108司執字第25440號	揚富開發有限公司	忠孝段	\N	\N	\N	\N	\N	\N	\N	四川路一段286巷5號	\N	\N	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
65	109方76573	揚富開發有限公司	仁愛	\N	\N	\N	\N	\N	\N	\N	北勢里北新街75號	\N	\N	\N	\N	6	17	235	台南市關廟區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
38	109坤35413	揚富開發有限公司	港子墘段	\N	\N	\N	\N	\N	\N	\N	崙頂87號	\N	\N	\N	\N	6	17	256	台南市新市區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
157	108司執字第78355號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	文昌路54號2樓	\N	\N	\N	\N	8	1	8	台北市士林區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
154	108司執第111775號	揚富開發有限公司	籬子內	崗山子	\N	\N	\N	\N	\N	\N	保泰路255之1號	\N	\N	\N	\N	4	18	264	高雄市前鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
179	109司執字第49288號	揚富開發有限公司	南龍	\N	\N	\N	\N	\N	\N	\N	屏東縣新園鄉南龍路28號	\N	\N	\N	\N	4	22	334	屏東縣新園鄉	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
2	108司執助字第3566號	揚富開發有限公司	重慶段	\N	\N	\N	\N	\N	\N	\N	忠孝路132巷23之2號	\N	\N	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
8	108司執字第160537號	揚富開發有限公司	江子翠段	第三崁小段	\N	\N	\N	\N	\N	\N	民治街134巷36號五樓	\N	\N	\N	\N	3	3	22	新北市板橋區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
5	109年度南金職字第31號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	前鋒路81號3樓	\N	\N	\N	\N	8	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
183	109年司執字056424號	揚富開發有限公司	菜公	六	\N	\N	\N	\N	\N	\N	高雄市左營區榮耀街61之1號二十一樓	\N	\N	\N	\N	4	18	268	高雄市左營區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
13	管理者文件測試	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	未輸人	\N	\N	\N	\N	2	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
163	110司執字第003667號	揚富開發有限公司	竹圍子段	二	\N	\N	\N	\N	\N	\N	國城三街18號4樓2	\N	\N	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
178	110年司執字008836號	揚富開發有限公司	埤子頭	\N	\N	\N	\N	\N	\N	\N	嘉義市五顯街101巷29號	\N	\N	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
71	109年度司執字第32628號	揚富開發有限公司	埤子頭	\N	\N	\N	\N	\N	\N	\N	自由路40號	\N	\N	\N	\N	8	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
111	109司執44762號	揚富開發有限公司	振興	\N	\N	\N	\N	\N	\N	\N	中正路30號	\N	\N	\N	\N	4	22	317	屏東縣鹽埔鄉	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
74	109西69320	揚富開發有限公司	興農	\N	\N	\N	\N	\N	\N	\N	興農里新生南路218巷93號	\N	\N	\N	\N	6	17	238	台南市麻豆區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
165	109年司執字039291號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	嘉義市吳鳳南路689巷2之5號	\N	\N	\N	\N	6	14	181	嘉義市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
75	109公32301	揚富開發有限公司	深坑子	\N	\N	\N	\N	\N	\N	\N	深坑里南雄路一段409巷27號	\N	\N	\N	\N	6	17	235	台南市關廟區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
77	109當81295	揚富開發有限公司	大文	\N	\N	\N	\N	\N	\N	\N	七股區大埕里大埕52號	\N	\N	\N	\N	6	17	241	台南市七股區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
86	109司執57799	揚富開發有限公司	埤頂	\N	\N	\N	\N	\N	\N	\N	建國路一段309巷2-4號	\N	\N	\N	\N	4	18	281	高雄市鳳山區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
88	109司執字第41851號	揚富開發有限公司	永昌段	五小段	\N	\N	\N	\N	\N	\N	中華路2段403號4樓	\N	\N	\N	\N	8	1	1	台北市中正區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
94	109年度司執字第64420號	鉅鈦開發有限公司	寶清	一	\N	\N	\N	\N	\N	\N	寶清街103巷37號4樓	\N	\N	\N	\N	8	1	4	台北市松山區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
89	109司執字第59674號	揚富開發有限公司	萬慶段	二小段	\N	\N	\N	\N	\N	\N	景福街135巷9號	\N	\N	\N	\N	8	1	12	台北市文山區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
90	109司執字第73709號	揚富開發有限公司	十字段	\N	\N	\N	\N	\N	\N	\N	海佃路三段48巷42弄8號	\N	\N	\N	\N	8	17	226	台南市安南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
124	109南105558	揚富開發有限公司	延平	\N	\N	\N	\N	\N	\N	\N	北門路二段576巷9號5樓之2	\N	\N	\N	\N	6	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
87	109司執字第74119號	揚富開發有限公司	忠孝段	\N	\N	\N	\N	\N	\N	\N	忠孝街109巷9號	\N	\N	\N	\N	8	17	249	台南市六甲區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
30	109年度司執字第1129號	揚富開發有限公司	海東	\N	\N	\N	\N	\N	\N	\N	大安街229巷6號	\N	陳懋隆	\N	\N	8	17	226	台南市安南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
148	109年司執字039354號	揚富開發有限公司	興村	\N	\N	\N	\N	\N	\N	\N	溪興街231巷20弄9號	\N	\N	\N	\N	6	14	181	嘉義市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
110	109司執22251號	揚富開發有限公司	中洲	\N	\N	\N	\N	\N	\N	\N	長榮街14巷12	\N	\N	\N	\N	4	22	323	屏東縣潮州鎮	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
99	109誠25936	揚富開發有限公司	永福	\N	\N	\N	\N	\N	\N	\N	中庄村20鄰中正路204號	\N	\N	\N	\N	6	15	195	嘉義縣新港鄉	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
159	109司執字第104902號	揚富開發有限公司	光明段	\N	\N	\N	\N	\N	\N	\N	民權街232號	\N	\N	\N	\N	6	17	249	台南市六甲區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
162	109司執字第111619號(未辦保存登記)	揚富開發有限公司	謝厝寮	\N	\N	\N	\N	\N	\N	\N	謝厝寮157之4號	\N	\N	\N	\N	6	17	238	台南市麻豆區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
158	107司執字第41426號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	松河街658號3樓	\N	\N	\N	\N	8	1	11	台北市南港區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
112	109速73206（未辦保存登記）	揚富開發有限公司	安西段	\N	\N	\N	\N	\N	\N	\N	安和路一段321巷62號	\N	\N	\N	\N	6	17	226	台南市安南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
113	109南98245	揚富開發有限公司	四甲	\N	\N	\N	\N	\N	\N	\N	東榮街92巷7號	\N	\N	\N	\N	6	17	235	台南市關廟區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
123	109清98740	揚富開發有限公司	郡王祠	\N	\N	\N	\N	\N	\N	\N	大同路一段70巷17號5樓之3	\N	\N	\N	\N	6	17	221	台南市中西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
85	109司執2874	揚富開發有限公司	振昌	\N	\N	\N	\N	\N	\N	\N	樹德路2巷2號	\N	\N	\N	\N	4	18	264	高雄市前鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
122	109廉96762	揚富開發有限公司	安東	\N	\N	\N	\N	\N	\N	\N	郡安路三段236巷6弄2號	\N	\N	\N	\N	6	17	226	台南市安南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
118	109文55155	揚富開發有限公司	清水巖	\N	\N	\N	\N	\N	\N	\N	金潭路279巷20弄3號	\N	\N	\N	\N	4	18	283	高雄市林園區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
119	109源112518	揚富開發有限公司	郡王祠	\N	\N	\N	\N	\N	\N	\N	五妃街207之4號	\N	\N	\N	\N	6	17	221	台南市中西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
120	109方89787	揚富開發有限公司	南門	\N	\N	\N	\N	\N	\N	\N	西門路一段556號	\N	\N	\N	\N	6	17	221	台南市中西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
48	109西41051	揚富開發有限公司	普濟	\N	\N	\N	\N	\N	\N	\N	海安路二段296巷33號	\N	\N	\N	\N	6	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
78	109意59310	揚富開發有限公司	竹子腳	\N	\N	\N	\N	\N	\N	\N	竹埔里46號	\N	魏士堂	\N	\N	6	17	252	台南市鹽水區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
31	109年度司執字第6516號	揚富開發有限公司	湖內	\N	\N	\N	\N	\N	\N	\N	民生南路608巷119號	\N	蔡明坤	\N	\N	8	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
42	108年司執字107026號	揚富開發有限公司	南華段	\N	\N	\N	\N	\N	\N	\N	金華路一段29巷8弄22號	\N	沈昭安	\N	\N	6	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
84	109年度司執字第27872號	鉅鈦開發有限公司	興安段	一小段	\N	\N	\N	\N	\N	\N	興隆路3段36巷4號	\N	阮柏勳	\N	\N	8	1	12	台北市文山區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
142	109司執字第73217號	鉅鈦開發有限公司	陽明	三	\N	\N	\N	\N	\N	\N	美崙街86巷16號	\N	孫幼瑩	\N	\N	8	1	8	台北市士林區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
166	109年度司執字第121920號	揚富開發有限公司	星鑽	\N	\N	\N	\N	\N	\N	\N	民生路2段215、217號	\N	楊士典	\N	\N	8	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
136	109年度司執字第67496號（未辦保存登記）	揚富開發有限公司	新國	\N	\N	\N	\N	\N	\N	\N	建國街12號	\N	柯超元	\N	\N	8	17	229	台南市新化區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
26	109司執字第23899號	鉅鈦開發有限公司	華江	二	\N	\N	\N	\N	\N	\N	環河南路二段250巷3弄16號4樓	\N	罕光宗即罕浩銓	\N	\N	3	1	6	台北市萬華區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
68	109正69439	揚富開發有限公司	永信	\N	\N	\N	\N	\N	\N	\N	二王路155巷2號	\N	林茂松	\N	\N	6	17	227	台南市永康區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
167	110年度南金職字第242號	揚富開發有限公司	育樂段	\N	\N	\N	\N	\N	\N	\N	青年路237號	\N	張逵即張良卦	\N	\N	8	17	222	台南市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
69	109年度司執字第88410號	揚富開發有限公司	正義北段	\N	\N	\N	\N	\N	\N	\N	中央北路122巷15號5樓	\N	顏鎂伶	\N	\N	3	3	39	新北市三重區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
132	109司執簡字第107286號	揚富開發有限公司	南門段	\N	\N	\N	\N	\N	\N	\N	南門路44巷10之1號	\N	\N	\N	\N	6	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
160	109司執字第97382號	揚富開發有限公司	鹽埕	\N	\N	\N	\N	\N	\N	\N	新建路43巷13之1號	\N	\N	\N	\N	6	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
33	109年度司執字第9670號	揚富開發有限公司	北社尾段	\N	\N	\N	\N	\N	\N	\N	遠東街28巷12號	\N	\N	\N	\N	8	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
155	110年度司執字第3667號	揚富開發有限公司	竹圍子	二	\N	\N	\N	\N	\N	\N	國城三街18號4樓2	\N	王桂芳	\N	\N	8	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
169	110年司執字020549號	揚富開發有限公司	東興	\N	\N	\N	\N	\N	\N	\N	東山里東山263號	\N	\N	\N	\N	6	17	248	台南市東山區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
177	109年司執字051099號	揚富開發有限公司	玉川	\N	\N	\N	\N	\N	\N	\N	成功東街52巷8號	\N	伍台雲	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
17	南院武109司執廉字第30199號	揚富開發有限公司	永安段	\N	\N	\N	\N	\N	\N	\N	中正路169號	\N	\N	\N	\N	6	17	247	台南市白河區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
35	南院武109司執如字第54533號	揚富開發有限公司	歸仁北段	\N	\N	\N	\N	\N	\N	\N	看東里成功六街16號	\N	易繼漢	\N	\N	6	17	228	台南市歸仁區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
34	108司執43915	揚富開發有限公司	越溪段	\N	\N	\N	\N	\N	\N	\N	屏東縣崁頂鄉新生路52	\N	洪蘇淑珍	\N	\N	4	22	327	屏東縣崁頂鄉	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
55	109宇6516	揚富開發有限公司	湖內	\N	\N	\N	\N	\N	\N	\N	民生南路608巷119號	\N	蔡明坤	\N	\N	6	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
62	109簡20594	揚富開發有限公司	白川	\N	\N	\N	\N	\N	\N	\N	新榮路35巷15號5樓之1	\N	張雪梅	\N	\N	6	14	182	嘉義市西區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
53	109東14796	揚富開發有限公司	盧厝	\N	\N	\N	\N	\N	\N	\N	圓福街118巷48弄46號	\N	鄧玉梅	遠東國際商業銀行股份有限公司	\N	6	14	181	嘉義市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
36	109司執地10785	揚富開發有限公司	瑞隆段	1小段	\N	\N	\N	\N	\N	\N	瑞興街102巷18號	\N	陳豊榮	\N	\N	4	18	264	高雄市前鎮區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
70	109年度司執字第67748號	揚富開發有限公司	新平	\N	\N	\N	\N	\N	\N	\N	民生路314巷22號	\N	\N	\N	\N	8	17	229	台南市新化區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
80	109年度司執字第68916號	揚富開發有限公司	仁愛段	\N	\N	\N	\N	\N	\N	\N	開元路148巷43弄42號5樓之2	\N	\N	\N	\N	8	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
22	108年度司執字第130169號	鉅鈦開發有限公司	江子翠	第三崁	\N	\N	\N	\N	\N	\N	江寧路三段55巷9之4號5樓	\N	楊麗珠	\N	\N	3	3	22	新北市板橋區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
67	109祥76710	揚富開發有限公司	仁愛	\N	\N	\N	\N	\N	\N	\N	開元路148巷101弄29號	\N	黃淑芳	\N	\N	6	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
168	110年度南金職字第249號	揚富開發有限公司	安西段	\N	\N	\N	\N	\N	\N	\N	安通路四段119巷27弄1號	\N	陳香吟	\N	\N	8	17	226	台南市安南區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
63	109年度司執字第73388號	揚富開發有限公司	正興段	\N	\N	\N	\N	\N	\N	\N	公園路487巷37號	\N	陳碧華	\N	\N	8	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
79	109年度司執字第16333號	揚富開發有限公司	北港段	\N	\N	\N	\N	\N	\N	\N	文明路100巷13號	\N	陳政澤即陳重孝即陳義成	\N	\N	8	16	216	雲林縣北港鎮	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
47	109南金職亥字第483號	揚富開發有限公司	崁腳北段	\N	\N	\N	\N	\N	\N	\N	中山路875巷107之4號	\N	\N	\N	\N	6	17	234	台南市仁德區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
81	108年司執字20437號	鉅鈦開發有限公司	中山段	\N	\N	\N	\N	\N	\N	\N	中山路1段206巷117之1號	\N	謝文閔	\N	\N	8	3	22	新北市板橋區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
83	108年度司執字第27827號	鉅鈦開發有限公司	光明段 46	\N	\N	\N	\N	\N	\N	\N	正和街96巷48號4樓	\N	陳堯杰	\N	\N	8	3	43	新北市蘆洲區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
95	109年度司執字第28865號	鉅鈦開發有限公司	長安段	\N	\N	\N	\N	\N	\N	\N	大同路3段105巷1弄5號4樓	\N	蘇武銘	\N	\N	8	3	23	新北市汐止區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
91	108司執字第113165號	揚富開發有限公司	富強段	\N	\N	\N	\N	\N	\N	\N	裕農路288巷110弄26號	\N	陳佩君	\N	\N	8	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
101	109司執40512	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	右昌忠義八巷33號	\N	\N	\N	\N	4	18	266	高雄市楠梓區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
73	109明75353	揚富開發有限公司	保安	\N	\N	\N	\N	\N	\N	\N	武英街33巷22號	\N	凃順德	\N	\N	6	17	221	台南市中西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
137	108年度司執字第49860號	鉅鈦開發有限公司	陽明	三	\N	\N	\N	\N	\N	\N	美崙街86巷16號	\N	孫勝民	\N	\N	8	1	8	台北市士林區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
126	109年度司執字第78498號	揚富開發有限公司	八甲段	\N	\N	\N	\N	\N	\N	\N	南潭二街150號	\N	王淑珍	\N	\N	8	17	228	台南市歸仁區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
127	109年度司執字第93452號	揚富開發有限公司	東安段	\N	\N	\N	\N	\N	\N	\N	長榮路二段32巷46弄33號	\N	\N	\N	\N	8	17	222	台南市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
133	109六85385	揚富開發有限公司	福平	\N	\N	\N	\N	\N	\N	\N	中平九街91號	\N	李復富	\N	\N	4	11	121	台中市太平區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
130	109湘102505	揚富開發有限公司	新埔	\N	\N	\N	\N	\N	\N	\N	北寮街23號	\N	\N	\N	\N	6	17	235	台南市關廟區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
156	109司執字第56774號	揚富開發有限公司	\N	\N	\N	\N	\N	\N	\N	\N	大北路30號	\N	\N	\N	\N	8	1	8	台北市士林區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
52	109速26223	揚富開發有限公司	元	四	\N	\N	\N	\N	\N	\N	過溝里14鄰蘭井街115巷6號	\N	\N	\N	\N	6	14	181	嘉義市東區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
170	110年司執字026852號	揚富開發有限公司	東中	\N	\N	\N	\N	\N	\N	\N	東仁街38巷7號	\N	\N	\N	\N	6	17	248	台南市東山區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
153	110年度司執字第6768號	揚富開發有限公司	盧厝	\N	\N	\N	\N	\N	\N	\N	林森東路722之26號四樓之2	\N	暴嘉林	\N	\N	8	14	181	嘉義市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
51	108利23511	揚富開發有限公司	何庄	\N	\N	\N	\N	\N	\N	\N	育人路705號	\N	何金龍	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
61	108月24139	揚富開發有限公司	下路頭	\N	\N	\N	\N	\N	\N	\N	芳安路17巷231號	\N	林昭焜	\N	\N	6	14	181	嘉義市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
64	109司執6502	揚富開發有限公司	五房	\N	\N	\N	\N	\N	\N	\N	福德路165號	\N	潘緯鵬	\N	\N	4	22	334	屏東縣新園鄉	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
60	109妥1718	揚富開發有限公司	新東	\N	\N	\N	\N	\N	\N	\N	林森路二段192巷123號	\N	周吟峯	\N	\N	6	17	222	台南市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
135	109年度司執字第121102號	揚富開發有限公司	鹽埕	\N	\N	\N	\N	\N	\N	\N	金華路二段15巷4之3號	\N	陳勝賢	\N	\N	8	17	223	台南市南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
66	109橋清算子1	揚富開發有限公司	仕和	\N	\N	\N	\N	\N	\N	\N	南溝路二段71號	\N	馬雍凱	\N	\N	4	18	276	高雄市橋頭區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
50	109年度司執字第53716號	揚富開發有限公司	後厝段	\N	\N	\N	\N	\N	\N	\N	朝琴路116號	\N	蔡福建	\N	\N	8	17	252	台南市鹽水區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
100	109年度司執字第36067號	揚富開發有限公司	富台	\N	\N	\N	長榮路	五段	187巷	\N	32號	\N	陳國瑞律師即趙逢青之遺產管理人	\N	\N	2	17	224	台南市歸仁區	在途	https://img69.imagetwist.com/i/41830/2ll75rh4pb8w.jpg/seal.jpg	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
54	109宇4331	揚富開發有限公司	萬年	\N	\N	\N	\N	\N	\N	\N	屏東市大武路51-4號	\N	臧荷馨	\N	\N	4	22	310	屏東縣屏東市	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
39	109西45145	揚富開發有限公司	海北段	\N	\N	\N	\N	\N	\N	\N	海佃路二段766巷8弄23號	\N	\N	\N	\N	6	17	226	台南市安南區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
45	109年度南金職字第427號（109司職字15106）	揚富開發有限公司	新化	王公廟	\N	\N	\N	\N	\N	\N	信義路100號	\N	蔡國華	\N	\N	6	17	229	台南市新化區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
46	109年度南金職字第465號	揚富開發有限公司	草糵	\N	\N	\N	\N	\N	\N	\N	美豐里15鄰美豐121之3號	\N	賴皇州	\N	\N	6	17	243	台南市學甲區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
32	南院武109司執坤字第1116號	揚富開發有限公司	小北	\N	\N	\N	\N	\N	\N	\N	文賢路520巷55弄14號	\N	方耀東	\N	\N	6	17	224	台南市北區	結案	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
172	110年度司執字第8323號	揚富開發有限公司	虎尾寮段	\N	\N	\N	\N	\N	\N	\N	東成街219巷41號	\N	鄭志雄	\N	\N	8	17	222	台南市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
171	110司執字第005892號	揚富開發有限公司	新港	宮前	\N	\N	\N	\N	\N	\N	宮前村古民街8巷39號	\N	\N	\N	\N	6	15	195	嘉義縣新港鄉	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
173	109雄金職酉字第333號	揚富開發有限公司	旗港	\N	\N	\N	\N	\N	\N	\N	文正巷66號	\N	\N	\N	\N	4	18	263	高雄市旗津區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
175	110年度南金職字第131號	揚富開發有限公司	自強段	\N	\N	\N	\N	\N	\N	\N	成功路238巷1號	\N	鄭芬芳	\N	\N	8	17	224	台南市北區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
174	109年司執字112120號	揚富開發有限公司	佳里段	\N	\N	\N	\N	\N	\N	\N	新生路85巷5號	\N	尤財旺	\N	\N	8	17	239	台南市佳里區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
176	09年司執字048977號	揚富開發有限公司	元	二	\N	\N	\N	\N	\N	\N	中正路185巷17號	\N	洪有松	\N	\N	6	14	181	嘉義市東區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
164	110年司執字005029號	揚富開發有限公司	港子坪	\N	\N	\N	\N	\N	\N	\N	玉山路94巷232弄49號	\N	\N	\N	\N	6	14	182	嘉義市西區	在途	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	\N	0.00	0	0.00	\N	\N	\N	0	0	0	0
\.


--
-- Data for Name: yfcases_auction; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_auction (id, "auctionDateFirst", "auctionDateSecond", "auctionDateThird", "auctionDateFourth", "auctionFloorPriceFirst", "auctionFloorPriceSecond", "auctionFloorPriceThird", "auctionFloorPriceFourth", "auctionClickFirst", "auctionClickSecond", "auctionClickThird", "auctionClickFourth", "auctionMonitorFirst", "auctionMonitorSecond", "auctionMonitorThird", "auctionMonitorFourth", "auctionMarginFirst", "auctionMarginSecond", "auctionMarginThird", "auctionMarginFourth", yfcase_id) FROM stdin;
2	2020-06-10	\N	\N	\N	830000.00	0.00	0.00	0.00	22	0	0	0	1	0	0	0	166000.00	0.00	0.00	0.00	7
3	2020-05-13	2020-06-10	\N	\N	810000.00	689000.00	0.00	0.00	134	134	0	0	0	0	0	0	162000.00	138000.00	0.00	0.00	9
4	2020-08-18	\N	\N	\N	610000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	122000.00	0.00	0.00	0.00	18
5	2020-08-20	\N	\N	\N	3820000.00	0.00	0.00	0.00	97	0	0	0	1	0	0	0	770000.00	0.00	0.00	0.00	21
6	\N	\N	2020-05-27	\N	0.00	0.00	491000.00	0.00	0	0	69	0	0	0	1	0	0.00	0.00	99000.00	0.00	3
7	2020-02-19	2020-03-11	2020-04-08	\N	2650000.00	2120000.00	1696000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	6
8	2020-02-11	2020-03-10	\N	\N	1010000.00	810000.00	0.00	0.00	0	301	0	0	0	1	0	0	0.00	0.00	0.00	0.00	10
9	2020-10-23	\N	\N	\N	1200000.00	0.00	0.00	0.00	200	0	0	0	1	0	0	0	240000.00	0.00	0.00	0.00	56
10	2020-07-28	\N	\N	\N	2580000.00	0.00	0.00	0.00	97	0	0	0	0	0	0	0	516000.00	0.00	0.00	0.00	19
11	2020-07-08	2020-07-29	2020-08-19	\N	710000.00	568000.00	455000.00	0.00	43	68	102	0	0	0	0	0	142000.00	114000.00	91000.00	0.00	14
12	2020-05-19	\N	\N	\N	1200000.00	0.00	0.00	0.00	74	0	0	0	1	0	0	0	240000.00	0.00	0.00	0.00	4
13	\N	\N	2020-09-14	\N	0.00	0.00	1536000.00	0.00	0	0	130	0	0	0	2	0	0.00	0.00	310000.00	0.00	23
14	2020-08-14	\N	\N	\N	1532000.00	0.00	0.00	0.00	52	0	0	0	1	0	0	0	310000.00	0.00	0.00	0.00	25
15	2020-08-26	\N	\N	\N	2010000.00	0.00	0.00	0.00	50	0	0	0	4	0	0	0	402000.00	0.00	0.00	0.00	29
16	2020-08-12	2020-09-09	\N	\N	690000.00	1080000.00	0.00	0.00	59	59	0	0	0	0	0	0	138000.00	216000.00	0.00	0.00	30
17	2020-11-11	2020-11-11	\N	\N	4850000.00	4850000.00	0.00	0.00	207	207	0	0	2	2	0	0	970000.00	970000.00	0.00	0.00	24
18	2020-08-25	2020-09-22	\N	\N	4800000.00	3840000.00	0.00	0.00	93	120	0	0	3	3	0	0	960000.00	768000.00	0.00	0.00	28
19	2020-09-08	\N	\N	\N	1170000.00	0.00	0.00	0.00	101	0	0	0	2	0	0	0	234000.00	0.00	0.00	0.00	27
20	2020-10-06	\N	\N	\N	1100000.00	0.00	0.00	0.00	43	0	0	0	0	0	0	0	220000.00	0.00	0.00	0.00	49
21	2020-07-21	2020-08-11	2020-09-01	\N	3300000.00	2640000.00	2113000.00	0.00	35	0	119	0	0	0	0	0	66000.00	528000.00	423000.00	0.00	17
22	\N	2020-09-16	\N	\N	0.00	1280000.00	0.00	0.00	0	59	0	0	0	1	0	0	0.00	256000.00	0.00	0.00	35
23	2020-07-21	2020-08-11	2020-09-01	\N	920000.00	736000.00	589000.00	0.00	83	0	414	0	0	0	2	0	0.00	0.00	118000.00	0.00	15
24	\N	\N	\N	2020-06-09	0.00	0.00	0.00	362000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	34
25	2020-09-17	2020-10-15	\N	\N	3381000.00	2704800.00	0.00	0.00	0	63	0	0	0	0	0	0	677000.00	541000.00	0.00	0.00	55
26	2020-11-11	2020-12-02	\N	\N	1159000.00	928000.00	0.00	0.00	25	37	0	0	0	0	0	0	232000.00	186000.00	0.00	0.00	62
27	2020-10-07	\N	\N	\N	2835000.00	0.00	0.00	0.00	97	0	0	0	1	0	0	0	567000.00	0.00	0.00	0.00	47
28	2020-07-29	2020-09-02	\N	\N	3113000.00	2801700.00	0.00	0.00	0	116	0	0	0	0	0	0	0.00	561000.00	0.00	0.00	33
29	\N	2020-10-13	2020-11-03	2020-12-15	0.00	285000.00	230000.00	197000.00	0	40	68	105	0	0	0	0	0.00	57000.00	46000.00	40000.00	53
30	\N	\N	2020-09-17	\N	0.00	0.00	2160000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	404000.00	0.00	36
31	\N	\N	\N	2020-10-08	0.00	0.00	0.00	307200.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	62000.00	54
32	2021-02-17	\N	\N	\N	590000.00	0.00	0.00	0.00	186	0	0	0	0	0	0	0	118000.00	0.00	0.00	0.00	39
33	2020-09-30	\N	\N	\N	1402000.00	0.00	0.00	0.00	72	0	0	0	0	0	0	0	281000.00	0.00	0.00	0.00	45
34	2020-05-13	2020-06-03	2020-07-01	\N	700000.00	560000.00	448000.00	0.00	0	0	0	0	0	0	0	0	140000.00	71100.00	56900.00	0.00	44
35	2020-09-30	\N	\N	\N	384000.00	0.00	0.00	0.00	75	0	0	0	1	0	0	0	77000.00	0.00	0.00	0.00	46
36	2020-08-12	2020-09-02	2020-09-23	\N	490000.00	441000.00	397000.00	0.00	0	0	79	0	0	0	0	0	98000.00	89000.00	80000.00	0.00	40
37	2020-09-23	\N	\N	\N	1200000.00	0.00	0.00	0.00	34	0	0	0	0	0	0	0	240000.00	0.00	0.00	0.00	32
38	2020-09-29	\N	\N	\N	1500000.00	0.00	0.00	0.00	40	0	0	0	0	0	0	0	300000.00	0.00	0.00	0.00	37
39	2020-10-07	\N	\N	\N	732000.00	0.00	0.00	0.00	55	0	0	0	0	0	0	0	147000.00	0.00	0.00	0.00	51
40	2020-05-21	2020-06-18	\N	\N	2110000.00	1710000.00	0.00	0.00	0	98	0	0	0	0	0	0	0.00	0.00	0.00	0.00	1
41	\N	2020-11-05	\N	\N	0.00	1392000.00	0.00	0.00	0	69	0	0	0	0	0	0	0.00	279000.00	0.00	0.00	61
42	\N	\N	2020-11-10	\N	0.00	0.00	704000.00	0.00	0	0	133	0	0	0	0	0	0.00	0.00	141000.00	0.00	64
43	2020-11-17	2020-12-15	\N	\N	1800000.00	1440000.00	0.00	0.00	26	106	0	0	1	1	0	0	320000.00	288000.00	0.00	0.00	60
44	2021-04-21	\N	\N	\N	480000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	135
45	\N	\N	\N	2020-11-18	0.00	0.00	0.00	1968000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	394000.00	66
46	2020-11-26	\N	\N	\N	600000.00	0.00	0.00	0.00	35	0	0	0	0	0	0	0	120000.00	0.00	0.00	0.00	65
47	2020-10-20	\N	\N	\N	1400000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	50
48	2020-10-21	2020-11-11	\N	\N	160000.00	128000.00	0.00	0.00	63	81	0	0	0	1	0	0	32000.00	26000.00	0.00	0.00	58
49	2020-10-15	2020-11-05	2020-11-26	\N	1950000.00	1560000.00	1248000.00	0.00	68	115	160	0	0	0	0	0	350000.00	31200.00	25000.00	0.00	43
50	2020-09-30	2020-10-21	2020-11-11	\N	1900000.00	1520000.00	1368000.00	0.00	59	0	125	0	0	0	0	0	380000.00	0.00	114000.00	0.00	38
51	2021-06-24	\N	\N	\N	1634000.00	0.00	0.00	0.00	66	0	0	0	3	0	0	0	330000.00	0.00	0.00	0.00	157
52	\N	2021-05-11	\N	\N	0.00	3600000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	720000.00	0.00	0.00	154
53	\N	\N	\N	2021-08-03	0.00	0.00	0.00	513000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	103000.00	179
54	2020-04-09	2020-05-07	2020-06-04	\N	2200000.00	1760000.00	1414000.00	0.00	0	0	172	0	0	0	1	0	0.00	0.00	290000.00	0.00	2
55	2020-06-09	2020-07-14	\N	\N	2400000.00	1920000.00	0.00	0.00	58	140	0	0	0	0	0	0	480000.00	390000.00	0.00	0.00	8
56	2020-08-13	2020-09-10	2020-10-08	\N	2400000.00	1920000.00	1524000.00	0.00	46	0	100	0	0	0	0	0	480000.00	0.00	310000.00	0.00	20
57	2020-09-17	2020-10-15	2020-11-05	\N	3381000.00	2704800.00	2163800.00	0.00	12	0	95	0	0	0	0	0	677000.00	541000.00	433000.00	0.00	31
58	2020-10-14	2020-11-06	2020-11-25	\N	2000000.00	1600000.00	1280000.00	0.00	39	187	187	0	0	2	2	0	400000.00	320000.00	256000.00	0.00	42
59	2020-03-18	2020-04-08	2020-04-29	\N	800000.00	640000.00	512000.00	409600.00	0	0	0	150	0	0	0	2	0.00	0.00	0.00	0.00	5
60	2020-12-09	\N	\N	\N	2370000.00	0.00	0.00	0.00	101	0	0	0	0	0	0	0	480000.00	0.00	0.00	0.00	84
61	2021-03-25	2021-04-22	\N	\N	3380000.00	2706000.00	0.00	0.00	80	80	0	0	0	0	0	0	680000.00	550000.00	0.00	0.00	142
62	2021-07-06	\N	\N	\N	5350000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	166
63	\N	2021-04-06	\N	2021-06-01	0.00	1440000.00	0.00	1167000.00	0	0	0	100	0	0	0	0	0.00	0.00	0.00	234000.00	136
64	\N	\N	\N	2021-08-09	0.00	0.00	0.00	2304000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	461000.00	183
65	2020-04-17	\N	\N	\N	10000.00	0.00	0.00	0.00	23	0	0	0	1	0	0	0	34222.00	0.00	0.00	0.00	13
66	2020-11-17	2020-12-08	\N	\N	300000.00	240000.00	0.00	0.00	108	148	0	0	1	1	0	0	60000.00	48000.00	0.00	0.00	48
67	2020-08-18	2020-09-22	2020-10-20	\N	3310000.00	2648000.00	2118400.00	0.00	0	109	161	0	0	0	1	0	0.00	530000.00	430000.00	0.00	26
68	2020-12-15	\N	\N	\N	2200000.00	0.00	0.00	0.00	39	0	0	0	0	0	0	0	440000.00	0.00	0.00	0.00	68
69	2021-07-07	2021-07-28	\N	\N	2500000.00	2000000.00	0.00	0.00	10	73	0	0	1	1	0	0	500000.00	400000.00	0.00	0.00	167
70	2021-01-07	2021-01-18	\N	\N	5420000.00	5420000.00	0.00	0.00	5	0	0	0	0	0	0	0	1090000.00	0.00	0.00	0.00	69
71	2020-12-15	\N	\N	\N	860000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	172000.00	0.00	0.00	0.00	70
72	2020-12-01	2021-01-12	2021-01-12	2021-02-23	470000.00	382000.00	382000.00	345000.00	57	112	0	188	0	0	0	0	94000.00	85000.00	77000.00	69000.00	80
73	2020-09-01	2020-10-06	\N	\N	2300000.00	1840000.00	0.00	0.00	18	123	0	0	0	1	0	0	460000.00	370000.00	0.00	0.00	22
74	2020-12-22	\N	\N	\N	820000.00	0.00	0.00	0.00	17	0	0	0	0	0	0	0	164000.00	0.00	0.00	0.00	67
75	2021-06-23	\N	\N	\N	1314000.00	0.00	0.00	0.00	40	0	0	0	0	0	0	0	263000.00	0.00	0.00	0.00	163
76	2021-07-07	2021-07-28	\N	\N	1800000.00	1531000.00	0.00	0.00	5	55	0	0	0	0	0	0	360000.00	307000.00	0.00	0.00	168
77	2020-11-24	\N	\N	\N	4220000.00	0.00	0.00	0.00	37	0	0	0	1	0	0	0	0.00	0.00	0.00	0.00	63
78	2020-12-10	\N	\N	\N	718000.00	0.00	0.00	0.00	14	0	0	0	0	0	0	0	144000.00	0.00	0.00	0.00	79
79	2021-08-19	\N	\N	\N	3529000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	178
80	2020-12-15	2020-12-15	\N	\N	1700000.00	1360000.00	0.00	0.00	68	94	0	0	0	0	0	0	340000.00	272000.00	0.00	0.00	78
81	2020-12-08	\N	\N	\N	3990000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	798000.00	0.00	0.00	0.00	71
82	\N	2021-02-02	\N	\N	0.00	1200000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	240000.00	0.00	0.00	111
83	2020-12-01	\N	\N	\N	2176000.00	0.00	0.00	0.00	100	0	0	0	0	0	0	0	436000.00	0.00	0.00	0.00	74
84	\N	\N	\N	2020-12-17	0.00	0.00	0.00	1980000.00	0	0	0	361	0	0	0	1	0.00	0.00	0.00	396000.00	81
85	2020-12-09	2020-12-30	\N	\N	772000.00	621000.00	0.00	0.00	0	0	0	0	0	0	0	0	155000.00	125000.00	0.00	0.00	72
86	\N	2020-11-25	\N	\N	0.00	1840000.00	0.00	0.00	0	31	0	0	0	0	0	0	0.00	368000.00	0.00	0.00	76
87	2021-06-24	\N	\N	\N	8287000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	165
88	2020-12-01	\N	\N	\N	600000.00	0.00	0.00	0.00	26	0	0	0	0	0	0	0	120000.00	0.00	0.00	0.00	75
89	2020-12-08	\N	\N	\N	900000.00	0.00	0.00	0.00	90	0	0	0	0	0	0	0	180000.00	0.00	0.00	0.00	77
90	\N	\N	2020-12-10	\N	0.00	0.00	1024000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	205000.00	0.00	86
91	2020-12-29	\N	2021-02-02	\N	4450000.00	0.00	2848000.00	0.00	48	0	219	0	0	0	0	0	890000.00	0.00	0.00	0.00	88
92	2020-12-23	\N	\N	\N	4000000.00	0.00	0.00	0.00	33	0	0	0	0	0	0	0	800000.00	0.00	0.00	0.00	92
93	2021-01-07	\N	2021-04-08	\N	4265000.00	0.00	2729600.00	0.00	66	0	108	0	0	0	1	0	860000.00	0.00	0.00	0.00	94
94	\N	\N	2020-12-22	\N	0.00	0.00	1209600.00	0.00	0	0	145	0	0	0	0	0	0.00	0.00	25.00	0.00	83
95	\N	2021-02-03	\N	\N	0.00	652000.00	0.00	0.00	0	48	0	0	0	0	0	0	0.00	140000.00	0.00	0.00	95
96	\N	2020-12-10	\N	\N	0.00	1200000.00	0.00	0.00	0	120	0	0	0	1	0	0	0.00	240000.00	0.00	0.00	89
97	2021-01-05	\N	\N	\N	220000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	90
98	2021-01-06	2021-01-27	\N	\N	1540000.00	1232000.00	0.00	0.00	18	160	0	0	0	0	0	0	308000.00	247000.00	0.00	0.00	91
99	2021-02-02	2021-02-23	2021-03-09	\N	1100000.00	880000.00	704000.00	0.00	0	93	0	0	0	0	0	0	220000.00	176000.00	141000.00	0.00	124
100	2020-12-22	\N	\N	\N	1900000.00	0.00	0.00	0.00	10	0	0	0	0	0	0	0	380000.00	0.00	0.00	0.00	87
101	\N	2020-12-02	\N	\N	0.00	1696000.00	0.00	0.00	0	56	0	0	0	1	0	0	0.00	340000.00	0.00	0.00	93
102	2021-04-08	\N	\N	\N	1460000.00	0.00	0.00	0.00	148	0	0	0	0	0	0	0	300000.00	0.00	0.00	0.00	96
103	2021-05-13	\N	\N	\N	1659000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	332000.00	0.00	0.00	0.00	148
104	2021-08-18	\N	\N	\N	2590000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	181
105	\N	2021-03-25	2021-04-22	\N	0.00	4672000.00	3737600.00	0.00	0	122	161	0	0	2	2	0	0.00	0.00	750000.00	0.00	139
106	\N	\N	2020-12-16	\N	0.00	0.00	980000.00	0.00	0	0	95	0	0	0	2	0	0.00	0.00	200000.00	0.00	82
107	2018-08-30	2018-08-30	2018-08-30	2020-09-14	300000.00	240000.00	200000.00	160000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	12
108	\N	\N	2021-01-12	\N	0.00	0.00	1480000.00	0.00	0	0	121	0	0	0	0	0	0.00	0.00	300000.00	0.00	105
109	\N	\N	2021-03-23	\N	0.00	0.00	2930000.00	1.00	0	0	136	0	0	0	1	0	0.00	0.00	0.00	0.00	97
110	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	102
111	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	103
112	\N	2021-01-19	\N	\N	0.00	880000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	176000.00	0.00	0.00	107
113	2021-01-13	\N	\N	\N	450000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	90000.00	0.00	0.00	0.00	101
114	\N	2021-01-21	\N	\N	0.00	776000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	156000.00	0.00	0.00	109
115	\N	2021-01-19	\N	\N	0.00	976000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	196000.00	0.00	0.00	108
116	2021-02-04	\N	\N	\N	7950000.00	0.00	0.00	0.00	108	0	0	0	1	0	0	0	1590000.00	0.00	0.00	0.00	106
117	2021-02-03	\N	\N	\N	652000.00	0.00	0.00	0.00	42	0	0	0	0	0	0	0	140000.00	0.00	0.00	0.00	104
118	\N	\N	\N	2021-02-02	0.00	0.00	0.00	414720.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	83000.00	110
119	2021-01-05	\N	\N	\N	810000.00	0.00	0.00	0.00	68	0	0	0	0	0	0	0	161000.00	0.00	0.00	0.00	99
120	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	159
121	2021-05-26	\N	\N	\N	650000.00	0.00	0.00	0.00	44	0	0	0	0	0	0	0	130000.00	0.00	0.00	0.00	162
122	\N	\N	2021-06-24	\N	0.00	0.00	765800.00	0.00	0	0	155	0	0	0	2	0	0.00	0.00	160000.00	0.00	158
123	2021-02-23	2021-03-16	2021-04-06	2021-05-18	780000.00	624000.00	499200.00	399400.00	7	0	0	0	0	0	0	0	156000.00	0.00	0.00	0.00	112
124	2021-08-11	\N	\N	\N	4550000.00	0.00	0.00	0.00	25	0	0	0	0	0	0	0	910000.00	0.00	0.00	0.00	180
125	2021-02-23	\N	\N	\N	2400000.00	0.00	0.00	0.00	15	0	0	0	0	0	0	0	248000.00	0.00	0.00	0.00	113
126	2021-03-09	2021-03-30	2021-04-20	\N	2110000.00	1899000.00	1710000.00	0.00	3	80	109	0	0	0	0	0	422000.00	380000.00	342000.00	0.00	116
127	2021-03-16	\N	\N	\N	2500000.00	0.00	0.00	0.00	11	0	0	0	0	0	0	0	500000.00	0.00	0.00	0.00	123
128	\N	\N	\N	2020-12-09	0.00	0.00	0.00	614400.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	123000.00	85
129	2021-03-09	2021-03-30	\N	\N	1580000.00	1264000.00	0.00	0.00	56	0	0	0	0	0	0	0	316000.00	0.00	0.00	0.00	122
130	\N	\N	2021-02-24	\N	0.00	0.00	512000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	103000.00	0.00	118
131	2021-03-24	2021-04-14	2021-05-05	\N	1470000.00	1176000.00	940800.00	0.00	14	0	122	0	0	0	0	0	294000.00	0.00	189000.00	0.00	119
132	2021-02-23	2021-03-23	2021-04-13	2021-05-18	540000.00	592000.00	473600.00	378880.00	45	0	0	221	0	0	0	1	108000.00	0.00	0.00	76000.00	114
133	2021-03-11	\N	\N	\N	14000000.00	0.00	0.00	0.00	122	0	0	0	0	0	0	0	2800000.00	0.00	0.00	0.00	120
134	2021-03-24	\N	\N	\N	2120000.00	0.00	0.00	0.00	53	0	0	0	0	0	0	0	424000.00	0.00	0.00	0.00	121
135	\N	2021-03-30	2021-04-20	\N	0.00	729000.00	657000.00	0.00	0	0	0	0	0	0	0	0	0.00	146000.00	0.00	0.00	132
136	\N	\N	\N	2021-02-24	0.00	0.00	0.00	519000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	104000.00	117
137	\N	\N	\N	2020-06-09	0.00	0.00	0.00	362000.00	0	0	0	261	0	0	0	1	0.00	0.00	0.00	73000.00	11
138	2020-12-16	2021-01-06	2021-01-27	2021-03-03	970000.00	776000.00	620800.00	496640.00	24	80	122	122	0	0	0	0	194000.00	156000.00	125000.00	100000.00	73
139	\N	2021-04-12	2021-05-10	\N	0.00	2704000.00	2165000.00	0.00	0	88	163	0	0	2	3	0	0.00	0.00	440000.00	0.00	137
140	2021-03-23	2021-04-20	2021-05-11	\N	4500000.00	4050000.00	3645000.00	0.00	70	0	0	0	0	0	0	0	900000.00	810000.00	0.00	0.00	126
141	2021-04-13	\N	\N	\N	1100000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	220000.00	0.00	0.00	0.00	127
142	\N	\N	2021-03-24	\N	0.00	0.00	696000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	200000.00	0.00	133
143	2021-03-24	2021-04-14	2021-05-05	\N	500000.00	400000.00	320000.00	0.00	71	0	0	0	0	0	0	0	100000.00	0.00	0.00	0.00	130
144	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	134
145	2021-04-12	\N	\N	\N	4990000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	129
146	2021-07-07	\N	\N	\N	2500000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	500000.00	0.00	0.00	0.00	161
147	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	141
148	2021-04-12	\N	\N	\N	4990000.00	0.00	0.00	0.00	16	0	0	0	1	0	0	0	1000000.00	0.00	0.00	0.00	140
149	\N	\N	2021-03-24	\N	0.00	0.00	1536000.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	308000.00	0.00	125
150	2021-03-30	2021-04-27	2021-05-25	\N	1210000.00	968000.00	774400.00	0.00	35	0	0	0	0	0	0	0	242000.00	0.00	0.00	0.00	131
151	2021-03-04	\N	\N	\N	4400000.00	0.00	0.00	0.00	133	0	0	0	0	0	0	0	880000.00	0.00	0.00	0.00	128
152	2021-03-18	2021-04-08	2021-04-29	\N	5000000.00	4000000.00	3200000.00	0.00	0	0	89	0	0	0	0	0	100000.00	800000.00	640000.00	0.00	138
153	2021-06-08	\N	\N	\N	1410000.00	0.00	0.00	0.00	19	0	0	0	0	0	0	0	282000.00	0.00	0.00	0.00	160
154	2021-08-18	\N	\N	\N	3210000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	182
155	2021-01-21	\N	2021-03-11	\N	3170000.00	0.00	2543000.00	0.00	44	0	192	0	1	0	2	0	640000.00	0.00	510000.00	0.00	98
156	2020-11-10	2020-12-08	2021-01-05	2021-02-17	850000.00	680000.00	546000.00	493000.00	17	57	77	146	3	1	1	1	170000.00	136000.00	110000.00	99000.00	57
157	2020-10-15	\N	\N	\N	2274000.00	0.00	0.00	0.00	69	0	0	0	0	0	0	0	455000.00	0.00	0.00	0.00	41
158	2021-03-04	2021-04-01	2021-05-06	\N	2000000.00	1600000.00	1290000.00	0.00	0	0	90	0	0	0	0	0	400000.00	320000.00	260000.00	0.00	143
159	2021-05-12	\N	\N	\N	2950000.00	0.00	0.00	0.00	22	0	0	0	0	0	0	0	590000.00	0.00	0.00	0.00	144
160	2021-05-11	\N	\N	\N	950000.00	0.00	0.00	0.00	34	0	0	0	2	0	0	0	190000.00	0.00	0.00	0.00	150
161	2021-03-30	2021-04-27	\N	\N	1210000.00	968000.00	0.00	0.00	0	0	0	0	0	0	0	0	242000.00	194000.00	0.00	0.00	146
162	\N	\N	\N	2021-05-05	0.00	0.00	0.00	1305600.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	262000.00	151
163	2021-04-28	\N	\N	\N	788000.00	0.00	0.00	0.00	22	0	0	0	0	0	0	0	158000.00	0.00	0.00	0.00	149
164	2021-03-10	2021-03-31	2021-04-28	\N	550000.00	495000.00	446000.00	0.00	0	0	116	0	0	0	2	0	110000.00	99000.00	90000.00	0.00	147
165	2021-03-24	2021-04-14	2021-05-05	\N	5000000.00	4000000.00	3201000.00	0.00	0	0	0	0	0	0	0	0	1000000.00	800000.00	641000.00	0.00	145
166	2021-06-01	\N	\N	\N	734000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	147000.00	0.00	0.00	0.00	152
167	2021-03-03	2021-03-24	2021-04-14	\N	5000000.00	4500000.00	4050000.00	0.00	0	0	0	0	0	0	0	0	1000000.00	900000.00	810000.00	0.00	115
168	2021-06-23	\N	\N	\N	1314000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	155
169	2021-05-27	\N	\N	\N	5960000.00	0.00	0.00	0.00	40	0	0	0	1	0	0	0	1200000.00	0.00	0.00	0.00	156
170	2020-10-08	\N	\N	\N	515000.00	0.00	0.00	0.00	37	0	0	0	0	0	0	0	103000.00	0.00	0.00	0.00	52
171	2020-07-21	2020-08-11	2020-09-08	\N	640000.00	512000.00	410000.00	0.00	48	93	139	0	0	0	0	0	128000.00	103000.00	82000.00	0.00	16
172	2020-12-23	2021-01-13	2021-02-03	\N	1460000.00	1168000.00	936000.00	0.00	94	108	176	0	1	1	1	0	292000.00	234000.00	188000.00	0.00	59
173	2021-07-21	\N	\N	\N	1400000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	169
174	2021-07-13	\N	\N	\N	700000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	170
175	\N	2021-08-05	\N	\N	0.00	1492000.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	177
176	2021-07-07	\N	\N	\N	1676000.00	0.00	0.00	0.00	158	0	0	0	0	0	0	0	336000.00	0.00	0.00	0.00	153
177	2021-01-26	2021-02-23	2021-03-16	2021-08-17	1100000.00	880000.00	704000.00	564000.00	0	0	0	281	0	0	0	1	220000.00	0.00	0.00	113000.00	100
178	2021-08-24	\N	\N	\N	3600000.00	0.00	0.00	0.00	1	0	0	0	0	0	0	0	720000.00	0.00	0.00	0.00	172
179	2021-08-19	\N	\N	\N	716000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	144000.00	0.00	0.00	0.00	171
180	\N	\N	\N	2021-07-22	0.00	0.00	0.00	293000.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	59000.00	173
181	2021-08-05	\N	\N	\N	328000.00	0.00	0.00	0.00	32	0	0	0	1	0	0	0	66000.00	0.00	0.00	0.00	175
182	2021-04-28	2021-08-04	\N	\N	750000.00	600000.00	0.00	0.00	0	167	0	0	0	0	0	0	0.00	120000.00	0.00	0.00	174
183	2021-07-27	\N	\N	\N	359000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	72000.00	0.00	0.00	0.00	176
184	2021-06-22	\N	\N	\N	6714000.00	0.00	0.00	0.00	0	0	0	0	0	0	0	0	0.00	0.00	0.00	0.00	164
\.


--
-- Data for Name: yfcases_build; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_build (id, "buildNumber", "buildUrl", "buildArea", "buildHoldingPointPersonal", "buildHoldingPointAll", "buildTypeUse", "buildUsePartition", yfcase_id, "buildAncillaryBuildingArea", "buildAncillaryBuildingUseBy", "buildRemark") FROM stdin;
1	135	\N	73.76	1	18	透天厝	第一種住宅區	1	\N	\N	\N
2	3441	\N	120.75	1	18	透天厝	第一種住宅區	1	\N	\N	\N
3	188	\N	65.60	1	4	公寓-5樓含以下無電梯	第一種住宅區	2	\N	\N	\N
4	4245	\N	46.41	1	4	公寓-5樓含以下無電梯	第一種住宅區	2	\N	\N	\N
11	27371	\N	151.96	1	5	透天厝	第一種住宅區	7	\N	\N	\N
14	806	\N	110.12	1	6	公寓-5樓含以下無電梯	第一種住宅區	9	\N	\N	\N
23	2583	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	80.10	1	6	公寓-5樓含以下無電梯	第一種住宅區	18	\N	\N	\N
25	2590	https://drive.google.com/drive/u/0/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	152.46	1	8	公設	第一種住宅區	18	\N	\N	\N
28	4220	\N	71.75	1	3	公寓-5樓含以下無電梯	第一種住宅區	21	\N	\N	\N
31	1066	\N	123.26	1	7	透天厝	第一種住宅區	23	\N	\N	\N
21	774	https://drive.google.com/drive/u/1/folders/1VhEp9cfB65HgsC-kFAt0mjU4wybrejiH	84.37	1	6	透天厝	第一種住宅區	12	\N	\N	\N
38	2295	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	122.64	1	2	透天厝	第一種住宅區	28	\N	\N	\N
37	增建陽台	\N	2.45	1	2	增建-持分後坪數打對折	第一種住宅區	27	\N	\N	\N
36	470	https://drive.google.com/drive/u/0/folders/1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	94.54	1	2	店面-店舖	第一種住宅區	27	\N	\N	\N
18	98	\N	88.60	1	3	透天厝	第一種住宅區	15	\N	\N	\N
20	242	\N	144.90	4	6	透天厝	第一種住宅區	17	\N	\N	\N
44	721	\N	109.16	1	2	透天厝	第一種住宅區	33	\N	\N	\N
45	2761	\N	119.71	1	2	增建-持分後坪數打對折	第一種住宅區	33	\N	\N	\N
17	984	\N	100.99	1	5	公寓-5樓含以下無電梯	第一種住宅區	14	\N	\N	\N
33	1639	\N	113.23	1	24	公寓-5樓含以下無電梯	第一種住宅區	25	\N	\N	\N
35	2036	\N	86.42	1	3	公寓-5樓含以下無電梯	第三種住宅區	26	\N	\N	\N
32	1450	\N	97.60	1	2	公寓-5樓含以下無電梯	第一種住宅區	24	\N	\N	\N
19	6059	https://drive.google.com/drive/mobile/folders/12Xo0A7PsAihvHXFfcQla0nmsZ7O-VJD7	187.06	1	8	透天厝	第一種住宅區	16	\N	\N	\N
43	399	\N	58.64	1	3	透天厝	第一種住宅區	32	\N	\N	\N
12	5574	\N	109.39	1	6	公寓-5樓含以下無電梯	第一種住宅區	8	\N	\N	\N
41	377	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	91.20	1	2	透天厝	第一種住宅區	31	\N	\N	\N
34	3784	\N	32.20	1	24	增建-持分後坪數打對折	第一種住宅區	25	\N	\N	\N
46	38	\N	168.84	1	4	農舍	第一種住宅區	34	\N	\N	\N
29	3160	\N	76.60	1	6	公寓-5樓含以下無電梯	第一種住宅區	22	\N	\N	\N
5	661	\N	83.98	1	7	透天厝	第一種住宅區	3	\N	\N	\N
6	1788	\N	70.61	1	7	透天厝	第一種住宅區	3	\N	\N	\N
16	38	\N	168.84	1	4	透天厝	第一種住宅區	11	\N	\N	\N
39	205	https://drive.google.com/drive/u/0/folders/1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	81.94	1	2	透天厝	第一種住宅區	29	\N	\N	\N
40	474	\N	113.91	1	4	公寓-5樓含以下無電梯	第一種住宅區	30	\N	\N	\N
10	906	\N	97.28	1	3	透天厝	第一種住宅區	6	\N	\N	\N
8	1254	\N	84.37	1	5	華廈-10層含以下有電梯	第一種住宅區	5	\N	\N	\N
15	1635	https://drive.google.com/drive/folders/19qru68HgIO9M_wTfa5KeQyInRqu7GGr5	49.56	1	6	公寓-5樓含以下無電梯	第一種住宅區	10	\N	\N	\N
24	301	https://drive.google.com/drive/u/1/folders/101EycYhst6wW3xUD2OYxnsc2jhUufc-V	101.29	1	2	公寓-5樓含以下無電梯	第一種住宅區	19	\N	\N	\N
7	4664	\N	76.48	1	3	公寓-5樓含以下無電梯	第一種住宅區	4	\N	\N	\N
47	399增建	\N	53.12	1	3	增建-持分後坪數打對折	第一種住宅區	32	\N	\N	\N
48	370	\N	66.98	4	6	透天厝	第一種住宅區	36	\N	\N	\N
49	82	\N	438.03	1	4	透天厝	農業區	37	\N	\N	\N
50	439	\N	102.13	1	3	透天厝	第一種住宅區	38	\N	\N	\N
51	205	\N	110.63	1	7	透天厝	第一種住宅區	39	\N	\N	\N
52	164	\N	91.50	1	2	公寓-5樓含以下無電梯	第一種住宅區	40	\N	\N	\N
53	983	\N	144.86	1	3	店面-店舖	第一種住宅區	41	\N	\N	\N
55	131	\N	97.54	1	4	店面-店舖	第一種住宅區	43	\N	\N	\N
56	764	\N	104.08	1	4	透天厝	第一種住宅區	44	\N	\N	\N
57	316	\N	47.97	1	2	透天厝	第一種住宅區	45	\N	\N	\N
58	141	\N	120.14	1	5	透天厝	第一種住宅區	46	\N	\N	\N
59	354	\N	88.67	1	1	公寓-5樓含以下無電梯	第一種住宅區	47	\N	\N	\N
61	301頂增	\N	50.12	1	4	增建-持分後坪數打對折	第一種住宅區	42	\N	\N	\N
62	880	\N	102.30	1	2	透天厝	第一種住宅區	35	\N	\N	\N
63	23	\N	194.49	1	4	透天厝	第一種住宅區	49	\N	\N	\N
64	28	\N	98.15	1	10	公寓-5樓含以下無電梯	第一種住宅區	50	\N	\N	\N
65	346	\N	131.97	1	3	透天厝	第一種住宅區	51	\N	\N	\N
66	2405	\N	89.18	33334	100000	透天厝	第一種住宅區	52	\N	\N	\N
68	7020	\N	29.41	1	6	增建-持分後坪數打對折	第一種住宅區	53	\N	\N	\N
69	801	\N	75.19	1	5	公寓-5樓含以下無電梯	第一種住宅區	54	\N	\N	\N
70	377	\N	91.20	1	2	透天厝	第一種住宅區	55	\N	\N	\N
71	2147	\N	150.40	1	2	增建-持分後坪數打對折	第一種住宅區	55	\N	\N	\N
13	10085	\N	95.13	1	6	公寓-5樓含以下無電梯	第一種住宅區	8	\N	\N	\N
72	2879	\N	75.18	1	5	公寓-5樓含以下無電梯	第一種住宅區	56	\N	\N	\N
60	518	https://drive.google.com/file/d/1LvPsC0sBA1laxPRTjmWuiNm4wMXmwJMu/view?usp=drivesdk	69.94	14200	100000	公寓-5樓含以下無電梯	第一種住宅區	48	\N	\N	\N
42	2147	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	150.40	1	2	增建-持分後坪數打對折	第一種住宅區	31	\N	\N	\N
74	991	\N	58.82	1	15	透天厝	第一種住宅區	58	\N	\N	\N
77	2705	\N	68.62	2	3	透天厝	第一種住宅區	61	\N	\N	\N
78	15107	\N	37.66	2	3	增建-持分後坪數打對折	第一種住宅區	61	\N	\N	\N
80	2887	\N	11043.67	725	100000	公設	第一種住宅區	62	\N	\N	\N
81	3086	\N	192.99	1	3	透天厝	第一種住宅區	63	\N	\N	\N
82	84	\N	100.49	1	3	透天厝	第一種住宅區	64	\N	\N	\N
83	256	\N	115.60	1	3	透天厝	第一種住宅區	64	\N	\N	\N
54	301	https://drive.google.com/file/d/1RyGR0Oshqw9ey34UYihd5mACO1Sz1Klh/view?usp=drivesdk	227.42	1	4	店面-店舖	第一種住宅區	42	\N	\N	\N
84	32	\N	74.65	1	4	透天厝	第一種住宅區	65	\N	\N	\N
79	2762	https://drive.google.com/file/d/1VlzAlXNPW0WyWPsjA0dE9PTiEI3boCuD/view?usp=sharing	127.57	1	6	住宅大樓-11層含以上有電梯	第一種住宅區	62	\N	\N	\N
76	2375	https://drive.google.com/file/d/1f7hjwFRcYl7lh7LXy_6CSe_hrQgujgUw/view?usp=sharing	79.28	1	3	透天厝	第一種住宅區	60	\N	\N	\N
73	602	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	48.24	1	4	公寓-5樓含以下無電梯	第一種住宅區	57	\N	\N	\N
156	162	\N	85.26	1	6	公寓-5樓含以下無電梯	第一種住宅區	95	\N	\N	\N
85	36	\N	121.60	1	2	透天厝	第一種住宅區	66	\N	\N	\N
86	1221	\N	243.20	1	2	公設	第一種住宅區	66	\N	\N	\N
87	775	\N	10000.00	1	250	公設	第一種住宅區	12	\N	\N	\N
67	91	https://drive.google.com/file/d/1_yFumddMlP6plZHBxTRD7NuugLeIq9hQ/view?usp=sharing	69.30	1	6	透天厝	第一種住宅區	53	\N	\N	\N
88	436	\N	44.44	1	6	透天厝	第一種住宅區	67	\N	\N	\N
89	17	\N	204.96	1	5	透天厝	第一種住宅區	68	\N	\N	\N
27	1506	\N	88.90	1	5	公寓-5樓含以下無電梯	第一種住宅區	20	\N	\N	\N
30	10083	\N	58.10	1	6	增建-持分後坪數打對折	第一種住宅區	22	\N	\N	\N
90	1256	\N	36.40	1	2	公寓-5樓含以下無電梯	第一種住宅區	69	\N	\N	\N
91	3868	\N	111.55	1	2	增建-持分後坪數打對折	第一種住宅區	69	\N	\N	\N
92	170	\N	102.60	1	5	透天厝	第一種住宅區	70	\N	\N	\N
93	4612	\N	111.21	1	2	店面-店舖	第一種住宅區	71	\N	\N	\N
94	5512	\N	151.57	1	2	店面-店舖	第一種住宅區	71	\N	\N	\N
95	242	\N	89.32	1	3	透天厝	第一種住宅區	72	\N	\N	\N
96	276	\N	49.54	1	2	公設	第一種住宅區	72	\N	\N	\N
97	1550	\N	7.52	1	3	增建-持分後坪數打對折	第一種住宅區	72	\N	\N	\N
98	769	\N	72.10	1	6	公寓-5樓含以下無電梯	第一種住宅區	73	\N	\N	\N
99	76	\N	88.28	1	2	透天厝	第一種住宅區	74	\N	\N	\N
100	338	\N	85.88	1	4	透天厝	第一種住宅區	75	\N	\N	\N
101	52	\N	107.70	2	5	透天厝	第一種住宅區	76	\N	\N	\N
102	305	\N	97.71	25000	100000	透天厝	第一種住宅區	77	\N	\N	\N
103	29	\N	160.59	1	2	透天厝	第一種住宅區	78	\N	\N	\N
106	0	\N	36.00	1	6	增建-持分後坪數打對折	第一種住宅區	73	\N	\N	\N
107	0	\N	42.32	1	3	增建-持分後坪數打對折	第一種住宅區	60	\N	\N	\N
108	809	\N	64.16	1	6	公寓-5樓含以下無電梯	第一種住宅區	80	\N	\N	\N
109	4220	\N	71.75	1	3	公寓-5樓含以下無電梯	第一種住宅區	81	\N	\N	\N
111	693	\N	72.00	1	3	公寓-5樓含以下無電梯	第一種住宅區	83	\N	\N	\N
112	266	\N	38.98	1	14	公寓-5樓含以下無電梯	第三種商業區	84	\N	\N	\N
113	267	\N	38.98	1	14	公寓-5樓含以下無電梯	第三種商業區	84	\N	\N	\N
114	429	\N	41.25	1	14	公寓-5樓含以下無電梯	第三種商業區	84	\N	\N	\N
116	3197	\N	46.90	1	14	增建-持分後坪數打對折	第三種商業區	84	\N	\N	\N
117	3198	\N	5.34	1	14	增建-持分後坪數打對折	第三種商業區	84	\N	\N	\N
115	430	\N	38.98	1	14	公寓-5樓含以下無電梯	第三種商業區	84	\N	\N	\N
118	3199	\N	47.26	1	14	增建-持分後坪數打對折	第三種商業區	84	\N	\N	\N
119	1447	\N	96.64	1	4	公寓-5樓含以下無電梯	第一種住宅區	85	\N	\N	\N
120	3523	\N	88.32	1	2	公寓-5樓含以下無電梯	第一種住宅區	86	\N	\N	\N
121	121	\N	152.84	1	2	公寓-5樓含以下無電梯	第一種住宅區	87	\N	\N	\N
122	233	\N	77.00	1	9	公寓-5樓含以下無電梯	第一種住宅區	88	\N	\N	\N
110	6113	https://drive.google.com/file/d/1ml8ePLI8BBp5NSwH1iA7fL3K7nxISaEg/view?usp=sharing	108.14	1	8	公寓-5樓含以下無電梯	第一種住宅區	82	\N	\N	\N
123	01511-000	\N	61.22	1	9	增建-持分後坪數打對折	第一種住宅區	88	\N	\N	\N
124	11	\N	50.70	1	5	公寓-5樓含以下無電梯	第一種住宅區	89	\N	\N	\N
125	11	\N	82.04	1	21	透天厝	第一種住宅區	90	\N	\N	\N
127	340	\N	83.50	1	2	公寓-5樓含以下無電梯	第一種住宅區	92	\N	\N	\N
128	854	\N	87.14	1	4	公寓-5樓含以下無電梯	第一種住宅區	93	\N	\N	\N
129	手動增建	\N	45.27	1	5	增建-持分後坪數打對折	第一種住宅區	59	\N	\N	\N
130	手動增建	\N	32.32	1	4	增建-持分後坪數打對折	第一種住宅區	91	\N	\N	\N
126	393	https://drive.google.com/file/d/1F_3hIs6_jbQW45-ASrrR2Sdeo4sWwaac/view?usp=sharing	133.48	1	4	透天厝	第一種住宅區	91	\N	\N	\N
104	827	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	113.60	1	4	透天厝	第一種住宅區	79	\N	\N	\N
105	5937	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	65.49	1	4	公寓-5樓含以下無電梯	第一種住宅區	79	\N	\N	\N
75	3568	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	131.72	1	5	透天厝	第一種住宅區	59	\N	\N	\N
132	218-4	\N	74.60	1	2	增建-持分後坪數打對折	第一種住宅區	99	\N	\N	\N
131	218	\N	44.24	1	2	透天厝	第一種住宅區	99	\N	\N	\N
145	54	\N	115.20	1	4	透天厝	第一種住宅區	107	\N	\N	\N
134	788	\N	71.68	1	7	透天厝	第一種住宅區	101	\N	\N	\N
135	2435	\N	182.42	1	7	透天厝	第一種住宅區	101	\N	\N	\N
136	50716	\N	91.75	2	5	公寓-5樓含以下無電梯	第一種住宅區	98	\N	\N	\N
137	頂樓未登記部分	\N	72.94	2	5	增建-持分後坪數打對折	第一種住宅區	98	\N	\N	\N
138	185	\N	77.00	1	3	公寓-5樓含以下無電梯	第一種住宅區	94	\N	\N	\N
139	頂樓未登記部分	\N	57.12	1	3	公設	第一種住宅區	94	\N	\N	\N
140	162	\N	85.26	1	6	公寓-5樓含以下無電梯	第一種住宅區	104	\N	\N	\N
141	928	\N	85.26	1	6	增建-持分後坪數打對折	第一種住宅區	104	\N	\N	\N
142	598	\N	85.38	1	5	公寓-5樓含以下無電梯	第一種住宅區	105	\N	\N	\N
143	1430	\N	18.63	1	5	增建-持分後坪數打對折	第一種住宅區	105	\N	\N	\N
144	1769	\N	116.80	1	2	公寓-5樓含以下無電梯	第一種住宅區	106	\N	\N	\N
146	783	\N	91.26	2	6	透天厝	第一種住宅區	108	\N	\N	\N
147	982	\N	111.61	2	6	透天厝	第一種住宅區	108	\N	\N	\N
148	57	\N	89.00	1	5	店面-店舖	第一種住宅區	109	\N	\N	\N
149	1512	\N	224.08	1	5	店面-店舖	第一種住宅區	109	\N	\N	\N
150	429	\N	104.74	1	4	透天厝	第一種住宅區	110	\N	\N	\N
151	暫739	\N	66.20	1	4	透天厝	第一種住宅區	110	\N	\N	\N
152	暫158	\N	168.09	50000	100000	透天厝	第一種住宅區	111	\N	\N	\N
154	262	\N	69.42	1	5	公寓-5樓含以下無電梯	第一種住宅區	96	\N	\N	\N
155	8065	\N	65.00	1	5	增建-持分後坪數打對折	第一種住宅區	96	\N	\N	\N
153	2344	\N	101.76	1	4	透天厝	第一種住宅區	112	\N	\N	\N
157	928	\N	85.26	1	6	增建-持分後坪數打對折	第一種住宅區	95	\N	\N	\N
158	222	\N	92.56	1	2	透天厝	第一種住宅區	113	\N	\N	\N
181	816	\N	95.10	1	4	華廈-10層含以下有電梯	第一種住宅區	133	\N	\N	\N
160	1394	\N	169.52	1	2	公寓-5樓含以下無電梯	第一種住宅區	116	\N	\N	\N
161	1000	\N	88.64	1	5	公寓-5樓含以下無電梯	第一種住宅區	114	\N	\N	\N
162	10446	\N	68.85	1	3	公寓-5樓含以下無電梯	第一種住宅區	117	\N	\N	\N
163	75	\N	78.88	1	2	透天厝	第一種住宅區	118	\N	\N	\N
182	818	\N	1694.10	94	10000	華廈-10層含以下有電梯	第一種住宅區	133	\N	\N	\N
164	304	\N	0.00	1	2	透天厝	第一種住宅區	118	\N	\N	\N
166	1522	\N	220.56	1	3	透天厝	第一種住宅區	120	\N	\N	\N
167	1523	\N	214.25	1	3	公寓-5樓含以下無電梯	第一種住宅區	120	\N	\N	\N
170	474	\N	57.27	1	2	公寓-5樓含以下無電梯	第一種住宅區	123	\N	\N	\N
171	6576	\N	111.91	1	7	公寓-5樓含以下無電梯	第一種住宅區	124	\N	\N	\N
183	3700	\N	118.56	1	2	透天厝	第一種住宅區	128	\N	\N	\N
168	31	https://drive.google.com/file/d/1q4A2u67BAesmiLWe1diRoFfoAXuf3D72/view?usp=sharing	252.13	1	3	透天厝	第一種住宅區	121	\N	\N	\N
159	479	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	203.54	1	2	透天厝	第一種住宅區	115	\N	\N	\N
169	350	https://drive.google.com/file/d/1MrKIW3hKgYmBnojOwkzLCCSHO5Gg0wMe/view?usp=sharing	107.00	1	3	透天厝	第一種住宅區	122	\N	\N	\N
172	737	\N	104.25	40	100	透天厝	第一種住宅區	125	\N	\N	\N
173	1539	\N	142.18	40	100	透天厝	第一種住宅區	125	\N	\N	\N
174	1110	\N	158.23	2	3	店面-店舖	第一種住宅區	126	\N	\N	\N
175	273	\N	48.64	1	5	透天厝	第一種住宅區	127	\N	\N	\N
176	2878	\N	82.08	1	2	公寓-5樓含以下無電梯	第一種住宅區	129	\N	\N	\N
178	3	\N	93.91	1	3	透天厝	第一種住宅區	130	\N	\N	\N
180	953	\N	115.19	1	6	公寓-5樓含以下無電梯	第一種住宅區	132	\N	\N	\N
186	752	\N	100.15	1	4	公寓-5樓含以下無電梯	第一種住宅區	97	\N	\N	\N
187	30517	\N	71.49	1	4	公寓-5樓含以下無電梯	第一種住宅區	137	\N	\N	\N
188	未登記部分	\N	60.75	1	4	公寓-5樓含以下無電梯	第一種住宅區	137	\N	\N	\N
189	4359	\N	96.68	1	2	住宅大樓-11層含以上有電梯	第一種住宅區	138	\N	\N	\N
190	612	\N	316.68	1	8	公寓-5樓含以下無電梯	第一種住宅區	139	\N	\N	\N
191	未登記部分	\N	136.07	1	8	公寓-5樓含以下無電梯	第一種住宅區	139	\N	\N	\N
184	4686	https://drive.google.com/drive/folders/1K6kQL__YlnjX5yfw4lH0x3ew_Hmnh7bY?usp=sharing	75.67	1	3	公寓-5樓含以下無電梯	第一種住宅區	135	\N	\N	\N
192	2878	\N	82.08	1	2	公寓-5樓含以下無電梯	第一種住宅區	140	\N	\N	\N
193	2930(待修)	\N	21.00	1	1	公設	第一種住宅區	140	\N	\N	\N
194	30517	\N	71.49	1	4	公寓-5樓含以下無電梯	第一種住宅區	142	\N	\N	\N
195	未登記部分	\N	60.75	1	4	公寓-5樓含以下無電梯	第一種住宅區	142	\N	\N	\N
9	1287	\N	1231.00	1	42	公設	第一種住宅區	5	\N	\N	\N
185	384（ 未辦保存登記）	\N	248.60	1	3	公寓-5樓含以下無電梯	第一種住宅區	136	\N	\N	\N
179	154	\N	124.60	1	4	透天厝	第一種住宅區	131	\N	\N	\N
196	4980	\N	78.00	1	6	公寓-5樓含以下無電梯	第一種住宅區	143	\N	\N	\N
197	4220	\N	71.75	1	3	公寓-5樓含以下無電梯	第一種住宅區	144	\N	\N	\N
198	4359	\N	33.00	1	1	公設	第一種住宅區	138	\N	\N	\N
199	40598	\N	123.71	1	4	公寓-5樓含以下無電梯	第一種住宅區	145	\N	\N	\N
200	154	\N	124.60	1	4	公寓-5樓含以下無電梯	第一種住宅區	146	\N	\N	\N
201	889	\N	44.09	1	3	公寓-5樓含以下無電梯	第一種住宅區	147	\N	\N	\N
202	907	\N	535.41	168	10000	公設	第一種住宅區	147	\N	\N	\N
205	486	\N	62.11	1	5	增建-持分後坪數打對折	第一種住宅區	149	\N	\N	\N
206	270	\N	99.16	1	3	公寓-5樓含以下無電梯	第一種住宅區	150	\N	\N	\N
133	184	https://drive.google.com/file/d/1NCuCcZRuucFjXFOkHLlKOQqz8PPWrIov/view?usp=sharing	86.40	1	5	公寓-5樓含以下無電梯	第一種住宅區	100	\N	\N	\N
207	844	\N	103.29	2	3	透天厝	第一種住宅區	151	\N	\N	\N
208	1188	\N	108.30	2	3	透天厝	第一種住宅區	151	\N	\N	\N
165	2283	https://drive.google.com/file/d/1EqekJab5UGzEUoiJ0u5hu5hnOWH7JxDx/view?usp=drivesdk	112.92	1	4	公寓-5樓含以下無電梯	第一種住宅區	119	\N	\N	\N
209	592	\N	126.09	1	24	公寓-5樓含以下無電梯	第一種住宅區	152	\N	\N	\N
210	2161	\N	125.30	1	24	增建-持分後坪數打對折	第一種住宅區	152	\N	\N	\N
211	5680	\N	128.64	1	4	住宅大樓-11層含以上有電梯	第一種住宅區	153	\N	\N	\N
212	6062	\N	33891.21	211	100000	公設	第一種住宅區	153	\N	\N	\N
213	8136	\N	216.26	1	3	透天厝	第一種住宅區	154	\N	\N	\N
214	8898	\N	140.79	1	3	透天厝	第一種住宅區	154	\N	\N	\N
216	1405	\N	2014.72	166	10000	公設	第一種住宅區	155	\N	\N	\N
215	1373	\N	82.66	1	2	華廈-10層含以下有電梯	第一種住宅區	155	\N	\N	\N
217	454	\N	263.37	1	5	透天厝	第一種住宅區	162	\N	\N	\N
218	3467	\N	93.48	1	3	透天厝	第一種住宅區	161	\N	\N	\N
219	13815	\N	86.13	1	5	公寓-5樓含以下無電梯	第一種住宅區	160	\N	\N	\N
220	1373	\N	82.66	1	2	華廈-10層含以下有電梯	第一種住宅區	163	\N	\N	\N
221	1405	https://drive.google.com/drive/folders/1ih2wHD7x9KZPV66Y4uDi_CAEGM3BX_2u?usp=sharing	2014.72	166	10000	公設	第一種住宅區	163	\N	\N	\N
203	20	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	126.76	1	4	透天厝	第一種住宅區	148	\N	\N	\N
204	24	https://drive.google.com/drive/folders/11ActuwABuQPo5XyXL7wnKy07NNjQsckD?usp=sharing	83.36	1	5	透天厝	第一種住宅區	149	\N	\N	\N
222	增建	\N	33.00	1	4	增建-持分後坪數打對折	第一種住宅區	131	\N	\N	\N
223	1875	\N	91.29	1	5	公寓-5樓含以下無電梯	第一種住宅區	166	\N	\N	\N
224	3606(未保存登記)	\N	121.70	1	5	公寓-5樓含以下無電梯	第一種住宅區	166	\N	\N	\N
225	1349	\N	139.55	1	5	公寓-5樓含以下無電梯	第一種住宅區	167	\N	\N	\N
226	906	\N	97.28	1	3	公寓-5樓含以下無電梯	第一種住宅區	168	\N	\N	\N
227	增建	\N	45.00	1	5	增建-持分後坪數打對折	第一種住宅區	167	\N	\N	\N
26	999	\N	103.00	1	2	增建-持分後坪數打對折	第一種住宅區	19	\N	\N	\N
228	50	\N	203.04	1	4	公寓-5樓含以下無電梯	第一種住宅區	169	\N	\N	\N
229	368	\N	109.88	1	5	透天厝	第一種住宅區	170	\N	\N	\N
230	378	\N	115.40	1	1	透天厝	第一種住宅區	164	\N	\N	\N
231	1680棟次	\N	114.32	1	1	增建-持分後坪數打對折	第一種住宅區	164	\N	\N	\N
232	增建	\N	90.00	1	3	增建-持分後坪數打對折	第一種住宅區	168	\N	\N	\N
233	540	\N	100.94	1	5	透天厝	第一種住宅區	171	\N	\N	\N
234	984	\N	75.36	1	5	增建-持分後坪數打對折	第一種住宅區	171	\N	\N	\N
235	3242	\N	83.84	1	3	公寓-5樓含以下無電梯	第一種住宅區	172	\N	\N	\N
236	38	\N	171.17	1	12	透天厝	第一種住宅區	173	\N	\N	\N
237	777	\N	74.00	1	4	公寓-5樓含以下無電梯	第一種住宅區	174	\N	\N	\N
238	1609	\N	146.00	1	36	公寓-5樓含以下無電梯	第一種住宅區	175	\N	\N	\N
239	663	\N	107.82	1	6	透天厝	第一種住宅區	176	\N	\N	\N
241	2414	\N	66.61	1	6	增建-持分後坪數打對折	第一種住宅區	176	\N	\N	\N
242	2415	\N	57.30	1	6	增建-持分後坪數打對折	第一種住宅區	176	\N	\N	\N
240	664	\N	115.52	1	6	透天厝	第一種住宅區	176	\N	\N	\N
243	1785	\N	64.27	2	3	透天厝	第一種住宅區	177	\N	\N	\N
244	2403	\N	97.68	1	2	透天厝	第一種住宅區	178	\N	\N	\N
245	5534	\N	21.57	1	2	增建-持分後坪數打對折	第一種住宅區	178	\N	\N	\N
246	暫266	\N	140.25	5000	10000	透天厝	第一種住宅區	179	\N	\N	\N
247	385	\N	117.86	1	2	公寓-5樓含以下無電梯	第一種住宅區	181	\N	\N	\N
248	190	\N	125.87	1	2	公寓-5樓含以下無電梯	第一種住宅區	182	\N	\N	\N
249	486	\N	120.53	1	2	公寓-5樓含以下無電梯	第一種住宅區	180	\N	\N	\N
251	增建	\N	30.00	1	2	增建-持分後坪數打對折	第一種住宅區	181	\N	\N	\N
250	增建	\N	125.00	1	2	增建-持分後坪數打對折	第一種住宅區	182	\N	\N	\N
252	3530	\N	83.08	1	2	住宅大樓-11層含以上有電梯	第一種住宅區	183	\N	\N	\N
\.


--
-- Data for Name: yfcases_coownerheir; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_coownerheir (id, "coOwnerHeirName", "coOwnerHeirAddress", "coOwnerHeirLandHPPersonnal", "coOwnerHeirLandHPAll", "coOwnerHeirBuildHPPersonnal", "coOwnerHeirBuildHPAll", "coOwnerHeirLifeOrDie", coowner_id, "coOwnerHeirIdentityCard") FROM stdin;
\.


--
-- Data for Name: yfcases_coownerinfo; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_coownerinfo (id, "coOwnerName", "coOwnerAddress", "coOwnerLandHPPersonnal", "coOwnerLandHPAll", "coOwnerBuildHPPersonnal", "coOwnerBuildHPAll", yfcase_id, "coOwnerLifeOrDie", "coOwnerIdentityCard") FROM stdin;
\.


--
-- Data for Name: yfcases_coownerlitigation; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_coownerlitigation (id, "coOwnerLitigationName", "coOwnerLitigationIdentityCard", "coOwnerLitigationAddress", "coOwnerLitigationLandHPPersonnal", "coOwnerLitigationLandHPAll", "coOwnerLitigationBuildHPPersonnal", "coOwnerLitigationBuildHPAll", "coOwnerLitigationLifeOrDie", coownerheir_id) FROM stdin;
\.


--
-- Data for Name: yfcases_finaldecision; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_finaldecision (id, "finalDecision", "finalDecisionRemark", "regionalHead", "regionalHeadDate", "regionalHeadWorkArea", "subSigntrueA", "subSigntrueDateA", "subSigntrueWorkAreaA", "subSigntrueB", "subSigntrueDateB", "subSigntrueWorkAreaB", yfcase_id) FROM stdin;
2	未判定	\N	張浩文	2020-07-20	雙北桃竹苗	\N	\N	\N	\N	\N	\N	9
4	未判定	\N	張浩文	2020-08-13	雙北桃竹苗	\N	\N	\N	\N	\N	\N	21
5	3拍進場	\N	曾昱銓	2021-03-14	高高屏	\N	\N	\N	\N	\N	\N	3
7	放棄	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	10
8	未判定	\N	張浩文	2021-04-18	雙北桃竹苗	\N	\N	\N	\N	\N	\N	56
11	放棄	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	4
12	未判定	\N	張浩文	2020-08-13	雙北桃竹苗	\N	\N	\N	\N	\N	\N	23
14	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	29
15	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	30
19	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	49
20	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	17
21	3拍進場	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	35
22	4拍進場	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	15
23	4拍進場	\N	曾昱銓	2020-09-09	高高屏	\N	\N	\N	\N	\N	\N	34
24	未判定	\N	劉家彰	2020-12-21	雲嘉南	\N	\N	\N	\N	\N	\N	55
25	未判定	\N	劉家彰	2020-12-21	雲嘉南	\N	\N	\N	\N	\N	\N	62
26	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	47
27	放棄	\N	曾友和	2020-11-21	雲嘉南	\N	\N	\N	\N	\N	\N	33
31	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	39
32	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	45
33	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	44
34	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	46
35	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	40
36	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	32
37	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	37
38	未判定	\N	劉家彰	2020-10-05	雲嘉南	\N	\N	\N	\N	\N	\N	51
39	未判定	\N	張浩文	2020-06-03	雙北桃竹苗	\N	\N	\N	\N	\N	\N	1
40	未判定	\N	劉家彰	2020-10-30	雲嘉南	\N	\N	\N	\N	\N	\N	61
42	3拍進場	\N	劉家彰	2020-11-28	雲嘉南	\N	\N	\N	\N	\N	\N	60
43	2拍進場	\N	曾友和	2021-04-29	雲嘉南	\N	\N	\N	\N	\N	\N	135
45	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	65
46	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	50
47	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	58
48	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	43
49	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	38
50	未判定	\N	曾友和	2021-06-01	雲嘉南	\N	\N	\N	\N	\N	\N	157
51	2拍進場	\N	曾昱銓	2021-06-08	高高屏	\N	\N	\N	\N	\N	\N	154
55	未判定	\N	張浩文	2020-11-20	雙北桃竹苗	\N	\N	\N	\N	\N	\N	20
59	未判定	\N	曾友和	2021-03-26	雲嘉南	\N	\N	\N	\N	\N	\N	84
60	未判定	\N	曾友和	2021-04-22	雲嘉南	\N	\N	\N	\N	\N	\N	142
61	未判定	\N	曾友和	2021-06-19	雲嘉南	\N	\N	\N	\N	\N	\N	166
62	放棄	\N	曾友和	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	136
63	4拍進場	\N	曾昱銓	2021-08-04	高高屏	\N	\N	\N	\N	\N	\N	183
68	4拍進場	\N	曾友和	2021-07-21	雲嘉南	\N	\N	\N	\N	\N	\N	167
69	未判定	\N	張浩文	2021-02-20	雙北桃竹苗	\N	\N	\N	\N	\N	\N	69
70	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	70
71	放棄	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	80
72	未判定	\N	張浩文	2021-02-20	雙北桃竹苗	\N	\N	\N	\N	\N	\N	22
73	放棄	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	67
74	2拍進場	\N	劉家彰	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	163
75	3拍進場	\N	曾友和	2021-07-21	雲嘉南	\N	\N	\N	\N	\N	\N	168
76	放棄	\N	曾友和	2020-11-23	雲嘉南	\N	\N	\N	\N	\N	\N	63
77	放棄	\N	曾友和	2020-12-21	雲嘉南	\N	\N	\N	\N	\N	\N	79
78	未判定	\N	劉家彰	2021-07-25	雲嘉南	\N	\N	\N	\N	\N	\N	178
79	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	78
80	未判定	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	71
81	2拍進場	\N	曾昱銓	2021-05-02	高高屏	\N	\N	\N	\N	\N	\N	111
82	\N	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	74
16	4拍進場	\N	張浩文	2021-02-20	雙北桃竹苗	\N	\N	\N	吳俊男	2020-11-21	雲嘉南	24
83	放棄	\N	曾友和	2021-01-08	雲嘉南	\N	\N	\N	\N	\N	\N	81
84	4拍進場	\N	曾友和	2020-12-23	雲嘉南	\N	\N	\N	\N	\N	\N	72
85	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	76
86	放棄	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	165
87	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	75
88	放棄	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	77
90	未判定	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	88
91	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	92
92	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	94
94	未判定	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	95
95	未判定	\N	曾友和	2021-03-26	雲嘉南	\N	\N	\N	\N	\N	\N	89
96	放棄	\N	曾友和	2021-01-18	雲嘉南	\N	\N	\N	\N	\N	\N	90
98	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	124
99	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	87
100	未判定	\N	曾友和	2021-03-26	雲嘉南	\N	\N	\N	\N	\N	\N	93
101	未判定	\N	曾友和	2021-04-19	雲嘉南	\N	\N	\N	\N	\N	\N	96
102	4拍進場	\N	劉家彰	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	148
103	未判定	\N	曾友和	2021-08-02	雲嘉南	\N	\N	\N	\N	\N	\N	181
104	未判定	\N	曾友和	2021-04-19	雲嘉南	\N	\N	\N	\N	\N	\N	139
107	未判定	\N	曾友和	2021-01-18	雲嘉南	\N	\N	\N	\N	\N	\N	105
108	3拍進場	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	97
109	未判定	\N	張浩文	2021-01-08	雙北桃竹苗	\N	\N	\N	\N	\N	\N	102
110	未判定	\N	張浩文	2021-01-08	雙北桃竹苗	\N	\N	\N	\N	\N	\N	103
115	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	106
116	未判定	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	104
118	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	99
119	放棄	\N	劉家彰	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	159
120	未判定	\N	劉家彰	2021-05-20	雲嘉南	\N	\N	\N	\N	\N	\N	162
121	未判定	\N	曾友和	2021-06-01	雲嘉南	\N	\N	\N	\N	\N	\N	158
122	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	112
123	未判定	\N	曾友和	2021-07-31	雲嘉南	\N	\N	\N	\N	\N	\N	180
124	未判定	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	113
125	放棄	\N	曾友和	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	116
126	放棄	\N	劉家彰	2021-04-17	雲嘉南	\N	\N	\N	\N	\N	\N	123
128	4拍進場	\N	劉家彰	2021-03-26	雲嘉南	\N	\N	\N	\N	\N	\N	122
130	4拍進場	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	119
131	4拍進場	\N	曾友和	2021-04-27	雲嘉南	\N	\N	\N	\N	\N	\N	114
132	放棄	\N	劉家彰	2021-05-07	雲嘉南	\N	\N	\N	\N	\N	\N	120
134	4拍進場	\N	劉家彰	2021-04-12	雲嘉南	\N	\N	\N	\N	\N	\N	132
138	未判定	\N	曾友和	2021-04-22	雲嘉南	\N	\N	\N	\N	\N	\N	137
139	放棄	\N	曾友和	2021-04-27	雲嘉南	\N	\N	\N	\N	\N	\N	126
140	放棄	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	127
141	3拍進場	\N	曾昱銓	2021-05-14	高高屏	\N	\N	\N	\N	\N	\N	133
142	未判定	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	130
143	未判定	\N	曾友和	2021-03-24	雲嘉南	\N	\N	\N	\N	\N	\N	134
144	未判定	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	129
145	未判定	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	161
146	未判定	\N	曾友和	2021-03-28	雲嘉南	\N	\N	\N	\N	\N	\N	141
147	未判定	\N	曾友和	2021-03-28	雲嘉南	\N	\N	\N	\N	\N	\N	140
149	4拍進場	\N	劉家彰	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	131
150	放棄	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	128
151	放棄	\N	劉家彰	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	138
152	未判定	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	160
153	3拍進場	\N	曾友和	2021-08-02	雲嘉南	\N	\N	\N	\N	\N	\N	182
154	未判定	\N	曾友和	2021-04-13	雲嘉南	\N	\N	\N	\N	\N	\N	98
156	放棄	\N	曾友和	2021-04-14	雲嘉南	\N	\N	\N	\N	\N	\N	41
157	放棄	\N	張浩文	2021-04-18	雙北桃竹苗	\N	\N	\N	\N	\N	\N	143
158	4拍進場	\N	張浩文	2021-04-19	雙北桃竹苗	\N	\N	\N	\N	\N	\N	144
159	放棄	\N	曾友和	2021-05-01	雲嘉南	\N	\N	\N	\N	\N	\N	150
160	未判定	\N	曾友和	2021-04-22	雲嘉南	\N	\N	\N	\N	\N	\N	146
162	3拍進場	\N	劉家彰	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	149
163	放棄	\N	曾友和	2021-04-23	雲嘉南	\N	\N	\N	\N	\N	\N	147
164	未判定	\N	曾友和	2021-04-27	雲嘉南	\N	\N	\N	\N	\N	\N	145
165	放棄	\N	曾友和	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	152
166	放棄	\N	曾友和	2021-05-08	雲嘉南	\N	\N	\N	\N	\N	\N	115
167	未判定	\N	曾友和	2021-06-14	雲嘉南	\N	\N	\N	\N	\N	\N	155
168	未判定	\N	曾友和	2021-06-01	雲嘉南	\N	\N	\N	\N	\N	\N	156
169	未判定	\N	劉家彰	2021-06-30	雲嘉南	\N	\N	\N	\N	\N	\N	52
172	放棄	\N	劉家彰	2021-07-03	雲嘉南	\N	\N	\N	\N	\N	\N	169
173	放棄	\N	劉家彰	2021-07-03	雲嘉南	\N	\N	\N	\N	\N	\N	170
174	未判定	\N	劉家彰	2021-07-25	雲嘉南	\N	\N	\N	\N	\N	\N	177
175	3拍進場	\N	曾友和	2021-07-21	雲嘉南	\N	\N	\N	\N	\N	\N	153
177	放棄	\N	曾友和	2021-07-19	雲嘉南	\N	\N	\N	\N	\N	\N	172
178	3拍進場	\N	劉家彰	2021-07-19	雲嘉南	\N	\N	\N	\N	\N	\N	171
180	3拍進場	\N	曾友和	2021-07-26	雲嘉南	\N	\N	\N	\N	\N	\N	175
181	未判定	\N	曾友和	2021-07-24	雲嘉南	\N	\N	\N	\N	\N	\N	174
182	未判定	\N	劉家彰	2021-07-25	雲嘉南	\N	\N	\N	\N	\N	\N	176
183	未判定	\N	劉家彰	2021-07-25	雲嘉南	\N	\N	\N	\N	\N	\N	164
136	4拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2020-06-05	中彰投	\N	\N	\N	11
53	放棄	\N	張浩文	2020-06-03	雙北桃竹苗	曾友和	2020-06-03	雲嘉南	\N	\N	\N	2
54	4拍進場	\N	張浩文	2020-10-07	雙北桃竹苗	曾友和	2020-06-03	雲嘉南	\N	\N	\N	8
1	放棄	\N	劉家彰	2020-06-05	雲嘉南	曾友和	2020-06-05	雲嘉南	\N	\N	\N	7
58	4拍進場	\N	曾友和	2021-04-13	雲嘉南	曾昱銓	2020-05-16	高高屏	\N	\N	\N	5
6	放棄	\N	曾友和	2021-04-13	雲嘉南	曾昱銓	2020-05-16	高高屏	\N	\N	\N	6
106	4拍進場	\N	曾友和	2021-01-04	雲嘉南	曾友和	2020-07-20	雲嘉南	\N	\N	\N	12
64	3拍進場	\N	吳俊男	2020-07-20	雲嘉南	曾友和	2020-07-31	雲嘉南	\N	\N	\N	13
3	4拍進場	\N	劉家彰	2020-08-08	雲嘉南	曾友和	2020-08-06	雲嘉南	\N	\N	\N	18
9	3拍進場	\N	劉家彰	2021-06-30	雲嘉南	曾友志	2020-08-08	中彰投	\N	\N	\N	19
170	4拍進場	\N	劉家彰	2021-06-30	雲嘉南	曾友志	2020-08-08	中彰投	\N	\N	\N	16
10	3拍進場	\N	劉家彰	2021-06-30	雲嘉南	曾友志	2020-08-09	中彰投	\N	\N	\N	14
13	4拍進場	\N	張浩文	2020-09-05	雙北桃竹苗	曾友和	2020-08-14	雲嘉南	\N	\N	\N	25
66	4拍進場	\N	張浩文	2020-11-20	雙北桃竹苗	曾友和	2020-08-14	雲嘉南	\N	\N	\N	26
30	4拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2020-10-05	中彰投	\N	\N	\N	54
28	放棄	\N	劉家彰	2020-12-21	雲嘉南	曾友和	2020-10-07	雲嘉南	\N	\N	\N	53
155	4拍進場	\N	曾友和	2021-04-13	雲嘉南	曾友志	2020-10-23	中彰投	\N	\N	\N	57
65	3拍進場	\N	劉家彰	2020-11-20	雲嘉南	張浩文	2020-10-26	雙北桃竹苗	\N	\N	\N	48
41	3拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2020-11-05	中彰投	\N	\N	\N	64
67	4拍進場	\N	劉家彰	2020-11-21	雲嘉南	張浩文	2020-11-21	雙北桃竹苗	\N	\N	\N	68
127	4拍進場	\N	曾昱銓	2021-02-19	高高屏	曾友志	2020-12-06	中彰投	\N	\N	\N	85
93	4拍進場	\N	曾友和	2021-01-18	雲嘉南	張浩文	2020-12-13	雙北桃竹苗	\N	\N	\N	83
105	3拍進場	\N	曾友和	2021-05-08	雲嘉南	張浩文	2020-12-13	雙北桃竹苗	\N	\N	\N	82
171	3拍進場	\N	劉家彰	2021-07-01	雲嘉南	曾昱銓	2020-12-19	高高屏	\N	\N	\N	59
112	1拍進場	\N	曾昱銓	2021-01-15	高高屏	曾友志	2021-01-05	中彰投	\N	\N	\N	101
111	放棄	\N	曾昱銓	2021-01-17	高高屏	曾友志	2021-01-13	中彰投	\N	\N	\N	107
113	2拍進場	\N	曾昱銓	2021-02-24	高高屏	曾友志	2021-01-15	中彰投	\N	\N	\N	109
114	2拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2021-01-15	中彰投	\N	\N	\N	108
117	4拍進場	\N	曾昱銓	2021-05-02	高高屏	曾友志	2021-01-28	中彰投	\N	\N	\N	110
135	4拍進場	\N	曾昱銓	2021-06-08	高高屏	曾友志	2021-02-20	中彰投	\N	\N	\N	117
129	3拍進場	\N	曾昱銓	2021-05-02	高高屏	曾友志	2021-02-20	中彰投	\N	\N	\N	118
137	3拍進場	\N	劉家彰	2021-05-03	雲嘉南	曾友志	2021-02-25	中彰投	\N	\N	\N	73
176	4拍進場	\N	曾友和	2021-07-21	雲嘉南	曾昱銓	2021-03-17	高高屏	\N	\N	\N	100
148	3拍進場	\N	曾昱銓	2021-05-02	高高屏	曾友志	2021-03-19	中彰投	\N	\N	\N	125
161	4拍進場	\N	曾昱銓	2021-05-02	高高屏	曾友志	2021-05-04	中彰投	\N	\N	\N	151
179	4拍進場	\N	曾昱銓	2021-07-23	高高屏	曾友志	2021-07-18	中彰投	\N	\N	\N	173
52	4拍進場	\N	曾昱銓	2021-08-04	高高屏	曾友志	2021-07-30	中彰投	\N	\N	\N	179
18	1拍進場	\N	曾友和	2021-04-13	雲嘉南	劉家彰	2020-09-01	雲嘉南	張浩文	2020-09-05	雙北桃竹苗	27
17	4拍進場	\N	曾友和	2021-04-13	雲嘉南	劉家彰	2020-08-29	雲嘉南	張浩文	2020-09-05	雙北桃竹苗	28
29	3拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2020-09-14	中彰投	曾友和	2020-09-15	雲嘉南	36
56	3拍進場	\N	曾友和	2020-12-21	雲嘉南	曾友志	2020-10-21	中彰投	曾昱銓	2020-10-23	高高屏	31
57	3拍進場	\N	劉家彰	2020-11-28	雲嘉南	曾昱銓	2020-11-10	高高屏	曾友志	2020-11-10	中彰投	42
44	4拍進場	\N	曾昱銓	2021-03-14	高高屏	曾友志	2020-11-13	中彰投	曾友和	2020-11-14	雲嘉南	66
89	3拍進場	\N	曾昱銓	2020-12-15	高高屏	曾友志	2020-12-06	中彰投	曾友和	2020-12-06	雲嘉南	86
97	3拍進場	\N	曾友和	2021-04-13	雲嘉南	曾昱銓	2020-12-20	高高屏	曾友志	2020-12-20	中彰投	91
133	1拍進場	\N	劉家彰	2021-06-30	雲嘉南	曾昱銓	2021-03-08	高高屏	曾友志	2021-03-08	中彰投	121
\.


--
-- Data for Name: yfcases_land; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_land (id, "landNumber", "landUrl", "landArea", "landHoldingPointPersonal", "landHoldingPointAll", yfcase_id, "landRemark") FROM stdin;
1	1481	\N	74.00	1	18	1	\N
2	708	\N	102.00	1	12	2	\N
3	168	\N	76.00	1	7	3	\N
4	290-759	\N	166.00	1	12	4	\N
6	1588-2	\N	75.55	1	3	6	\N
7	74-141	\N	59.00	1	5	7	\N
8	212-6	\N	756.00	374	60000	8	\N
10	35339	https://drive.google.com/drive/folders/19qru68HgIO9M_wTfa5KeQyInRqu7GGr5	94.00	1	24	10	\N
11	277	\N	195.92	1	4	11	\N
12	573	https://drive.google.com/drive/mobile/folders/1f6PtxeSiXVh4SZqTpK9DSJt7dBlf-5wb	202.45	1	20	14	\N
13	565	https://drive.google.com/drive/mobile/folders/1HtTsGVYYLsrgLmA6H0juIU_S-PpyPNG8	57.85	1	3	15	\N
14	567	https://drive.google.com/drive/mobile/folders/1HtTsGVYYLsrgLmA6H0juIU_S-PpyPNG8	11.82	1	3	15	\N
15	2965-23	https://drive.google.com/drive/mobile/folders/12Xo0A7PsAihvHXFfcQla0nmsZ7O-VJD7	2137.00	52	10000	16	\N
16	1248	\N	31.00	4	6	17	\N
17	1249	\N	35.00	4	6	17	\N
9	182	\N	1183.00	315	60000	9	\N
5	1377	\N	2311.00	101	50000	5	\N
19	1832	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	683.58	1	96	18	\N
20	1832-1	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	21.58	1	96	18	\N
21	391	https://drive.google.com/drive/u/1/folders/101EycYhst6wW3xUD2OYxnsc2jhUufc-V	77.13	1	2	19	\N
18	901	https://drive.google.com/drive/u/1/folders/1VhEp9cfB65HgsC-kFAt0mjU4wybrejiH	73.67	1	6	12	\N
22	385	\N	134.74	1	25	20	\N
23	235-18	\N	104.00	1	15	21	\N
24	288-0006	\N	14.00	1	30	22	\N
25	292-14	\N	77.00	1	30	22	\N
26	131-3	\N	71.00	1	7	23	\N
27	98	\N	135.83	1	8	24	\N
28	321	\N	154.00	1	120	25	\N
29	198-1	\N	21.00	1	15	26	\N
30	199-4	\N	101.00	1	15	26	\N
31	93	https://drive.google.com/drive/u/0/folders/1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	47.98	1	2	27	\N
33	1615	https://drive.google.com/drive/u/0/folders/1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	68.00	1	2	29	\N
32	1687	\N	77.38	1	2	28	\N
34	714	\N	101.19	1	4	30	\N
36	1577	\N	48.00	1	3	32	\N
37	730-114	\N	97.00	1	2	33	\N
38	277	\N	195.92	1	4	34	\N
39	176	\N	63.00	4	6	36	\N
40	879-16	\N	1826.00	1	4	37	\N
41	541-5	\N	83.00	1	3	38	\N
42	363	\N	83.64	1	7	39	\N
43	539-37	\N	65.00	1	2	40	\N
44	1	\N	70.00	1	3	41	\N
46	246	\N	90.16	1	4	43	\N
47	247	\N	6.63	1	4	43	\N
48	922-4	\N	100.00	1	4	44	\N
49	1997	\N	83.00	1	2	45	\N
50	430	\N	895.00	1	5	46	\N
51	1122	\N	794.84	3610	79300	47	\N
53	1581-7	\N	48.00	1	2	35	\N
54	1584-8	\N	31.00	1	2	35	\N
55	351-10	\N	139.00	1	4	49	\N
56	17	\N	266.71	1	10	50	\N
57	19	\N	98.15	1	10	50	\N
58	562	\N	100.57	1	3	51	\N
59	203-2	\N	61.00	1	4	52	\N
60	202-6	\N	68.00	7	624	52	\N
61	204-3	\N	83.00	7	624	52	\N
63	1362	\N	801.00	378	50000	54	\N
64	281	\N	105.00	1	2	55	\N
65	610	\N	6413.96	38	50000	56	\N
52	296	https://drive.google.com/file/d/1LvPsC0sBA1laxPRTjmWuiNm4wMXmwJMu/view?usp=drivesdk	36.74	1	15	48	\N
35	281	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	105.00	1	2	31	\N
68	513	\N	38.99	1	15	58	\N
72	93-31	\N	56.00	2	3	61	\N
74	944	\N	96.00	1	4	63	\N
75	944-1	\N	21.00	1	4	63	\N
76	944-2	\N	4.00	1	4	63	\N
77	502	\N	150.45	1	3	64	\N
45	827	https://drive.google.com/file/d/1RyGR0Oshqw9ey34UYihd5mACO1Sz1Klh/view?usp=drivesdk	97.45	1	4	42	\N
78	867	\N	39.00	1	4	65	\N
79	1208	\N	104.75	1	2	66	\N
73	31	https://drive.google.com/file/d/1VlzAlXNPW0WyWPsjA0dE9PTiEI3boCuD/view?usp=sharing	4906.00	723	600000	62	\N
69	150-17	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	6.00	1	5	59	\N
66	757	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	42.00	1	4	57	\N
164	1427	\N	148.96	1	3	120	\N
62	426-21	https://drive.google.com/file/d/1_yFumddMlP6plZHBxTRD7NuugLeIq9hQ/view?usp=sharing	56.00	1	6	53	\N
71	1007	https://drive.google.com/file/d/1f7hjwFRcYl7lh7LXy_6CSe_hrQgujgUw/view?usp=sharing	59.00	1	3	60	\N
80	974	\N	5.00	1	6	67	\N
81	974-1	\N	12.00	1	6	67	\N
82	974-2	\N	42.00	1	6	67	\N
83	66	\N	9.77	1	5	68	\N
84	67	\N	103.61	1	5	68	\N
85	855	\N	100.10	1	10	69	\N
86	233	\N	75.58	1	5	70	\N
87	415-42	\N	55.00	1	2	71	\N
88	415-176	\N	2.00	1	2	71	\N
89	244-4	\N	78.00	1	6	72	\N
90	244-4	\N	82.00	1	96	72	\N
91	244-4	\N	82.00	1	96	72	\N
92	2058	\N	55.00	1	6	73	\N
93	517	\N	279.00	1	2	74	\N
94	540	\N	244.00	1	8	74	\N
95	377-14	\N	67.00	1	4	75	\N
96	68	\N	78.39	2	5	76	\N
97	454	\N	1219.00	1	4	77	\N
98	153	\N	1998.60	1999	9600	78	\N
101	888-1	\N	196.00	1	60	80	\N
102	888-4	\N	2.00	1	60	80	\N
103	235-18	\N	104.00	1	15	81	\N
105	461	\N	117.59	1	15	83	\N
106	222	\N	50.00	1	42	84	\N
107	223	\N	3.00	1	14	84	\N
108	910	\N	2049.00	33	17560	85	\N
109	1290-1	\N	303.00	197	10000	86	\N
110	839	\N	79.33	1	2	87	\N
111	840	\N	81.93	1	12	87	\N
112	410	\N	101.00	1	36	88	\N
113	505-7	\N	18.00	1	18	88	\N
114	450	\N	79.00	1	15	89	\N
115	881	\N	79.14	1	21	90	\N
117	420	\N	133.00	1	8	92	\N
118	40	\N	617.00	410	40000	93	0
116	320	https://drive.google.com/file/d/1F_3hIs6_jbQW45-ASrrR2Sdeo4sWwaac/view?usp=sharing	72.69	1	4	91	\N
99	1306-23	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	24.00	1	21	79	\N
100	1473-30	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	61.00	1	4	79	\N
70	153-2	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	65.00	1	5	59	\N
67	757-1	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	2.00	1	4	57	\N
120	896	\N	84.00	1	2	99	\N
122	798	\N	58.00	1	7	101	\N
123	630	\N	4.51	2	120	98	\N
124	631	\N	2.21	2	120	98	\N
125	647	\N	741.16	2	120	98	\N
126	361	\N	21.00	588	7056	94	\N
127	362	\N	108.00	588	7056	94	\N
128	483	\N	212.90	43	12000	104	\N
129	508	\N	990.11	43	12000	104	\N
130	512	\N	134.45	43	12000	104	\N
131	536	\N	27.34	43	12000	104	\N
132	561	\N	188.09	43	12000	104	\N
133	561-1	\N	4.66	43	12000	104	\N
134	741	\N	602.00	1	100	105	\N
135	120	\N	3094.00	1	160	106	\N
136	120-20	\N	587.00	1	160	106	\N
137	83-13	\N	274.00	1	4	107	\N
104	1986	https://drive.google.com/file/d/1ml8ePLI8BBp5NSwH1iA7fL3K7nxISaEg/view?usp=sharing	4575.00	2	10000	82	\N
138	1396	\N	126.75	2	6	108	\N
139	359	\N	32.04	1	5	109	\N
140	360	\N	64.21	1	5	109	\N
141	724	\N	78.16	1	4	110	\N
142	574	\N	86.17	1	2	111	\N
143	613	\N	77.97	1	4	112	\N
144	613-1	\N	6.03	1	4	112	\N
145	374	\N	99.00	1	10	96	\N
146	483	\N	212.90	43	12000	95	\N
147	508	\N	990.11	43	12000	95	\N
148	512	\N	134.45	43	12000	95	\N
149	536	\N	27.34	43	12000	95	\N
150	561	\N	188.09	43	12000	95	\N
151	561-1	\N	4.66	43	12000	95	\N
152	134	\N	70.00	1	2	113	\N
154	994-37	\N	78.00	1	2	116	\N
155	1747	\N	45.77	1	5	114	\N
156	1748	\N	38.46	1	5	114	\N
157	3593	\N	786.00	8	12188	117	\N
158	3601	\N	716.00	8	12188	117	\N
159	3606	\N	9444.00	8	12188	117	\N
160	3610	\N	800.00	8	12188	117	\N
161	3618	\N	998.00	8	12188	117	\N
162	281	\N	67.02	1	2	118	\N
167	888-1	\N	89.02	1	3	122	\N
168	417	\N	354.11	1	40	123	\N
169	1169-8	\N	11568.00	314	700000	124	\N
223	1350	\N	32.00	1	5	167	\N
224	1588-2	\N	75.55	1	3	168	\N
225	147	\N	275.33	1	4	169	\N
153	517	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	109.87	1	2	115	\N
226	775	\N	10.84	1	5	170	\N
166	888	https://drive.google.com/file/d/1MrKIW3hKgYmBnojOwkzLCCSHO5Gg0wMe/view?usp=sharing	11.00	1	3	122	\N
170	577	\N	69.00	40	100	125	\N
171	684740	\N	60.00	2	3	126	\N
172	429	\N	39.00	1	5	127	\N
173	675	\N	909.00	474	60000	129	\N
174	671	\N	330.00	474	60000	129	\N
175	585-2	\N	309.00	1	3	130	\N
176	139	\N	36.61	1	4	131	\N
177	140	\N	29.79	1	4	131	\N
178	141	\N	29.40	1	4	131	\N
179	1096	\N	671.43	1	96	132	\N
180	212	\N	2389.00	99	40000	133	\N
181	212-4	\N	113.00	99	40000	133	\N
165	99	https://drive.google.com/drive/u/0/folders/1q8OkStMKGjKPx06JY22xUBB63E1G2XQ5	85.59	1	3	121	\N
182	1856895	\N	87.00	1	2	128	\N
184	430	\N	73.12	1	3	136	\N
185	858	\N	103.73	1	16	97	\N
186	858-1	\N	0.24	1	16	97	\N
187	858-2	\N	7.03	1	16	97	\N
188	347	\N	92.00	1	8	137	\N
189	90	\N	6319.00	96	60000	138	\N
190	503	\N	96.00	1	8	139	\N
183	290-762	https://drive.google.com/drive/folders/1K6kQL__YlnjX5yfw4lH0x3ew_Hmnh7bY?usp=sharing	156.00	1	12	135	\N
191	671	\N	330.00	474	60000	140	\N
192	675	\N	909.00	474	60000	140	\N
193	242	\N	2988.43	41	10000	141	\N
194	347	\N	92.00	1	8	142	\N
195	1376-3	\N	96.00	1	30	143	\N
196	235-18	\N	104.00	1	15	144	\N
197	178	\N	184.00	1	20	145	\N
199	140	\N	29.79	1	4	146	\N
200	141	\N	29.40	1	4	146	\N
198	139	\N	36.61	1	4	146	\N
201	619地號 ，面積m2，持分	\N	879.00	1477	263700	147	\N
204	893	\N	117.42	1	3	150	\N
121	233	https://drive.google.com/file/d/1NCuCcZRuucFjXFOkHLlKOQqz8PPWrIov/view?usp=sharing	62.00	1	5	100	\N
205	1121-4	\N	76.00	2	3	151	\N
206	1121-11	\N	28.00	2	3	151	\N
207	1122-4	\N	22.00	2	3	151	\N
163	1677	https://drive.google.com/file/d/1XHndLkaAOmpYlVQYNsLQcmxGdbjQLWxZ/view?usp=drivesdk	204.44	1	20	119	\N
208	197	\N	104.00	1	24	152	\N
209	302	\N	23422.00	211	400000	153	\N
210	1622-4	\N	92.00	1424	30000	154	\N
211	1622-9	\N	51.00	1	3	154	\N
212	1622-10	\N	7.00	1	3	154	\N
213	400	\N	1151.00	83	10000	155	\N
214	無	\N	0.00	0	0	159	\N
215	939	\N	35.00	1	5	162	\N
216	939-1	\N	145.00	11	750	162	\N
217	174-38	\N	92.00	1	3	161	\N
218	3099-33	\N	897.00	1	100	160	\N
219	3102-58	\N	424.00	136	5000000	160	\N
220	400	https://drive.google.com/drive/folders/1ih2wHD7x9KZPV66Y4uDi_CAEGM3BX_2u?usp=sharing	1151.00	83	10000	163	\N
202	296	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	95.00	1	4	148	\N
203	185	https://drive.google.com/drive/folders/11ActuwABuQPo5XyXL7wnKy07NNjQsckD?usp=sharing	50.00	1	5	149	\N
221	1703	\N	50.42	1	5	166	\N
222	1704	\N	41.79	1	5	166	\N
227	776	\N	79.00	1	5	170	\N
228	198-38	\N	99.00	1	1	164	\N
229	58-15	\N	78.00	1	5	171	\N
230	492-11	\N	71.00	1	3	172	\N
231	927	\N	150.00	1	12	173	\N
232	934-6	\N	48.00	1	4	174	\N
234	94-21	\N	11.00	2	3	177	\N
235	94-31	\N	34.00	2	3	177	\N
236	394-17	\N	47.00	1	2	178	\N
233	1609	\N	146.00	1	36	175	\N
237	1129-1	\N	48.00	1	2	179	\N
238	190	\N	86.57	1	2	181	\N
239	190-1	\N	3.84	1	2	181	\N
240	522	\N	72.46	1	2	182	\N
241	902	\N	106.29	1	2	180	\N
242	903	\N	144.52	1	2	180	\N
243	1135	\N	3848.68	13	10000	183	\N
\.


--
-- Data for Name: yfcases_objectbuild; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_objectbuild (id, "objectBuildAddress", "objectBuildTotalPrice", "objectBuildBuildArea", "objectBuildHouseAge", "objectBuildFloorHeight", "objectBuildStatus", "objectBuildTransactionDate", "objectBuildUrl", "objectBuildScorerA", "objectBuildScorerB", "objectBuildScorerC", "objectBuildScorRateA", "objectBuildScorRateB", "objectBuildScorRateC", "objectBuildScorReasonA", "objectBuildScorReasonB", "objectBuildScorReasonC", "plusItemA1", "plusItemA2", "plusItemA3", "plusItemA4", "plusItemA5", "plusItemOtherA", "plusValueA1", "plusValueA2", "plusValueA3", "plusValueA4", "plusValueA5", "plusValueOtherA", "plusItemB1", "plusItemB2", "plusItemB3", "plusItemB4", "plusItemB5", "plusItemOtherB", "plusValueB1", "plusValueB2", "plusValueB3", "plusValueB4", "plusValueB5", "plusValueOtherB", "plusItemC1", "plusItemC2", "plusItemC3", "plusItemC4", "plusItemC5", "plusItemOtherC", "plusValueC1", "plusValueC2", "plusValueC3", "plusValueC4", "plusValueC5", "plusValueOtherC", yfcase_id, "objectBuildSubBuildArea") FROM stdin;
17	七堵區泰和街61~90號	3350000	28.36	29.00	3/4	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	9	0.00
4	武德街135巷1~30號	4250000	22.14	48.00	2	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	3	0.00
77	中華南路二段300巷30弄33號	6200000	44.27	33.00	3	自訂	2019-12-1	https://drive.google.com/file/d/1hwikfVS9lSoNAlidmoiyc3Le4LgJ6ERt/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建3F～3.5F	臨路	\N	\N	\N	0.00	-0.15	0.00	0.00	0.00	0.00	增建還原	新舊	臨路寬	連接幹到	\N	\N	-0.14	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	42	0.00
175	松山區寶清街101~105號	11380000	23.82	41.90	5/5	自訂	2019-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	94	0.00
176	松山區南京東路五段389巷5弄11~15號	9310000	21.47	37.50	5/5	自訂	2019-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	94	0.00
177	南京東路五段389巷11弄6號	11800000	20.08	27.00	4/5	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	94	0.00
178	汐止區大同路二段312巷16弄31~60號	8800000	29.42	32.80	4/5	自訂	2020-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	104	0.00
179	汐止區大同路二段312巷16弄31~60號	8700000	32.46	31.50	4/5	自訂	2019-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	104	0.00
180	南港區興華路76巷1~10號	15800000	32.30	40.60	3/4	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	106	0.00
181	南港區東明街78巷1~5號	14000000	27.34	50.00	3/4	自訂	2019-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	106	0.00
193	建中街68號	3900000	35.17	39.00	全/3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	116	0.00
205	宮後街13號	14020000	57.41	0.00	2	自訂	2020-8-1	https://drive.google.com/file/d/14I2VTi0Uu-fe3EyIU685HP3kBvBgcbZ3/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	聯外交通	\N	\N	\N	-0.05	0.00	0.00	0.00	0.00	0.00	屋況	臨路	聯外交通	\N	\N	\N	0.00	0.00	0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	121	0.00
199	五妃街203-2號	6000000	40.94	38.00	3/5	自訂	\N	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	路寬	漲勢	\N	\N	0.00	0.00	0.00	0.20	0.00	0.00	屋況	路寬	聯外交通	其他（1年內區域升值）	\N	\N	0.00	0.00	0.00	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	119	0.00
200	府緯街67號	15000000	52.16	33.00	2	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	120	0.00
195	信義街75號	5200000	27.11	51.00	全/2	自訂	2019-5-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	增建屋況	臨路	聯外	\N	\N	\N	-0.30	0.20	0.20	0.00	0.00	0.00	屋況增建	路寬	臨路	\N	\N	\N	-0.20	0.00	0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	114	0.00
201	西門路一段438號	25250000	45.47	52.20	2	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	120	0.00
196	臨安路一段212巷23號	4270000	36.40	50.00	全/2	自訂	2019-3-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	增建屋況	臨路	聯外	\N	\N	\N	-0.30	0.40	0.10	0.00	0.00	0.00	屋況增建	路寬	臨路	\N	\N	\N	-0.10	0.10	0.20	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	114	0.00
183	和誠街61~90號	5200000	26.90	47.00	2	自訂	2019-9-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.58	0.00	0.00	0.00	0.00	0.00	依專案負責人評估不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	109	0.00
182	蓬萊121~150號	5300000	36.43	38.00	2	自訂	2020-4-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.38	0.00	0.00	0.00	0.00	0.00	依專案負責人評估不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	108	0.00
185	鹽埔鄉中正路1~30號	1000000	36.94	47.00	2	自訂	2019-4-1	\N	曾昱銓	NULL	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	2.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	111	0.00
186	安中路一段189巷63弄20號	3500000	24.78	43.00	2	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	112	0.00
187	汐止區忠孝東路241~270號	7200000	25.55	33.90	2/5	自訂	2019-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	96	0.00
188	汐止區忠孝東路258巷1~30號	7600000	26.26	45.90	2/3	自訂	2019-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	96	0.00
189	汐止區大同路二段312巷16弄31~60號	8800000	29.42	32.80	4/5	自訂	2020-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	95	0.00
190	汐止區大同路二段312巷16弄1~30號	9000000	32.66	31.60	3/5	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	95	0.00
184	長榮街14巷1~30號	2000000	31.46	51.00	2	自訂	2019-12-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	依評估不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	110	0.00
202	大同路一段70巷15號4F	2780000	25.56	39.00	4/5	自訂	2020-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	123	0.00
203	大同路一段70巷13號3F	3360000	30.41	35.00	3/5	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	123	0.00
197	九如一路871~900號	3000000	20.83	41.00	5	自訂	2020-3-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	依專案人員評估	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	117	0.00
198	金潭路279巷11弄1~30號	2800000	24.56	39.00	2	自訂	2020-10-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	依專案人員評估	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	118	0.00
206	北門路二段576巷9號4樓	6680000	49.67	17.00	4/10	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	124	0.00
207	北門路二段576巷9號8樓	6800000	40.64	17.00	8/11	自訂	2020-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	124	0.00
156	健康路一段391巷4號	7100000	48.48	39.00	全/4	自訂	2019-4-1	https://drive.google.com/file/d/1feZMrWYynQ1EYalg2MuRCo4amnxz55jt/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	路寬	聯外交通	\N	\N	\N	-0.05	1.00	0.00	0.00	0.00	0.00	屋況增建	臨路寬度	聯外交通	\N	\N	\N	-0.15	0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	59	0.00
204	西門路二段300巷1號	17500000	73.50	0.00	4	自訂	2020-11-1	https://drive.google.com/file/d/1VZwfsxTlmv-0QOX-5Zrr2ztNYqxokK4Y/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	聯外交通	\N	\N	\N	-0.05	0.00	-0.02	0.00	0.00	0.00	屋況	臨路	聯外交通	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	121	0.00
191	仁德區德善一街27巷18號	5500000	32.46	35.20	1/2	自訂	2019-5-1	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	路寬	臨路	\N	\N	0.00	0.00	0.00	-0.10	0.00	0.00	屋況（2增3）	再加	臨路	臨外交通	\N	\N	-0.20	0.10	0.00	-0.05	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	115	0.00
208	安南區郡安路三段250巷2弄20號	6380000	29.34	39.70	1/2	自訂	2020-10-1	https://drive.google.com/file/d/1X6v3H4TedS6VX5B0zB6uALgeSB0rIiCA/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	臨路	\N	\N	\N	-0.15	0.00	0.00	0.00	0.00	0.00	屋況	臨路	聯外交通	\N	\N	\N	-0.20	-0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	122	0.00
194	後壁里民安路二段138巷9號	7380000	55.12	27.00	全/4	自訂	2020-1-1	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	路寬	臨路（無尾巷）	\N	\N	-0.05	0.00	0.00	0.10	0.00	0.00	屋況	臨路	臨外交通	\N	\N	\N	0.00	0.00	0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	115	0.00
209	安南區郡安路三段236巷17弄13號	6300000	31.28	40.00	1/2	自訂	2020-2-1	https://drive.google.com/file/d/1WPqk2k0tBY59kAk2T-_ljANAWdyjgXHM/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	路寬	臨路	\N	\N	-0.20	0.10	0.00	0.00	0.00	0.00	屋況	臨路	聯外交通	\N	\N	\N	-0.15	-0.15	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	122	0.00
228	建國街51號108/7	4500000	32.30	34.00	全/2	自訂	2019-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	136	0.00
229	大同區重慶北路三段9巷31~35號	12300000	25.36	47.40	2/4	自訂	2019-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	97	0.00
230	大同區重慶北路三段9巷16~20號總價：	11000000	24.20	36.50	4/5	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	97	0.00
211	七甲里南潭二街99巷38弄7號	8600000	48.68	9.00	全/3	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	126	0.00
215	光華街102號	2500000	16.97	49.00	全/2	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	127	0.00
216	中正路161巷1弄5號	7000000	25.93	39.00	4/5	自訂	2020-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	129	0.00
217	中正路232號	7200000	32.74	37.00	3/5	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	129	0.00
210	安樂三街40巷1~30號	3500000	31.88	40.00	2	自訂	2020-4-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.03	0.00	0.00	0.00	0.00	0.00	不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	125	0.00
218	北花里中正路113巷27號	4500000	68.59	30.00	3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	130	0.00
219	北花里中正路73巷38弄15號	3000000	44.34	24.00	3	自訂	2019-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	130	0.00
236	中正路99巷12號3F	9850000	31.22	20.00	3/8	自訂	2019-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	140	0.00
224	南門路48巷16號108/10	5280000	40.52	37.00	3/4	自訂	2019-10-1	https://drive.google.com/file/d/1-o50T3cgXgLQZF3WOsrEHzivUTohGmAv/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	臨路	樓層	增值	\N	0.00	0.00	0.00	0.05	0.10	0.00	屋況	樓層臨路	聯外交通	\N	\N	\N	-0.10	0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	132	0.00
220	中平九街91~120號6/9F	5380000	39.86	29.00	9	自訂	2020-9-1	\N	曾昱銓	NULL	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.15	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	133	0.00
212	南潭二街99巷16弄10號	8300000	48.68	9.00	全/3	自訂	2020-5-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	屋況	路寬	臨路	\N	\N	\N	-0.10	0.00	0.20	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	126	0.00
52	大安街211~240號(230號)	6300000	32.59	39.00	全/2(109/4)	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	30	0.00
231	美崙街86巷8號	13200000	14.31	53.00	2/2	自訂	2019-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	137	0.00
233	南京西路185巷26號108/12	10500000	12.06	0.00	全/1	自訂	2019-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	139	0.00
235	西寧北路69-1號109/1	69000000	85.67	0.00	全/4	自訂	2020-1-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	139	0.00
238	南門路44巷10之1號	4520000	34.84	37.00	\N	仲介	\N	https://www.houseplus.tw/m/estimation	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	132	0.00
213	中正北路二段150號	7580000	52.28	27.00	全/4	自訂	2020-12-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外	似親友價	\N	\N	0.00	-0.10	-0.10	0.20	0.00	0.00	屋況	估價	路寬	臨路	\N	\N	0.00	0.10	-0.10	-0.05	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	126	0.00
221	西灣里大灣路942巷591號	8500000	43.13	30.00	全/2	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	128	0.00
222	永華路233巷37號109/6	12000000	69.50	29.00	全/4	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	128	0.00
226	-金華路二段9巷5號	2600000	22.89	42.00	4/4	自訂	2020-7-1	https://drive.google.com/file/d/1cnHHezkWkoArPGDNoLdke5etPo8yUxNn/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.15	0.10	0.00	0.00	0.00	0.00	屋況	路寬	頂加	臨路	\N	\N	0.00	0.10	-0.05	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	135	0.00
225	-金華路二段21巷7號	2830000	23.14	42.00	4/4	自訂	2020-8-1	https://drive.google.com/file/d/1H30G7VTLW2UrPcJwqD3Kut0SXi7eziJx/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.15	0.10	0.00	0.00	0.00	0.00	屋況	路寬	頂加	臨路	\N	\N	-0.10	0.10	-0.05	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	135	0.00
134	東區東寧路296巷9號	7900000	28.93	46.90	1/2	自訂	2019-9-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	屋況	路寛	臨路	\N	\N	-0.20	-0.05	0.00	-0.05	0.00	0.00	屋況	臨路	聯外	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	60	0.00
223	南門路44巷15號109/7	5350000	38.86	37.00	3/4	自訂	2020-7-1	https://drive.google.com/file/d/1ePp9keyUmVypLIKVW9qY-S2eAb5G62-s/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	臨路	樓層	\N	\N	0.00	0.00	0.00	0.05	0.00	0.00	屋況	樓層臨路	聯外交通	\N	\N	\N	-0.10	0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	132	0.00
237	好時價	2500000	22.89	42.00	\N	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	135	0.00
232	文林路587巷1~30號	11600000	26.96	50.00	2/3	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	137	0.00
242	好時價	11190000	21.63	50.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	142	0.00
243	好時價	11190000	21.63	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	137	0.00
244	好時價	10660000	23.29	50.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	88	0.00
47	成功路600巷39弄1~30號(1號)105年3月	3000000	23.48	44.00	2	自訂	\N	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	無尾巷 巷尾 有空間 可利用	\N	\N	\N	\N	\N	0.05	0.00	0.00	0.00	0.00	0.00	屋況舊	無尾巷尾	\N	\N	\N	\N	-0.02	-0.01	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	29	0.00
48	文賢路218巷10弄1~30號(6號)109/2	4330000	24.24	47.00	2	自訂	\N	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	臨路寬度 比較	\N	\N	\N	\N	\N	-0.25	0.00	0.00	0.00	0.00	0.00	進出位置較麻煩	屋況差不多	\N	\N	\N	\N	-0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	29	0.00
20	板橋區懷德街91~120號	9500000	25.62	46.60	3/4	自訂	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9791%E8%99%9F/@25.0316992,121.4781761,3a,75y,344.67h,93.72t/data=!3m7!1e1!3m5!1sGGy9DCFqu95RE2EokApw0A!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3DGGy9DCFqu95RE2EokApw0A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D17.913296%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a845c13b7cd9:0xb352895716a9a73a!8m2!3d25.0318411!4d121.4782099	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	10	0.00
245	好時價	10680000	32.71	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	82	0.00
246	好時價	4640000	26.14	0.00	\N	仲介		\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	100	0.00
247	好時價	5900000	21.00	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	96	0.00
249	新北市三重區自強路四段31巷30號5樓	6160000	22.00	40.00	5/5	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	143	0.00
248	三重區自強路四段31巷2號	8000000	25.71	39.20	4/5	自訂	2020-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	143	0.00
250	-自強路四段31巷10號	7100000	23.60	39.00	5/5	自訂	2020-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	143	0.00
253	中山路一段206巷117號2樓	8110000	21.70	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	144	0.00
290	國城三街22號3樓	3750000	38.10	27.00	8	自訂	2020-9-1	https://market.591.com.tw/3022253?regionId=12&sectionId=373	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	屋況（時間加成）	臨路	對外交通	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	163	0.00
251	中山路一段206巷105號	10700000	27.82	37.00	4/5	自訂	2019-7-1	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件在二樓較便利	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	屋況（採光-0.05、樓層+0.1）	臨路	聯外交通	\N	\N	\N	0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	144	0.00
254	好時偠	5350000	51.28	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	116	0.00
255	忠仁里10鄰忠仁街113巷3號44.10	4700000	44.10	30.00	全/3	自訂	2020-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	116	0.00
256	建平七街677號三樓之16	4000000	29.00	26.00	3	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	138	0.00
257	建平七街661-900號11樓	4800000	39.42	26.00	12	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	138	0.00
258	建平七街661-900號4樓	5100000	40.06	26.00	12	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	138	0.00
241	美崙街86巷8號	13200000	14.31	53.00	2/2	自訂	2019-9-1	https://drive.google.com/file/d/1XxMsmrYoI4tGIkxE-NXVr1CjJ9KyiCPA/view?usp=sharing	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	142	0.00
240	文林路587巷1~30號	11600000	26.96	50.00	2/3	自訂	2020-4-1	https://drive.google.com/file/d/1XxMsmrYoI4tGIkxE-NXVr1CjJ9KyiCPA/view?usp=sharing	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	142	0.00
259	士林區士東路46巷46~50號	14800000	27.17	36.70	2/5	自訂	2020-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	145	0.00
260	士林區忠誠路二段70巷13弄1~5號	21000000	39.29	39.70	3/5	自訂	2019-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	145	0.00
261	好時價	19010000	37.42	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	145	0.00
262	新營區新進路二段445巷1~30號	6380000	46.90	31.50	1/3	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	146	0.00
264	好時價	3850000	37.69	42.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	146	0.00
263	新營區新進路二段445巷1~30號	9380000	46.90	32.10	1/3	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	146	0.00
265	109/02公寓東區長榮路二段24巷48弄1~30號	2380000	29.16	32.90	5/5	自訂	2020-2-1	＿	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	147	0.00
126	大林鎮平林里32鄰信義街31~60號	2400000	30.64	27.60	4/5	自訂	2020-9-1	https://drive.google.com/file/d/1o_t-c8JEhatA6kuPO9ATOCH94GssExNg/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	0.00	-0.20	0.00	0.00	0.00	0.00	增建	路寬	臨路雙邊活巷	\N	\N	\N	0.00	0.00	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	72	0.00
283	保泰路181~210號	13000000	48.22	42.00	4	自訂	2019-11-1	\N	曾昱銓	NULL	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.31	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	154	0.00
266	好時價	2470000	22.44	42.00	\N	仲介	\N	22.44	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	147	0.00
268	好時價	5480000	26.81	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	114	0.00
269	嘉義市溪興街231巷20弄9號	6480000	40.00	20.00	2	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	148	0.00
273	好時價	3980000	30.00	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	150	0.00
274	中芸路61~90號	2500000	26.98	37.00	2	自訂	2019-7-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.35	0.00	0.00	0.00	0.00	0.00	不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	151	0.00
270	嘉義市文化路694巷29弄26號	4880000	31.00	42.00	3	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	149	0.00
272	南區鯤鯓路232巷44號	2870000	23.35	40.20	1/2	自訂	2020-10-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.10	-0.20	0.00	0.00	0.00	0.00	屋況	臨路	路寬	增建	\N	\N	0.20	-0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	150	0.00
271	南區鯤鯓路232巷40號	2650000	23.35	39.90	1/2	自訂	2020-7-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.10	-0.20	0.00	0.00	0.00	0.00	屋況	臨路	路寬	增建	\N	\N	0.20	-0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	150	0.00
280	好時價	11500000	57.00	40.00	2/2	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	152	0.00
288	西區國城三街18號6樓之2	4200000	35.12	27.00	8	自訂	2020-4-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	加成	臨路	對外交通	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	163	0.00
278	嘉義市溪興街231巷22弄30號	7000000	49.91	36.70	1/2	自訂	2020-12-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	漲幅	臨路	路寬	\N	\N	0.00	0.10	0.00	0.00	0.00	0.00	屋況（時間加成）	臨路	對外交通	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	148	0.00
281	好時價	6910000	60.50	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	153	0.00
284	嘉義市國城三街1~30號	3750000	38.11	26.40	3/8	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	155	0.00
275	嘉義市文化路694巷13號	4250000	21.42	42.40	1/2	自訂	2020-10-1	https://drive.google.com/file/d/1jEruEmEScrIo5TZPPhGJZfYTMrvPzG4t	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況增建	路寬	臨路	\N	\N	\N	-0.32	0.00	-0.05	0.00	0.00	0.00	屋況（增建0.67）	臨路	對外交通	\N	\N	\N	-0.33	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	149	0.00
285	好時價	4210000	35.00	0.00	\N	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	155	0.00
286	新興路91巷14號	6240000	28.00	36.00	2	仲介	2020-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	161	0.00
287	臺南市南區新建路43巷13之1號	2780000	26.00	36.00	2	仲介	2020-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	160	0.00
282	嘉義市林森東路721~750號	5400000	52.97	16.30	6/13	自訂	2019-6-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況（ 時間加成1.2）	臨路	對外交通	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	屋況	漲幅	\N	\N	\N	\N	0.00	0.20	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	153	0.00
293	台南市中西區民生路2段215、217號	13360000	64.43	45.00	2	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	166	0.00
292	台南市新營區新進路二段445巷4號	4730000	43.00	42.00	2	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	131	0.00
295	民生路二段184號	26000000	134.84	50.70	1/3	自訂	2020-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	166	0.00
294	民生路二段234號	14000000	85.72	60.50	1/3	自訂	2020-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	166	0.00
296	河中街40號	11800000	102.75	54.00	3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	166	0.00
328	嘉義市成功東街52巷1號	2900000	21.00	57.00	2	自訂	-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	177	\N
299	台南市東區青年路237號	8660000	50.00	40.00	\N	自訂	\N	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	鐵路地下化增值	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	增值1.2	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	167	0.00
298	前鋒路27號	12800000	50.47	44.00	全/3	自訂	2020-12-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	對外	\N	\N	\N	-0.20	0.10	0.10	0.00	0.00	0.00	路寬	臨路	屋況	\N	\N	\N	0.10	0.00	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	167	0.00
303	新興路91巷10號	4080000	20.69	47.00	2	自訂	-1-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	161	0.00
304	臺南市東山區東山里東山263號	6770000	62.00	30.00	2	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	169	0.00
305	東山區東山里242之13號	7000000	17.71	28.00	1	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	169	0.00
306	東山里東山217之7號	2350000	26.43	0.00	2	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	169	0.00
307	東山里7鄰東山315之16號	7780000	72.46	1.00	3	自訂	2020-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	169	0.00
302	台南市安南區安通路四段119巷27弄1號	6520000	43.00	40.00	\N	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	168	0.00
300	安通路四段109巷2號	6000000	43.43	40.00	全/2	自訂	2020-10-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	0.10	0.10	0.00	0.00	0.00	0.00	屋況	路寬	臨路	增值	\N	\N	0.10	0.00	0.00	0.10	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	168	0.00
12	安通路四段119巷27弄1號（**仲介））	7000000	29.43	38.00	透天	仲介	\N	\N	曾友和	曾昱銓	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	6	0.00
8	東區前鋒路61~90號	4500000	32.00	37.00	6	自訂	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	5	0.00
5	金華路二段15巷1~30號	3000000	23.14	41.20	2/4	自訂	\N	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	4	0.00
1	板橋區四川路一段241~270號	9000000	17.79	49.00	3	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	1	0.00
14	南區國華街一段91~120號(108/07)	4500000	29.09	47.90	2	自訂	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	更近市區	\N	\N	\N	\N	\N	-0.70	0.00	0.00	0.00	0.00	0.00	0.7 無尾巷、0.5 未辦保存登記	\N	\N	\N	\N	\N	-0.65	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	7	0.00
13	南區國華街一段61~90號(108/11)	4880000	30.65	48.70	2	自訂	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	無尾巷2m巷寬未辦保存登記	\N	\N	\N	\N	\N	-0.65	0.00	0.00	0.00	0.00	0.00	0.7 無尾巷、0.5 未辦保存登記	\N	\N	\N	\N	\N	-0.65	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	7	0.00
2	板橋區忠孝路132巷1~30號	6850000	21.18	47.20	2/3	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	-0.25	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	2	0.00
10	安南區安通路四段119巷27弄1~30號	6600000	34.66	38.00	透天	自訂	\N	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	6	0.00
6	金華路二段15巷1~30號	3000000	22.89	41.50	3/4	自訂	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	-0.50	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	4	0.00
11	安南區安通路四段119巷27弄1~30號	7000000	34.66	38.00	透天	自訂	\N	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	6	0.00
291	台南市新營區新進路二段445巷6號	3380000	43.00	42.00	2	自訂	2017-12-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	漲幅	路寬	\N	\N	0.00	0.00	0.40	0.00	0.00	0.00	房屋現況	臨路寬度	對外聯絡	\N	\N	\N	0.40	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	131	0.00
301	安通一街19號	3750000	20.52	39.00	全/2	自訂	2020-6-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	0.00	-0.05	-0.05	0.00	0.00	0.00	屋況	路寬	臨路	增值	\N	\N	0.00	-0.05	-0.10	0.08	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	168	0.00
308	臺南市東山區東仁街38巷7號	2430000	33.00	35.00	2	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	170	0.00
319	台南市佳里區忠仁里11鄰新生路85巷5號	2550000	22.00	0.00	\N	自訂	\N	https://drive.google.com/file/d/1XcZYYHe9ydchQImY2-c_nCwKSD68ai91/view?usp=sharing	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	174	0.00
321	佳里區信義一街418巷11號	3000000	26.02	44.30	1/2	自訂	2020-10-1	\N	NULL	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	增值	屋況	臨路	路寬	增建	\N	0.05	0.00	0.00	0.00	0.10	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	174	0.00
316	東區東成街131巷12弄5號	8600000	40.48	40.30	1/2	自訂	2019-9-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	對外交通	\N	\N	\N	0.30	-0.10	0.00	0.00	0.00	0.00	屋況	臨路	路寬	增值	\N	\N	-0.05	-0.10	-0.05	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	172	0.00
33	復國二路16巷1~30號(108/05)	6500000	39.72	31.00	2/2	自訂	\N	https://lvr.land.moi.gov.tw/	劉家彰	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	0.8	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	19	0.00
23	安平區安平路370巷3弄1~30號	3600000	28.17	0.00	\N	自訂	\N	https://goo.gl/maps/psYVs2UkDkfvtdY96	劉家彰	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	比較物件有頂樓增建	\N	\N	\N	\N	\N	-0.05	0.00	0.00	0.00	0.00	0.00	有頂樓	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	14	0.00
32	中西區健康路一段151~180號(109/06公寓)	3880000	37.57	36.10	3/5	自訂	\N	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	頂樓加價	\N	\N	\N	\N	\N	-0.02	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	18	0.00
31	中西區健康路一段150巷1~30號(108/09公寓)	4380000	40.55	34.10	5/5	自訂	\N	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	去年價錢	\N	\N	\N	\N	\N	0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	18	0.00
25	白河區中正路121~150號	5180000	62.35	13.60	1/4	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	17	0.00
26	白河區中正路121~150號	5500000	62.57	14.10	1/4	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	17	0.00
22	安平區安平路370巷3弄1~30號	3400000	28.52	44.70	2/4	自訂	\N	https://goo.gl/maps/psYVs2UkDkfvtdY96	劉家彰	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	相類似物件 同在二樓無需加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	相類似物件	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	14	0.00
29	信義街44巷1~30號(106/12)	5200000	58.44	24.00	全/4	自訂	\N	\N	劉家彰	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	參考106年到100年間 房地產增值	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	1.1	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	16	0.00
16	板橋區懷德街66巷1~30號	12360000	32.45	48.30	2/5	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.40	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	-0.40	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	8	0.00
15	板橋區仁化街64巷1~30號	8350000	23.55	46.30	2/3	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.35	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	-0.40	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	8	0.00
19	板橋區懷德街78巷1~30號	6450000	19.46	45.00	4/4	自訂	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9778%E5%B7%B71%E8%99%9F/@25.0315844,121.4782618,3a,75y,169.14h,89.6t/data=!3m7!1e1!3m5!1sXpaKTjjfXSQKPgCUvzx77A!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DXpaKTjjfXSQKPgCUvzx77A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D182.28134%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5p2_5qmL5Y2A5oe35b636KGXNzjlt7cxfjMw6Jmf!3m4!1s0x3442a845c3183079:0x7c82dda16d74a051!8m2!3d25.0314992!4d121.4782531	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	10	0.00
252	中山路一段206巷101號	11000000	28.88	39.00	4/5	自訂	2019-9-1	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件在二樓較便利	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	屋況（採光-0.05、樓層+0.1）	臨路	聯外交通	\N	\N	\N	0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	144	0.00
35	健康路一段170巷1~30號(107/05)	3300000	30.00	38.00	3/4	自訂	\N	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	漲價	\N	\N	\N	\N	\N	0.15	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	18	0.00
9	東區前鋒路61~90號	3200000	32.00	37.00	3	自訂	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.15	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	5	0.00
34	復國二路16巷1~30號(106/6)	5600000	39.30	29.00	2/2	自訂	\N	https://lvr.land.moi.gov.tw/	劉家彰	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	0.8	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	19	0.00
7	金華路二段21巷1~30號	2350000	22.89	41.00	4/4	自訂	\N	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	4	0.00
46	慶中街121~150號(128號)	8000000	34.64	44.00	2	自訂	\N	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	路寛	屋況	其他非無尾巷	\N	\N	\N	0.10	0.00	0.10	0.00	0.00	0.00	5米巷	非無尾巷	近南門健康路	\N	\N	\N	0.08	0.10	0.05	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	28	0.00
45	南門路241~270號	14200000	54.84	48.50	1/3	自訂	\N	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	路寛	屋況	店面非無尾巷	\N	\N	\N	-0.10	0.00	-0.10	0.00	0.00	0.00	巷小	店面小巷	屋況差不多	\N	\N	\N	-0.05	-0.05	-0.02	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	28	0.00
58	北興街411巷13弄10號	3254700	35.19	31.00	2/2	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	33	0.00
44	安南區怡安路一段481~510號	8580000	66.47	32.20	1/3	自訂	\N	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	臨路條件相同 比較物件 附近雖較為熱鬧 但目標物件店面效益較佳	\N	\N	\N	\N	\N	-0.02	0.00	0.00	0.00	0.00	0.00	離黃昏市場較遠店面價值	路寬同、離台1-9主幹線較近	屋況舊一點點	\N	\N	\N	-0.03	0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	27	0.00
43	安南區修安街66巷1~30號	7000000	49.02	21.30	1/4	自訂	\N	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	比較物件是社區不具店面效益	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	店面價值>住宅	屋況舊	\N	\N	\N	\N	0.50	-0.30	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	27	0.00
49	新化區中正路341巷1~30號(108/09)	3900000	38.54	34.90	1/3	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	15	0.00
50	大同街31~60號(36)109/4	5400000	57.05	36.00	3	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	15	0.00
41	萬華區環河南路二段125巷15弄1~10號	8000000	24.66	33.10	4/5	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件感覺舊，環境差	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	目標物件 環境 清幽 比較物件 有廟宇存在	\N	\N	\N	\N	\N	0.15	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	26	0.00
42	萬華區雙園街152巷1~10號	6500000	20.26	43.90	3/4	自訂	\N	https://drive.google.com/folderview?id=1ENmvh6RyXJmD-WNxJVzKRvVugsH6C3AW	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	比較物件 較為老舊 臨路寬度 相近	\N	\N	\N	\N	\N	0.15	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	26	0.00
59	文賢路313巷12弄1~30號	8000000	61.75	30.00	2	自訂	2020-3-1	https://drive.google.com/file/d/1GYUxIIkxCCAcLvX_wcyOBLFHUNPtwGle/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	聯外	\N	\N	-0.05	-0.10	-0.05	-0.02	0.00	0.00	屋況	臨路	連外	\N	\N	\N	-0.20	-0.15	-0.15	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	32	0.00
68	中正里172號	740000	28.95	39.00	3	自訂	2020-1-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	37	0.00
63	文賢路242巷9弄61~90號	6320000	32.83	45.00	2	自訂	2020-5-1	https://drive.google.com/file/d/1hLACQIAHO3QMhGu-MXdQLj6dCmKSvk8p/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	聯外	\N	\N	-0.10	-0.05	-0.05	-0.05	0.00	0.00	屋況	臨路	連外	\N	\N	\N	-0.20	-0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	32	0.00
64	瑞興街91~120號2F	7650000	26.05	47.00	2	自訂	2018-11-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	增建9坪	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	如初勘意見	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	36	0.00
55	嘉義市民生南路576巷31~60號	4060000	30.40	40.70	1/2	自訂	\N	https://drive.google.com/file/d/1O4o-q0KU9wptxDgd0EevYlBNoRTsFsAk/view?usp=drivesdk	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	未說明	未說明	\N	\N	\N	0.10	0.10	0.15	0.00	0.00	0.00	心就加乘	林路加乘	主要道路一樣	\N	\N	\N	0.10	0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	31	0.00
65	文賢路520巷6號	5500000	45.77	42.00	2	自訂	2019-1-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	32	0.00
69	海佃路二段700巷23弄2號	8000000	61.54	12.00	4	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	39	0.00
70	海佃路二段700巷2弄20號	12600000	66.68	12.00	4	自訂	2019-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	39	0.00
72	臺南市新巿區中山路104號	6800000	29.53	41.00	2	自訂	2019-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	38	0.00
74	拔林220-6號	2300000	24.96	40.00	2	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	40	0.00
75	拔林211~240號	2500000	24.24	39.00	2	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	40	0.00
96	嘉義市圓福街118巷48弄5號	2200000	20.96	47.00	2	自訂	2020-3-1	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	路寛	\N	\N	0.00	-0.05	0.00	0.00	0.00	0.00	屋況	臨路	連況幹道	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	53	0.00
97	嘉義市圓福街118巷48弄36號	2000000	21.09	47.00	2	自訂	2020-1-1	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	路寛	\N	\N	0.00	-0.05	0.00	0.00	0.00	0.00	屋況	臨路	連況幹道	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	53	0.00
214	光華街217號	6250000	45.25	40.00	全/3	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	127	0.00
36	健康一段170巷1~30號(107/02)	3950000	30.00	37.00	4/4	自訂	\N	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	漲價頂樓	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	-0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	18	0.00
40	中正區臨沂街19巷1~10號	25430000	29.36	49.10	2/4	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件在一樓較值錢	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	目標物件在一樓可做商業使用	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	25	0.00
39	中正區臨沂街19巷11~20號	29800000	30.18	45.50	1/4	自訂	\N	https://drive.google.com/folderview?id=1ET_sQNuBW8kNr9uPZZvx3VCqCm0LFM0M	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件感覺稍舊	\N	\N	\N	\N	\N	-0.04	0.00	0.00	0.00	0.00	0.00	目標物件看起來比較舊可能需要整修	\N	\N	\N	\N	\N	-0.02	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	25	0.00
38	新莊區建中街16巷31~60號	10250000	32.27	43.30	2/4	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	目標物件 在同一社區中 稍嫌老舊	\N	\N	\N	\N	\N	-0.02	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	24	0.00
37	新莊區建中街1~30號	9500000	30.53	42.60	2/4	自訂	\N	https://drive.google.com/folderview?id=1EQfSK5voJht9Pzoju8NEwKpHxkflYjgq	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	目標物件感覺稍舊，在巷內	\N	\N	\N	\N	\N	-0.03	0.00	0.00	0.00	0.00	0.00	比價屋物件 是 馬路邊的公寓， 目標是 巷口的物件	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	24	0.00
73	臺南市新巿區中山路112號	4450000	28.84	41.00	2	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	38	0.00
71	臺南市新巿區中山路138-1號	7200000	68.12	24.00	4	自訂	2019-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	38	0.00
76	金華路一段29巷8弄2號	5000000	46.88	33.00	3	自訂	2019-9-1	https://drive.google.com/file/d/1vYpO_sE5fYuWxMTio4Z1NbjAh2jJPbGI/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	\N	\N	\N	1.00	-0.11	0.10	0.00	0.00	0.00	增建還原	新舊	臨路寬	連接幹到	\N	\N	-0.14	0.00	-0.05	0.05	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	42	0.00
81	仁愛五街38-1號	6500000	51.30	25.00	4	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	35	0.00
82	公明路204號	15679000	100.51	30.00	全/5	自訂	2019-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	41	0.00
83	公明路301~330號	23700000	130.57	50.00	全/4	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	41	0.00
101	仁和路109巷53號	6880000	21.33	47.00	全/2	自訂	2020-4-1	https://drive.google.com/file/d/1Sr11OzS5M2tbJeYId4Wl-vZMFiD-13Vh/view?usp=drivesdk	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	新舊屋況	臨路寬	交通	\N	\N	\N	-0.25	0.00	0.00	0.00	0.00	0.00	新舊	臨路	停車	增建	\N	\N	-0.20	0.00	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	57	0.00
85	旺萊路581巷14號(二等親)	3200000	47.52	40.00	2	自訂	2019-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	49	0.00
86	北花里中正路113巷21號	4500000	68.59	30.00	3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	49	0.00
87	朝琴路126號	7800000	100.88	50.00	全/2	自訂	2019-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	50	0.00
88	新市區崙頂75-15號	5000000	47.88	25.00	3	自訂	2017-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	38	0.00
89	崙頂46-2號	4600000	59.03	24.00	3	自訂	2017-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	38	0.00
98	海安路二段302巷31~60號	5870000	11.76	0.00	1	自訂	2020-4-1	https://drive.google.com/file/d/1Zs04njhen2kaiOKuIUUDGB96DXVjUJRt/view?usp=drivesdk	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	48	0.00
80	海安路二段296巷11號	7750000	12.28	0.00	1	自訂	2020-7-1	https://drive.google.com/file/d/1nBFMvMSmtcykodD774IA9FrHRmIhx11Z/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	臨路	\N	\N	\N	-0.20	0.00	-0.05	0.00	0.00	0.00	屋況	臨路	交通	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	48	0.00
84	社內28-31	5700000	29.51	40.00	全/2	自訂	2019-9-1	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	增建	臨路	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	各細項狀況類似，故不再分相加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	43	0.00
91	社內22-6	5200000	29.04	36.00	2	自訂	2017-2-1	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況臨路增建	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	43	0.00
92	大武路1~30號	3330000	21.80	37.00	2	自訂	2019-11-1	\N	NULL	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	照底標不加價	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	54	0.00
94	民生南路576巷8號	7380000	32.20	47.00	2	自訂	2019-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	55	0.00
95	民生南路590巷1號	4900000	30.50	45.00	2	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	55	0.00
56	民生南路545巷17弄1~30號(21)透天厝	7700000	63.33	26.00	全/4	自訂	\N	https://drive.google.com/file/d/1O1kOMQWiotKHknjkdG8tNMs650JjS8v_/view?usp=drivesdk	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	新舊	臨路寬	聯外	\N	\N	\N	0.00	0.15	0.15	0.00	0.00	0.00	屋況	臨路	路寬	\N	\N	\N	0.00	0.20	0.05	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	31	0.00
102	光華街119巷20號	640000	4.85	60.00	2	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	58	0.00
106	芳安路17巷181~210號	1800000	20.53	44.00	2	自訂	2018-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	61	0.00
107	芳安路17巷181~210號	3280000	20.53	45.00	2	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	61	0.00
108	新榮路35巷1~30號	8000000	64.73	16.00	6/14	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	62	0.00
109	新榮路35巷1~30號	7300000	64.73	16.00	5/14	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	62	0.00
113	仕豐路神農巷21弄1~30號	5600000	37.70	38.00	2	自訂	2019-9-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	依原定	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	66	0.00
111	公園路487巷35號	7100000	48.48	36.00	全/3	自訂	2020-5-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	新舊+0.2	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	63	0.00
110	和緯路二段71巷11弄22號	3600000	25.89	50.00	全/2	自訂	2020-4-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	63	0.00
121	三重區長安街24號	8050000	21.56	30.90	5/5	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	69	0.00
115	開元路148巷101弄6號	6000000	23.50	50.00	2	自訂	2020-5-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	屋況	臨路	交通動線	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	67	0.00
120	三重區中央北路71號轉長元街巷內第二間	9050000	25.85	45.00	4/4	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	69	0.00
118	永二街300號	8200000	35.31	31.00	2	自訂	2020-7-1	https://drive.google.com/file/d/1gPPCIePqBHPuNZpBAUHp3ywN1su7ZXxZ/view?usp=sharing	曾友和	張浩文	\N	0.00	0.00	0.00	\N	\N	\N	增建（2變3）	新舊	臨路	交通	\N	\N	-0.20	-0.10	0.00	0.00	0.00	0.00	比較標的的三樓有增建 房屋較新	\N	\N	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	68	0.00
123	民生路314巷117號	5800000	32.56	41.00	1/2	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	70	0.00
124	友忠路805號	14000000	61.59	12.00	1/4	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	71	0.00
125	友忠路762-1號	26600000	91.68	1.00	全/5	自訂	2020-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	71	0.00
128	麻豆區復興街1~30號	3200000	38.96	39.40	1/3	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	76	0.00
129	麻豆區興中路55巷1~30號	3600000	38.38	36.20	1/3	自訂	2019-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	76	0.00
133	北港鎮文明路100巷1~30號	2750000	30.18	45.90	1/2	自訂	2019-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	79	0.00
132	大勇街139號	5600000	12.60	56.00	2	自訂	2019-11-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	屋況	路寛	臨路	\N	\N	-0.20	-0.05	0.00	-0.05	0.00	0.00	屋況增建還原	臨路	聯外	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	73	0.00
131	大勇街149號	3500000	19.70	58.00	2	自訂	2020-7-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寛	臨路	\N	\N	\N	0.30	0.00	-0.05	0.00	0.00	0.00	屋況	臨路	聯外	\N	\N	\N	0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	73	0.00
155	海佃路三段48巷42弄1~30號	3100000	25.14	43.00	全/2	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	90	0.00
103	林森路二段192巷131號	6750000	28.00	48.00	2	自訂	2020-1-1	https://drive.google.com/file/d/1bFPlCVDF_a6uCBc4YBWDt3CXhyuIKZtu/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	屋況	臨路	聯外	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	60	0.00
158	樹林區大安路241~270號	7200000	25.58	42.00	2/4	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	92	0.00
138	板橋區中山路一段206巷61~90號	9120000	23.93	41.40	2/4	自訂	2019-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	81	0.00
139	板橋區中山路一段206巷91~120號	11000000	28.88	38.80	4/5	自訂	2019-9-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	81	0.00
159	樹林區樹德街136巷31~60號	7200000	20.12	43.80	2/4	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	92	0.00
160	萬華區環河南路一段155巷1~5號	8850000	28.29	36.80	5/5	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	93	0.00
161	萬華區西園路一段34巷21~25號	8980000	29.94	40.50	5/5	自訂	2019-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	93	0.00
141	蘆洲區正和街96巷31~60號	8150000	28.51	38.40	2/5	自訂	2019-9-1	https://drive.google.com/file/d/1ojtLObQ-BzW7ude-6ZtAEYatWI4_RqL2/view?usp=sharing	曾友和	張浩文	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.05	-0.05	-0.05	0.00	0.00	0.00	標的物位於無尾小巷內樓下宮廟出入口.巷道狹小	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	83	0.00
142	蘆洲區正和街96巷31~60號	7250000	27.50	35.00	2/5	自訂	2019-10-1	https://drive.google.com/file/d/1ojtLObQ-BzW7ude-6ZtAEYatWI4_RqL2/view?usp=sharing	曾友和	張浩文	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.05	-0.05	-0.05	0.00	0.00	0.00	標的物位於無尾小巷內樓下宮廟出入口.巷道狹小	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	83	0.00
152	板橋區漢生西路89巷3弄1~30號	8100000	19.97	48.60	2/3	自訂	2020-7-1	https://drive.google.com/file/d/1orMa68QV9l2DjyvQywD3pxJzfsnWqi4v/view?usp=sharing	曾友和	張浩文	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	0.00	-0.10	0.15	0.00	0.00	0.00	交通動線較相對比較標的物佳.屋況相當	\N	\N	\N	\N	\N	0.04	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	82	0.00
150	裕農路288巷96弄25號	7300000	22.82	46.00	全/2	自訂	2020-7-1	https://drive.google.com/file/d/1E2WhR9bdqGGvWa8p59SxLg6DoXMwB3Al/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	增建	臨路	聯外交通	\N	\N	\N	-0.25	-0.15	0.00	0.00	0.00	0.00	增建	路寬	臨路	\N	\N	\N	-0.05	-0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	91	0.00
329	嘉義市成功東街52巷10號	2100000	21.00	57.00	2	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	177	\N
330	嘉義市五顯街101巷29號	4840000	47.00	30.00	4	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	178	\N
315	好時價	6590000	25.35	45.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	172	0.00
332	台南市安南區長溪路二段643巷25號	4630000	35.65	0.00	\N	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	181	\N
331	南龍路37號	1800000	16.24	46.00	1	自訂	2019-8-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.52	0.00	0.00	0.00	0.00	0.00	不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	179	\N
136	開元路148巷42或44號	3300000	22.50	36.00	2/4	自訂	2020-3-1	https://drive.google.com/file/d/1h0CbSRmTdjjvxQDYqtP0elGROFZSpf9K/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	屋況	路寬	樓層	\N	\N	\N	-0.05	0.00	-0.05	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	80	0.00
143	康定路150巷1弄1~30號	3200000	29.02	35.00	2	自訂	2020-3-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	陽台及公設	\N	\N	\N	\N	\N	0.40	0.00	0.00	0.00	0.00	0.00	不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	85	0.00
144	建國路一段299巷1~30號	2700000	28.59	33.00	5	自訂	2020-4-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	陽台及公設	\N	\N	\N	\N	\N	0.45	0.00	0.00	0.00	0.00	0.00	不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	86	0.00
145	甲南里忠孝街15鄰109巷1號	3000000	51.16	29.00	全/3	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	87	0.00
146	中正區中華路二段376~380號	13500000	27.32	49.40	4/5	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	88	0.00
147	萬華區中華路二段336~340號	4200000	7.91	51.90	4/5	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	88	0.00
148	文山區景福街121~125號	15150000	34.50	38.60	2/5	自訂	2019-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	89	0.00
149	文山區景福街131~140號	12200000	30.02	38.90	3/5	自訂	2019-8-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	89	0.00
151	裕農路288巷70弄37號	7100000	24.42	44.00	全/2	自訂	2020-7-1	https://drive.google.com/file/d/1QaqRxO73yNOD_-PXSk9_IyhF5fTkzQCz/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	增建	路寬	聯外交通	\N	\N	\N	-0.05	-0.15	0.00	0.00	0.00	0.00	增建	路寬單邊內縮可停	臨路	\N	\N	\N	-0.20	-0.08	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	91	0.00
163	竹子腳95-10號	8390000	41.11	40.00	1	自訂	2019-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	78	0.00
338	台南市北區大興街280巷34弄17號	12340000	36.46	0.00	\N	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	180	\N
339	北區大興街280巷47號	5800000	28.56	39.30	1/2	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	180	\N
340	北區大興街280巷47號	4600000	28.56	39.00	1/2	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	180	\N
333	安南區長溪路二段483巷21弄9號	5300000	29.77	39.40	1/3	自訂	2020-3-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外	增值	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	屋況	臨路	路寬	增值	\N	\N	-0.05	-0.10	0.00	0.10	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	181	\N
341	北區大興街246巷38弄19號(110/03)	7380000	27.65	39.40	1/2	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	180	\N
335	台南市安南區海佃路四段490巷30弄31號	5690000	57.08	0.00	\N	自訂		\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	182	0.00
336	安南區海佃路四段388巷67弄21之8號(2021/6)	6250000	38.70	26.30	1/3	自訂	2020-6-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	路寬	增值	\N	\N	0.00	0.20	0.00	0.05	0.00	0.00	屋況	臨路	路寬	增值	增建	\N	0.00	0.20	0.00	0.05	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	182	0.00
334	安南區長溪路二段483巷21弄4號	4800000	30.20	39.90	1/2	自訂	2020-11-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外	增值	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	屋況	臨路	路寬	增值	\N	\N	0.00	-0.10	0.00	0.10	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	181	\N
342	榮耀街53之1號15樓	9400000	38.33	21.00	15	自訂	2020-1-1	\N	曾昱銓	NULL	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.36	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	183	\N
18	七堵區泰安路2巷1~30號	3500000	25.21	0.00	2/4	自訂	\N	\N	張浩文	NULL	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	9	0.00
3	板橋區忠孝路154巷31~60號	7000000	24.58	44.70	2/4	自訂	\N	\N	張浩文	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.25	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	2	0.00
21	復興路1~30號	2680000	49.67	26.00	4	自訂	\N	\N	曾昱銓	NULL	\N	0.00	0.00	0.00	\N	\N	\N	實際坪數約80坪	\N	\N	\N	\N	\N	0.10	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	11	0.00
51	大安里大安街241~270號(242號)	6300000	32.51	38.00	全/2(108/12)	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	30	0.00
53	-大安街257巷1~30號(4號)	3500000	26.17	38.00	全/2	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	30	0.00
57	北興街400巷8號	3200000	33.06	39.00	2/2	自訂	2020-4-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	33	0.00
66	文賢路520巷33號	6000000	22.06	47.00	2	自訂	2019-6-1	地30.97坪，建坪22.06坪？(地籍56坪)	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	32	0.00
67	光和31~60號	6200000	232.83	22.00	4	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	37	0.00
122	新化區民生路314巷81號	3430000	28.99	41.10	\N	自訂	2020-1-1	https://drive.google.com/file/d/1PlsNqIej4id6A1fqrHjZkmTRHBX_fFfL/view?usp=sharing	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	70	0.00
112	福德路91~120號	290	40.21	25.00	3	自訂	2018-3-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	依專案負責人所評	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	64	0.00
114	信義路86巷20號	4760000	54.45	29.00	3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	45	0.00
93	民生南路576巷82號	4300000	33.03	43.00	2	自訂	2019-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	55	0.00
154	-海佃路三段48巷42弄24號	3650000	24.74	42.00	全/2	自訂	2019-11-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	90	0.00
162	竹子腳1-7號	2400000	55.08	24.00	3	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	78	0.00
127	大林鎮信義街61~90號	3650000	40.64	27.30	4/5	自訂	2020-6-1	https://drive.google.com/file/d/14INv53iwhmueBLcMrMy636AXRUZfCMFo/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	-0.10	-0.20	0.00	0.00	0.00	0.00	新舊	增建	臨路雙邊活巷停車欸	路寬	\N	\N	-0.10	0.00	-0.12	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	72	0.00
157	健康路二段53巷4號	6660000	26.11	50.00	全/2	自訂	2020-4-1	https://drive.google.com/file/d/1BF_N4-XWxP8-1Yt6HJnx1RarUu5GihMK/view?usp=sharing	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	增建	路寬單邊停車	臨路單一出入巷	\N	\N	\N	-0.05	0.10	0.10	0.00	0.00	0.00	屋況增建	臨路寬度	聯外交通	\N	\N	\N	-0.80	0.10	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	59	0.00
169	長榮路五段175巷7號(或9號)	4000000	20.41	48.00	全/2	自訂	2019-10-1	https://drive.google.com/file/d/1NYbNcyVcqHAfu4HNHwZN5ObzA7fCwGfQ/view?usp=sharing	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	南鐵確定東一工程開工	\N	\N	0.00	0.00	0.00	0.20	0.00	0.00	屋況增建	路寬	臨路無尾巷	增值空間南鐵東移	\N	\N	-0.10	0.00	0.10	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	100	0.00
170	長榮路五段102巷1號(或3號)	4350000	24.84	48.00	全/2	自訂	2019-9-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	南鐵確定東一工程開工	\N	\N	0.00	0.00	0.00	0.20	0.00	0.00	屋況增建	路寬	臨路	增值空間	\N	\N	-0.05	0.00	0.00	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	100	0.00
100	仁和路107巷74號	4610000	21.33	47.00	全/2	自訂	2020-6-1	https://drive.google.com/file/d/1Suvi8GNBw6WDwl5cZkJTvdMtnkt-Qyvm/view?usp=drivesdk	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	新舊屋況	臨路寬	交通	\N	\N	\N	-0.10	0.00	0.00	0.00	0.00	0.00	新舊	臨路	增建	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	57	0.00
153	板橋區漢生西路89巷2弄1~30號	8500000	24.93	48.80	2/3	自訂	2020-9-1	https://drive.google.com/file/d/1orMa68QV9l2DjyvQywD3pxJzfsnWqi4v/view?usp=sharing	曾友和	張浩文	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	聯外交通	\N	\N	\N	0.00	-0.10	0.15	0.00	0.00	0.00	交通動線較相對比較標的物佳.屋況相當	\N	\N	\N	\N	\N	0.05	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	82	0.00
164	保安路57巷1~30號109/7透天厝	7200000	17.34	0.00	全/1	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	12	0.00
165	西門路一段761巷1~30號	4000000	14.15	108.00	全/1	自訂	2019-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	12	0.00
166	大德街105號	8400000	18.30	57.00	全/1	自訂	2020-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	12	0.00
167	新港鄉宮後村22鄰中正路152-7號	2700000	38.68	39.00	3	自訂	2020-2-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	99	0.00
168	古民村古民137-1號	1600000	39.90	45.00	2	自訂	2020-6-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	99	0.00
172	忠義八巷31~60號	6500000	21.52	41.00	2	自訂	2020-5-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.30	0.00	0.00	0.00	0.00	0.00	依分區專案評估	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	101	0.00
173	北投區中央北路四段456巷5弄1~5號	9500000	30.13	38.50	3/4	自訂	2019-10-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	98	0.00
227	護安街73號	8200000	72.39	43.00	全/3	自訂	2020-5-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	136	0.00
239	好時價	3970000	34.16	0.00	\N	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	119	0.00
277	嘉義市溪興街231巷22弄28號	5300000	38.37	35.50	1/2	自訂	2019-10-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	漲幅	臨路	路寬	\N	\N	0.00	0.20	0.00	0.00	0.00	0.00	屋況（時間加成）	臨路	對外交通	\N	\N	\N	0.20	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	148	0.00
289	西區國城三街18號4樓之2	3730000	35.00	27.00	8	仲介	2020-12-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	163	0.00
323	北區自強段1424-3地號(23.00053,120.20403)60600	3530000	8.47	0.00	\N	自訂	2019-9-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	地況	臨路	聯外交通	\N	\N	\N	-0.10	-0.10	0.00	0.00	0.00	0.00	地況	臨路	路寬	大小利用度	\N	\N	-0.10	0.00	0.00	0.10	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	175	0.00
313	新港鄉宮前村18鄰登雲路17號	5200000	22.95	58.00	2	自訂	-4-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	路寬	增值	\N	\N	0.00	-0.20	-0.05	0.00	0.00	0.00	屋況	臨路心	對外交通	\N	\N	\N	-0.10	-0.10	-0.20	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	171	0.00
324	嘉義市中正路185巷17號	14160000	86.30	38.00	3	仲介	\N	\N	劉家彰	NULL	\N	0.00	0.00	0.00	\N	\N	\N	無土地0.3	\N	\N	\N	\N	\N	-0.70	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	176	0.00
171	長勝北街170~178號	6110000	23.47	51.00	全/2	自訂	2020-9-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	增建(兩層樓變成3層）	臨路（ 無法同行汽車）	聯外交通	\N	\N	\N	-0.20	-0.10	-0.10	0.00	0.00	0.00	增建	路寬無法停汽車	臨路無尾巷	\N	\N	\N	-0.20	-0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	100	0.00
192	建中街4鄰72巷13號	3980000	23.81	48.00	全/2	自訂	2020-3-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	116	0.00
174	北投區中央北路四段456巷1~5號	7900000	22.88	32.40	3/5	自訂	2020-7-1	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	98	0.00
311	嘉義市西區玉山路94巷232弄49號	8320000	79.64	43.00	3	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	164	0.00
318	通山路84巷28號	13980000	77.87	10.00	4	自訂	2020-4-1	\N	曾昱銓	曾友志	\N	0.00	0.00	0.00	\N	\N	\N	未說明	\N	\N	\N	\N	\N	-0.08	0.00	0.00	0.00	0.00	0.00	依專案負責人評估不加成	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	173	0.00
314	新港鄉宮後村23鄰古民街34之3號	5500000	43.46	41.00	2	自訂	-4-1	\N	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	路寬	增值	\N	\N	0.00	-0.20	-0.10	0.00	0.00	0.00	屋況	臨路	對外交通	\N	\N	\N	0.00	-0.10	-0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	171	0.00
322	中西區赤崁段386地號(22.99778,120.20196)36700	10000000	27.40	0.00	\N	自訂	2019-12-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	地況	臨路	聯外交通	\N	\N	\N	-0.10	0.00	0.10	0.00	0.00	0.00	地況	臨路	路寬	大小利用度	\N	\N	-0.10	0.10	0.10	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	175	0.00
310	東中里和平街27號	3850000	55.36	28.00	3	自訂	2019-7-1	https://drive.google.com/file/d/1ZY_K_HGf0gi_wcFJf3wCfHkDMbCfr39g/view?usp=drivesdk	劉家彰	曾友和	\N	0.00	0.00	0.00	\N	\N	\N	屋況	路寬	臨路	增值	\N	\N	-0.20	-0.05	0.00	0.20	0.00	0.00	屋況	臨路	聯外交通	增值	\N	\N	-0.15	-0.10	0.00	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	170	0.00
312	嘉義縣新港鄉宮前村古民街8巷39號	5280000	42.00	30.00	3	自訂	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	171	0.00
317	東區裕文路22巷10號	8000000	37.84	39.50	1/2	自訂	2019-10-1	\N	曾友和	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	屋況	臨路	對外交通	\N	\N	\N	0.30	0.00	0.10	0.00	0.00	0.00	屋況	臨路	路寬	增值	\N	\N	-0.05	0.10	0.00	0.20	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	172	0.00
327	嘉義市成功東街52巷8號	3000000	20.00	57.00	2	仲介	\N	\N	NULL	NULL	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	177	0.00
320	110/04透天厝佳里區興中街71巷10號	4000000	39.54	46.00	1/3	自訂	\N	https://drive.google.com/file/d/1Xa98l3C6LEx6h18xGgggrZwSRMNnI46a/view?usp=sharing	NULL	劉家彰	\N	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	增值	屋況	路寬	增建	臨路	\N	0.00	0.00	0.10	0.10	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	174	0.00
326	嘉義市中正路185巷21號	3050000	31.61	46.00	3	自訂	2020-7-1	土地約10坪	劉家彰	NULL	\N	0.00	0.00	0.00	\N	\N	\N	無土地0.3	\N	\N	\N	\N	\N	-0.70	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	176	0.00
325	嘉義市中正路185巷15號	2000000	21.11	46.00	2	自訂	2020-12-1	特殊關係間之交易, 土地才4.54坪	劉家彰	NULL	\N	0.00	0.00	0.00	\N	\N	\N	無土地0.3	\N	\N	\N	\N	\N	-0.70	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	\N	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	0.00	176	0.00
\.


--
-- Data for Name: yfcases_result; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_result (id, "stopBuyDate", "actionResult", "bidAuctionTime", "bidMoney", "objectNumber", yfcase_id) FROM stdin;
1	\N	\N	\N	\N	\N	7
2	\N	\N	\N	\N	\N	9
3	\N	無人優購	\N	\N	\N	18
4	\N	\N	\N	\N	\N	21
5	\N	\N	\N	\N	\N	3
6	\N	\N	\N	\N	\N	6
7	\N	\N	\N	\N	\N	10
8	\N	\N	\N	\N	\N	56
9	\N	\N	\N	\N	\N	19
10	\N	第三人搶標	\N	\N	\N	14
11	\N	\N	\N	\N	\N	4
12	\N	\N	\N	\N	\N	23
13	\N	\N	\N	\N	\N	25
14	\N	\N	\N	\N	\N	29
15	\N	\N	\N	\N	\N	30
16	\N	\N	\N	\N	\N	24
17	\N	第三人搶標	\N	\N	\N	28
18	\N	第三人搶標	\N	\N	\N	27
19	\N	\N	\N	\N	\N	49
20	\N	\N	\N	\N	\N	17
21	\N	第三人搶標	\N	\N	\N	35
22	\N	第三人搶標	\N	\N	\N	15
23	\N	無人優購	\N	\N	PT007	34
24	\N	\N	\N	\N	\N	55
25	\N	\N	\N	\N	\N	62
26	\N	\N	\N	\N	\N	47
27	\N	\N	\N	\N	\N	33
28	\N	\N	\N	\N	\N	53
29	\N	第三人搶標	\N	\N	\N	36
30	\N	\N	\N	\N	\N	54
31	\N	\N	\N	\N	\N	39
32	\N	\N	\N	\N	\N	45
33	\N	\N	\N	\N	\N	44
34	\N	\N	\N	\N	\N	46
35	\N	\N	\N	\N	\N	40
36	\N	\N	\N	\N	\N	32
37	\N	\N	\N	\N	\N	37
38	\N	\N	\N	\N	\N	51
39	\N	\N	\N	\N	\N	1
40	\N	\N	\N	\N	\N	61
41	\N	遭優購	\N	\N	\N	64
42	\N	\N	\N	\N	\N	60
43	\N	\N	\N	\N	\N	135
44	\N	第三人搶標	\N	\N	\N	66
45	\N	\N	\N	\N	\N	65
46	\N	\N	\N	\N	\N	50
47	\N	\N	\N	\N	\N	58
48	\N	\N	\N	\N	\N	43
49	\N	\N	\N	\N	\N	38
50	\N	\N	\N	\N	\N	157
51	\N	\N	\N	\N	\N	154
52	\N	第三人搶標	\N	\N	\N	179
53	\N	\N	\N	\N	\N	2
54	\N	\N	\N	\N	\N	8
55	\N	\N	\N	\N	\N	20
56	\N	第三人搶標	\N	\N	\N	31
57	\N	第三人搶標	\N	\N	\N	42
58	\N	\N	\N	\N	\N	5
59	\N	\N	\N	\N	\N	84
60	\N	\N	\N	\N	\N	142
61	\N	\N	\N	\N	\N	166
62	\N	\N	\N	\N	\N	136
63	\N	\N	\N	\N	\N	183
64	\N	無人優購	\N	\N	\N	13
65	\N	\N	\N	\N	\N	48
66	\N	\N	\N	\N	\N	26
67	\N	\N	\N	\N	\N	68
68	\N	\N	\N	\N	\N	167
69	\N	\N	\N	\N	\N	69
70	\N	\N	\N	\N	\N	70
71	\N	\N	\N	\N	\N	80
72	\N	\N	\N	\N	\N	22
73	\N	\N	\N	\N	\N	67
74	\N	\N	\N	\N	\N	163
75	\N	\N	\N	\N	\N	168
76	\N	\N	\N	\N	\N	63
77	\N	\N	\N	\N	\N	79
78	\N	\N	\N	\N	\N	178
79	\N	\N	\N	\N	\N	78
80	\N	\N	\N	\N	\N	71
81	\N	\N	\N	\N	\N	111
82	\N	\N	\N	\N	\N	74
83	\N	\N	\N	\N	\N	81
84	\N	\N	\N	\N	\N	72
85	\N	\N	\N	\N	\N	76
86	\N	\N	\N	\N	\N	165
87	\N	\N	\N	\N	\N	75
88	\N	\N	\N	\N	\N	77
89	\N	第三人搶標	\N	\N	\N	86
90	\N	\N	\N	\N	\N	88
91	\N	\N	\N	\N	\N	92
92	\N	\N	\N	\N	\N	94
93	\N	\N	\N	\N	\N	83
94	\N	\N	\N	\N	\N	95
95	\N	\N	\N	\N	\N	89
96	\N	\N	\N	\N	\N	90
97	\N	\N	\N	\N	\N	91
98	\N	\N	\N	\N	\N	124
99	\N	\N	\N	\N	\N	87
100	\N	\N	\N	\N	\N	93
101	\N	\N	\N	\N	\N	96
102	\N	\N	\N	\N	\N	148
103	\N	\N	\N	\N	\N	181
104	\N	\N	\N	\N	\N	139
105	\N	無人優購	\N	\N	\N	82
106	\N	無人優購	\N	\N	\N	12
107	\N	\N	\N	\N	\N	105
108	\N	\N	\N	\N	\N	97
109	\N	\N	\N	\N	\N	102
110	\N	\N	\N	\N	\N	103
111	\N	\N	\N	\N	\N	107
112	\N	第三人搶標	\N	\N	\N	101
113	\N	第三人搶標	\N	\N	\N	109
114	\N	遭優購	\N	\N	\N	108
115	\N	\N	\N	\N	\N	106
116	\N	\N	\N	\N	\N	104
117	\N	無人優購	\N	\N	\N	110
118	\N	\N	\N	\N	\N	99
119	\N	\N	\N	\N	\N	159
120	\N	\N	\N	\N	\N	162
121	\N	\N	\N	\N	\N	158
122	\N	\N	\N	\N	\N	112
123	\N	\N	\N	\N	\N	180
124	\N	\N	\N	\N	\N	113
125	\N	\N	\N	\N	\N	116
126	\N	\N	\N	\N	\N	123
127	\N	遭優購	\N	\N	\N	85
128	\N	\N	\N	\N	\N	122
129	\N	遭優購	\N	\N	\N	118
130	\N	\N	\N	\N	\N	119
131	\N	\N	\N	\N	\N	114
132	\N	\N	\N	\N	\N	120
133	\N	遭優購	\N	\N	\N	121
134	\N	\N	\N	\N	\N	132
135	\N	無人優購	\N	\N	\N	117
136	\N	\N	\N	\N	\N	11
137	\N	無人優購	\N	\N	\N	73
138	\N	\N	\N	\N	\N	137
139	\N	\N	\N	\N	\N	126
140	\N	\N	\N	\N	\N	127
141	\N	\N	\N	\N	\N	133
142	\N	\N	\N	\N	\N	130
143	\N	\N	\N	\N	\N	134
144	\N	\N	\N	\N	\N	129
145	\N	\N	\N	\N	\N	161
146	\N	\N	\N	\N	\N	141
147	\N	\N	\N	\N	\N	140
148	\N	\N	\N	\N	\N	125
149	\N	\N	\N	\N	\N	131
150	\N	\N	\N	\N	\N	128
151	\N	\N	\N	\N	\N	138
152	\N	\N	\N	\N	\N	160
153	\N	\N	\N	\N	\N	182
154	\N	\N	\N	\N	\N	98
155	\N	第三人搶標	\N	\N	\N	57
156	\N	\N	\N	\N	\N	41
157	\N	\N	\N	\N	\N	143
158	\N	\N	\N	\N	\N	144
159	\N	\N	\N	\N	\N	150
160	\N	\N	\N	\N	\N	146
161	\N	\N	\N	\N	\N	151
162	\N	\N	\N	\N	\N	149
163	\N	\N	\N	\N	\N	147
164	\N	\N	\N	\N	\N	145
165	\N	\N	\N	\N	\N	152
166	\N	\N	\N	\N	\N	115
167	\N	\N	\N	\N	\N	155
168	\N	\N	\N	\N	\N	156
169	\N	\N	\N	\N	\N	52
170	\N	第三人搶標	\N	\N	\N	16
171	\N	\N	\N	\N	\N	59
172	\N	\N	\N	\N	\N	169
173	\N	\N	\N	\N	\N	170
174	\N	\N	\N	\N	\N	177
175	\N	\N	\N	\N	\N	153
176	\N	\N	\N	\N	\N	100
177	\N	\N	\N	\N	\N	172
178	\N	\N	\N	\N	\N	171
179	\N	得標	\N	\N	\N	173
180	\N	\N	\N	\N	\N	175
181	\N	\N	\N	\N	\N	174
182	\N	\N	\N	\N	\N	176
183	\N	\N	\N	\N	\N	164
\.


--
-- Data for Name: yfcases_survey; Type: TABLE DATA; Schema: public; Owner: ryowu
--

COPY public.yfcases_survey (id, "surveyFirstDay", "surveySecondDay", "surveyForeclosureAnnouncementLink", "survey988Link", "surveyObjectPhotoLink", "surveyNetMarketPriceLink", "surveyForeclosureRecordLink", "surveyObjectViewLink", yfcase_id) FROM stdin;
1	2020-06-03	2020-06-06	https://tfasc.blob.core.windows.net/importbulletin/10905_15103251.112	\N	https://drive.google.com/drive/folders/1MwTRY7Xi_70scqVbzlS60sUdbLLecKzL	\N	https://tw.988house.com/auction/keyword/%e5%9c%8b%e8%8f%af%e8%a1%97%e4%b8%80%e6%ae%b556%e5%b7%b79%e8%99%9f	\N	7
2	2020-06-05	\N	http://aomp.judicial.gov.tw/abbs/sale/kld/10905/14090025540.001.pdf	\N	http://aomp1.judicial.gov.tw/KPIC/query/QUERYPIC_01v2.jsp?pic=../pic/KLD/10903/06100204939.jpg&rot=Y	\N	https://tw.988house.com/auction/keyword/%e6%b3%b0%e5%ae%89%e8%b7%af23%e4%b9%8b7%e8%99%9f	\N	9
3	2020-08-01	2020-08-08	http://aomp.judicial.gov.tw/abbs/sale/tnd/10907/27103531648.026.pdf	\N	\N	\N	https://tw.988house.com/auction/550661	\N	18
4	2020-08-11	2020-08-14	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/06135733991.003.pdf	https://tw.988house.com/auction/595928	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E4%B8%AD%E5%B1%B1%E8%B7%AF%E4%B8%80%E6%AE%B5206%E5%B7%B7117%E8%99%9F/@25.0134026,121.4706239,17z/data=!3m1!4b1!4m5!3m4!1s0x3442a8239fe29b75:0x708ac710a06b578c!8m2!3d25.0133978!4d121.4728126	\N	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	21
5	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10905_06172206.109	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E6%AD%A6%E5%BE%B7%E8%A1%97140%E5%B7%B728%E8%99%9F/@22.6082776,120.3265989,3a,75y,62.62h,89.43t/data=!3m6!1e1!3m4!1syZ0q1b-1QyxP7Fuo2WJc3g!2e0!7i13312!8i6656!4m5!3m4!1s0x346e0358d6a43f7f:0x80e34ac9cf89931b!8m2!3d22.6082991!4d120.3266215?hl=zh-TW	\N	\N	\N	3
6	2020-02-08	2020-05-16	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e5%8d%97%e9%87%91%e8%81%b7%e9%85%89751_99_2020-4-10.txt&Court=TNG	\N	https://maps.app.goo.gl/VmsqhKYHeagen52fA	\N	https://實價登錄/	\N	6
7	2020-02-12	2020-02-15	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e6%97%a547156_2_2020-2-12.pdf&Court=PCD	\N	https://www.google.com.tw/maps/@25.0310432,121.4787308,3a,75y,49.25h,121.04t/data=!3m6!1e1!3m4!1sclj4hqkdufKyBreyhTzLGg!2e0!7i16384!8i8192	\N	https://tw.988house.com/auction/keyword/%e6%87%b7%e5%be%b7%e8%a1%97121%e8%99%9f3%e6%a8%93	\N	10
8	2020-10-07	\N	\N	\N	\N	\N	\N	\N	56
9	2020-08-01	2020-08-08	\N	https://tw.988house.com/auction/595973	\N	\N	\N	\N	19
10	2020-07-04	2020-08-08	https://tw.988house.com/auction/594927	https://tw.988house.com/auction/594927	https://goo.gl/maps/psYVs2UkDkfvtdY96	\N	https://tw.988house.com/auction/keyword/370%e5%b7%b73%e5%bc%8420%e8%99%9f2%e6%a8%93	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%B9%B3%E5%8D%80?kw=%E5%AE%89%E5%B9%B3%E8%B7%AF	14
11	\N	2020-05-11	http://aomp.judicial.gov.tw/abbs/sale/tnd/10904/17163817083.016.pdf	\N	https://www.google.com.tw/maps/place/702%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8D%97%E5%8D%80%E9%87%91%E8%8F%AF%E8%B7%AF%E4%BA%8C%E6%AE%B521%E5%B7%B71%E8%99%9F/@22.9764889,120.1908,3a,75y,133.85h,88.54t/data=!3m7!1e1!3m5!1s4j-n3T1ikngLcsByTx8Gyw!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3D4j-n3T1ikngLcsByTx8Gyw%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D147.41145%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e75da325b0aef:0x2f28bd5bed925d37!8m2!3d22.9763917!4d120.1908683?hl=zh-hant-tw	\N	\N	\N	4
12	\N	\N	\N	\N	\N	\N	\N	\N	23
13	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10907/20112732247.033.pdf	https://m.988house.com/auction/596614	https://drive.google.com/folderview?id=1ET_sQNuBW8kNr9uPZZvx3VCqCm0LFM0M	\N	\N	\N	25
14	\N	\N	\N	\N	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	\N	\N	\N	29
15	\N	\N	\N	https://tw.988house.com/auction/597746	\N	\N	https://tw.988house.com/auction/keyword/229%e5%b7%b76%e8%99%9f	\N	30
16	2020-08-14	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/22141011987.007.pdf	https://tw.988house.com/auction/596977	https://drive.google.com/foldervihttps://tw.988house.com/auction/keyword/101063ew?id=1EQfSK5voJht9Pzoju8NEwKpHxkflYjgq	\N	\N	\N	24
17	2020-08-22	2020-08-29	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/25155118463.028.pdf	https://tw.988house.com/auction/597429	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	\N	https://tw.988house.com/auction/keyword/%e5%8d%97%e9%96%80%e8%b7%af243%e4%b9%8b4	\N	28
18	2020-08-25	2020-08-25	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/14092025819.026.pdf	https://tw.988house.com/auction/598710	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	\N	https://tw.988house.com/auction/keyword/%e6%80%a1%e5%ae%89%e8%b7%af%e4%b8%80%e6%ae%b5237%e8%99%9f	\N	27
19	\N	\N	\N	https://tw.988house.com/auction/601075	\N	\N	\N	\N	49
20	2020-07-16	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10906/30083357741.016.pdf	\N	https://www.google.com/maps/place/732%E5%8F%B0%E5%8D%97%E5%B8%82%E7%99%BD%E6%B2%B3%E5%8D%80%E4%B8%AD%E6%AD%A3%E8%B7%AF169%E8%99%9F/@23.3493204,120.410796,3a,75y,167.24h,107.24t/data=!3m6!1e1!3m4!1s70y8IcaTa5_YuZcwltR6Zg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e8e3e7642cc17:0x9f59a4d9cded87f1!8m2!3d23.3491735!4d120.4108379	\N	https://tw.988house.com/auction/keyword/%e5%8f%b0%e5%8d%97%e5%b8%82%e7%99%bd%e6%b2%b3%e5%8d%80%e6%b0%b8%e5%ae%89%e9%87%8c%e4%b8%ad%e6%ad%a3%e8%b7%af169%e8%99%9f	\N	17
21	\N	\N	\N	https://tw.988house.com/auction/598839	\N	\N	https://tw.988house.com/auction/565333	\N	35
22	2020-07-05	2020-08-08	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=109%e7%95%b627357_3_2020-8-11.pdf&Court=TND	https://tw.988house.com/auction/595032	https://tw.988house.com/Auction/AuctionPicture.ashx?ID=245995&Height=450&Width=600	\N	https://tw.988house.com/auction/keyword/%e4%b8%ad%e6%ad%a3%e8%b7%af310%e4%b9%8b7	\N	15
23	2020-06-04	2020-06-04	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	https://www.google.com.tw/maps/place/924%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B4%81%E9%A0%82%E9%84%89%E6%96%B0%E7%94%9F%E8%B7%AF52%E8%99%9F/@22.5040171,120.4812595,3a,85.9y,289.62h,105.78t/data=!3m7!1e1!3m5!1sTIgDcz2GNNOwWmYdj4dv5Q!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DTIgDcz2GNNOwWmYdj4dv5Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod%2Fmaps%2Flocal-details-getcard.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D326.12936%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e1e32af9a7489:0xf365959c38ff0447!8m2!3d22.5040427!4d120.4811859?hl=zh-TW	\N	\N	\N	34
24	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/17085932082.005.pdf	https://tw.988house.com/auction/599144	https://www.google.com.tw/maps/@23.4567777,120.4422318,3a,73.3y,345.19h,95.48t/data=!3m6!1e1!3m4!1srouu6yHojMmCd8k4N18vng!2e0!7i13312!8i6656	\N	\N	\N	55
25	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15183940799.015.pdf	https://tw.988house.com/auction/602587	https://www.google.com.tw/maps/@23.4698384,120.4448584,3a,90y,6.18h,122.76t/data=!3m7!1e1!3m5!1sCTO2sIS3e4HTUlVspPjXEA!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DCTO2sIS3e4HTUlVspPjXEA%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D291.1163%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N	\N	\N	62
26	\N	\N	\N	https://tw.988house.com/auction/598165	\N	\N	\N	\N	47
27	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10907/29162151989.015.pdf	https://tw.988house.com/auction/595195	\N	\N	https://tw.988house.com/auction/keyword/嘉義市西區遠東街28巷12號	\N	33
28	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/22161326253.019.pdf	https://tw.988house.com/auction/598889	\N	\N	\N	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view?usp=drivesdk	53
29	\N	2020-08-07	http://aomp.judicial.gov.tw/abbs/sale/ksd/10908/27160900059.010.pdf	\N	\N	\N	\N	\N	36
30	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10909/03171257609.011.pdf	\N	https://www.google.com.tw/maps/place/900%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B1%8F%E6%9D%B1%E5%B8%82%E5%A4%A7%E6%AD%A6%E8%B7%AF51%E8%99%9F/@22.6565283,120.4777604,3a,87.1y,207.27h,114.51t/data=!3m6!1e1!3m4!1sbSeraJEZbLENzIXKFgMQYg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e19d248399893:0x3d4c01ea754f28c4!8m2!3d22.6564495!4d120.4775686?hl=zh-TW&authuser=0	\N	\N	\N	54
31	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10909/15091323898.026.pdf	https://m.988house.com/auction/600630	\N	\N	\N	\N	39
32	\N	\N	\N	https://tw.988house.com/auction/597710	\N	\N	\N	\N	45
33	\N	\N	\N	https://tw.988house.com/auction/590454	\N	\N	\N	\N	44
34	\N	\N	\N	https://tw.988house.com/auction/597712	\N	\N	\N	\N	46
35	\N	\N	\N	https://tw.988house.com/auction/597226	\N	\N	\N	\N	40
36	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/26090034234.024.pdf	https://tw.988house.com/auction/599199	https://aomp1.judicial.gov.tw/KPIC/pic/TND/10902/24213639411.jpg	\N	\N	\N	32
37	\N	\N	\N	\N	\N	\N	\N	\N	37
38	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/02152055141.006.pdf	https://tw.988house.com/auction/599961	\N	\N	\N	\N	51
39	2020-06-03	2020-06-03	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/22110827662.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%9B%9B%E5%B7%9D%E8%B7%AF%E4%B8%80%E6%AE%B5286%E5%B7%B75%E8%99%9F/@25.0008838,121.4561369,17z/data=!3m1!4b1!4m5!3m4!1s0x346802a59fd70f73:0x3a11c8c24ef49976!8m2!3d25.000879!4d121.458331	\N	https://tw.988house.com/auction/keyword/%e5%9b%9b%e5%b7%9d%e8%b7%af%e4%b8%80%e6%ae%b5286%e5%b7%b75%e8%99%9f	\N	1
40	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15112211328.002.pdf	https://tw.988house.com/auction/600562	https://www.google.com.tw/maps/@23.4670579,120.4652974,3a,90y,89.79h,88.15t/data=!3m7!1e1!3m5!1s2yxobUhstMoHV4qRVGetQg!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D2yxobUhstMoHV4qRVGetQg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D356.19696%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N	\N	\N	61
41	\N	\N	\N	\N	\N	\N	\N	\N	64
42	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/19102019513.008.pdf	https://tw.988house.com/auction/602522	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=001718	\N	\N	https://drive.google.com/file/d/1bFPlCVDF_a6uCBc4YBWDt3CXhyuIKZtu/view?usp=sharing	60
43	2021-03-26	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/V2.htm?#/tnd/11003/25094712313.019.pdf	\N	\N	\N	https://drive.google.com/file/d/19DvLvZqZDb_IPrjDpL9ldbaNZ1BfGYMQ/view?usp=sharing	135
44	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10911_02201832.101	\N	\N	\N	\N	\N	66
45	\N	\N	\N	https://tw.988house.com/auction/602958	\N	\N	\N	\N	65
46	\N	\N	\N	\N	\N	\N	\N	\N	50
47	\N	\N	\N	https://tw.988house.com/auction/601145	\N	\N	https://tw.988house.com/auction/492065	\N	58
48	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/15111459162.002.pdf	https://tw.988house.com/auction/600450	https://www.google.com.tw/maps/@23.0759842,120.286092,3a,67.7y,179.56h,128.85t/data=!3m7!1e1!3m5!1sRr6-fSc2HyUztjqZZtYdMg!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DRr6-fSc2HyUztjqZZtYdMg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D77.48026%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N	https://www.257.com.tw/index.php?action=in_house_detail&id=NB001256	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	43
49	\N	\N	\N	https://tw.988house.com/auction/599800	https://www.257.com.tw/index.php?action=in_house_detail&id=NB001235	\N	\N	\N	38
50	\N	\N	\N	https://tw.988house.com/auction/615863	\N	\N	\N	\N	157
96	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/09144753542.029.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=073709	\N	\N	\N	90
51	2021-04-20	2021-05-20	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11004/20171321461.019.pdf	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E4%BF%9D%E6%B3%B0%E8%B7%AF255-1%E8%99%9F/@22.6015862,120.3321564,3a,83.1y,335.92h,111.06t/data=!3m6!1e1!3m4!1sh5g5wSz4w2PxUauPJpKEYg!2e0!7i16384!8i8192!4m5!3m4!1s0x346e0350804aeeed:0x24855829e50eff04!8m2!3d22.6016804!4d120.3321198?hl=zh-TW&authuser=0	\N	\N	\N	154
52	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ptd/11007/13074254335.007.pdf	\N	\N	\N	\N	\N	179
53	2020-05-20	2020-06-03	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/07142132037.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%BF%A0%E5%AD%9D%E8%B7%AF132%E5%B7%B723%E8%99%9F/@25.0017011,121.4635519,3a,75y,60.67h,101.84t/data=!3m7!1e1!3m5!1soiZp4IEU4FKrMe3mOHf7bQ!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DoiZp4IEU4FKrMe3mOHf7bQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D82.89324%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x346802a3e547b995:0x66cc8096f9ee8c65!8m2!3d25.0017266!4d121.4636571	\N	https://tw.988house.com/auction/keyword/%e5%bf%a0%e5%ad%9d%e8%b7%af132%e5%b7%b723%e4%b9%8b2	\N	2
54	2020-05-27	2020-06-03	http://aomp.judicial.gov.tw/abbs/wkw/WHD2A03.jsp?pageTotal=6&pageSize=15&rowStart=16&saletypeX=1&proptypeX=C52&courtX=PCD&order=odposition&query_typeX=session&saleno=&hsimun=all&ctmd=all&sec=all&crmyy=&crmid=&crmno=&dpt=&saledate1=&saledate2=&minprice1=&minprice2=&sumprice1=&sumprice2=&area1=&area2=&registeno=&checkyn=all&emptyyn=all&order=odposition&owner1=&landkd=&rrange=%B3%A1%A5%F7&comm_yn=&stopitem=&courtNoLimit=&pageNow=3&276C0AD28D2C934E54AD3B15520FB7CB=CED37994E7A82127D21EFF34589430AF	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%B0%91%E6%B2%BB%E8%A1%97134%E5%B7%B736%E8%99%9F/@25.0314553,121.4767923,3a,75y,339.55h,122.63t/data=!3m7!1e1!3m5!1sKHditjmmNCFtKQTcqfDM8Q!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DKHditjmmNCFtKQTcqfDM8Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D293.60614%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a8442ef31307:0x75494a6cce6bba24!8m2!3d25.0315099!4d121.4766431	\N	https://tw.988house.com/auction/keyword/134%e5%b7%b736%e8%99%9f	\N	8
55	2020-08-10	2020-08-14	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/13200411159.042.pdf	https://tw.988house.com/auction/596276	https://www.google.com.tw/maps/place/234%E6%96%B0%E5%8C%97%E5%B8%82%E6%B0%B8%E5%92%8C%E5%8D%80%E6%B0%91%E6%AC%8A%E8%B7%AF49%E5%B7%B75%E5%BC%8415%E8%99%9F/@24.9975901,121.5206982,3a,75y,351.15h,100.52t/data=!3m7!1e1!3m5!1sRf1v9DgDqmoIl66XoToh3w!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DRf1v9DgDqmoIl66XoToh3w%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D355.4301%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a9e3c48ee1c7:0x4354512d5416147d!8m2!3d24.9977569!4d121.5207295	\N	\N	\N	20
56	2020-09-13	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15091348112.005.pdf	https://tw.988house.com/auction/599144	南京路20巷 https://maps.app.goo.gl/QLrpvHqBDdVxnbUQA	\N	https://tw.988house.com/auction/keyword/608%e5%b7%b7119%e8%99%9f	https://drive.google.com/file/d/1O0lZJzQOjDJ1i6pPCnR-TbkxRYdbbXdX/view?usp=drivesdk	31
57	2020-10-01	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/04152703050.024.pdf	https://tw.988house.com/auction/600588	https://maps.app.goo.gl/KLdNjzLNVx2D3geR9台南市南區金華路一段29巷8弄22號 https://maps.app.goo.gl/KLdNjzLNVx2D3geR9台南市南區金華路一段29巷8弄22號 https://maps.app.goo.gl/KLdNjzLNVx2D3geR9	\N	https://tw.988house.com/auction/keyword/%e5%8f%b0%e5%8d%97%e5%b8%82%e5%8d%97%e5%8d%80%e9%87%91%e8%8f%af%e8%b7%af%e4%b8%80%e6%ae%b529%e5%b7%b78%e5%bc%8422%e8%99%9f	https://drive.google.com/file/d/1PeT1ahllKwJaaqtIP4vBCjiXz0sisPZw/view?usp=drivesdk	42
58	2020-03-07	2020-05-16	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	5
59	\N	\N	\N	\N	\N	\N	\N	\N	84
60	2021-04-18	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/sld/11003/25154347471.005.pdf	https://tw.988house.com/auction/610693	\N	\N	\N	https://drive.google.com/file/d/1sazl7FWsVbNpSWc0fxo1NVD-tZFB4IrG/view?usp=sharing	142
61	\N	\N	\N	\N	\N	\N	\N	\N	166
62	\N	\N	https://tw.988house.com/auction/keyword/%e5%bb%ba%e5%9c%8b%e8%a1%9712%e8%99%9f	https://tw.988house.com/auction/614228	\N	\N	\N	\N	136
63	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ctd/11007/13085428683.038.pdf	\N	\N	\N	\N	\N	183
64	\N	\N	\N	\N	\N	\N	\N	\N	13
65	2020-10-08	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10909/21153902675.026.pdf	https://tw.988house.com/auction/601031	\N	\N	\N	https://drive.google.com/file/d/10TJ6eskIsWzw4NwYI86qCliJEin6pDir	48
66	2020-08-14	2020-08-14	http://aomp.judicial.gov.tw/abbs/sale/tpd/10907/07134020125.027.pdf	https://m.988house.com/auction/595995	https://drive.google.com/folderview?id=1ENmvh6RyXJmD-WNxJVzKRvVugsH6C3AW	\N	\N	\N	26
67	2020-11-21	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/16104800471.003.pdf	https://tw.988house.com/auction/604585	https://goo.gl/maps/j7rqWQu3eDUUfcxi9	\N	\N	https://drive.google.com/file/d/1ZcjACQpxd1hg22Bk4xSX1bZX5snYoPLs/view?usp=sharing	68
68	\N	\N	\N	https://tw.988house.com/auction/617731	\N	\N	\N	\N	167
69	\N	\N	\N	\N	\N	\N	\N	\N	69
70	\N	\N	\N	\N	https://www.google.com.tw/maps/place/712%E5%8F%B0%E5%8D%97%E5%B8%82%E6%96%B0%E5%8C%96%E5%8D%80%E6%B0%91%E7%94%9F%E8%B7%AF314%E5%B7%B722%E8%99%9F/@23.0432397,120.3071138,3a,90y,162.75h,111.34t/data=!3m6!1e1!3m4!1sMvk44_w4pXQtbpPAuGdF4A!2e0!7i13312!8i6656!4m5!3m4!1s0x346e70786ea7bd6b:0x464baa78b3f8ef0f!8m2!3d23.0430864!4d120.3071053?hl=zh-TW&authuser=0	\N	\N	https://drive.google.com/file/d/1Ar1z-FpbYTPOhvAt3rE9zgs1LGjF8Hqq/view?usp=sharing	70
71	2020-12-05	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/06083953986.022.pdf	https://tw.988house.com/auction/603929	\N	\N	\N	https://drive.google.com/file/d/1h0CbSRmTdjjvxQDYqtP0elGROFZSpf9K/view?usp=sharing	80
97	2020-12-19	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/07152210703.007.pdf	https://tw.988house.com/auction/606132	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=108&crmid=%E5%8F%B8%E5%9F%B7&crmno=113165	\N	https://tw.988house.com/auction/keyword/288%e5%b7%b7110%e5%bc%8426%e8%99%9f	https://drive.google.com/file/d/1cfdYdxi_gvPApiUqjIsKRFL9B3kGWANM/view?usp=sharing	91
72	2020-08-10	2020-08-14	http://aomp.judicial.gov.tw/abbs/sale/pcd/10908/06142924688.014.pdf	https://tw.988house.com/auction/keyword/130169	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%B1%9F%E5%AF%A7%E8%B7%AF%E4%B8%89%E6%AE%B555%E8%99%9F5/@25.0322105,121.4696386,17z/data=!4m13!1m7!3m6!1s0x3442a843d62833d3:0xb1e2d55f8a5b8fc9!2zMjIw5paw5YyX5biC5p2_5qmL5Y2A5rGf5a-n6Lev5LiJ5q61NTXomZ81!3b1!8m2!3d25.0322057!4d121.4718273!3m4!1s0x3442a843d62833d3:0xb1e2d55f8a5b8fc9!8m2!3d25.0322057!4d121.4718273	\N	\N	\N	22
73	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/17094225437.013.pdf	https://tw.988house.com/auction/604723	\N	\N	\N	\N	67
74	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/10164236683.014.pdf	https://tw.988house.com/auction/616211	\N	\N	\N	https://drive.google.com/file/d/19-iWi8xEa53hZh3I3jQNIl3WrdLpE3q0/view?usp=drivesdk	163
75	2021-07-03	2021-07-03	https://tfasc.blob.core.windows.net/importbulletin/11006_08092354.111	https://tw.988house.com/auction/617676	https://www.google.com/maps/place/709%E5%8F%B0%E5%8D%97%E5%B8%82%E5%AE%89%E5%8D%97%E5%8D%80%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5119%E5%B7%B727%E5%BC%841%E8%99%9F/@23.030026,120.204584,17z/data=!3m1!4b1!4m5!3m4!1s0x346e77070bbb332d:0xaf6d1442e54af141!8m2!3d23.030026!4d120.206778	\N	https://tw.988house.com/auction/keyword/119%e5%b7%b727%e5%bc%841%e8%99%9f	https://drive.google.com/file/d/1QNT4jJawz0-5jQv6RWmFxcfZc0gn8VV8/view?usp=sharing	168
76	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/23090451995.026.pdf	https://tw.988house.com/auction/602956	https://www.google.com.tw/maps/place/704%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8C%97%E5%8D%80%E5%85%AC%E5%9C%92%E8%B7%AF487%E5%B7%B737%E8%99%9F/@23.0092139,120.2091875,3a,75y,91.9h,90t/data=!3m7!1e1!3m5!1s0kqIUVb5w_a-4T3NOxZDjw!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D0kqIUVb5w_a-4T3NOxZDjw%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D91.89673%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e76f714955bb5:0x4a77e018767ca143!8m2!3d23.0095249!4d120.2091583	\N	\N	\N	63
77	2020-11-29	\N	http://aomp.judicial.gov.tw/abbs/sale/uld/10911/12092219966.002.pdf	https://tw.988house.com/auction/604484	https://www.google.com.tw/maps/place/651%E9%9B%B2%E6%9E%97%E7%B8%A3%E5%8C%97%E6%B8%AF%E9%8E%AE%E6%96%87%E6%98%8E%E8%B7%AF100%E5%B7%B713%E8%99%9F/@23.5764965,120.2965618,3a,15.2y,7.69h,86.42t/data=!3m6!1e1!3m4!1sxOPPkupaAhnoivnYo9_irA!2e0!7i16384!8i8192!4m5!3m4!1s0x346ea2620505f82f:0x33bc61ad17ff2aa7!8m2!3d23.576875!4d120.296854	\N	\N	\N	79
78	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11007/14153341322.007.pdf	\N	\N	\N	\N	\N	178
79	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/24154954170.029.pdf	https://tw.988house.com/auction/603216	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=059310	\N	\N	\N	78
80	\N	\N	\N	\N	https://www.google.com.tw/maps/place/600%E5%98%89%E7%BE%A9%E5%B8%82%E8%A5%BF%E5%8D%80%E8%87%AA%E7%94%B1%E8%B7%AF40%E8%99%9F/@23.4859169,120.4409686,3a,75y,355.75h,108.06t/data=!3m6!1e1!3m4!1sK5dCTc4G9slq08nepc9CKw!2e0!7i16384!8i8192!4m5!3m4!1s0x346e942b67ad9cb3:0xa039c49fa3b3791!8m2!3d23.4860342!4d120.4409418	\N	\N	\N	71
81	\N	2021-01-17	http://aomp.judicial.gov.tw/abbs/sale/ptd/11001/12103437475.007.pdf	\N	\N	\N	\N	\N	111
82	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/10103541819.026.pdf	https://tw.988house.com/auction/602353	https://www.google.com.tw/maps/@23.1801566,120.2404999,3a,90y,157.51h,91.74t/data=!3m6!1e1!3m4!1sREuqOdwqFGZYUG5R77Wnnw!2e0!7i13312!8i6656	\N	\N	\N	74
83	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/12104301632.000.pdf	https://tw.988house.com/auction/595928	https://www.google.com.tw/maps/place/%E5%B7%A7%E8%B1%90%E6%96%87%E5%85%B7%E7%A6%AE%E5%93%81%E8%A1%8C/@25.013664,121.4727926,3a,46.7y,180.85h,88.55t/data=!3m9!1e1!3m7!1sxAGdo4TFhCGgKGKN5p1GQw!2e0!7i16384!8i8192!9m2!1b1!2i19!4m5!3m4!1s0x3442a823a13bf4db:0xfe2e579c4bcf1569!8m2!3d25.013254!4d121.4724637	\N	https://tw.988house.com/auction/keyword/206%e5%b7%b7117%e4%b9%8b1%e8%99%9f	\N	81
84	2020-12-22	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10911/10094912584.014.pdf	https://tw.988house.com/auction/605891	https://www.google.com.tw/maps/place/622%E5%98%89%E7%BE%A9%E7%B8%A3%E5%A4%A7%E6%9E%97%E9%8E%AE%E4%BF%A1%E7%BE%A9%E8%A1%9746%E5%B7%B77%E8%99%9F/@23.600601,120.4581254,18z/data=!4m5!3m4!1s0x346ebec7f74c91d3:0x5b1d83d50672209c!8m2!3d23.6007903!4d120.4590293	\N	https://tw.988house.com/auction/keyword/%e4%bf%a1%e7%be%a9%e8%a1%9746%e5%b7%b77%e8%99%9f	https://drive.google.com/file/d/1ZIPiNh5QlDc_iw8KWQmb7I7MiSPOsz4e/view?usp=sharing	72
85	\N	\N	\N	https://tw.988house.com/auction/602448	\N	\N	\N	\N	76
86	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/17134306419.012.pdf	https://tw.988house.com/auction/616773	\N	\N	\N	\N	165
87	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/19153715048.001.pdf	https://tw.988house.com/auction/604920	https://www.google.com.tw/maps/@22.9375688,120.3338528,3a,90y,158.68h,93.52t/data=!3m6!1e1!3m4!1sejdF5Kj7PJcppiCAmDPccA!2e0!7i13312!8i6656	\N	\N	\N	75
88	\N	\N	\N	https://tw.988house.com/auction/605245	https://www.google.com.tw/maps/@23.1499665,120.1516924,3a,37.4y,294.56h,89.52t/data=!3m6!1e1!3m4!1szCRK83SOVHrxfLVcsAcdXw!2e0!7i13312!8i6656	\N	\N	\N	77
89	\N	2020-11-05	http://aomp.judicial.gov.tw/abbs/sale/ksd/10911/12110652120.023.pdf	\N	https://www.google.com.tw/maps/place/830%E9%AB%98%E9%9B%84%E5%B8%82%E9%B3%B3%E5%B1%B1%E5%8D%80%E5%BB%BA%E5%9C%8B%E8%B7%AF%E4%B8%80%E6%AE%B5309%E8%99%9F/@22.634171,120.3709734,3a,90y,144.68h,100.31t/data=!3m6!1e1!3m4!1s9wZm-bK3qwPXafgkVu-D2g!2e0!7i16384!8i8192!4m5!3m4!1s0x346e1b19dda480eb:0x16452fe2dbe8c279!8m2!3d22.634058!4d120.370833?hl=zh-TW&authuser=0	\N	\N	\N	86
90	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10912/01194000753.05Z.pdf	https://tw.988house.com/auction/605650	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TPD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=041851	\N	\N	\N	88
91	\N	\N	\N	https://tw.988house.com/auction/604403	\N	\N	https://tw.988house.com/auction/keyword/13%e5%bc%848%e8%99%9f2%e6%a8%93	\N	92
92	\N	\N	\N	https://tw.988house.com/auction/606453	\N	\N	\N	\N	94
93	2020-12-13	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/24165843070.015.pdf	https://tw.988house.com/auction/601513	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=PCD&crmyy=108&crmid=%E5%8F%B8%E5%9F%B7&crmno=027827	\N	\N	https://drive.google.com/file/d/1onjF0tR0mzSjai0rjdfoULKPXimKU12W/view?usp=sharing	83
94	\N	\N	\N	https://tw.988house.com/auction/605520	\N	\N	\N	\N	95
95	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10911/10094507206.003.pdf	https://tw.988house.com/auction/602215	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TPD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=059674	\N	https://tw.988house.com/auction/keyword/%e6%99%af%e7%a6%8f%e8%a1%97135%e5%b7%b79%e8%99%9f	\N	89
98	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/23152359061.027.pdf	https://tw.988house.com/auction/607787	\N	\N	\N	\N	124
99	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/03145514135.021.pdf	https://tw.988house.com/auction/605798	https://www.google.com/maps/@23.2286439,120.3543542,3a,75y,145.57h,112.17t/data=!3m6!1e1!3m4!1s16y1JEckC5-avIqL7LfhNQ!2e0!7i13312!8i6656	\N	\N	\N	87
100	\N	\N	\N	https://tw.988house.com/auction/603536	\N	\N	https://tw.988house.com/auction/keyword/155%e5%b7%b74%e8%99%9f3%e6%a8%93	\N	93
101	2021-04-19	\N	\N	https://tw.988house.com/auction/602598	\N	\N	\N	\N	96
102	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11004/12153813904.012.pdf	\N	\N	\N	\N	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	148
103	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11007/26161738791.023.pdf	\N	\N	\N	\N	\N	181
104	2021-04-19	\N	\N	https://tw.988house.com/auction/610192	\N	\N	\N	\N	139
105	2020-12-13	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/27122746789.000.pdf	https://tw.988house.com/auction/601469	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=PCD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=022608	\N	https://tw.988house.com/auction/keyword/%e5%9c%8b%e5%85%89%e8%b7%af197%e5%b7%b78%e8%99%9f	https://drive.google.com/file/d/1oxW2vuBFZtgQmGtWfvPteTatl9ERXXo4/view?usp=sharing	82
106	2020-03-07	2020-05-16	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	12
107	\N	\N	\N	\N	\N	\N	\N	\N	105
108	\N	\N	\N	\N	\N	\N	\N	\N	97
109	\N	\N	\N	\N	\N	\N	\N	\N	102
110	\N	\N	\N	\N	\N	\N	\N	\N	103
111	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	\N	\N	\N	\N	107
112	\N	2021-01-05	\N	\N	\N	\N	\N	\N	101
113	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ksd/11001/07155947050.010.pdf	\N	\N	\N	\N	\N	109
114	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ctd/10912/23152250119.041.pdf	\N	\N	\N	\N	\N	108
115	\N	\N	\N	\N	\N	\N	\N	\N	106
116	\N	\N	\N	\N	\N	\N	\N	\N	104
117	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/11001/08142548704.010.pdf	\N	\N	\N	\N	\N	110
118	\N	\N	\N	https://tw.988house.com/auction/606127	\N	\N	\N	\N	99
119	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/12090944139.012.pdf	\N	\N	\N	\N	\N	159
120	\N	\N	\N	https://tw.988house.com/auction/615871	\N	\N	\N	\N	162
121	\N	\N	\N	https://tw.988house.com/auction/608750	\N	\N	\N	\N	158
122	\N	\N	\N	https://tw.988house.com/auction/607958	\N	\N	\N	\N	112
123	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11007/22144735116.007.pdf	https://tw.988house.com/auction/618930	\N	\N	\N	\N	180
124	\N	\N	\N	https://tw.988house.com/auction/608930	\N	\N	\N	\N	113
125	2021-04-20	\N	\N	https://tw.988house.com/auction/609746	\N	\N	\N	\N	116
126	2021-04-17	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/18154128189.012.pdf	https://tw.988house.com/auction/610695	\N	\N	\N	\N	123
127	\N	2020-10-06	http://aomp.judicial.gov.tw/abbs/sale/ksd/10911/17144705644.024.pdf	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E6%A8%B9%E5%BE%B7%E8%B7%AF2%E5%B7%B72%E8%99%9F/@22.5892992,120.3175317,3a,90y,58.77h,105.08t/data=!3m7!1e1!3m5!1sRoejscKzmMJWul9-nECcaA!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DRoejscKzmMJWul9-nECcaA%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D50.01228%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e0314e20c9fa5:0xaf7cab107580b6df!8m2!3d22.5893098!4d120.3175719?hl=zh-TW&authuser=0	\N	\N	\N	85
128	\N	\N	\N	https://tw.988house.com/auction/609311	https://www.google.com/maps/@23.0303011,120.2165569,3a,75y,202.73h,103.3t/data=!3m7!1e1!3m5!1s80ehgGlYmFhePhj74nJMvw!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3D80ehgGlYmFhePhj74nJMvw%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D234.85318%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192	\N	\N	https://drive.google.com/file/d/1WyTBif3PEWlI7Dnxj_K1xJ78fHGecJCj/view?usp=drivesdk	122
129	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11001/25091647841.003.pdf	\N	\N	\N	\N	\N	118
130	\N	\N	\N	https://tw.988house.com/auction/610456	\N	\N	\N	\N	119
131	2021-02-10	\N	\N	https://tw.988house.com/auction/609559	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowOTY1NTh8OlRORA==	\N	https://tw.988house.com/auction/keyword/%e6%96%87%e8%b3%a2%e8%b7%af34%e8%99%9f	\N	114
132	\N	\N	\N	https://tw.988house.com/auction/609797	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/24133455585.002.pdf	\N	120
133	2021-03-06	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/26082946898.024.pdf	https://tw.988house.com/auction/611554	\N	\N	https://tw.988house.com/auction/297189	https://drive.google.com/file/d/1RIosI35Xs_TuSXcNyE75kR3Vb9sNdw-l/view?usp=sharing	121
134	2021-03-27	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/09155129651.022.pdf	https://tw.988house.com/auction/614090	\N	\N	\N	https://drive.google.com/file/d/1ttKUOZCyDiSEf3YQ1wYp2DyblpQe7ecS/view?usp=drivesdk	132
135	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/11001_26103907.110	\N	\N	\N	\N	\N	117
136	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	https://www.google.com.tw/maps/place/924%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B4%81%E9%A0%82%E9%84%89%E6%96%B0%E7%94%9F%E8%B7%AF52%E8%99%9F/@22.5040189,120.4812574,3a,85.9y,289.62h,105.78t/data=!3m7!1e1!3m5!1sTIgDcz2GNNOwWmYdj4dv5Q!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DTIgDcz2GNNOwWmYdj4dv5Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod%2Fmaps%2Flocal-details-getcard.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D326.12936%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e1e32af9a7489:0xf365959c38ff0447!8m2!3d22.5040427!4d120.4811859?hl=zh-TW	\N	\N	\N	11
174	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11006/30112238532.007.pdf	\N	\N	\N	\N	\N	177
137	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/05103551381.011.pdf	https://tw.988house.com/auction/605107	https://www.google.com.tw/maps/@22.989011,120.1916423,3a,90y,142.78h,98.23t/data=!3m7!1e1!3m5!1sDaNKhziWRKY-4ESYYF6LEg!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3DDaNKhziWRKY-4ESYYF6LEg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D267.2623%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N	https://tw.988house.com/auction/540565	\N	73
138	\N	\N	\N	https://tw.988house.com/auction/610322	\N	\N	\N	\N	137
139	\N	\N	\N	\N	\N	\N	\N	\N	126
140	\N	\N	\N	\N	\N	\N	\N	\N	127
141	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tcd/11002/24150018734.012.pdf	\N	\N	\N	\N	\N	133
142	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/23134656432.015.pdf	https://tw.988house.com/auction/610652	https://www.google.com/maps/@22.976303,120.356514,3a,75y,340.63h,109.83t/data=!3m6!1e1!3m4!1sYH65HI7cA0blcZRhulY-KQ!2e0!7i13312!8i6656	\N	\N	\N	130
143	\N	\N	\N	\N	\N	\N	\N	\N	134
144	\N	\N	\N	\N	\N	\N	\N	\N	129
145	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/12094402011.017.pdf	\N	https://www.google.com/maps/@22.9787728,120.1966228,3a,63y,185.18h,125.7t/data=!3m6!1e1!3m4!1ss5iHOCRRD_tL8W-cg_D_AQ!2e0!7i13312!8i6656	\N	https://tw.988house.com/auction/495279	\N	161
146	\N	\N	\N	\N	\N	\N	\N	\N	141
147	\N	\N	\N	\N	\N	\N	\N	\N	140
148	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ctd/11002/24134216828.013.pdf	\N	\N	\N	\N	\N	125
149	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/05083553593.028.pdf	https://tw.988house.com/auction/611300	\N	\N	\N	https://drive.google.com/file/d/1XXd-Dh3GZnZU696jOGLsVCgOY4HQIuoF/view?usp=drivesdk	131
150	\N	\N	\N	https://tw.988house.com/auction/607363	\N	\N	\N	\N	128
151	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/18104729626.002.pdf	https://tw.988house.com/auction/610212	\N	\N	\N	\N	138
152	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/05165945743.006.pdf	https://tw.988house.com/auction/616202	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowOTczODJ8OlRORA==	\N	\N	\N	160
153	2021-08-02	\N	\N	\N	\N	\N	\N	\N	182
154	\N	\N	\N	https://tw.988house.com/auction/606834	https://www.google.com.tw/maps/place/112%E5%8F%B0%E5%8C%97%E5%B8%82%E5%8C%97%E6%8A%95%E5%8D%80%E4%B8%80%E5%BE%B7%E8%A1%9710%E5%B7%B77%E8%99%9F/@25.1287905,121.4687012,3a,52.2y,156.82h,97t/data=!3m7!1e1!3m5!1sv6TgTboQnTrzlsQOErmtEA!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3Dv6TgTboQnTrzlsQOErmtEA%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D20.18782%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442af0b521ce959:0x61a3d7ec485e4b95!8m2!3d25.12905!4d121.468812?hl=zh-TW	\N	https://tw.988house.com/auction/keyword/10%e5%b7%b77%e8%99%9f4%e6%a8%93	\N	98
155	2020-10-17	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/05203423595.003.pdf	https://tw.988house.com/auction/601834	https://maps.app.goo.gl/DQS9Y6P26jbTSCiq5	\N	https://tw.988house.com/auction/keyword/107%e5%b7%b712%e8%99%9f	https://drive.google.com/file/d/1SeWwgcjVhLB-uizg1HM5a9nc8UQyF0_u/view?usp=drivesdk	57
156	\N	\N	http://www.104woo.com.tw/tom1/house/lin_k_new_icon2.asp?iconx=d&m_1_db1=t5e_h_m_1_db1_data&no=25276&check104=253158	https://tw.988house.com/auction/600560	https://www.google.com.tw/maps/place/600%E5%98%89%E7%BE%A9%E5%B8%82%E6%9D%B1%E5%8D%80%E5%92%8C%E5%B9%B3%E8%B7%AF277%E8%99%9F/@23.4806747,120.4565646,3a,90y,266.93h,89.77t/data=!3m7!1e1!3m5!1s-zhxJv40FOwYzuO7lUsf6Q!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D-zhxJv40FOwYzuO7lUsf6Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D235.05804%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x346e9435b0fb491d:0x45a43969522a4901!8m2!3d23.480632!4d120.456493	\N	https://tw.988house.com/auction/keyword/%e6%9d%b1%e5%8d%80%e5%92%8c%e5%b9%b3%e8%b7%af277%e8%99%9f	\N	41
157	\N	\N	\N	\N	\N	\N	\N	\N	143
158	2021-04-18	2021-04-19	\N	\N	\N	\N	\N	\N	144
159	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11004/13141415078.028.pdf	https://tw.988house.com/auction/615277	\N	\N	\N	\N	150
160	\N	\N	\N	\N	\N	\N	\N	\N	146
161	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11004/07140254618.024.pdf	\N	\N	\N	\N	\N	151
162	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11003/31141426274.004.pdf	https://tw.988house.com/auction/614720	\N	\N	\N	https://drive.google.com/file/d/1fb62nHrGvQNCZOtxkeJ4ted3yNkrcVgA	149
163	\N	\N	\N	https://tw.988house.com/auction/610059	\N	\N	\N	\N	147
164	\N	\N	\N	\N	\N	\N	\N	\N	145
165	\N	\N	\N	https://tw.988house.com/auction/616179	\N	\N	\N	\N	152
166	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/01165837394.015.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowNTgyNDB8OlRORA==	\N	\N	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	115
167	\N	\N	\N	https://tw.988house.com/auction/616211	\N	\N	\N	\N	155
168	\N	\N	\N	https://tw.988house.com/auction/616632	\N	\N	\N	\N	156
169	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/08161958025.007.pdf	https://tw.988house.com/auction/600219	\N	\N	\N	\N	52
170	2020-06-20	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/11155044277.014.pdf	https://tw.988house.com/auction/595012	https://www.google.com.tw/maps/place/710%E5%8F%B0%E5%8D%97%E5%B8%82%E6%B0%B8%E5%BA%B7%E5%8D%80%E4%BF%A1%E7%BE%A9%E8%A1%9744%E5%B7%B76%E8%99%9F/@23.0111958,120.2730646,3a,75y,96.48h,90t/data=!3m7!1e1!3m5!1sOGekGuyfub6_ZylqrIm31g!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DOGekGuyfub6_ZylqrIm31g%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D96.476234%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e70de3460a92b:0x7ee0d3503b9f2eab!8m2!3d23.0111357!4d120.2731418	\N	https://tw.988house.com/auction/keyword/44%e5%b7%b76%e8%99%9f	\N	16
171	2020-12-19	\N	https://tfasc.blob.core.windows.net/importbulletin/10912_24163500.111	https://tw.988house.com/auction/606052	https://www.google.com/maps/@22.9809228,120.1989367,3a,75y,345.22h,125.02t/data=!3m6!1e1!3m4!1sLBIginBmsbk4cuj-4Ecdgw!2e0!7i13312!8i6656	\N	\N	https://drive.google.com/file/d/1JxuGVIhqKhtpf-IljLi1u_bFOxvwH8NT/view?usp=drivesdk	59
172	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11006/16141937603.009.pdf	\N	\N	\N	\N	\N	169
173	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/14160754987.010.pdf	\N	\N	\N	\N	https://drive.google.com/file/d/1ORwDctfwqRwAh89zSRJnuwOERsIUgjhB/view?usp=drivesdk	170
175	\N	\N	\N	https://tw.988house.com/auction/615735	\N	\N	\N	https://drive.google.com/file/d/1GRygKiu4Zecc4pd1BtdroRJZBNxS7idz/view?usp=sharing	153
176	2021-01-02	2021-01-02	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11007/14161154260.008.pdf	https://tw.988house.com/auction/607326	https://www.google.com/maps/place/704%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8C%97%E5%8D%80%E9%95%B7%E6%A6%AE%E8%B7%AF%E4%BA%94%E6%AE%B5187%E5%B7%B732%E8%99%9F/@23.0119215,120.2194313,3a,83.7y,347.19h,109.28t/data=!3m6!1e1!3m4!1sfKiAiJ2BnSZQI97OwbJ0og!2e0!7i16384!8i8192!4m5!3m4!1s0x346e76e4f8f21daf:0x15b7a19d4a1aea6a!8m2!3d23.0119477!4d120.2193809?hl=zh_TW&authuser=0	\N	\N	https://drive.google.com/file/d/1aPAyPdkyu5oeFXs_bE0dbbqcNmCz5FZ5/view?usp=sharing	100
177	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11007/15171625711.012.pdf	https://tw.988house.com/auction/618355	\N	\N	\N	\N	172
178	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11007/07142813130.007.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTEwfDqlcbD1fDowMDU4OTJ8OkNZRA==	\N	\N	\N	171
179	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/11006_28091213.110	\N	\N	\N	\N	\N	173
180	\N	\N	\N	\N	\N	\N	\N	\N	175
181	2021-07-22	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11007/06100956448.024.pdf	https://tw.988house.com/auction/614575	\N	\N	https://tw.988house.com/auction/keyword/%e6%96%b0%e7%94%9f%e8%b7%af85%e5%b7%b75%e8%99%9f	https://drive.google.com/file/d/1XXGnoy_AWfSWIDwWhNQa1S7izmwt6Np3/view?usp=sharing	174
182	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11006/25140405128.01O.pdf	\N	\N	\N	\N	\N	176
183	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/25105800843.018.pdf	https://www.house-info.tw/%E6%B3%95%E6%8B%8D%E5%98%89%E7%BE%A9%E5%B8%82%E9%80%8F%E5%A4%A9-H1933705.htm	\N	\N	\N	https://drive.google.com/file/d/1VSbaywYUjJYBWF_sXpFWQAulMutctK8-/view?usp=drivesdk	164
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 3, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: yfcase_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcase_city_id_seq', 1, true);


--
-- Name: yfcase_township_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcase_township_id_seq', 1, false);


--
-- Name: yfcase_yfcase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcase_yfcase_id_seq', 5, true);


--
-- Name: yfcases_auction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_auction_id_seq', 3, true);


--
-- Name: yfcases_build_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_build_id_seq', 1, false);


--
-- Name: yfcases_coownerheir_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_coownerheir_id_seq', 1, false);


--
-- Name: yfcases_coownerinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_coownerinfo_id_seq', 1, false);


--
-- Name: yfcases_coownerlitigation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_coownerlitigation_id_seq', 1, false);


--
-- Name: yfcases_finaldecision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_finaldecision_id_seq', 1, false);


--
-- Name: yfcases_land_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_land_id_seq', 1, false);


--
-- Name: yfcases_objectbuild_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_objectbuild_id_seq', 1, false);


--
-- Name: yfcases_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_result_id_seq', 1, false);


--
-- Name: yfcases_survey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryowu
--

SELECT pg_catalog.setval('public.yfcases_survey_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);


--
-- Name: users_customuser_groups users_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);


--
-- Name: users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: users_customuser_user_permissions users_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_username_key; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_key UNIQUE (username);


--
-- Name: yfcase_city yfcase_city_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_city
    ADD CONSTRAINT yfcase_city_pkey PRIMARY KEY (id);


--
-- Name: yfcase_township yfcase_township_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_township
    ADD CONSTRAINT yfcase_township_pkey PRIMARY KEY (id);


--
-- Name: yfcase_yfcase yfcase_yfcase_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_yfcase
    ADD CONSTRAINT yfcase_yfcase_pkey PRIMARY KEY (id);


--
-- Name: yfcases_auction yfcases_auction_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_auction
    ADD CONSTRAINT yfcases_auction_pkey PRIMARY KEY (id);


--
-- Name: yfcases_build yfcases_build_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_build
    ADD CONSTRAINT yfcases_build_pkey PRIMARY KEY (id);


--
-- Name: yfcases_coownerheir yfcases_coownerheir_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerheir
    ADD CONSTRAINT yfcases_coownerheir_pkey PRIMARY KEY (id);


--
-- Name: yfcases_coownerinfo yfcases_coownerinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerinfo
    ADD CONSTRAINT yfcases_coownerinfo_pkey PRIMARY KEY (id);


--
-- Name: yfcases_coownerlitigation yfcases_coownerlitigation_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerlitigation
    ADD CONSTRAINT yfcases_coownerlitigation_pkey PRIMARY KEY (id);


--
-- Name: yfcases_finaldecision yfcases_finaldecision_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_finaldecision
    ADD CONSTRAINT yfcases_finaldecision_pkey PRIMARY KEY (id);


--
-- Name: yfcases_land yfcases_land_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_land
    ADD CONSTRAINT yfcases_land_pkey PRIMARY KEY (id);


--
-- Name: yfcases_objectbuild yfcases_objectbuild_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_objectbuild
    ADD CONSTRAINT yfcases_objectbuild_pkey PRIMARY KEY (id);


--
-- Name: yfcases_result yfcases_result_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_result
    ADD CONSTRAINT yfcases_result_pkey PRIMARY KEY (id);


--
-- Name: yfcases_survey yfcases_survey_pkey; Type: CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_survey
    ADD CONSTRAINT yfcases_survey_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: users_customuser_groups_customuser_id_958147bf; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);


--
-- Name: users_customuser_groups_group_id_01390b14; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);


--
-- Name: users_customuser_user_permissions_customuser_id_5771478b; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);


--
-- Name: users_customuser_user_permissions_permission_id_baaa2f74; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);


--
-- Name: users_customuser_username_80452fdf_like; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);


--
-- Name: yfcase_township_city_id_091321f8; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcase_township_city_id_091321f8 ON public.yfcase_township USING btree (city_id);


--
-- Name: yfcase_yfcase_user_id_2ef8f9c4; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcase_yfcase_user_id_2ef8f9c4 ON public.yfcase_yfcase USING btree (user_id);


--
-- Name: yfcase_yfcase_yfcaseCity_id_e8a2c974; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX "yfcase_yfcase_yfcaseCity_id_e8a2c974" ON public.yfcase_yfcase USING btree ("yfcaseCity_id");


--
-- Name: yfcase_yfcase_yfcaseTownship_id_c2b761ac; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX "yfcase_yfcase_yfcaseTownship_id_c2b761ac" ON public.yfcase_yfcase USING btree ("yfcaseTownship_id");


--
-- Name: yfcases_auction_yfcase_id_74228b54; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_auction_yfcase_id_74228b54 ON public.yfcases_auction USING btree (yfcase_id);


--
-- Name: yfcases_build_yfcase_id_ca449183; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_build_yfcase_id_ca449183 ON public.yfcases_build USING btree (yfcase_id);


--
-- Name: yfcases_coownerheir_coowner_id_cb5db76b; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_coownerheir_coowner_id_cb5db76b ON public.yfcases_coownerheir USING btree (coowner_id);


--
-- Name: yfcases_coownerinfo_yfcase_id_9c7ad9a4; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_coownerinfo_yfcase_id_9c7ad9a4 ON public.yfcases_coownerinfo USING btree (yfcase_id);


--
-- Name: yfcases_coownerlitigation_coownerheir_id_e3810dec; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_coownerlitigation_coownerheir_id_e3810dec ON public.yfcases_coownerlitigation USING btree (coownerheir_id);


--
-- Name: yfcases_finaldecision_yfcase_id_33b152b1; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_finaldecision_yfcase_id_33b152b1 ON public.yfcases_finaldecision USING btree (yfcase_id);


--
-- Name: yfcases_land_yfcase_id_5ce899a6; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_land_yfcase_id_5ce899a6 ON public.yfcases_land USING btree (yfcase_id);


--
-- Name: yfcases_objectbuild_yfcase_id_64265559; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_objectbuild_yfcase_id_64265559 ON public.yfcases_objectbuild USING btree (yfcase_id);


--
-- Name: yfcases_result_yfcase_id_62543764; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_result_yfcase_id_62543764 ON public.yfcases_result USING btree (yfcase_id);


--
-- Name: yfcases_survey_yfcase_id_aa59bfb9; Type: INDEX; Schema: public; Owner: ryowu
--

CREATE INDEX yfcases_survey_yfcase_id_aa59bfb9 ON public.yfcases_survey USING btree (yfcase_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcase_township yfcase_township_city_id_091321f8_fk_yfcase_city_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_township
    ADD CONSTRAINT yfcase_township_city_id_091321f8_fk_yfcase_city_id FOREIGN KEY (city_id) REFERENCES public.yfcase_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcase_yfcase yfcase_yfcase_user_id_2ef8f9c4_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_yfcase
    ADD CONSTRAINT yfcase_yfcase_user_id_2ef8f9c4_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcase_yfcase yfcase_yfcase_yfcaseCity_id_e8a2c974_fk_yfcase_city_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_yfcase
    ADD CONSTRAINT "yfcase_yfcase_yfcaseCity_id_e8a2c974_fk_yfcase_city_id" FOREIGN KEY ("yfcaseCity_id") REFERENCES public.yfcase_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcase_yfcase yfcase_yfcase_yfcaseTownship_id_c2b761ac_fk_yfcase_township_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcase_yfcase
    ADD CONSTRAINT "yfcase_yfcase_yfcaseTownship_id_c2b761ac_fk_yfcase_township_id" FOREIGN KEY ("yfcaseTownship_id") REFERENCES public.yfcase_township(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_auction yfcases_auction_yfcase_id_74228b54_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_auction
    ADD CONSTRAINT yfcases_auction_yfcase_id_74228b54_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_build yfcases_build_yfcase_id_ca449183_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_build
    ADD CONSTRAINT yfcases_build_yfcase_id_ca449183_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_coownerheir yfcases_coownerheir_coowner_id_cb5db76b_fk_yfcases_c; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerheir
    ADD CONSTRAINT yfcases_coownerheir_coowner_id_cb5db76b_fk_yfcases_c FOREIGN KEY (coowner_id) REFERENCES public.yfcases_coownerinfo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_coownerinfo yfcases_coownerinfo_yfcase_id_9c7ad9a4_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerinfo
    ADD CONSTRAINT yfcases_coownerinfo_yfcase_id_9c7ad9a4_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_coownerlitigation yfcases_coownerlitig_coownerheir_id_e3810dec_fk_yfcases_c; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_coownerlitigation
    ADD CONSTRAINT yfcases_coownerlitig_coownerheir_id_e3810dec_fk_yfcases_c FOREIGN KEY (coownerheir_id) REFERENCES public.yfcases_coownerheir(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_finaldecision yfcases_finaldecision_yfcase_id_33b152b1_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_finaldecision
    ADD CONSTRAINT yfcases_finaldecision_yfcase_id_33b152b1_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_land yfcases_land_yfcase_id_5ce899a6_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_land
    ADD CONSTRAINT yfcases_land_yfcase_id_5ce899a6_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_objectbuild yfcases_objectbuild_yfcase_id_64265559_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_objectbuild
    ADD CONSTRAINT yfcases_objectbuild_yfcase_id_64265559_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_result yfcases_result_yfcase_id_62543764_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_result
    ADD CONSTRAINT yfcases_result_yfcase_id_62543764_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: yfcases_survey yfcases_survey_yfcase_id_aa59bfb9_fk_yfcase_yfcase_id; Type: FK CONSTRAINT; Schema: public; Owner: ryowu
--

ALTER TABLE ONLY public.yfcases_survey
    ADD CONSTRAINT yfcases_survey_yfcase_id_aa59bfb9_fk_yfcase_yfcase_id FOREIGN KEY (yfcase_id) REFERENCES public.yfcase_yfcase(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ubuntu;

--
-- Name: builds; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.builds (
    id bigint NOT NULL,
    build_number character varying,
    build_url character varying,
    build_area numeric(10,2),
    build_holding_point_personal integer,
    build_holding_point_all integer,
    build_type_use character varying,
    use_partition character varying,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "buildCity" character varying,
    "buildTownship" character varying,
    "buildArea" character varying,
    "buildStreet" character varying,
    "buildRoad" character varying,
    "buildSegment" character varying,
    "buildLane" character varying,
    "buildDo" character varying,
    "buildNumber" character varying,
    "buildFloor" character varying,
    "buildBigSegment" character varying,
    "buildSmallSegment" character varying,
    "buildLot" character varying,
    "buildLevel1" character varying,
    "buildLevel2" character varying,
    "buildLevel3" character varying,
    "buildLevel4" character varying,
    "buildOther1" character varying,
    "buildOther2" character varying,
    "buildUse" character varying,
    "buildScopeOfArea" character varying,
    "buildScopeOfRights" character varying,
    "buildRemarks" character varying,
    "buildTotalArea" character varying,
    "buildLandNumber" character varying,
    "mainBuildLevel1" character varying,
    "mainBuildLevel2" character varying,
    "mainBuildLevel3" character varying,
    "mainBuildLevel4" character varying,
    "mainBuildLevel5" character varying,
    "mainBuildConstruction1" character varying,
    "mainBuildConstruction2" character varying,
    "mainBuildConstruction3" character varying,
    "mainBuildConstruction4" character varying,
    "mainBuildConstruction5" character varying,
    "mainBuildArea1" character varying,
    "mainBuildArea2" character varying,
    "mainBuildArea3" character varying,
    "mainBuildArea4" character varying,
    "mainBuildArea5" character varying,
    "publicBuildNumber1" character varying,
    "publicBuildNumber2" character varying,
    "publicBuildNumber3" character varying,
    "publicBuildNumber4" character varying,
    "publicBuildArea1" character varying,
    "publicBuildArea2" character varying,
    "publicBuildArea3" character varying,
    "publicBuildArea4" character varying,
    "publicBuildHP1" character varying,
    "publicBuildHP2" character varying,
    "publicBuildHP3" character varying,
    "publicBuildHP4" character varying,
    "subBuildUse1" character varying,
    "subBuildUse2" character varying,
    "subBuildUse3" character varying,
    "subBuildArea1" character varying,
    "subBuildArea2" character varying,
    "subBuildArea3" character varying
);


ALTER TABLE public.builds OWNER TO ubuntu;

--
-- Name: builds_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.builds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.builds_id_seq OWNER TO ubuntu;

--
-- Name: builds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.builds_id_seq OWNED BY public.builds.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.countries OWNER TO ubuntu;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO ubuntu;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: lands; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.lands (
    id bigint NOT NULL,
    land_number character varying,
    land_url character varying,
    land_area numeric(10,2),
    land_holding_point_personal integer,
    land_holding_point_all integer,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "landRemarks" character varying,
    "landPresentValue" character varying,
    "landTotalArea" character varying,
    "landAreaWidth" character varying,
    "landAreaDepth" character varying
);


ALTER TABLE public.lands OWNER TO ubuntu;

--
-- Name: lands_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.lands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lands_id_seq OWNER TO ubuntu;

--
-- Name: lands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.lands_id_seq OWNED BY public.lands.id;


--
-- Name: objectbuilds; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.objectbuilds (
    id bigint NOT NULL,
    address character varying,
    total_price integer,
    build_area numeric(9,2),
    house_age numeric(5,2),
    floor_height character varying,
    objectbuild_url character varying,
    surveyora character varying,
    surveyorb character varying,
    plusa numeric(3,2),
    plusb numeric(3,2),
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    objectbuild_status character varying,
    plusa_reason character varying,
    plusb_reason character varying,
    "objectBuildDealYear" character varying,
    "objectBuildDealMonth" character varying
);


ALTER TABLE public.objectbuilds OWNER TO ubuntu;

--
-- Name: objectbuilds_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.objectbuilds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objectbuilds_id_seq OWNER TO ubuntu;

--
-- Name: objectbuilds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.objectbuilds_id_seq OWNED BY public.objectbuilds.id;


--
-- Name: personnals; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.personnals (
    id bigint NOT NULL,
    is_debtor boolean,
    is_creditor boolean,
    is_land_owner boolean,
    is_build_owner boolean,
    name character varying,
    identity_card character varying,
    birthday timestamp without time zone,
    local_phone character varying,
    mobile_phone character varying,
    personnal_notes character varying,
    person_country character varying,
    person_township character varying,
    person_village character varying,
    person_neighbor character varying,
    person_street character varying,
    person_section character varying,
    person_lane character varying,
    person_alley character varying,
    person_number character varying,
    person_floor character varying,
    is_original_owner boolean,
    is_new_owner boolean,
    is_deed_tax_agent boolean,
    is_tax_agent boolean,
    identity_code character varying,
    public_or_private character varying,
    right_share_person integer,
    right_share_all integer,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "personnalBuildHoldingPointPerson" character varying,
    "personnalBuildHoldingPointAll" character varying,
    "ownerFullAddress" character varying
);


ALTER TABLE public.personnals OWNER TO ubuntu;

--
-- Name: personnals_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.personnals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personnals_id_seq OWNER TO ubuntu;

--
-- Name: personnals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.personnals_id_seq OWNED BY public.personnals.id;


--
-- Name: plusrateas; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.plusrateas (
    id bigint NOT NULL,
    persona character varying,
    plusa numeric(4,2),
    objectbuild_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    plusa_reason character varying,
    plusa2 numeric(4,2),
    plusa_reason2 character varying
);


ALTER TABLE public.plusrateas OWNER TO ubuntu;

--
-- Name: plusrateas_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.plusrateas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plusrateas_id_seq OWNER TO ubuntu;

--
-- Name: plusrateas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.plusrateas_id_seq OWNED BY public.plusrateas.id;


--
-- Name: plusratebs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.plusratebs (
    id bigint NOT NULL,
    personb character varying,
    plusb numeric(4,2),
    objectbuild_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    plusb_reason character varying
);


ALTER TABLE public.plusratebs OWNER TO ubuntu;

--
-- Name: plusratebs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.plusratebs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plusratebs_id_seq OWNER TO ubuntu;

--
-- Name: plusratebs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.plusratebs_id_seq OWNED BY public.plusratebs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ubuntu;

--
-- Name: subsigntrueas; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntrueas (
    id bigint NOT NULL,
    signtruea character varying,
    signtruea_first_name character varying,
    signtruea_last_name character varying,
    signtruea_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    signtruea_work_area character varying
);


ALTER TABLE public.subsigntrueas OWNER TO ubuntu;

--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntrueas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntrueas_id_seq OWNER TO ubuntu;

--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntrueas_id_seq OWNED BY public.subsigntrueas.id;


--
-- Name: subsigntruebs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntruebs (
    id bigint NOT NULL,
    signtrueb character varying,
    signtrueb_first_name character varying,
    signtrueb_last_name character varying,
    signtrueb_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    signtrueb_work_area character varying
);


ALTER TABLE public.subsigntruebs OWNER TO ubuntu;

--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntruebs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntruebs_id_seq OWNER TO ubuntu;

--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntruebs_id_seq OWNED BY public.subsigntruebs.id;


--
-- Name: subsigntruecs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntruecs (
    id bigint NOT NULL,
    signtruec character varying,
    signtruec_first_name character varying,
    signtruec_last_name character varying,
    signtruec_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    signtruec_work_area character varying
);


ALTER TABLE public.subsigntruecs OWNER TO ubuntu;

--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntruecs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntruecs_id_seq OWNER TO ubuntu;

--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntruecs_id_seq OWNED BY public.subsigntruecs.id;


--
-- Name: townships; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.townships (
    id bigint NOT NULL,
    name character varying,
    zip_code character varying,
    district_court character varying,
    land_office character varying,
    finance_and_tax_bureau character varying,
    police_station character varying,
    irs character varying,
    home_office character varying,
    country_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.townships OWNER TO ubuntu;

--
-- Name: townships_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.townships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.townships_id_seq OWNER TO ubuntu;

--
-- Name: townships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.townships_id_seq OWNED BY public.townships.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    role integer,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    full_name character varying,
    "userIdentityCard" character varying,
    "userBirthday" date,
    "userLocalPhone" character varying,
    "userMobilePhone" character varying,
    "userCountry" character varying,
    "userTownship" character varying,
    "userVillage" character varying,
    "userNeighbor" character varying,
    "userStreet" character varying,
    "userSection" character varying,
    "userLane" character varying,
    "userAlley" character varying,
    "userNumber" character varying,
    "userFloor" character varying,
    "userPublicOrPrivate" character varying,
    "userFullName" character varying,
    "userWorkArea" character varying
);


ALTER TABLE public.users OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: yfcases; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.yfcases (
    id bigint NOT NULL,
    case_number character varying,
    other_address character varying,
    auction_day_1 date,
    auction_day_2 date,
    auction_day_3 date,
    auction_day_4 date,
    floor_price_1 integer,
    floor_price_2 integer,
    floor_price_3 integer,
    floor_price_4 integer,
    click_1 integer,
    click_2 integer,
    click_3 integer,
    click_4 integer,
    monitor_1 integer,
    monitor_2 integer,
    monitor_3 integer,
    monitor_4 integer,
    margin_1 integer,
    margin_2 integer,
    margin_3 integer,
    margin_4 integer,
    auction_notes character varying,
    first_survey_day date,
    other_survey_day date,
    foreclosure_announcement_title character varying,
    foreclosure_announcement_link character varying,
    object_photo_title character varying,
    object_photo_link character varying,
    net_price_registration_market_price_title character varying,
    net_price_registration_market_price_link character varying,
    net_price_registration_map_title character varying,
    net_price_registration_map_link character varying,
    net_price_registration_photo_title character varying,
    net_price_registration_photo_link character varying,
    auction_record_title character varying,
    auction_record_link character varying,
    other_notes character varying,
    survey_resolution character varying,
    final_decision character varying,
    co_owner boolean,
    occupy boolean,
    register boolean,
    parking_space boolean,
    management_fee boolean,
    rent boolean,
    leak boolean,
    easy_parking boolean,
    railway boolean,
    vegetable_market boolean,
    supermarket boolean,
    school boolean,
    park boolean,
    post_office boolean,
    main_road boolean,
    water_and_power_failure boolean,
    good_vision boolean,
    final_decision_date date,
    country_id integer,
    township_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    big_section character varying,
    small_section character varying,
    company character varying,
    foreclosure_announcement_988_link character varying,
    adv_find_condition character varying,
    active_result character varying,
    active_result_date date,
    priority_purchase_result character varying,
    target_number character varying,
    cause_data date,
    application_for_registration character varying,
    reason_for_registration character varying,
    marking_and_application_rights character varying,
    "attached_Document_Content_1" character varying,
    number_of_attached_quantity_1 integer,
    "attached_Document_Content_2" character varying,
    number_of_attached_quantity_2 integer,
    "attached_Document_Content_3" character varying,
    number_of_attached_quantity_3 integer,
    registration_notes character varying,
    "deedtaxDateOfDeed" date,
    "deedtaxDeclarationDate" date,
    "deedtaxTransferPrice" integer,
    "deedtaxChargeDaffairesTaxDeclarant" character varying,
    "deedtaxDebtTaxPaymentReceiptMethod" character varying,
    "deedtaxClosedNewsletter" character varying,
    "deedtaxUnderreportedDays" integer,
    "deedtaxRemark" character varying,
    "deedtaxBuildingTransferLevel1" character varying,
    "deedtaxBuildingTransferLevel2" character varying,
    "deedtaxBuildingTransferLevel3" character varying,
    "deedtaxBuildingTransferLevel4" character varying,
    "deedtaxBuildingTransferLevel5" character varying,
    "deedtaxBuildingTransferLevel6" character varying,
    "deedtaxBuildingTransferLevel7" character varying,
    "deedtaxBuildingTransferStructure1" character varying,
    "deedtaxBuildingTransferStructure2" character varying,
    "deedtaxBuildingTransferStructure3" character varying,
    "deedtaxBuildingTransferStructure4" character varying,
    "deedtaxBuildingTransferStructure5" character varying,
    "deedtaxBuildingTransferStructure6" character varying,
    "deedtaxBuildingTransferStructure7" character varying,
    "deedtaxBuildingTransferArea1" character varying,
    "deedtaxBuildingTransferArea2" character varying,
    "deedtaxBuildingTransferArea3" character varying,
    "deedtaxBuildingTransferArea4" character varying,
    "deedtaxBuildingTransferArea5" character varying,
    "deedtaxBuildingTransferArea6" character varying,
    "deedtaxBuildingTransferArea7" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber1" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber2" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber3" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber4" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber5" character varying,
    "deedtaxBuildingTransferPublicArea1" character varying,
    "deedtaxBuildingTransferPublicArea2" character varying,
    "deedtaxBuildingTransferPublicArea3" character varying,
    "deedtaxBuildingTransferPublicArea4" character varying,
    "deedtaxBuildingTransferPublicArea5" character varying,
    "deedtaxBuildingTransferPublicHoldings1" character varying,
    "deedtaxBuildingTransferPublicHoldings2" character varying,
    "deedtaxBuildingTransferPublicHoldings3" character varying,
    "deedtaxBuildingTransferPublicHoldings4" character varying,
    "deedtaxBuildingTransferPublicHoldings5" character varying,
    "housingTax" character varying,
    "refereeFee" character varying,
    "agreementSplitUnsuccessfulDate" character varying,
    exhibit1 character varying,
    exhibit2 character varying,
    exhibit3 character varying,
    exhibit4 character varying,
    "tabulationDate" date,
    "isMobileOrDesktop" character varying,
    "realestateregistrationRealEstateAgent" character varying,
    "complaintLitigationAgent" character varying,
    "debtorName" character varying,
    "debtorIdentitycard" character varying,
    "debtorBirthday" date,
    "debtorLocallphone" character varying,
    "debtorMobilelphone" character varying,
    "debtorNotes" character varying,
    "debtorCountry" character varying,
    "debtorTownship" character varying,
    "debtorVillage" character varying,
    "debtorNeighbor" character varying,
    "debtorStreet" character varying,
    "debtorSection" character varying,
    "debtorLane" character varying,
    "debtorAlley" character varying,
    "debtorNumber" character varying,
    "debtorFloor" character varying,
    "debtorBuildholdingpointperson" character varying,
    "debtorBuildholdingpointall" character varying,
    "debtorLandholdingpointperson" character varying,
    "debtorLandholdingpointall" character varying,
    "creditorName" character varying,
    "creditorIdentitycard" character varying,
    "creditorBirthday" date,
    "creditorLocallphone" character varying,
    "creditorMobilelphone" character varying,
    "creditorNotes" character varying,
    "creditorCountry" character varying,
    "creditorTownship" character varying,
    "creditorVillage" character varying,
    "creditorNeighbor" character varying,
    "creditorStreet" character varying,
    "creditorSection" character varying,
    "creditorLane" character varying,
    "creditorAlley" character varying,
    "creditorNumber" character varying,
    "creditorFloor" character varying,
    "creditorBuildholdingpointperson" character varying,
    "creditorBuildholdingpointall" character varying,
    "creditorLandholdingpointperson" character varying,
    "creditorLandholdingpointall" character varying,
    "houseTaxNumberCountry1" character varying,
    "houseTaxNumberCountry2" character varying,
    "houseTaxNumberTownship1" character varying,
    "houseTaxNumberTownship2" character varying,
    "houseTaxNumberBuilding1" character varying,
    "houseTaxNumberBuilding2" character varying,
    "houseTaxNumberBuilding3" character varying,
    "houseTaxNumberBuilding4" character varying,
    "houseTaxNumberHouseHold1" character varying,
    "houseTaxNumberHouseHold2" character varying,
    "houseTaxNumberHouseHold3" character varying,
    "newspaperAttached" character varying,
    now_or_before boolean
);


ALTER TABLE public.yfcases OWNER TO ubuntu;

--
-- Name: yfcases_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.yfcases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_id_seq OWNER TO ubuntu;

--
-- Name: yfcases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.yfcases_id_seq OWNED BY public.yfcases.id;


--
-- Name: builds id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.builds ALTER COLUMN id SET DEFAULT nextval('public.builds_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: lands id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lands ALTER COLUMN id SET DEFAULT nextval('public.lands_id_seq'::regclass);


--
-- Name: objectbuilds id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.objectbuilds ALTER COLUMN id SET DEFAULT nextval('public.objectbuilds_id_seq'::regclass);


--
-- Name: personnals id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.personnals ALTER COLUMN id SET DEFAULT nextval('public.personnals_id_seq'::regclass);


--
-- Name: plusrateas id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusrateas ALTER COLUMN id SET DEFAULT nextval('public.plusrateas_id_seq'::regclass);


--
-- Name: plusratebs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusratebs ALTER COLUMN id SET DEFAULT nextval('public.plusratebs_id_seq'::regclass);


--
-- Name: subsigntrueas id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntrueas ALTER COLUMN id SET DEFAULT nextval('public.subsigntrueas_id_seq'::regclass);


--
-- Name: subsigntruebs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruebs ALTER COLUMN id SET DEFAULT nextval('public.subsigntruebs_id_seq'::regclass);


--
-- Name: subsigntruecs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruecs ALTER COLUMN id SET DEFAULT nextval('public.subsigntruecs_id_seq'::regclass);


--
-- Name: townships id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.townships ALTER COLUMN id SET DEFAULT nextval('public.townships_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: yfcases id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.yfcases ALTER COLUMN id SET DEFAULT nextval('public.yfcases_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: builds; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.builds (id, build_number, build_url, build_area, build_holding_point_personal, build_holding_point_all, build_type_use, use_partition, yfcase_id, created_at, updated_at, "buildCity", "buildTownship", "buildArea", "buildStreet", "buildRoad", "buildSegment", "buildLane", "buildDo", "buildNumber", "buildFloor", "buildBigSegment", "buildSmallSegment", "buildLot", "buildLevel1", "buildLevel2", "buildLevel3", "buildLevel4", "buildOther1", "buildOther2", "buildUse", "buildScopeOfArea", "buildScopeOfRights", "buildRemarks", "buildTotalArea", "buildLandNumber", "mainBuildLevel1", "mainBuildLevel2", "mainBuildLevel3", "mainBuildLevel4", "mainBuildLevel5", "mainBuildConstruction1", "mainBuildConstruction2", "mainBuildConstruction3", "mainBuildConstruction4", "mainBuildConstruction5", "mainBuildArea1", "mainBuildArea2", "mainBuildArea3", "mainBuildArea4", "mainBuildArea5", "publicBuildNumber1", "publicBuildNumber2", "publicBuildNumber3", "publicBuildNumber4", "publicBuildArea1", "publicBuildArea2", "publicBuildArea3", "publicBuildArea4", "publicBuildHP1", "publicBuildHP2", "publicBuildHP3", "publicBuildHP4", "subBuildUse1", "subBuildUse2", "subBuildUse3", "subBuildArea1", "subBuildArea2", "subBuildArea3") FROM stdin;
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.countries (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: lands; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.lands (id, land_number, land_url, land_area, land_holding_point_personal, land_holding_point_all, yfcase_id, created_at, updated_at, "landRemarks", "landPresentValue", "landTotalArea", "landAreaWidth", "landAreaDepth") FROM stdin;
\.


--
-- Data for Name: objectbuilds; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.objectbuilds (id, address, total_price, build_area, house_age, floor_height, objectbuild_url, surveyora, surveyorb, plusa, plusb, yfcase_id, created_at, updated_at, objectbuild_status, plusa_reason, plusb_reason, "objectBuildDealYear", "objectBuildDealMonth") FROM stdin;
\.


--
-- Data for Name: personnals; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.personnals (id, is_debtor, is_creditor, is_land_owner, is_build_owner, name, identity_card, birthday, local_phone, mobile_phone, personnal_notes, person_country, person_township, person_village, person_neighbor, person_street, person_section, person_lane, person_alley, person_number, person_floor, is_original_owner, is_new_owner, is_deed_tax_agent, is_tax_agent, identity_code, public_or_private, right_share_person, right_share_all, yfcase_id, created_at, updated_at, "personnalBuildHoldingPointPerson", "personnalBuildHoldingPointAll", "ownerFullAddress") FROM stdin;
\.


--
-- Data for Name: plusrateas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.plusrateas (id, persona, plusa, objectbuild_id, created_at, updated_at, plusa_reason, plusa2, plusa_reason2) FROM stdin;
\.


--
-- Data for Name: plusratebs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.plusratebs (id, personb, plusb, objectbuild_id, created_at, updated_at, plusb_reason) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.schema_migrations (version) FROM stdin;
\.


--
-- Data for Name: subsigntrueas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntrueas (id, signtruea, signtruea_first_name, signtruea_last_name, signtruea_date, yfcase_id, created_at, updated_at, signtruea_work_area) FROM stdin;
\.


--
-- Data for Name: subsigntruebs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruebs (id, signtrueb, signtrueb_first_name, signtrueb_last_name, signtrueb_date, yfcase_id, created_at, updated_at, signtrueb_work_area) FROM stdin;
\.


--
-- Data for Name: subsigntruecs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruecs (id, signtruec, signtruec_first_name, signtruec_last_name, signtruec_date, yfcase_id, created_at, updated_at, signtruec_work_area) FROM stdin;
\.


--
-- Data for Name: townships; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.townships (id, name, zip_code, district_court, land_office, finance_and_tax_bureau, police_station, irs, home_office, country_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.users (id, first_name, last_name, role, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, full_name, "userIdentityCard", "userBirthday", "userLocalPhone", "userMobilePhone", "userCountry", "userTownship", "userVillage", "userNeighbor", "userStreet", "userSection", "userLane", "userAlley", "userNumber", "userFloor", "userPublicOrPrivate", "userFullName", "userWorkArea") FROM stdin;
\.


--
-- Data for Name: yfcases; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.yfcases (id, case_number, other_address, auction_day_1, auction_day_2, auction_day_3, auction_day_4, floor_price_1, floor_price_2, floor_price_3, floor_price_4, click_1, click_2, click_3, click_4, monitor_1, monitor_2, monitor_3, monitor_4, margin_1, margin_2, margin_3, margin_4, auction_notes, first_survey_day, other_survey_day, foreclosure_announcement_title, foreclosure_announcement_link, object_photo_title, object_photo_link, net_price_registration_market_price_title, net_price_registration_market_price_link, net_price_registration_map_title, net_price_registration_map_link, net_price_registration_photo_title, net_price_registration_photo_link, auction_record_title, auction_record_link, other_notes, survey_resolution, final_decision, co_owner, occupy, register, parking_space, management_fee, rent, leak, easy_parking, railway, vegetable_market, supermarket, school, park, post_office, main_road, water_and_power_failure, good_vision, final_decision_date, country_id, township_id, user_id, created_at, updated_at, big_section, small_section, company, foreclosure_announcement_988_link, adv_find_condition, active_result, active_result_date, priority_purchase_result, target_number, cause_data, application_for_registration, reason_for_registration, marking_and_application_rights, "attached_Document_Content_1", number_of_attached_quantity_1, "attached_Document_Content_2", number_of_attached_quantity_2, "attached_Document_Content_3", number_of_attached_quantity_3, registration_notes, "deedtaxDateOfDeed", "deedtaxDeclarationDate", "deedtaxTransferPrice", "deedtaxChargeDaffairesTaxDeclarant", "deedtaxDebtTaxPaymentReceiptMethod", "deedtaxClosedNewsletter", "deedtaxUnderreportedDays", "deedtaxRemark", "deedtaxBuildingTransferLevel1", "deedtaxBuildingTransferLevel2", "deedtaxBuildingTransferLevel3", "deedtaxBuildingTransferLevel4", "deedtaxBuildingTransferLevel5", "deedtaxBuildingTransferLevel6", "deedtaxBuildingTransferLevel7", "deedtaxBuildingTransferStructure1", "deedtaxBuildingTransferStructure2", "deedtaxBuildingTransferStructure3", "deedtaxBuildingTransferStructure4", "deedtaxBuildingTransferStructure5", "deedtaxBuildingTransferStructure6", "deedtaxBuildingTransferStructure7", "deedtaxBuildingTransferArea1", "deedtaxBuildingTransferArea2", "deedtaxBuildingTransferArea3", "deedtaxBuildingTransferArea4", "deedtaxBuildingTransferArea5", "deedtaxBuildingTransferArea6", "deedtaxBuildingTransferArea7", "deedtaxBuildingTransferPublicBuildingNumber1", "deedtaxBuildingTransferPublicBuildingNumber2", "deedtaxBuildingTransferPublicBuildingNumber3", "deedtaxBuildingTransferPublicBuildingNumber4", "deedtaxBuildingTransferPublicBuildingNumber5", "deedtaxBuildingTransferPublicArea1", "deedtaxBuildingTransferPublicArea2", "deedtaxBuildingTransferPublicArea3", "deedtaxBuildingTransferPublicArea4", "deedtaxBuildingTransferPublicArea5", "deedtaxBuildingTransferPublicHoldings1", "deedtaxBuildingTransferPublicHoldings2", "deedtaxBuildingTransferPublicHoldings3", "deedtaxBuildingTransferPublicHoldings4", "deedtaxBuildingTransferPublicHoldings5", "housingTax", "refereeFee", "agreementSplitUnsuccessfulDate", exhibit1, exhibit2, exhibit3, exhibit4, "tabulationDate", "isMobileOrDesktop", "realestateregistrationRealEstateAgent", "complaintLitigationAgent", "debtorName", "debtorIdentitycard", "debtorBirthday", "debtorLocallphone", "debtorMobilelphone", "debtorNotes", "debtorCountry", "debtorTownship", "debtorVillage", "debtorNeighbor", "debtorStreet", "debtorSection", "debtorLane", "debtorAlley", "debtorNumber", "debtorFloor", "debtorBuildholdingpointperson", "debtorBuildholdingpointall", "debtorLandholdingpointperson", "debtorLandholdingpointall", "creditorName", "creditorIdentitycard", "creditorBirthday", "creditorLocallphone", "creditorMobilelphone", "creditorNotes", "creditorCountry", "creditorTownship", "creditorVillage", "creditorNeighbor", "creditorStreet", "creditorSection", "creditorLane", "creditorAlley", "creditorNumber", "creditorFloor", "creditorBuildholdingpointperson", "creditorBuildholdingpointall", "creditorLandholdingpointperson", "creditorLandholdingpointall", "houseTaxNumberCountry1", "houseTaxNumberCountry2", "houseTaxNumberTownship1", "houseTaxNumberTownship2", "houseTaxNumberBuilding1", "houseTaxNumberBuilding2", "houseTaxNumberBuilding3", "houseTaxNumberBuilding4", "houseTaxNumberHouseHold1", "houseTaxNumberHouseHold2", "houseTaxNumberHouseHold3", "newspaperAttached", now_or_before) FROM stdin;
\.


--
-- Name: builds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.builds_id_seq', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- Name: lands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.lands_id_seq', 1, false);


--
-- Name: objectbuilds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.objectbuilds_id_seq', 1, false);


--
-- Name: personnals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.personnals_id_seq', 1, false);


--
-- Name: plusrateas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.plusrateas_id_seq', 1, false);


--
-- Name: plusratebs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.plusratebs_id_seq', 1, false);


--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntrueas_id_seq', 1, false);


--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntruebs_id_seq', 1, false);


--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntruecs_id_seq', 1, false);


--
-- Name: townships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.townships_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: yfcases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.yfcases_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

