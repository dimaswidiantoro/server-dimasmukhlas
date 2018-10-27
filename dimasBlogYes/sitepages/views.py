from django.shortcuts import render,get_object_or_404


def about(request):
    return render(request,'sitepages/about.html')

def frontpage(request):
    return render(request,'sitepages/frontpage.html')
# Create your views here.
