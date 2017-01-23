# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Alamat(models.Model):
    id_alamat = models.AutoField(db_column='ID_ALAMAT', primary_key=True)  # Field name made lowercase.
    id_pelanggan = models.ForeignKey('Pelanggan', models.DO_NOTHING, db_column='ID_PELANGGAN')  # Field name made lowercase.
    latitude = models.FloatField(db_column='LATITUDE', blank=True, null=True)  # Field name made lowercase.
    longitude = models.FloatField(db_column='LONGITUDE', blank=True, null=True)  # Field name made lowercase.
    jalan = models.CharField(db_column='JALAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    rt = models.IntegerField(db_column='RT', blank=True, null=True)  # Field name made lowercase.
    rw = models.IntegerField(db_column='RW', blank=True, null=True)  # Field name made lowercase.
    no_rumah = models.IntegerField(db_column='NO_RUMAH', blank=True, null=True)  # Field name made lowercase.
    kecamatan = models.CharField(db_column='KECAMATAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    desa_kelurahan = models.CharField(db_column='DESA_KELURAHAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    provinsi = models.CharField(db_column='PROVINSI', max_length=20, blank=True, null=True)  # Field name made lowercase.
    kota_kabupaten = models.CharField(db_column='KOTA_KABUPATEN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    kode_pos = models.CharField(db_column='KODE_POS', max_length=6, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'alamat'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group_id', 'permission_id'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type_id = models.IntegerField()
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type_id', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user_id = models.IntegerField()
    group_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user_id', 'group_id'),)


class AuthUserUserPermissions(models.Model):
    user_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user_id', 'permission_id'),)


class Berita(models.Model):
    id_berita = models.AutoField(db_column='ID_BERITA', primary_key=True)  # Field name made lowercase.
    deskripsi = models.TextField(db_column='DESKRIPSI', blank=True, null=True)  # Field name made lowercase.
    gambar = models.TextField(db_column='GAMBAR', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'berita'


class Cart(models.Model):
    id_cart = models.AutoField(db_column='ID_CART', primary_key=True)  # Field name made lowercase.
    id_pelanggan = models.ForeignKey('Pelanggan', models.DO_NOTHING, db_column='ID_PELANGGAN')  # Field name made lowercase.
    id_alamat = models.ForeignKey(Alamat, models.DO_NOTHING, db_column='ID_ALAMAT')  # Field name made lowercase.
    tanggal = models.DateTimeField(db_column='TANGGAL', blank=True, null=True)  # Field name made lowercase.
    status_telah_dipesan = models.SmallIntegerField(db_column='STATUS_TELAH_DIPESAN', blank=True, null=True)  # Field name made lowercase.
    status_verifikasi = models.SmallIntegerField(db_column='STATUS_VERIFIKASI', blank=True, null=True)  # Field name made lowercase.
    status_pembayaran = models.SmallIntegerField(db_column='STATUS_PEMBAYARAN', blank=True, null=True)  # Field name made lowercase.
    status_pengiriman = models.SmallIntegerField(db_column='STATUS_PENGIRIMAN', blank=True, null=True)  # Field name made lowercase.
    total_keseluruhan = models.FloatField(db_column='TOTAL_KESELURUHAN', blank=True, null=True)  # Field name made lowercase.
    pajak = models.FloatField(db_column='PAJAK', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cart'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type_id = models.IntegerField(blank=True, null=True)
    user_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Kandungan(models.Model):
    id_kandungan = models.AutoField(db_column='ID_KANDUNGAN', primary_key=True)  # Field name made lowercase.
    nama_kandungan = models.CharField(db_column='NAMA_KANDUNGAN', max_length=10, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'kandungan'


class Kategori(models.Model):
    id_kategori = models.AutoField(db_column='ID_KATEGORI', primary_key=True)  # Field name made lowercase.
    nama_kategori = models.CharField(db_column='NAMA_KATEGORI', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'kategori'


class Komentar(models.Model):
    id_komentar = models.AutoField(db_column='ID_KOMENTAR', primary_key=True)  # Field name made lowercase.
    email = models.CharField(db_column='EMAIL', max_length=20, blank=True, null=True)  # Field name made lowercase.
    deskripsi_komentar = models.CharField(db_column='DESKRIPSI_KOMENTAR', max_length=200, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'komentar'


class Menu(models.Model):
    id_menu = models.AutoField(db_column='ID_MENU', primary_key=True)  # Field name made lowercase.
    id_kategori = models.ForeignKey(Kategori, models.DO_NOTHING, db_column='ID_KATEGORI')  # Field name made lowercase.
    nama_menu = models.CharField(db_column='NAMA_MENU', max_length=20, blank=True, null=True)  # Field name made lowercase.
    deskripsi_menu = models.CharField(db_column='DESKRIPSI_MENU', max_length=200, blank=True, null=True)  # Field name made lowercase.
    stok_menu = models.IntegerField(db_column='STOK_MENU', blank=True, null=True)  # Field name made lowercase.
    gambar_menu = models.TextField(db_column='GAMBAR_MENU', blank=True, null=True)  # Field name made lowercase.
    harga_menu = models.FloatField(db_column='HARGA_MENU', blank=True, null=True)  # Field name made lowercase.
    discount = models.FloatField(db_column='DISCOUNT', blank=True, null=True)  # Field name made lowercase.
    kalori = models.FloatField(db_column='KALORI', blank=True, null=True)  # Field name made lowercase.
    protein = models.FloatField(db_column='PROTEIN', blank=True, null=True)  # Field name made lowercase.
    natrium = models.FloatField(db_column='NATRIUM', blank=True, null=True)  # Field name made lowercase.
    lemak = models.FloatField(db_column='LEMAK', blank=True, null=True)  # Field name made lowercase.
    karbohidrat = models.FloatField(db_column='KARBOHIDRAT', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'menu'


class Menuhaskandungan(models.Model):
    id_kandungan = models.ForeignKey(Kandungan, models.DO_NOTHING, db_column='ID_KANDUNGAN', primary_key=True)  # Field name made lowercase.
    id_menu = models.ForeignKey(Menu, models.DO_NOTHING, db_column='ID_MENU')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'menuhaskandungan'
        unique_together = (('id_kandungan', 'id_menu'), ('id_kandungan', 'id_menu'),)


class Outlet(models.Model):
    id_outlet = models.AutoField(db_column='ID_OUTLET', primary_key=True)  # Field name made lowercase.
    waktu_buka = models.TimeField(db_column='WAKTU_BUKA', blank=True, null=True)  # Field name made lowercase.
    waktu_tutup = models.TimeField(db_column='WAKTU_TUTUP', blank=True, null=True)  # Field name made lowercase.
    latitude_outlet = models.FloatField(db_column='LATITUDE_OUTLET', blank=True, null=True)  # Field name made lowercase.
    longitude_outlet = models.FloatField(db_column='LONGITUDE_OUTLET', blank=True, null=True)  # Field name made lowercase.
    jalan = models.CharField(db_column='JALAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    rt = models.IntegerField(db_column='RT', blank=True, null=True)  # Field name made lowercase.
    rw = models.IntegerField(db_column='RW', blank=True, null=True)  # Field name made lowercase.
    no_rumah = models.IntegerField(db_column='NO_RUMAH', blank=True, null=True)  # Field name made lowercase.
    kecamatan = models.CharField(db_column='KECAMATAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    desa_kelurahan = models.CharField(db_column='DESA_KELURAHAN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    provinsi = models.CharField(db_column='PROVINSI', max_length=20, blank=True, null=True)  # Field name made lowercase.
    kota_kabupaten = models.CharField(db_column='KOTA_KABUPATEN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    kode_pos = models.CharField(db_column='KODE_POS', max_length=6, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'outlet'


class Outlethassevis(models.Model):
    id_servis = models.AutoField(db_column='ID_SERVIS', primary_key=True)  # Field name made lowercase.
    id_outlet = models.ForeignKey(Outlet, models.DO_NOTHING, db_column='ID_OUTLET')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'outlethassevis'
        unique_together = (('id_servis', 'id_outlet'), ('id_servis', 'id_outlet'),)


class Pelanggan(models.Model):
    id_pelanggan = models.AutoField(db_column='ID_PELANGGAN', primary_key=True)  # Field name made lowercase.
    user_name = models.CharField(db_column='USER_NAME', max_length=10, blank=True, null=True)  # Field name made lowercase.
    password = models.CharField(db_column='PASSWORD', max_length=6, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='EMAIL', max_length=20, blank=True, null=True)  # Field name made lowercase.
    nomor_hp = models.CharField(db_column='NOMOR_HP', max_length=12, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pelanggan'


class Pesanan(models.Model):
    id_pesanan = models.AutoField(primary_key=True)
    id_menu = models.ForeignKey(Menu, models.DO_NOTHING, db_column='ID_MENU', blank=True, null=True)  # Field name made lowercase.
    id_cart = models.ForeignKey(Cart, models.DO_NOTHING, db_column='ID_CART', blank=True, null=True)  # Field name made lowercase.
    jumlah_pesanan = models.FloatField(db_column='JUMLAH_PESANAN', blank=True, null=True)  # Field name made lowercase.
    total_harga = models.FloatField(db_column='TOTAL_HARGA', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pesanan'
        unique_together = (('id_menu', 'id_cart'),)


class Rating(models.Model):
    id_menu = models.ForeignKey(Menu, models.DO_NOTHING, db_column='ID_MENU', primary_key=True)  # Field name made lowercase.
    id_pelanggan = models.ForeignKey(Pelanggan, models.DO_NOTHING, db_column='ID_PELANGGAN')  # Field name made lowercase.
    nilai = models.IntegerField(db_column='NILAI', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'rating'
        unique_together = (('id_menu', 'id_pelanggan'), ('id_menu', 'id_pelanggan'),)


class Servis(models.Model):
    id_servis = models.AutoField(db_column='ID_SERVIS', primary_key=True)  # Field name made lowercase.
    nama_servis = models.CharField(db_column='NAMA_SERVIS', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'servis'
