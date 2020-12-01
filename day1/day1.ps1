$input = Get-Content -Path .\input.txt
$input.length

$check1 = $true
$check2 = $true
for($i=0; $i -lt $input.length -1;  $i++){
    $input.length - $i
    $number1 = [int]($input | Select -Index $i)
    
    for($j = 0; $j -lt $input.length -1; $j++){
        $number2 = [int]($input | Select -Index $j)

        if ($check1 -and (2020 -eq ($number1 + $number2))) {
           $number1 * $number2
           $check1 = $false
            
        }
        for($k = 0; $k -lt $input.length -1; $k++){

            $number3 = [int]($input | Select -Index $k)

            if ($check2 -and (2020 -eq ($number1 + $number2 + $number3))) {
                $number1 * $number2 * $number3
                $check2 = $false
            }
        }
    }
}