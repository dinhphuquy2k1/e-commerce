from django.db import models


# Create your models here.
class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField("date published")


class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)


# Loại sản phẩm
class Category(models.Model):
    name = models.CharField(max_length=255)
    parent = models.ForeignKey('self', related_name='children', on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return self.name


# Ảnh
class Image(models.Model):
    category = models.ForeignKey(Category, related_name='images', on_delete=models.CASCADE)
    url = models.CharField(max_length=255)


# Thuộc tính sản phẩm
class Attribute(models.Model):
    name = models.CharField(max_length=255)  # tên thuộc tính
    type = models.IntegerField(default=0)  # loại thuộc tính (radio, checkbox, ...)


class AttributeValue(models.Model):
    attribute = models.ForeignKey(Attribute, related_name='attribute_values', on_delete=models.CASCADE)
    value = models.CharField(max_length=255)
