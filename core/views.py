from time import sleep

from django import http


def slow_handler(request):
    sleep(1)
    return http.HttpResponse(status=200, content="Wake UP")
