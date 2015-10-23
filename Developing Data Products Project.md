Developing Data Products Project
========================================================
author: A. ELSAGHER
date: Fri Oct 23 14:19:28 2015


========================================================
Objective

This presentation is being created as part of the peer assessment for the Coursera developing data products class. The project required the development of an R Shiny App, publishing the App to shinyapps.io. The assignment is geared toward ensuring the following concepts were well understood by the students

use of various widgets of 'shiny' tool

understanding of the process of publishing application in shiny

interface with R using embedded R code


========================================================

Project Detail

A simple application has been built and published that allows the user to:

Planning and forecasting calculator for call centers.

The application provides a simple and reliable method to determine how many agents are needed to support a call load and what is the agent occupancy expected. 



========================================================

User Interface

The application takes following three inputs from the user:


> Hourly calls expected.

> Average Call Duration - The average call length in seconds.

> Average Wrap Up Time - This is the time, in seconds, during which an agent is not available to answer a call after completing the last call. It is usually used to complete administrative tasks.


========================================================


click on  [Application](https://cybersager.shinyapps.io/CCalc)  to try it. click on [server.R](https://github.com/Cybersager/Developing-Data-Products-/blob/master/server.R) and [ui.R](https://github.com/Cybersager/Developing-Data-Products-/blob/master/ui.R) to access the source code.
