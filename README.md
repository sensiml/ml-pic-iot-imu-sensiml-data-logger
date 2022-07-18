![https://www.microchip.com/](assets/microchip.png)
# PIC24FJ128GA705 PIC-IoT WG development board
## Repository Overview
This repository contains firmware for streaming up to 6-axes IMU data over UART from the PIC24FJ128GA705 PIC-IoT WG development board with Mikroe IMU2 Click board, streaming using one of several formats as described in the sections below.

This project is a port of the [SAMD21 ML Eval Kit data logger](https://github.com/MicrochipTech/ml-samd21-iot-imu-data-logger) maintained on github; please see that repository for more detail and instructions. Below are a summary of the functional differences between the 2 projects:


## Hardware Used
* PIC-IOT WG DEVELOPMENT BOARD ([DM330030](https://www.microchip.com/en-us/development-tool/AC164164))
* IMU 2 click board (https://www.mikroe.com/6dof-imu-2-click)

## Software Used
* MPLAB® X IDE (https://microchip.com/mplab/mplab-x-ide)
* MPLAB® XC16 compiler (https://microchip.com/mplab/compilers)
* MPLAB® Code Configurator (https://www.microchip.com/mcc)

## Related Documentation
* PIC24FJ128GA705 [Product Family Page](https://www.microchip.com/en-us/product/PIC24FJ128GA705)


# Firmware Operation
The data streamer firmware will output sensor data over the UART port with the following UART settings:

* Baudrate 115200
* Data bits 8
* Stop bits 1
* Parity None

# Firmware Configuration

## Sensor Selection
| Sensor Type | MPLAB X Project Configuration Selection |
| --- | --- |
| Bosch BMI160 IMU | `DSPIC33CK_CURIOSITY_BMI160` |
| TDK ICM42688 IMU | `DSPIC33CK_CURIOSITY_ICM42688` |

## Streaming Format Selection
To select the data streaming format, set the `DATA_STREAMER_FORMAT` macro in `app_config.h` to the appropriate value as explained in the table below.

| Streaming Format | app_config.h Configuration Value |
| --- | --- |
| ASCII text | `#define DATA_STREAMER_FORMAT DATA_STREAMER_FORMAT_ASCII` |
| [MPLAB Data Visualizer](https://www.microchip.com/en-us/development-tools-tools-and-software/embedded-software-center/mplab-data-visualizer) stream | `#define DATA_STREAMER_FORMAT DATA_STREAMER_FORMAT_MDV` |
| [SensiML Simple Stream](https://sensiml.com/documentation/simple-streaming-specification/introduction.html) | `#define DATA_STREAMER_FORMAT DATA_STREAMER_FORMAT_SMLSS` |

## Sensor Configuration Parameters
High level sensor parameters like sample rate and axes selection can be configured by modifying the macro values defined in `firmware/src/app_config.h`. See the inline comments for further description.
