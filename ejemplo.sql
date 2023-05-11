PGDMP     2                    {            Universidad    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24806    Universidad    DATABASE     �   CREATE DATABASE "Universidad" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Universidad";
                postgres    false            �            1259    24817    Clases    TABLE     �   CREATE TABLE public."Clases" (
    id_clase integer NOT NULL,
    titulo character varying,
    descripcion character varying
);
    DROP TABLE public."Clases";
       public         heap    postgres    false            �            1259    24816    Clases_id_clase_seq    SEQUENCE     �   CREATE SEQUENCE public."Clases_id_clase_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Clases_id_clase_seq";
       public          postgres    false    217                       0    0    Clases_id_clase_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Clases_id_clase_seq" OWNED BY public."Clases".id_clase;
          public          postgres    false    216            �            1259    24808    Estudiantes    TABLE     �   CREATE TABLE public."Estudiantes" (
    "Id_estudiante" integer NOT NULL,
    apellidos character varying,
    nombre character varying
);
 !   DROP TABLE public."Estudiantes";
       public         heap    postgres    false            �            1259    24807    Estudiantes_Id_estudiante_seq    SEQUENCE     �   CREATE SEQUENCE public."Estudiantes_Id_estudiante_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Estudiantes_Id_estudiante_seq";
       public          postgres    false    215                       0    0    Estudiantes_Id_estudiante_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Estudiantes_Id_estudiante_seq" OWNED BY public."Estudiantes"."Id_estudiante";
          public          postgres    false    214            �            1259    24835 
   matriculas    TABLE     �   CREATE TABLE public.matriculas (
    id_matricula integer NOT NULL,
    id_estudiante integer,
    id_clases integer,
    fecha date
);
    DROP TABLE public.matriculas;
       public         heap    postgres    false            �            1259    24834    matriculas_id_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.matriculas_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.matriculas_id_matricula_seq;
       public          postgres    false    219                       0    0    matriculas_id_matricula_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.matriculas_id_matricula_seq OWNED BY public.matriculas.id_matricula;
          public          postgres    false    218            p           2604    24820    Clases id_clase    DEFAULT     v   ALTER TABLE ONLY public."Clases" ALTER COLUMN id_clase SET DEFAULT nextval('public."Clases_id_clase_seq"'::regclass);
 @   ALTER TABLE public."Clases" ALTER COLUMN id_clase DROP DEFAULT;
       public          postgres    false    217    216    217            o           2604    24811    Estudiantes Id_estudiante    DEFAULT     �   ALTER TABLE ONLY public."Estudiantes" ALTER COLUMN "Id_estudiante" SET DEFAULT nextval('public."Estudiantes_Id_estudiante_seq"'::regclass);
 L   ALTER TABLE public."Estudiantes" ALTER COLUMN "Id_estudiante" DROP DEFAULT;
       public          postgres    false    214    215    215            q           2604    24838    matriculas id_matricula    DEFAULT     �   ALTER TABLE ONLY public.matriculas ALTER COLUMN id_matricula SET DEFAULT nextval('public.matriculas_id_matricula_seq'::regclass);
 F   ALTER TABLE public.matriculas ALTER COLUMN id_matricula DROP DEFAULT;
       public          postgres    false    219    218    219                      0    24817    Clases 
   TABLE DATA           A   COPY public."Clases" (id_clase, titulo, descripcion) FROM stdin;
    public          postgres    false    217   4       	          0    24808    Estudiantes 
   TABLE DATA           K   COPY public."Estudiantes" ("Id_estudiante", apellidos, nombre) FROM stdin;
    public          postgres    false    215   e                 0    24835 
   matriculas 
   TABLE DATA           S   COPY public.matriculas (id_matricula, id_estudiante, id_clases, fecha) FROM stdin;
    public          postgres    false    219   �                  0    0    Clases_id_clase_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Clases_id_clase_seq"', 1, true);
          public          postgres    false    216                       0    0    Estudiantes_Id_estudiante_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Estudiantes_Id_estudiante_seq"', 1, true);
          public          postgres    false    214                       0    0    matriculas_id_matricula_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.matriculas_id_matricula_seq', 1, true);
          public          postgres    false    218            u           2606    24824    Clases pk_id_clase 
   CONSTRAINT     X   ALTER TABLE ONLY public."Clases"
    ADD CONSTRAINT pk_id_clase PRIMARY KEY (id_clase);
 >   ALTER TABLE ONLY public."Clases" DROP CONSTRAINT pk_id_clase;
       public            postgres    false    217            s           2606    24815    Estudiantes pk_id_estudiante 
   CONSTRAINT     i   ALTER TABLE ONLY public."Estudiantes"
    ADD CONSTRAINT pk_id_estudiante PRIMARY KEY ("Id_estudiante");
 H   ALTER TABLE ONLY public."Estudiantes" DROP CONSTRAINT pk_id_estudiante;
       public            postgres    false    215            w           2606    24840    matriculas pk_id_matricula 
   CONSTRAINT     b   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT pk_id_matricula PRIMARY KEY (id_matricula);
 D   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT pk_id_matricula;
       public            postgres    false    219            x           2606    24846    matriculas fk_id_clase    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT fk_id_clase FOREIGN KEY (id_clases) REFERENCES public."Clases"(id_clase);
 @   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT fk_id_clase;
       public          postgres    false    3189    217    219            y           2606    24841    matriculas fk_id_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT fk_id_estudiante FOREIGN KEY (id_estudiante) REFERENCES public."Estudiantes"("Id_estudiante");
 E   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT fk_id_estudiante;
       public          postgres    false    215    3187    219               !   x�3�L�I,NU0�,(��M-JT �b���� ��g      	      x�3�LI��L��LO,J�L����� G�            x�3�4B##]]c�=... &YF     