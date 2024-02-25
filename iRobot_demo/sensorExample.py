#!/usr/bin/env python3
#-*-coding:utf-8-*-
##############################################
# The MIT License (MIT)
# Copyright (c) 2017 Kevin Walchko
# see LICENSE for full details
##############################################

from pycreate2 import Create2
import time
import matplotlib.pyplot as plt
import matplotlib.animation as animation

if __name__ == "__main__":
    port = '/dev/ttyUSB0'
    baud = {
        'default': 115200,
        'alt': 19200  # shouldn't need this unless you accidentally set it to this
    }

    bot = Create2(port=port, baud=baud['default'])

    bot.start()

    bot.safe()

    print('Starting ...')

    cnt = 0

    sensorLeft = []
    sensorFrontLeft = []
    sensorCenterLeft = []
    sensorCenterRight = []
    sensorFrontRight = []
    sensorRight = []
    MAX_FRAMES = 100
    while True:#!/usr/bin/env python3
#-*-coding:utf-8-*-
##############################################
# The MIT License (MIT)
# Copyright (c) 2017 Kevin Walchko
# see LICENSE for full details
        # Packet 100 contains all sensor data.
        sensor = bot.get_sensors()
        
        sensorLeft.append(sensor.light_bumper_left)
        sensorCenterLeft.append(sensor.light_bumper_center_left)
        sensorCenterRight.append(sensor.light_bumper_center_right)
        sensorRight.append(sensor.light_bumper_right)
        sensorFrontLeft.append(sensor.light_bumper_front_left)
        sensorFrontRight.append(sensor.light_bumper_front_right)

        if len(sensorLeft) > 100:
            sensorLeft.pop(0)
            sensorRight.pop(0)
            sensorCenterLeft.pop(0)
            sensorCenterRight.pop(0)
            sensorFrontLeft.pop(0)
            sensorFrontRight.pop(0)

        if cnt%20 == 0:
            print("[L ] [LF] [LC] [CR] [RF] [ R]")

        print(f"{sensor.light_bumper_left:4} {sensor.light_bumper_front_left:4} {sensor.light_bumper_center_left:4} {sensor.light_bumper_center_right:4} {sensor.light_bumper_front_right:4} {sensor.light_bumper_right:4}")
        time.sleep(.01)

        cnt += 1
        # Packet 100 contains all sensor data.
        sensor = bot.get_sensors()

        if cnt%20 == 0:
            print("[L ] [LF] [LC] [CR] [RF] [ R]")

        print(f"{sensor.light_bumper_left:4} {sensor.light_bumper_front_left:4} {sensor.light_bumper_center_left:4} {sensor.light_bumper_center_right:4} {sensor.light_bumper_front_right:4} {sensor.light_bumper_right:4}")
        time.sleep(.01)

        cnt += 1

        
        def animate(i):
            plt.cla()  # Limpiar el eje actual
            plt.plot(sensorLeft, label='left light')
            plt.plot(sensorFrontLeft, label='front left light')
            plt.plot(sensorCenterLeft, label='center left light')
            plt.plot(sensorCenterRight, label='center right light')
            plt.plot(sensorFrontRight, label='front right light')
            plt.plot(sensorRight, label='right light')

            plt.legend(loc='upper left')
            plt.tight_layout()


        #ani = animation.FuncAnimation(plt.gcf(), animate, interval=1000)  # Actualizar cada 1000 ms (1s)
         
        ani = animation.FuncAnimation(plt.gcf(), animate, interval=1000, save_count=MAX_FRAMES)

        plt.show()