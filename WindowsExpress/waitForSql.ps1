
Param(
  [Parameter(Mandatory=$True,Position=1)]
  [string]$password
)

sleep 5

For ($i=0; $i -le 10; $i++) {
    echo $password;
    if(sqlcmd -S localhost -Q "SELECT 1" ){
        echo "Successfully connected to Sql Server";
        break;
    }
    else {
        echo "Waiting for Sql Server to come up...";
        sleep 3;
    }
}

echo "Server Test complete";
