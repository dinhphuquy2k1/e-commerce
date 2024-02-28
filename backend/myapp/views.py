from rest_framework import generics
from .models import Category
from .serializers import CategorySerializer


# Create your views here.
class CategoryList(generics.ListAPIView):
    queryset = Category.objects.filter(parent=None)  # Lấy toàn bộ menu gốc
    serializer_class = CategorySerializer
