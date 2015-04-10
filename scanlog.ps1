# scanlog.ps1 - A script for logs scanning, usable as a Nagios plugin 
# v1.0 9/4/2015
# by Daniele Raffo <daniele.raffo@clevernetsystems.com> 
# (C) 2015 Clever Net Systems - www.clevernetsystems.com
# Written in PowerShell 2.0
#
# Usage: .\scanlog.ps1 <logfilename> <regex> <nfield> <nminutes>
#
# This script analyzes a <logfilename> composed of lines formatted as such:
# 2015-04-09_09:19:27 foo bar baz
# i.e. each line starts with a timestamp, followed by several fields separated by spaces.
# This script scans the log for lines matching <regex> in the field number <nfield> only  
# and reports the number of matching lines with timestamps within the last <nminutes>.
#
# Exit code: 0 if no line matches, 2 if one or more lines match,
#            3 if the script was called with the wrong number of args


if ($args.Count -ne 4) {
    Write-Output "Usage: .\scanlog.ps1 <logfilename> <regex> <nfield> <nminutes>"
    exit 3
}

# Format of timestamp (field 0)
$DATE_FORMAT = "yyyy-MM-dd_HH:mm:ss"

# Name of logfile to scan 
$logfilename=$args[0]
# Regex to look for in log lines 
$regex=$args[1]
# Field number to scan for $regex.  First field is 0 
$nfield=$args[2]
# Only log lines with timestamp no older than this number of minutes will be considered for a match
$nminutes=$args[3]

# Current timestamp
$now_datetime = [DateTime]::ParseExact($((Get-Date).ToString($DATE_FORMAT)),$DATE_FORMAT,$null)
# We will check log entries newer than or equal to this timestamp
$startcheck_datetime = $now_datetime - $(New-TimeSpan -minutes $nminutes)

# Number of log lines that match
$matchinglines = 0


$log = Get-Content $logfilename  # Warning: Get-Content can be slow when operating on large logfiles
foreach ($logline in $log) {
    $token = $logline.Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)  # Handles extra spaces between fields

    # Analyze current log line
    if ($($token[$nfield]) -match $regex) {   
        # Field matches
        $logline_datetime = [DateTime]::ParseExact($($token[0]),$DATE_FORMAT,$null)
        if ($logline_datetime -ge $startcheck_datetime) {
            # Timestamp matches
            $matchinglines++
        }        
    }
}

$output = "Found " + $matchinglines + " lines matching " + $regex + " in field " + $nfield 
$output += " on file " + $logfilename + " within the last " + $nminutes + " minutes."
if ($matchinglines -eq 0) {
    $exitcode = 0
}
else { 
    $exitcode = 2
}
Write-Output $output
exit $exitcode

# end of program
