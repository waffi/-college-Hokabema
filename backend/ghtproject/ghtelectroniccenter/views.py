import json
from django.shortcuts import render,get_object_or_404
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
#from snippets.models import Snippet
#from snippets.serializers import SnippetSerializer

from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import viewsets
from rest_framework import filters
from rest_framework.pagination import PageNumberPagination

from .models import TblMenu, TblMenuDetail, Berita, Menu, Kandungan, Menuhaskandungan, Pelanggan, Cart, Kategori, Pesanan
from .serializers import MenuSerializer, MenuDetailSerializer, BeritaSerializer, GetMenuSerializer,GetKandungan, LoginSerializer, PostOrderSerializer, KategoriSerializer, PesananSerializer, PelangganSerializer,CariMenuSerializer, OrderCartSerializer,CartSerializer
# Create your views here.
    
class MenuViewSet(viewsets.ModelViewSet):
	"""
	API endpoint that allows users to be viewed or edited
	Buat NgeFIlter Pake Filter_Fields
	"""
	#filter_backends = (filters.DjangoFilterBackend,)
	filter_backends = (filters.SearchFilter,)
	filter_fields = ('nama_menu','id_menu')
	serializer_class = MenuSerializer
	queryset = TblMenu.objects.all()
	
	
	

class MenuDetailViewSet(viewsets.ModelViewSet):
	queryset = TblMenuDetail.objects.all()
	serializer_class = MenuDetailSerializer
	
## Baru

##Pagination
class AllPagination(PageNumberPagination):
	page_size = 1000
	page_size_query_param = 'page_size'
	max_page_size = 1000

class StandardResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 1000	
	
##Get Menu
class BeritaViewSet(viewsets.ModelViewSet):
	queryset = Berita.objects.all()
	pagination_class = StandardResultsSetPagination
	serializer_class = BeritaSerializer
	
class GetMenu(viewsets.ModelViewSet):	
	filter_backends = (filters.DjangoFilterBackend,)	
	filter_fields = ('nama_menu','id_menu')
	pagination_class = AllPagination
	queryset = Menu.objects.all()
	serializer_class = GetMenuSerializer		
	
	
# Login
class LoginViewSet(APIView):
	def get(self, request, format=None):		
		queryset = Pelanggan.objects.all()
		
		username = self.request.query_params.get('user_name',None)
		field_pass = self.request.query_params.get('password',None)
		queryset = Pelanggan.objects.filter(user_name = username).filter(password = field_pass)
		#queryset = Pelanggan.objects.filter(password = field_pass) kalo OR
		#serializer_class = LoginSerializer()		
		#return Response({'received data': request.data}, status=status.HTTP_201_CREATED)
		c = queryset.count()
		if c > 0:
			request.session['has_login'] = True
			request.session['id_pelanggan'] = queryset[0].id_pelanggan
			return Response({'hasil' :queryset[0].id_pelanggan})
			##return HttpResponse(serializer_class.serialize(queryset))			
		else:
			return Response({"status":'username dan password salah'})
		#return Response({'username': username})
		
		
#Post Order
class PostOrderViewSet(viewsets.ModelViewSet):
	queryset = Cart.objects.all()
	serializer_class = PostOrderSerializer
	
	
#Kategori
class GetKategoriViewSet(APIView):
	def get(self, request, format=None):			
		queryset = Kategori.objects.all()
		serializer = KategoriSerializer(list(queryset), many = True)
		return Response(serializer.data, status=status.HTTP_201_CREATED)
	
	
#Pesanan
class PesananViewSet(viewsets.ModelViewSet):	
	filter_backends = (filters.DjangoFilterBackend,)	
	filter_fields = ('id_cart','id_menu')
	queryset = Pesanan.objects.all()
	serializer_class = PesananSerializer	
	
#Logout
class LogoutViewSet(APIView):
	def get(self, request, format=None):
		if request.session.get('has_login', False) == True:
			del request.session['has_login']
			return Response({"status":"Logout has been successfully"})
		else:
			return Response({"status":"Tidak Sedang Login"})
	
#Nyoba Pelanggan
class PelangganViewSet(APIView):
	def post(self, request, format=None):
		#request.POST.get("title","") ngambil post data		
		#if request.session.get('has_login', False) == True:
		serializer = PelangganSerializer(data=request.data)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)		
		else:
			return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
		#else:
		#return Response({"status":"Login terlebih dahulu"})
			
class CariMenuViewSet(APIView):
	def get(self, request, format=None):
		string = self.request.query_params.get('q',None)		
		queryset = Menu.objects.all()
		queryset = list(queryset.filter(nama_menu__icontains=string))
		serializer = CariMenuSerializer(queryset,many=True)
		return Response(serializer.data, status= status.HTTP_201_CREATED)
		
#Post cart
class PostCartViewSet(APIView):
	def post(self, request, format=None):						
		data_post = request.data
		#data_post['id_pelanggan'] = request.session.get('id_pelanggan',0)
		serializer = OrderCartSerializer(data=data_post)		
		if serializer.is_valid():				
			serializer.save()			
			return Response({"id_cart":serializer.data['id_cart']}, status=status.HTTP_201_CREATED)
		else:
			return Response({"status":serializer.errors}, status=status.HTTP_400_BAD_REQUEST)	
		#if serializer.is_valid():
				
#Pesanan ViewSet
class GetPesananViewSet(APIView):
	def get(self, request, format=None):		
		queryset = Pesanan.objects.all()
		pass_id_cart = self.request.query_params.get('id_cart',None)			
		queryset = Pesanan.objects.filter(id_cart = pass_id_cart)					
		serializer = PesananSerializer(list(queryset), many =True)
		return Response(serializer.data, status= status.HTTP_201_CREATED)
			
class GetCartViewSet(APIView):
	def get(self, request, format=None):
		fid_pelanggan = self.request.query_params.get('id_pelanggan',None)
		queryset = Cart.objects.all().filter(id_pelanggan = fid_pelanggan)
		serializer = CartSerializer(list(queryset), many =True)
		return Response(serializer.data, status= status.HTTP_201_CREATED)
		
			
class GetStatusLogin(APIView):
	def get(self, request, format=None):
		status = request.session.get('has_login', False)
		return Response({"status":status})