# Plot Everywhere Tool BATCH FILE Edition
Plot Everywhere Tool: batch file plot launcher for Windows Chia CLI

Simple batch file to monitor current chia.exe instances in windows and launch new createplot.bat when less than your configured maximum.

If you plot on multiple Windows machines in your home/office connected on the same network as your main Chia node, this simple batch file combo will help you out. You can normally share a drive on your main chia node pc and map that drive to your extra plotter PC's around the house/office. Use that mapped drive as your destination.

Edit the plotmanager.bat file with the total number of parallel plots you want running on your remote plotter. Lookup the time in seconds it took to complete phase 1 in previous plots and use that number in the delay. 

# plotmanager.bat params: 

Plotmanager.bat will start the next create plot batch file after the delay time has passed and only if the maximum number of plots isn't already running on your Windows machine. This basically keeps everything timed so you only have 2 plots in phase 1 at a time. Also known as staggering.

set /a maxplots = 8  
set /a phase1timesecs = 4400   
set /a initialdelay = 100   

Note: 'initialdelay' is seconds to wait once you launch the plotmanager.bat file. You can tap a key to start a new plot immediately. Use this in case you close the plotmanager.bat window and want to update settings and relaunch. If you had 2300 seconds till the next plot launch when you closed the window, you can set that here so it will be in sync with previous launches.

# createplot.bat params:

plotmanager.bat will START createplot.bat so edit this to match your farmer/pool keys, number of threads, memory, and k size as you like. You'll want to update the chia version number on the second line unless you've already added that to your system environment path.

USER-NAME-HERE - replace this with your windows user name.
FARMER-KEY-HERE - replace this with your farmer key (on your main chia node, cmd window: chia keys show)
POOL-KEY-HERE - replace with your public pool key (on your main chia node, cmd window: chia keys show)

-n is set to 2 plots. On fast systems this allows the first plot launched to be active by the time your last plot launches. On very fast plotters the first plot will be complete before plotmanager.bat can launch your maximum number of plots! Setting each plot launch to 2 in queue will guarantee there is a chia.exe instance running long enough for your max plots to launch.

I have drive t:\ChiaTemp setup for temp/destination drive in this example. You change this to your temp drive and destination drive letter/path.

For help join chiachat.com FB group or follow me on twitter @kunani 
