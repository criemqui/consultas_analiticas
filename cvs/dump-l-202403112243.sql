PGDMP      +                |            l    16.1    16.1 :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17530    l    DATABASE     t   CREATE DATABASE l WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE l;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17532 
   categorias    TABLE     Z   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.categorias;
       public         heap    postgres    false    4            �            1259    17531    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    4    216            �           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    215            �            1259    17564    clientes    TABLE     n   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre character varying,
    telefono numeric
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4            �            1259    17563    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          postgres    false    4    222            �           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          postgres    false    221            �            1259    17606    items    TABLE     �   CREATE TABLE public.items (
    id integer NOT NULL,
    ordenes_id integer,
    productos_id integer,
    cantidad integer,
    monto_venta integer
);
    DROP TABLE public.items;
       public         heap    postgres    false    4            �            1259    17573    ordenes    TABLE     �   CREATE TABLE public.ordenes (
    id integer NOT NULL,
    cliente_id integer,
    sucursal_id integer,
    fecha date,
    total integer
);
    DROP TABLE public.ordenes;
       public         heap    postgres    false    4            �            1259    17572    ordenes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ordenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ordenes_id_seq;
       public          postgres    false    4    224            �           0    0    ordenes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ordenes_id_seq OWNED BY public.ordenes.id;
          public          postgres    false    223            �            1259    17541 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying,
    marca character varying,
    categorias_id integer,
    precio numeric
);
    DROP TABLE public.productos;
       public         heap    postgres    false    4            �            1259    17540    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    218    4            �           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    217            �            1259    17590    stocks    TABLE     �   CREATE TABLE public.stocks (
    id integer NOT NULL,
    sucursal_id integer,
    producto_id integer,
    cantidad integer
);
    DROP TABLE public.stocks;
       public         heap    postgres    false    4            �            1259    17589    stocks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.stocks_id_seq;
       public          postgres    false    226    4            �           0    0    stocks_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.stocks_id_seq OWNED BY public.stocks.id;
          public          postgres    false    225            �            1259    17555 
   sucursales    TABLE     {   CREATE TABLE public.sucursales (
    id integer NOT NULL,
    nombre character varying,
    direccion character varying
);
    DROP TABLE public.sucursales;
       public         heap    postgres    false    4            �            1259    17554    sucursales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sucursales_id_seq;
       public          postgres    false    220    4            �           0    0    sucursales_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sucursales_id_seq OWNED BY public.sucursales.id;
          public          postgres    false    219            7           2604    17535    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            :           2604    17567    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ;           2604    17576 
   ordenes id    DEFAULT     h   ALTER TABLE ONLY public.ordenes ALTER COLUMN id SET DEFAULT nextval('public.ordenes_id_seq'::regclass);
 9   ALTER TABLE public.ordenes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            8           2604    17544    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            <           2604    17593 	   stocks id    DEFAULT     f   ALTER TABLE ONLY public.stocks ALTER COLUMN id SET DEFAULT nextval('public.stocks_id_seq'::regclass);
 8   ALTER TABLE public.stocks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            9           2604    17558    sucursales id    DEFAULT     n   ALTER TABLE ONLY public.sucursales ALTER COLUMN id SET DEFAULT nextval('public.sucursales_id_seq'::regclass);
 <   ALTER TABLE public.sucursales ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �          0    17532 
   categorias 
   TABLE DATA           0   COPY public.categorias (id, nombre) FROM stdin;
    public          postgres    false    216   �>       �          0    17564    clientes 
   TABLE DATA           8   COPY public.clientes (id, nombre, telefono) FROM stdin;
    public          postgres    false    222   �>       �          0    17606    items 
   TABLE DATA           T   COPY public.items (id, ordenes_id, productos_id, cantidad, monto_venta) FROM stdin;
    public          postgres    false    227   J?       �          0    17573    ordenes 
   TABLE DATA           L   COPY public.ordenes (id, cliente_id, sucursal_id, fecha, total) FROM stdin;
    public          postgres    false    224   X@       �          0    17541 	   productos 
   TABLE DATA           M   COPY public.productos (id, nombre, marca, categorias_id, precio) FROM stdin;
    public          postgres    false    218   �@       �          0    17590    stocks 
   TABLE DATA           H   COPY public.stocks (id, sucursal_id, producto_id, cantidad) FROM stdin;
    public          postgres    false    226   �A       �          0    17555 
   sucursales 
   TABLE DATA           ;   COPY public.sucursales (id, nombre, direccion) FROM stdin;
    public          postgres    false    220   [B       �           0    0    categorias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categorias_id_seq', 5, true);
          public          postgres    false    215            �           0    0    clientes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clientes_id_seq', 3, true);
          public          postgres    false    221            �           0    0    ordenes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ordenes_id_seq', 15, true);
          public          postgres    false    223            �           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 10, true);
          public          postgres    false    217            �           0    0    stocks_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.stocks_id_seq', 30, true);
          public          postgres    false    225                        0    0    sucursales_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sucursales_id_seq', 3, true);
          public          postgres    false    219            >           2606    17539    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    216            D           2606    17571    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    222            J           2606    17610    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    227            F           2606    17578    ordenes ordenes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_pkey;
       public            postgres    false    224            @           2606    17548    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    218            H           2606    17595    stocks stocks_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.stocks DROP CONSTRAINT stocks_pkey;
       public            postgres    false    226            B           2606    17562    sucursales sucursales_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sucursales DROP CONSTRAINT sucursales_pkey;
       public            postgres    false    220            P           2606    17611    items items_ordenes_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_ordenes_id_fkey FOREIGN KEY (ordenes_id) REFERENCES public.ordenes(id);
 E   ALTER TABLE ONLY public.items DROP CONSTRAINT items_ordenes_id_fkey;
       public          postgres    false    224    227    4678            Q           2606    17616    items items_productos_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_productos_id_fkey FOREIGN KEY (productos_id) REFERENCES public.productos(id);
 G   ALTER TABLE ONLY public.items DROP CONSTRAINT items_productos_id_fkey;
       public          postgres    false    227    4672    218            L           2606    17579    ordenes ordenes_cliente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);
 I   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_cliente_id_fkey;
       public          postgres    false    224    222    4676            M           2606    17584     ordenes ordenes_sucursal_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_sucursal_id_fkey FOREIGN KEY (sucursal_id) REFERENCES public.sucursales(id);
 J   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_sucursal_id_fkey;
       public          postgres    false    220    224    4674            K           2606    17549 &   productos productos_categorias_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_categorias_id_fkey FOREIGN KEY (categorias_id) REFERENCES public.categorias(id);
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_categorias_id_fkey;
       public          postgres    false    218    4670    216            N           2606    17601    stocks stocks_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.productos(id);
 H   ALTER TABLE ONLY public.stocks DROP CONSTRAINT stocks_producto_id_fkey;
       public          postgres    false    4672    218    226            O           2606    17596    stocks stocks_sucursal_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_sucursal_id_fkey FOREIGN KEY (sucursal_id) REFERENCES public.sucursales(id);
 H   ALTER TABLE ONLY public.stocks DROP CONSTRAINT stocks_sucursal_id_fkey;
       public          postgres    false    4674    220    226            �   @   x�3�t�IM.):�9/39��ˈ3(� �˘�#?=��˄�%� ��$��˔ӫ4�4Č���� 9+      �   =   x�3��*M��4426153��4�2��M,:�6���������Ȑ˘3 5�(���b���� �4      �   �   x�E��q1�(�@��8�8ܣ�;�=�1���cm�{��s�� ��tn z�sc��xCʊ75�;_)=���%�R��(�-	�# �$�Xә����Zx$��s]��r6bA�
��0���"t*�	V_bljbm�QL�}�H�[����&Xv�FC`�
���Mb���˖x�{�mlߑ����B�e�l��F3L�R��~��G�����g�/�U-��v"u�b������3�9���=g������1� tM�      �   u   x�e��!Cѳ�KOI��2��������p}d�bN/�#��7O�`g�Xٗ�$jN7kr��hys�:
�O���k5�ѹ��m��ΰ�t�6�jV��\f$דc�)�h'�? /��4�      �   �   x��1N1E�?��D��5	-4)Z%+EB4�����Dʑ(���C�����F=��v9�����:l�������H�[yU� E��3%5��w��"�?�Ē�c'�͟	��D�虮0e�Q��RN;�%F��	�Ûb���V>�jlb����u�����ς)OA��yrl�R2ֹ]�_Uc5�D�,�=�      �   �   x���0C��0U���.���
E<E���*�j�6� 0��י�Dk���4�p�*>�^������Vo��jZ�ZWtNKQ��V�BH��?;���Di���W�a����X�����Z�%��r�Ђ=��Q6�Ϟ��=t1�:�~?$ӯ'�      �   1   x�3�.M.-*N�Qp�tN��IU0�2B:A�����PAc�=... �H     