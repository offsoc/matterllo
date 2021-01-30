from django.views.generic import TemplateView
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse


class TokenView(TemplateView):
    template_name = "core/token.html"
