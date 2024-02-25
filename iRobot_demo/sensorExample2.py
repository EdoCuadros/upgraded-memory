#!/usr/bin/env python3
#-*-coding:utf-8-*-
##############################################
# The MIT License (MIT)
# Copyright (c) 2017 Kevin Walchko
# see LICENSE for full details
##############################################

from pycreate2 import Create2
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import time


def update_data(i):
    global sensor_data, cnt, ax
    sensor = bot.get_sensors()

    if cnt%20 == 0:
        print("[L ] [LF] [LC] [CR] [RF] [ R]")

    print(f"{sensor.light_bumper_left:4} {sensor.light_bumper_front_left:4} {sensor.light_bumper_center_left:4} {sensor.light_bumper_center_right:4} {sensor.light_bumper_front_right:4} {sensor.light_bumper_right:4}")
    
    ax.clear()
    for i in range(6):
        ax.plot(sensor_data[i])
    ax.set_xlabel('Time')
    ax.set_ylabel('Sensor Values')
    ax.set_title('Sensor Data')
    
    sensor_data[0].append(sensor.light_bumper_left)
    sensor_data[1].append(sensor.light_bumper_front_left)
    sensor_data[2].append(sensor.light_bumper_center_left)
    sensor_data[3].append(sensor.light_bumper_center_right)
    sensor_data[4].append(sensor.light_bumper_front_right)
    sensor_data[5].append(sensor.light_bumper_right)
    cnt += 1


if __name__ == "__main__":
    port = '/dev/tty.usbserial-DA01NX3Z'
    baud = {
        'default': 115200,
        'alt': 19200  # shouldn't need this unless you accidentally set it to this
    }

    bot = Create2(port=port, baud=baud['default'])

    bot.start()

    bot.safe()

    print('Starting ...')

    cnt = 0
    sensor_data = [[] for _ in range(6)]

    fig, ax = plt.subplots()
    ani = animation.FuncAnimation(fig, update_data, interval=100)
    plt.show()
