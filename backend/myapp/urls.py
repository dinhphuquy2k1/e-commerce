from django.urls import path
from .views import CategoryList

urlpatterns = [
    path('api/categories/', CategoryList.as_view(), name='category-list'),
]
