#!/bin/bash
if [ $1 ];then
	OriginLogFile=$1
else
	OriginLogFile="DmesgLog"
fi
if [ $2 ];then
	LogResultFile=$2
else
	LogResultFile="DmesgLogAnalysisResult"
fi
GrepResultFile="GrepResult"
AwkResultFile="AwkResult"
LogResultFile="DmesgLogAnalysisResult"
cat $OriginLogFile | grep -E "Pcie device start success|Pcie device stop success|Get FPGA interrupt" > $GrepResultFile
sed -i 's/^..//g' $GrepResultFile
sed -i 's/]//g' $GrepResultFile
cat $GrepResultFile | awk '
BEGIN{
	FS=" "
}
{
	if($5=="start")
	{
		InterruptCount=0;
		DelayTime=0;
		StartTime = $1;		
		printf("%s\n",$5);
	}
	else if($5 == "stop")
	{		
		StopTime = $1;	
		printf("%s , fileNumber:%5d,Time:%f,DelayTime:%f\n",$5,InterruptCount-1, (StopTime-StartTime),DelayTime);
	}
	else($5=="interrupt")
	{
		if(InterruptCount>1)
		{
			DiffValue=$1-LastTime;
			
			if( DiffValue > 0.045)
			{
				DelayTime+=DiffValue-0.043;
				printf("%03d : %f-%f=%f\n",InterruptCount,$1,LastTime,DiffValue);
			}
		}
		LastTime=$1;
		InterruptCount++;
	}
}' > $AwkResultFile
# remove the next line of start and stop
cat $AwkResultFile | awk '
BEGIN{
	FS="="
}
{
	print $0;
	if($2>=0.044 && $2<= 1)
	{
		++count;
		Line[count]=$0;
		LineNum[count]=NR;
	}
}
END{
	print "The Number of Time great than 0.044: "count;
	for(i in Line)
	{
		print "Line: "LineNum[i]": "Line[i];
	}
}' > $LogResultFile
rm -f $GrepResultFile $AwkResultFile
echo "Finished to Analysis DmesgLog"
