PGDMP  1    6                }            ProCup    17.2    17.2 j    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    ProCup    DATABASE     }   CREATE DATABASE "ProCup" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "ProCup";
                     postgres    false            �            1259    16520    alineaciones    TABLE     �   CREATE TABLE public.alineaciones (
    id integer NOT NULL,
    partido_id integer,
    equipo_id integer,
    jugador_id integer
);
     DROP TABLE public.alineaciones;
       public         heap r       postgres    false            �            1259    16519    alineaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alineaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.alineaciones_id_seq;
       public               postgres    false    232            �           0    0    alineaciones_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.alineaciones_id_seq OWNED BY public.alineaciones.id;
          public               postgres    false    231            �            1259    16413    campeonatos_multiples    TABLE     c  CREATE TABLE public.campeonatos_multiples (
    id integer NOT NULL,
    torneo_id integer,
    categoria character varying(50) NOT NULL,
    genero character varying(50) NOT NULL,
    min_equipos integer NOT NULL,
    max_equipos integer NOT NULL,
    precio_inscripcion numeric(10,2) NOT NULL,
    descripcion text,
    premios text,
    reglas text
);
 )   DROP TABLE public.campeonatos_multiples;
       public         heap r       postgres    false            �            1259    16412    campeonatos_multiples_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campeonatos_multiples_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.campeonatos_multiples_id_seq;
       public               postgres    false    222            �           0    0    campeonatos_multiples_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.campeonatos_multiples_id_seq OWNED BY public.campeonatos_multiples.id;
          public               postgres    false    221            �            1259    16399    campeonatos_unicos    TABLE     `  CREATE TABLE public.campeonatos_unicos (
    id integer NOT NULL,
    torneo_id integer,
    categoria character varying(50) NOT NULL,
    genero character varying(50) NOT NULL,
    min_equipos integer NOT NULL,
    max_equipos integer NOT NULL,
    precio_inscripcion numeric(10,2) NOT NULL,
    descripcion text,
    premios text,
    reglas text
);
 &   DROP TABLE public.campeonatos_unicos;
       public         heap r       postgres    false            �            1259    16398    campeonatos_unicos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campeonatos_unicos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.campeonatos_unicos_id_seq;
       public               postgres    false    220            �           0    0    campeonatos_unicos_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.campeonatos_unicos_id_seq OWNED BY public.campeonatos_unicos.id;
          public               postgres    false    219            �            1259    16437    categorias_equipo    TABLE     b  CREATE TABLE public.categorias_equipo (
    id integer NOT NULL,
    equipo_id integer,
    nombre_identificador character varying(100),
    categoria character varying(50) NOT NULL,
    genero character varying(20) NOT NULL,
    nombre_entrenador character varying(100),
    creado_en timestamp without time zone DEFAULT now(),
    torneo_id integer
);
 %   DROP TABLE public.categorias_equipo;
       public         heap r       postgres    false            �            1259    16436    categorias_equipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_equipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.categorias_equipo_id_seq;
       public               postgres    false    226            �           0    0    categorias_equipo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.categorias_equipo_id_seq OWNED BY public.categorias_equipo.id;
          public               postgres    false    225            �            1259    16427    equipos    TABLE     �  CREATE TABLE public.equipos (
    id integer NOT NULL,
    nombre_club character varying(100) NOT NULL,
    imagen_club text,
    correo_electronico character varying(100),
    slogan character varying(200),
    nombre_presidente character varying(100),
    direccion text,
    ubicacion text,
    telefono character varying(20),
    creado_en timestamp without time zone DEFAULT now()
);
    DROP TABLE public.equipos;
       public         heap r       postgres    false            �            1259    16426    equipos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.equipos_id_seq;
       public               postgres    false    224            �           0    0    equipos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.equipos_id_seq OWNED BY public.equipos.id;
          public               postgres    false    223            �            1259    16559    estadisticas_jugador    TABLE       CREATE TABLE public.estadisticas_jugador (
    id integer NOT NULL,
    partido_id integer,
    jugador_id integer,
    goles integer DEFAULT 0,
    asistencias integer DEFAULT 0,
    tarjetas_amarillas integer DEFAULT 0,
    tarjetas_rojas integer DEFAULT 0
);
 (   DROP TABLE public.estadisticas_jugador;
       public         heap r       postgres    false            �            1259    16558    estadisticas_jugador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estadisticas_jugador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.estadisticas_jugador_id_seq;
       public               postgres    false    236            �           0    0    estadisticas_jugador_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.estadisticas_jugador_id_seq OWNED BY public.estadisticas_jugador.id;
          public               postgres    false    235            �            1259    16596    historial_pagos    TABLE     �  CREATE TABLE public.historial_pagos (
    id integer NOT NULL,
    usuario_id integer,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    cedula character varying(20) NOT NULL,
    tipo_pago character varying(30) NOT NULL,
    torneo_id integer,
    vigencia_privilegio interval,
    metodo_pago character varying(50) NOT NULL,
    fecha_pago timestamp without time zone DEFAULT now() NOT NULL,
    valor_pagado numeric(10,2) NOT NULL,
    observaciones text
);
 #   DROP TABLE public.historial_pagos;
       public         heap r       postgres    false            �            1259    16595    historial_pagos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.historial_pagos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.historial_pagos_id_seq;
       public               postgres    false    240            �           0    0    historial_pagos_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.historial_pagos_id_seq OWNED BY public.historial_pagos.id;
          public               postgres    false    239            �            1259    16480 	   jugadores    TABLE     �  CREATE TABLE public.jugadores (
    id integer NOT NULL,
    categoria_equipo_id integer,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    genero character varying(20) NOT NULL,
    fecha_nacimiento date NOT NULL,
    edad integer,
    posicion character varying(50),
    cedula_imagen text,
    foto text,
    creado_en timestamp without time zone DEFAULT now()
);
    DROP TABLE public.jugadores;
       public         heap r       postgres    false            �            1259    16479    jugadores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jugadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.jugadores_id_seq;
       public               postgres    false    228            �           0    0    jugadores_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.jugadores_id_seq OWNED BY public.jugadores.id;
          public               postgres    false    227            �            1259    16495    partidos    TABLE     C  CREATE TABLE public.partidos (
    id integer NOT NULL,
    torneo_id integer,
    equipo1_id integer,
    equipo2_id integer,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    ubicacion text,
    imagen_equipo1 text,
    imagen_equipo2 text,
    creado_en timestamp without time zone DEFAULT now()
);
    DROP TABLE public.partidos;
       public         heap r       postgres    false            �            1259    16494    partidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.partidos_id_seq;
       public               postgres    false    230            �           0    0    partidos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.partidos_id_seq OWNED BY public.partidos.id;
          public               postgres    false    229            �            1259    16542 
   resultados    TABLE     �   CREATE TABLE public.resultados (
    id integer NOT NULL,
    partido_id integer,
    goles_equipo1 integer DEFAULT 0 NOT NULL,
    goles_equipo2 integer DEFAULT 0 NOT NULL,
    observaciones text,
    finalizado boolean DEFAULT false
);
    DROP TABLE public.resultados;
       public         heap r       postgres    false            �            1259    16541    resultados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resultados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.resultados_id_seq;
       public               postgres    false    234            �           0    0    resultados_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.resultados_id_seq OWNED BY public.resultados.id;
          public               postgres    false    233            �            1259    16389    torneos    TABLE     �  CREATE TABLE public.torneos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    ciudad character varying(100) NOT NULL,
    direccion character varying(200) NOT NULL,
    lugar character varying(100) NOT NULL,
    ubicacion text,
    es_multiple boolean NOT NULL,
    creado_en timestamp without time zone DEFAULT now()
);
    DROP TABLE public.torneos;
       public         heap r       postgres    false            �            1259    16388    torneos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.torneos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.torneos_id_seq;
       public               postgres    false    218            �           0    0    torneos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.torneos_id_seq OWNED BY public.torneos.id;
          public               postgres    false    217            �            1259    16580    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    cedula character varying(20) NOT NULL,
    correo character varying(100) NOT NULL,
    telefono character varying(20),
    contrasena text NOT NULL,
    rol character varying(20) DEFAULT 'usuario'::character varying,
    creado_en timestamp without time zone DEFAULT now()
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    16579    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public               postgres    false    238            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public               postgres    false    237            �           2604    16523    alineaciones id    DEFAULT     r   ALTER TABLE ONLY public.alineaciones ALTER COLUMN id SET DEFAULT nextval('public.alineaciones_id_seq'::regclass);
 >   ALTER TABLE public.alineaciones ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    16416    campeonatos_multiples id    DEFAULT     �   ALTER TABLE ONLY public.campeonatos_multiples ALTER COLUMN id SET DEFAULT nextval('public.campeonatos_multiples_id_seq'::regclass);
 G   ALTER TABLE public.campeonatos_multiples ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    16402    campeonatos_unicos id    DEFAULT     ~   ALTER TABLE ONLY public.campeonatos_unicos ALTER COLUMN id SET DEFAULT nextval('public.campeonatos_unicos_id_seq'::regclass);
 D   ALTER TABLE public.campeonatos_unicos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16440    categorias_equipo id    DEFAULT     |   ALTER TABLE ONLY public.categorias_equipo ALTER COLUMN id SET DEFAULT nextval('public.categorias_equipo_id_seq'::regclass);
 C   ALTER TABLE public.categorias_equipo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    16430 
   equipos id    DEFAULT     h   ALTER TABLE ONLY public.equipos ALTER COLUMN id SET DEFAULT nextval('public.equipos_id_seq'::regclass);
 9   ALTER TABLE public.equipos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    16562    estadisticas_jugador id    DEFAULT     �   ALTER TABLE ONLY public.estadisticas_jugador ALTER COLUMN id SET DEFAULT nextval('public.estadisticas_jugador_id_seq'::regclass);
 F   ALTER TABLE public.estadisticas_jugador ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    235    236            �           2604    16599    historial_pagos id    DEFAULT     x   ALTER TABLE ONLY public.historial_pagos ALTER COLUMN id SET DEFAULT nextval('public.historial_pagos_id_seq'::regclass);
 A   ALTER TABLE public.historial_pagos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239    240            �           2604    16483    jugadores id    DEFAULT     l   ALTER TABLE ONLY public.jugadores ALTER COLUMN id SET DEFAULT nextval('public.jugadores_id_seq'::regclass);
 ;   ALTER TABLE public.jugadores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16498    partidos id    DEFAULT     j   ALTER TABLE ONLY public.partidos ALTER COLUMN id SET DEFAULT nextval('public.partidos_id_seq'::regclass);
 :   ALTER TABLE public.partidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16545    resultados id    DEFAULT     n   ALTER TABLE ONLY public.resultados ALTER COLUMN id SET DEFAULT nextval('public.resultados_id_seq'::regclass);
 <   ALTER TABLE public.resultados ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    16392 
   torneos id    DEFAULT     h   ALTER TABLE ONLY public.torneos ALTER COLUMN id SET DEFAULT nextval('public.torneos_id_seq'::regclass);
 9   ALTER TABLE public.torneos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16583    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    238    238            �          0    16520    alineaciones 
   TABLE DATA           M   COPY public.alineaciones (id, partido_id, equipo_id, jugador_id) FROM stdin;
    public               postgres    false    232   ٍ       �          0    16413    campeonatos_multiples 
   TABLE DATA           �   COPY public.campeonatos_multiples (id, torneo_id, categoria, genero, min_equipos, max_equipos, precio_inscripcion, descripcion, premios, reglas) FROM stdin;
    public               postgres    false    222   ��       �          0    16399    campeonatos_unicos 
   TABLE DATA           �   COPY public.campeonatos_unicos (id, torneo_id, categoria, genero, min_equipos, max_equipos, precio_inscripcion, descripcion, premios, reglas) FROM stdin;
    public               postgres    false    220   �       �          0    16437    categorias_equipo 
   TABLE DATA           �   COPY public.categorias_equipo (id, equipo_id, nombre_identificador, categoria, genero, nombre_entrenador, creado_en, torneo_id) FROM stdin;
    public               postgres    false    226   0�       �          0    16427    equipos 
   TABLE DATA           �   COPY public.equipos (id, nombre_club, imagen_club, correo_electronico, slogan, nombre_presidente, direccion, ubicacion, telefono, creado_en) FROM stdin;
    public               postgres    false    224   M�       �          0    16559    estadisticas_jugador 
   TABLE DATA           �   COPY public.estadisticas_jugador (id, partido_id, jugador_id, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) FROM stdin;
    public               postgres    false    236   j�       �          0    16596    historial_pagos 
   TABLE DATA           �   COPY public.historial_pagos (id, usuario_id, nombre, apellido, cedula, tipo_pago, torneo_id, vigencia_privilegio, metodo_pago, fecha_pago, valor_pagado, observaciones) FROM stdin;
    public               postgres    false    240   ��       �          0    16480 	   jugadores 
   TABLE DATA           �   COPY public.jugadores (id, categoria_equipo_id, nombre, apellido, genero, fecha_nacimiento, edad, posicion, cedula_imagen, foto, creado_en) FROM stdin;
    public               postgres    false    228   ��       �          0    16495    partidos 
   TABLE DATA           �   COPY public.partidos (id, torneo_id, equipo1_id, equipo2_id, fecha, hora, ubicacion, imagen_equipo1, imagen_equipo2, creado_en) FROM stdin;
    public               postgres    false    230   ��       �          0    16542 
   resultados 
   TABLE DATA           m   COPY public.resultados (id, partido_id, goles_equipo1, goles_equipo2, observaciones, finalizado) FROM stdin;
    public               postgres    false    234   ގ       �          0    16389    torneos 
   TABLE DATA           �   COPY public.torneos (id, nombre, fecha_inicio, fecha_fin, ciudad, direccion, lugar, ubicacion, es_multiple, creado_en) FROM stdin;
    public               postgres    false    218   ��       �          0    16580    usuarios 
   TABLE DATA           n   COPY public.usuarios (id, nombre, apellido, cedula, correo, telefono, contrasena, rol, creado_en) FROM stdin;
    public               postgres    false    238   �       �           0    0    alineaciones_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.alineaciones_id_seq', 1, false);
          public               postgres    false    231            �           0    0    campeonatos_multiples_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.campeonatos_multiples_id_seq', 1, false);
          public               postgres    false    221            �           0    0    campeonatos_unicos_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.campeonatos_unicos_id_seq', 1, false);
          public               postgres    false    219            �           0    0    categorias_equipo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categorias_equipo_id_seq', 1, false);
          public               postgres    false    225            �           0    0    equipos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.equipos_id_seq', 1, false);
          public               postgres    false    223            �           0    0    estadisticas_jugador_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.estadisticas_jugador_id_seq', 1, false);
          public               postgres    false    235            �           0    0    historial_pagos_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.historial_pagos_id_seq', 1, false);
          public               postgres    false    239            �           0    0    jugadores_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.jugadores_id_seq', 1, false);
          public               postgres    false    227            �           0    0    partidos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.partidos_id_seq', 1, false);
          public               postgres    false    229            �           0    0    resultados_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.resultados_id_seq', 1, false);
          public               postgres    false    233            �           0    0    torneos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.torneos_id_seq', 1, false);
          public               postgres    false    217            �           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
          public               postgres    false    237            �           2606    16525    alineaciones alineaciones_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.alineaciones
    ADD CONSTRAINT alineaciones_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.alineaciones DROP CONSTRAINT alineaciones_pkey;
       public                 postgres    false    232            �           2606    16420 0   campeonatos_multiples campeonatos_multiples_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.campeonatos_multiples
    ADD CONSTRAINT campeonatos_multiples_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.campeonatos_multiples DROP CONSTRAINT campeonatos_multiples_pkey;
       public                 postgres    false    222            �           2606    16406 *   campeonatos_unicos campeonatos_unicos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.campeonatos_unicos
    ADD CONSTRAINT campeonatos_unicos_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.campeonatos_unicos DROP CONSTRAINT campeonatos_unicos_pkey;
       public                 postgres    false    220            �           2606    16443 (   categorias_equipo categorias_equipo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.categorias_equipo
    ADD CONSTRAINT categorias_equipo_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.categorias_equipo DROP CONSTRAINT categorias_equipo_pkey;
       public                 postgres    false    226            �           2606    16435    equipos equipos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.equipos DROP CONSTRAINT equipos_pkey;
       public                 postgres    false    224            �           2606    16568 .   estadisticas_jugador estadisticas_jugador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT estadisticas_jugador_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT estadisticas_jugador_pkey;
       public                 postgres    false    236            �           2606    16604 $   historial_pagos historial_pagos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.historial_pagos
    ADD CONSTRAINT historial_pagos_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.historial_pagos DROP CONSTRAINT historial_pagos_pkey;
       public                 postgres    false    240            �           2606    16488    jugadores jugadores_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_pkey;
       public                 postgres    false    228            �           2606    16503    partidos partidos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.partidos DROP CONSTRAINT partidos_pkey;
       public                 postgres    false    230            �           2606    16552    resultados resultados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public                 postgres    false    234            �           2606    16397    torneos torneos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.torneos
    ADD CONSTRAINT torneos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.torneos DROP CONSTRAINT torneos_pkey;
       public                 postgres    false    218            �           2606    16591    usuarios usuarios_cedula_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_cedula_key UNIQUE (cedula);
 F   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_cedula_key;
       public                 postgres    false    238            �           2606    16593    usuarios usuarios_correo_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);
 F   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_correo_key;
       public                 postgres    false    238            �           2606    16589    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    238            �           2606    16531 (   alineaciones alineaciones_equipo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alineaciones
    ADD CONSTRAINT alineaciones_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.categorias_equipo(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.alineaciones DROP CONSTRAINT alineaciones_equipo_id_fkey;
       public               postgres    false    226    4833    232            �           2606    16536 )   alineaciones alineaciones_jugador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alineaciones
    ADD CONSTRAINT alineaciones_jugador_id_fkey FOREIGN KEY (jugador_id) REFERENCES public.jugadores(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.alineaciones DROP CONSTRAINT alineaciones_jugador_id_fkey;
       public               postgres    false    228    4835    232            �           2606    16526 )   alineaciones alineaciones_partido_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alineaciones
    ADD CONSTRAINT alineaciones_partido_id_fkey FOREIGN KEY (partido_id) REFERENCES public.partidos(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.alineaciones DROP CONSTRAINT alineaciones_partido_id_fkey;
       public               postgres    false    4837    230    232            �           2606    16421 :   campeonatos_multiples campeonatos_multiples_torneo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campeonatos_multiples
    ADD CONSTRAINT campeonatos_multiples_torneo_id_fkey FOREIGN KEY (torneo_id) REFERENCES public.torneos(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.campeonatos_multiples DROP CONSTRAINT campeonatos_multiples_torneo_id_fkey;
       public               postgres    false    222    218    4825            �           2606    16407 4   campeonatos_unicos campeonatos_unicos_torneo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campeonatos_unicos
    ADD CONSTRAINT campeonatos_unicos_torneo_id_fkey FOREIGN KEY (torneo_id) REFERENCES public.torneos(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.campeonatos_unicos DROP CONSTRAINT campeonatos_unicos_torneo_id_fkey;
       public               postgres    false    218    4825    220            �           2606    16444 2   categorias_equipo categorias_equipo_equipo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorias_equipo
    ADD CONSTRAINT categorias_equipo_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.equipos(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.categorias_equipo DROP CONSTRAINT categorias_equipo_equipo_id_fkey;
       public               postgres    false    224    226    4831            �           2606    16615 2   categorias_equipo categorias_equipo_torneo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorias_equipo
    ADD CONSTRAINT categorias_equipo_torneo_id_fkey FOREIGN KEY (torneo_id) REFERENCES public.torneos(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.categorias_equipo DROP CONSTRAINT categorias_equipo_torneo_id_fkey;
       public               postgres    false    4825    218    226                        2606    16574 9   estadisticas_jugador estadisticas_jugador_jugador_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT estadisticas_jugador_jugador_id_fkey FOREIGN KEY (jugador_id) REFERENCES public.jugadores(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT estadisticas_jugador_jugador_id_fkey;
       public               postgres    false    4835    236    228                       2606    16569 9   estadisticas_jugador estadisticas_jugador_partido_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas_jugador
    ADD CONSTRAINT estadisticas_jugador_partido_id_fkey FOREIGN KEY (partido_id) REFERENCES public.partidos(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.estadisticas_jugador DROP CONSTRAINT estadisticas_jugador_partido_id_fkey;
       public               postgres    false    236    4837    230                       2606    16610 .   historial_pagos historial_pagos_torneo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historial_pagos
    ADD CONSTRAINT historial_pagos_torneo_id_fkey FOREIGN KEY (torneo_id) REFERENCES public.torneos(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.historial_pagos DROP CONSTRAINT historial_pagos_torneo_id_fkey;
       public               postgres    false    218    240    4825                       2606    16605 /   historial_pagos historial_pagos_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historial_pagos
    ADD CONSTRAINT historial_pagos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.historial_pagos DROP CONSTRAINT historial_pagos_usuario_id_fkey;
       public               postgres    false    4849    238    240            �           2606    16489 ,   jugadores jugadores_categoria_equipo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_categoria_equipo_id_fkey FOREIGN KEY (categoria_equipo_id) REFERENCES public.categorias_equipo(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_categoria_equipo_id_fkey;
       public               postgres    false    226    4833    228            �           2606    16509 !   partidos partidos_equipo1_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_equipo1_id_fkey FOREIGN KEY (equipo1_id) REFERENCES public.categorias_equipo(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.partidos DROP CONSTRAINT partidos_equipo1_id_fkey;
       public               postgres    false    230    4833    226            �           2606    16514 !   partidos partidos_equipo2_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_equipo2_id_fkey FOREIGN KEY (equipo2_id) REFERENCES public.categorias_equipo(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.partidos DROP CONSTRAINT partidos_equipo2_id_fkey;
       public               postgres    false    226    230    4833            �           2606    16504     partidos partidos_torneo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_torneo_id_fkey FOREIGN KEY (torneo_id) REFERENCES public.torneos(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.partidos DROP CONSTRAINT partidos_torneo_id_fkey;
       public               postgres    false    230    4825    218            �           2606    16553 %   resultados resultados_partido_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_partido_id_fkey FOREIGN KEY (partido_id) REFERENCES public.partidos(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_partido_id_fkey;
       public               postgres    false    234    230    4837            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     