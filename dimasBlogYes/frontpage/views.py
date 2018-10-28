#from django.shortcuts import render
from .forms import ContactForm
from django.core.mail import EmailMessage
from django.shortcuts import render, redirect
from django.template.loader import get_template

# Create your views here.
def frontpage(request):
    return render(request,'frontpage/frontpage.html')

def contact(request):
    form_class = ContactForm

    # new logic!
    if request.method == 'POST':
        form = form_class(data=request.POST)

        if form.is_valid():
            contact_name = request.POST.get(
                'contact_name'
                , '')
            contact_email = request.POST.get(
                'contact_email'
                , '')
            form_content = request.POST.get('content', '')

            # Email the profile with the
            # contact information
            template = get_template('frontpage/contact_template.txt')
        context = {
            'contact_name': contact_name,
            'contact_email': contact_email,
            'form_content': form_content,
                }
        content = template.render(context)

        email = EmailMessage(
            "New contact form submission",
            content,
            "Notafra.id" + '',
            ['dimasmukhlas@gmail.com'],
            headers={'Reply-To': contact_email}
        )
        email.send()
        return redirect('contact')

    return render(request, 'frontpage/contact.html', {
    'form': form_class,
    })

