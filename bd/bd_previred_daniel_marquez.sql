PGDMP                         {            previred-crud    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16422    previred-crud    DATABASE     �   CREATE DATABASE "previred-crud" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "previred-crud";
                postgres    false            	           0    0    DATABASE "previred-crud"    COMMENT     X   COMMENT ON DATABASE "previred-crud" IS 'database created to perform the previred test';
                   postgres    false    3336            �            1259    17172 	   companies    TABLE     �   CREATE TABLE public.companies (
    record_insertion_date date,
    id bigint NOT NULL,
    business_name character varying(255),
    rut character varying(255)
);
    DROP TABLE public.companies;
       public         heap    postgres    false            �            1259    17170    companies_seq    SEQUENCE     w   CREATE SEQUENCE public.companies_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.companies_seq;
       public          postgres    false            �            1259    17181 	   employees    TABLE     	  CREATE TABLE public.employees (
    id bigint NOT NULL,
    id_company bigint,
    address character varying(255),
    last_name character varying(255),
    name character varying(255),
    rut character varying(255),
    second_last_name character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    17171    employees_seq    SEQUENCE     w   CREATE SEQUENCE public.employees_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.employees_seq;
       public          postgres    false                      0    17172 	   companies 
   TABLE DATA           R   COPY public.companies (record_insertion_date, id, business_name, rut) FROM stdin;
    public          postgres    false    216   �                 0    17181 	   employees 
   TABLE DATA           d   COPY public.employees (id, id_company, address, last_name, name, rut, second_last_name) FROM stdin;
    public          postgres    false    217   8       
           0    0    companies_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.companies_seq', 1, true);
          public          postgres    false    214                       0    0    employees_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.employees_seq', 1, true);
          public          postgres    false    215            k           2606    17178    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    216            m           2606    17180    companies companies_rut_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_rut_key UNIQUE (rut);
 E   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_rut_key;
       public            postgres    false    216            o           2606    17187    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    217            p           2606    17188    employees fk_companies    FK CONSTRAINT     |   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_companies FOREIGN KEY (id_company) REFERENCES public.companies(id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_companies;
       public          postgres    false    217    216    3179               .   x�3202�50�50�B#=K3]SSS]΂�Բ̢��=... �N�         C   x�3�4��,�ML�Q0722��M,*,M��tI��L��42�305�3�0ӵ����IL/J������ ���     