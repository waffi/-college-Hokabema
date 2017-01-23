from django.conf.urls import url, include
from rest_framework import routers
from ghtelectroniccenter import views

router = routers.DefaultRouter()
#router.register(r'Menu', views.MenuViewSet)
#router.register(r'MenuDetail', views.MenuDetailViewSet)
router.register(r'Berita', views.BeritaViewSet)
router.register(r'GetMenu', views.GetMenu)
router.register(r'Pesanan', views.PesananViewSet)

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
# url(r'^login/(?P<user_name>.+)/$', views.LoginViewSet.as_view()),	
urlpatterns = [
	url(r'^', include(router.urls)),
	url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
	url(r'^menu/(?P<pk>[0-9]+)/$', views.MenuViewSet),	
	url(r'^login/$', views.LoginViewSet.as_view()),		
	url(r'^pelanggan/$', views.PelangganViewSet.as_view()),		
	url(r'^logout/$', views.LogoutViewSet.as_view()),		
	url(r'^carimenu/$', views.CariMenuViewSet.as_view()),		
	url(r'^kategori/$', views.GetKategoriViewSet.as_view()),		
	url(r'^postcart/$', views.PostCartViewSet.as_view()),		
	url(r'^getpesanan/$', views.GetPesananViewSet.as_view()),		
	url(r'^cartpelanggan/$', views.GetCartViewSet.as_view()),		
	url(r'^statuslogin/$', views.GetStatusLogin.as_view()),		
	
]
