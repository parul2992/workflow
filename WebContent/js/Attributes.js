document.getElementById("cash").style.visibility='hidden';
document.getElementById("cc").addEventListener("change",function()
{
	
	if(document.getElementById("cc").value =="DataMining")
		{
		document.getElementById("cash").style.visibility='visible';
		document.getElementById("cash").value = "1000";
		
		}
	
	if(document.getElementById("cc").value =="NetWorking")
	{
	document.getElementById("cash").style.visibility='visible';
	document.getElementById("cash").value = "800";
	
	}
	if(document.getElementById("cc").value =="CloudComputing")
	{
	document.getElementById("cash").style.visibility='visible';
	document.getElementById("cash").value = "1400";
	
	}
	
	if(document.getElementById("cc").value =="MobileComputing")
	{
	document.getElementById("cash").style.visibility='visible';
	document.getElementById("cash").value = "1200";
	
	}
	
	
	});


