# petbatchfiles
Plot Everywhere Tool: batch file plot launcher for Windows Chia CLI

Simple batch file to monitor current chia.exe instances in windows and launching new plot create batch file when less than your configured maximum.

If you plot on multiple window machines in your home/office connected on the same network as your main Chia node, this simple batch file combo will help you out.

Edit the plotmanager.bat file with the total number of parallel plots you want running on your remote plotter. Lookup the time in seconds it took to complete phase 1 in previous plots and use that number in the delay. 

PET script will start the next create plot batch file after the delay time has passed and only if the maximum number of plots isn't already running on your Windows machine. This basically keeps everything timed so you only have 2 plots in phase 1 at a time.

plotmanager.bat will launch createplot.bat so edit this to match your farmer/pool keys, number of threads, memory, and k size as you like.

-n is set to 2 plots. On fast systems this allows the first plot launched to be active by the time your last plot launches. On very fast plotters the first plot will be complete before plotmanager.bat can launch your maximum number of plots! Setting each plot launch to 2 in queue will guarantee there is a chia.exe instance running long enough for your max plots to launch.

For help join chiachat.com FB group or follow me on twitter @kunani 
