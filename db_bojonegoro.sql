PGDMP     -                    {            db_bojonegoro    15.2    15.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16417    db_bojonegoro    DATABASE     �   CREATE DATABASE db_bojonegoro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE db_bojonegoro;
                postgres    false            �            1259    16516 	   kecamatan    TABLE     Y  CREATE TABLE public.kecamatan (
    id integer NOT NULL,
    nama_kecamatan text NOT NULL,
    jumlah_desa integer NOT NULL,
    jumlah_kelurahan integer NOT NULL,
    description text NOT NULL,
    path text NOT NULL,
    luas_wilayah text NOT NULL,
    jumlah_penduduk text NOT NULL,
    alamat text NOT NULL,
    email text,
    telp text
);
    DROP TABLE public.kecamatan;
       public         heap    postgres    false            �            1259    16523    kecamatan_id_seq    SEQUENCE     �   ALTER TABLE public.kecamatan ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.kecamatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �          0    16516 	   kecamatan 
   TABLE DATA           �   COPY public.kecamatan (id, nama_kecamatan, jumlah_desa, jumlah_kelurahan, description, path, luas_wilayah, jumlah_penduduk, alamat, email, telp) FROM stdin;
    public          postgres    false    214   �	       �           0    0    kecamatan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kecamatan_id_seq', 28, true);
          public          postgres    false    215            f           2606    16522    kecamatan kecamatan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kecamatan
    ADD CONSTRAINT kecamatan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kecamatan DROP CONSTRAINT kecamatan_pkey;
       public            postgres    false    214            �   �  x��XMo�6=S���.�e�MjOq� ]gc��P`���[kK2d����)P�ӫ.$��{��7�d�!u�k]�o�&�E\��U�'�۸>��U�nw_��^��d��n2�ݒ׺�rm�^We^��+F�2VQ�SMe*�W�Q͙�\sAS���^�[��dy��VK$5RZp����
w�\�	WuY7X���M����e��x��~)ʮ����� w�^/K�:@D�Q��',�J>��5yU{�j�Za�I�L�tC�,<�0��[��<,�r���]/�k���I�yҜ�R�41��l�2���(�f�	�����|pY�u-� �8�]?�a& ��>�����Ș{�� � �#��Jbb�r{O7�!�of5���(���7|���Z&T��Uܦh���̎�ނ�m��k��l��L����P�����}]e��c�+��P��QB��tX`�����
��xB��i\G��1KLD��UY�� ꑈ3�#�R)m���_���&%;�Z.$O� -��QrUJ�EZ�Rs`�����;����C���6IT�n穲��*�O�LV�����xa�ź�ҵG�6�����ծ��=��`�TF\w�}/��z��2b��¨@���� Y&���� ��e,>�Q�h"�<���lJ�d�d'�٣�I��`.R���C~]�tY^�h�T�)����O��?���v�gs�?���5����=�ZT*b@e[���F���g�M����+�_�}�e���tR~g�q�&8ڑ�P+i*�S���4�����g*7& ��Yh�R�,N	���j-@	S�Ͳ.��/Ox�) ��|v/�䠰���凎 �k����Rل�h�t�Q��%ZYH�^]�>�gw���s�O")�P��7�Y�cm[7ǘV=�صU��~g<afHu���e��!б��V�*����h^a%�ce�\��iܪ��F�l��͟~x�*.�1u1��U
fH�>��y#�7��hJmR2v�s�[zD���x��!����Ƕ�k��k
ύ�$���� ]@��9o�E05XY=���Νp�g���`h{��� l�ba?b3t��#nt
#�V}}޸]�.�L!�����`b�K�7J����{��#��a	e���r�7�Oh�z폑>�=�K�T'�c'�z��~�����Dq�A0"�'h����;�nG�����Â�!T	g\t���@Y�r������y�����C��24J��>S�!�c��G*����C�\�����N ehwD{}��L)��[׻�-\^ɑZ�!�¯o�Qy���Ե��_�R==��U���E���m۰,Vo�	�c"k��L�-��2"�н��?
n셞�k�tꔀx�Lt�@�+<��w���f>=X����������yob�$I�����     