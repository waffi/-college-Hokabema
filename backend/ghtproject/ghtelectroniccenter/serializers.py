from rest_framework import serializers
from django.core.serializers.json import Serializer
from ghtelectroniccenter.models import TblMenu, TblMenuDetail, Berita, Menu,Menuhaskandungan, Kandungan, Pelanggan, Cart, Kategori, Pesanan


class MenuDetailSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = TblMenuDetail
		fields = '__all__'
		depth = 1
		
		
class MenuSerializer(serializers.ModelSerializer):
	#Menu_Detail = MenuDetailSerializer(many = True)
	#Menu_Detail = serializers.PrimaryKeyRelatedField(many=True,read_only=True)
	Menu_Detail = serializers.SlugRelatedField(many=True,read_only=True,slug_field='kandungan')
	class Meta:
		model = TblMenu		
		depth = 1
		fields = '__all__'
		
#baru 

class BeritaSerializer(serializers.ModelSerializer):
	class Meta:
		model = Berita
		fields = ('deskripsi','gambar')
	

	
#Menu
class GetKandungan(serializers.ModelSerializer):
	class Meta:
		model = Kandungan
		fields = '__all__'

class GetMenuhasKandunganSerializer(serializers.ModelSerializer):	
	#Konek Ke Kandungan
	kandungan = GetKandungan(source='id_kandungan')
	class Meta:
		model = Menuhaskandungan		
		fields = '__all__'		
		
class GetMenuSerializer(serializers.ModelSerializer):
	KandunganSerializer = GetMenuhasKandunganSerializer(many = True)				
	class Meta:
		model = Menu
		depth = 1
		fields = '__all__'				
		
#Login
class LoginSerializer(Serializer):
	class Meta:
		model = Pelanggan
		fields = 'user_name'
		
#PostOrder Serializer
class PostOrderSerializer(serializers.ModelSerializer):
	class Meta:
		model = Cart
		fields = '__all__'
		
#Kategori
class KategoriSerializer(serializers.ModelSerializer):
	class Meta:
		model = Kategori
		fields = '__all__'
		
		
#Pesanan
class PesananSerializer(serializers.ModelSerializer):
	class Meta:
		model = Pesanan
		fields = '__all__'
		
#Nyoba Pelanggan
class PelangganSerializer(serializers.ModelSerializer):
	class Meta:
		model = Pelanggan
		fields = ('user_name','password',)
		
class CariMenuSerializer(serializers.ModelSerializer):
	class Meta:
		model = Menu
		fields = ('nama_menu',)
		
#Order Cart
class OrderCartSerializer(serializers.ModelSerializer):		
	class Meta:
		model = Cart
		fields = '__all__'					
		
class CartSerializer(serializers.ModelSerializer):
	class Meta:
		model = Cart
		fields = '__all__'