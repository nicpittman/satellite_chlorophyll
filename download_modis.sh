#Download MODIS 8 Day Mapped Files

myURL=https://oceandata.sci.gsfc.nasa.gov/MODIS-Aqua/Mapped/8-Day/9km/chlor_a

for year in $(curl $myURL?format=txt |cut -d "," -f 1); do
    echo $year
    for ncfile in $(curl $myURL/$year?format=txt |cut -d "," -f 1); do
	    echo $ncfile
	    curl -L -O https://oceandata.sci.gsfc.nasa.gov/cgi/getfile/$ncfile;		  
    done;
done;



