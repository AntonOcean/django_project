from time import sleep

from django import http


def slow_handler(request):
    sleep(60)
    return http.HttpResponse(status=200, content="Wake UP payload")


def cpu_handler(request):
    s = 0
    for i in range(900000):
        s += i ** 2

    return http.HttpResponse(status=200, content=f"Highload payload={s}")


def ping_handler(request):
    return http.HttpResponse(status=200, content=f"Ping hello")