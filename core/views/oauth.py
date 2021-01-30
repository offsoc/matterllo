from django.views.generic import TemplateView
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.conf import settings


class OauthView(TemplateView):
    template_name = "core/oauth.html"

    def get_context_data(self, **kwargs):
        return_url = self.request.build_absolute_uri() + "access_token"
        context = super(OauthView, self).get_context_data(**kwargs)
        context["trello_apikey"] = settings.TRELLO_APIKEY
        context["return_url"] = return_url
        return context
