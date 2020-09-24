$major = 7
$minor = 7
$patch = 0
$i0 = $major
$j0 = $minor
$k0 = $patch
$continue = $True

for ($i = $i0; $continue; $i++)
{
    for ($j = $j0; $continue; $j++)
    {
        for ($k = $k0; $continue; $k++)
        {
            $testUrl = "https://install.bankid.com/Repository/BankID_installation_${i}_${j}_${k}.exe"
            $response = Invoke-WebRequest $testUrl -Method Head -MaximumRedirection 0 -ErrorAction SilentlyContinue

            if ($response.StatusCode -eq 200)
            {
                $major = $i
                $minor = $j
                $patch = $k
                $url = $testUrl
            }
            elseif ($j -eq 0 -and $k -eq 0)
            {
                $continue = $False
            }
            else
            {
                break
            }
        }

        $k0 = 0
        break
    }

    $j0 = 0
}

[PSCustomObject]@{
    Version = "${major}.${minor}.${patch}"
    MajorVersion = $major
    MinorVersion = $minor
    PatchVersion = $patch
    Url = $url
}