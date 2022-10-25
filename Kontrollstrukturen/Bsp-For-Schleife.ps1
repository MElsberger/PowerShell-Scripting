for ($a = 1; $a -le 8; $a++)

    {
   Test-Connection -ComputerName 127.0.0.$a -Count 1
    }