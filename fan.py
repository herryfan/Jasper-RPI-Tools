#!/usr/bin/env python
from __future__ import division
from subprocess import PIPE, Popen
import psutil
import RPi.GPIO as GPIO

FAN = 18

print(GPIO.VERSION)

GPIO.setmode(GPIO.BCM)
GPIO.setup(FAN, GPIO.OUT)
GPIO.output(FAN, False)


def get_cpu_temperature():
    process = Popen(['vcgencmd', 'measure_temp'], stdout=PIPE)
    output, _error = process.communicate()
    return float(output[output.index('=') + 1:output.rindex("'")])


while 1:
    cpu_temperature = get_cpu_temperature()
    print("Temp: " + str(cpu_temperature))
    if cpu_temperature > 40:
        GPIO.output(FAN, True)
        cpu_usage = psutil.cpu_percent()
        print("CPU: " + str(cpu_usage))
        ram = psutil.phymem_usage()
        ram_total = ram.total / 2**20       # MiB.
        print("RAM Total: " + str(ram_total))
        ram_used = ram.used / 2**20
        print("RAM Used: " + str(ram_used))
        ram_free = ram.free / 2**20
        print("RAM Free: " + str(ram_free))
        ram_percent_used = ram.percent
        print("RAM % Used: " + str(ram_percent_used))

    else:
        GPIO.output(FAN, False)

GPIO.cleanup()
