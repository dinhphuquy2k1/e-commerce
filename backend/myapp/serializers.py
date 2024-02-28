from rest_framework import serializers
from .models import Category, Image


class ImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Image
        fields = ['id', 'image_url']


class CategorySerializer(serializers.ModelSerializer):
    children = serializers.SerializerMethodField()

    class Meta:
        model = Category
        fields = ['id', 'name', 'children', 'images']

    @staticmethod
    def get_children(obj):
        children = Category.objects.filter(parent=obj)
        return CategorySerializer(children, many=True).data
