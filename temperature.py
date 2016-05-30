import psutil
from subprocess import PIPE, Popen
import time

def get_cpu_temperature():
    process = Popen(['vcgencmd', 'measure_temp'], stdout=PIPE)
    output, _error = process.communicate()
    return float(output[output.index('=') + 1:output.rindex("'")])

while 1:
    print("Temp: " + str(get_cpu_temperature()))
