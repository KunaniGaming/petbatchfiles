# Plot Everywhere Tool BATCH FILE Edition
Batch file plot launcher for Chia CLI Windows 10.

Simple batch file to monitor current chia.exe instances on Windows, and launch new plots (createplot.bat) when less than your configured maximum.

If you plot on multiple Windows machines in your home/office connected on the same network as your main Chia node, this simple batch file combo will help you out. You can share a drive folder on your main Chia node/farmer and map that drive to your extra plotter PC's around the house/office. Use that mapped drive as your destination.

First, install Chia from <a href="https://chia.net">official website</a> on new machine you want to use for plotting. Start the GUI, do not type in your private keys. Close the GUI window then proceed to setting up batch files. (chia init is all thats needed).  

# plotmanager.bat params: 

Plotmanager.bat will start the next create plot batch file after the delay time has passed and only if the maximum number of plots isn't already running on your Windows machine. This basically keeps everything timed so you only have 1 to 2 plots in phase 1 at a time. Also known as staggering.

Edit the plotmanager.bat file with the total number of parallel plots you want running on your remote plotter. Lookup the time in seconds it took to complete phase 1 in previous plots and use that number in 'phase1timesecs'. 

set /a maxplots = 8  
set /a phase1timesecs = 4400   
set /a initialdelay = 100   

Note: 'initialdelay' is seconds to wait once you launch the plotmanager.bat file. You can tap a key to start a new plot immediately. Use this in case you close the plotmanager.bat window and want to update settings and relaunch. If you had 2300 seconds till the next plot launch when you closed the window, you can set that here so it will be in sync with previous launches.

# createplot.bat params:

plotmanager.bat will START createplot.bat so edit this to match your farmer/pool keys, number of threads, memory, and k size as you like. You'll want to update the chia version number on the second line unless you've already added that to your system environment path. If you already have the latest version of Chia in your environment path you can delete this line completely.

USER-NAME-HERE - replace this with your windows user name.  
FARMER-KEY-HERE - replace this with your farmer key (on your main chia node, cmd window: chia keys show)  
POOL-KEY-HERE - replace with your public pool key (on your main chia node, cmd window: chia keys show)  

The number of plots to queue is set to "-n 1". On fast plotters your first plot may be complete before the plotmanager can launch the last plot based on your phase1timesecs settings. If this happens simply reduce the phase1timesecs so the next plot will overlap the previous phase1 plot. In this case you will have 2 plots in phase1 for a limited time.

I have drive t:\ChiaTemp setup for temp/destination drive in this example. You change this to your temp drive and destination drive letter/path.  

For help join <a href="http://chiachat.com">chiachat.com</a> FB group or follow me on twitter <a href="https://twitter.com/kunani">@kunani</a> and <a href="https://twitter.com/plottool">@plottool</a>
