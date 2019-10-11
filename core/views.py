from time import sleep

from django import http


def slow_handler(request):
    payload = request.GET.get('payload')
    if payload:
        sleep(60)
    return http.HttpResponse(status=200, content=f"Wake UP payload={payload}")
