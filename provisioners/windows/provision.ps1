# variables inbound from provisioner args
# $($args[0]) => environment
# $($args[1]) => repository
# $($args[2]) => gpg key
# $($args[3]) => instance


# global variables
$provisionstart = get-date
$provisionError = "c:\catapult\provisioners\windows\logs\provisionError.log"
$provision = "c:\catapult\provisioners\windows\logs\provision.log"


echo "`n==> Importing PowerYaml"
import-module c:\catapult\provisioners\windows\installers\poweryaml\poweryaml.psm1


echo "`n==> Powershell Version"
$PSVersionTable


echo "`n==> Installing GPG"
if (-not(Test-Path -Path "c:\Program Files (x86)\GNU\GnuPG\gpg2.exe")) {
    start-process -filepath "c:\catapult\provisioners\windows\installers\gpg4win-2.3.0.exe" -argumentlist "/S" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
    get-content $provision
    get-content $provisionError
}
start-process -filepath "c:\Program Files (x86)\GNU\GnuPG\gpg2.exe" -argumentlist "--version" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
get-content $provision
get-content $provisionError
if (-not(Test-Path -Path "c:\catapult\secrets\configuration.yml.gpg")) {
    echo -e "Cannot read from c:\catapult\secrets\configuration.yml.gpg, please vagrant reload the virtual machine."
    exit 1
}
# decrypt configuration
start-process -filepath "c:\Program Files (x86)\GNU\GnuPG\gpg2.exe" -argumentlist "--verbose --batch --yes --passphrase $($args[2]) --output c:\catapult\secrets\configuration.yml --decrypt c:\catapult\secrets\configuration.yml.gpg" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
get-content $provision
get-content $provisionError
start-process -filepath "c:\Program Files (x86)\GNU\GnuPG\gpg2.exe" -argumentlist "--verbose --batch --yes --passphrase $($args[2]) --output c:\catapult\secrets\id_rsa --decrypt c:\catapult\secrets\id_rsa.gpg" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
get-content $provision
get-content $provisionError
start-process -filepath "c:\Program Files (x86)\GNU\GnuPG\gpg2.exe" -argumentlist "--verbose --batch --yes --passphrase $($args[2]) --output c:\catapult\secrets\id_rsa.pub --decrypt c:\catapult\secrets\id_rsa.pub.gpg" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
get-content $provision
get-content $provisionError
$config = get-yaml -fromfile (resolve-path c:\catapult\secrets\configuration.yml)


echo "`n==> Configuring time"
# set timezone
tzutil /s $config.company.timezone_windows
# configure ntp
$timeroot = "HKLM:\SYSTEM\CurrentControlSet\services\W32Time"
Set-ItemProperty -path "$timeroot\parameters" -name type -Value "NTP"
Set-ItemProperty -path "$timeroot\parameters" -name NtpServer -Value "time.windows.com,0x1 nist1-ny.ustiming.org,0x1"
Set-ItemProperty -path "$timeroot\config" -name AnnounceFlags -Value 5
Set-ItemProperty -path "$timeroot\config" -name MaxPosPhaseCorrection -Value 1800
Set-ItemProperty -path "$timeroot\config" -name MaxNegPhaseCorrection -Value 1800
Set-ItemProperty -path "$timeroot\TimeProviders\NtpServer" -name Enabled -Value 1
Set-ItemProperty -path "$timeroot\TimeProviders\NtpClient" -name SpecialPollInterval -Value 900
# echo datetimezone
get-date
$([System.TimeZone]::CurrentTimeZone.StandardName)


echo "`n==> Installing .NET 4.0 (This may take a while...)"
if (-not(Test-Path -Path "c:\windows\Microsoft.NET\Framework64\v4.0.30319\")) {
    # ((new-object net.webclient).DownloadFile("http://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe","c:\tmp\dotNetFx40_Full_x86_x64.exe")) 
    start-process -filepath "c:\catapult\provisioners\windows\installers\dotNetFx40_Full_x86_x64.exe" -argumentlist "/q /norestart /log c:\catapult\provisioners\windows\logs\dotNetFx40_Full_x86_x64.exe.log" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
    echo "Restarting Windows..."
    echo "Please run 'vagrant provision windows' when it's back up"
    restart-computer -force
    exit 0
}
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -recurse |
Get-ItemProperty -name Version,Release -EA 0 |
Where { $_.PSChildName -match '^(?!S)\p{L}'} |
Select PSChildName, Version, Release


echo "`n==> Installing Git"
if (-not(Test-Path -Path "c:\Program Files (x86)\Git\bin\git.exe")) {
    start-process -filepath "c:\catapult\provisioners\windows\installers\Git-1.9.5-preview20141217.exe" -argumentlist "/SP- /NORESTART /VERYSILENT /SUPPRESSMSGBOXES /SAVEINF=c:\catapult\provisioners\windows\logs\git-settings.txt /LOG=c:\catapult\provisioners\windows\logs\Git-1.9.5-preview20141217.exe.log" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
    get-content $provision
    get-content $provisionError
}
start-process -filepath "c:\Program Files (x86)\Git\bin\git.exe" -argumentlist "--version" -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
get-content $provision
get-content $provisionError


echo "`n==> Importing servermanager"
import-module servermanager
if (Get-Module -ListAvailable -Name servermanager) {
    echo "servermanager loaded"
} else {
    echo "servermanager failed to load"
}

echo "`n==> Installing web-webserver (This may take a while...)"
add-windowsfeature web-webserver -includeallsubfeature -logpath c:\catapult\provisioners\windows\logs\add-windowsfeature_web-webserver.log


echo "`n==> Installing web-mgmt-tools"
add-windowsfeature web-mgmt-tools -includeallsubfeature -logpath c:\catapult\provisioners\windows\logs\add-windowsfeature_web-mgmt-tools.log


echo "`n==> Importing webadministration"
import-module webadministration
if (Get-Module -ListAvailable -Name webadministration) {
    echo "webadministration loaded"
} else {
    echo "webadministration failed to load"
}


echo "`n==> Configuring git repositories (This may take a while...)"
if (-not($config.websites.iis)) {

    echo "There are no websites in iis, nothing to do."

} else {

    # initialize id_rsa
    new-item "c:\Program Files (x86)\Git\.ssh\id_rsa" -type file -force
    get-content "c:\catapult\secrets\id_rsa" | add-content "c:\Program Files (x86)\Git\.ssh\id_rsa"

    # initialize known_hosts
    new-item "c:\Program Files (x86)\Git\.ssh\known_hosts" -type file -force
    # ssh-keyscan bitbucket.org for a maximum of 10 tries
    for ($i=0; $i -le 10; $i++) {
        start-process -filepath "c:\Program Files (x86)\Git\bin\ssh-keyscan.exe" -argumentlist ("bitbucket.org") -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
        if ((get-content $provision) -match "bitbucket\.org") {
            echo "ssh-keyscan for bitbucket.org successful"
            get-content $provision | add-content "c:\Program Files (x86)\Git\.ssh\known_hosts"
            break
        } else {
            echo "ssh-keyscan for bitbucket.org failed, retrying!"
        }
    }
    # ssh-keyscan github.com for a maximum of 10 tries
    for ($i=0; $i -le 10; $i++) {
        start-process -filepath "c:\Program Files (x86)\Git\bin\ssh-keyscan.exe" -argumentlist ("github.com") -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
        if ((get-content $provision) -match "github\.com") {
            echo "ssh-keyscan for github.com successful"
            get-content $provision | add-content "c:\Program Files (x86)\Git\.ssh\known_hosts"
            break
        } else {
            echo "ssh-keyscan for github.com failed, retrying!"
        }
    }

    # keep linux lf (line feed) line endings instead of windows converting to crlf (carriage return line feed <- haha, typewriter)
    start-process -filepath "c:\Program Files (x86)\Git\bin\git.exe" -argumentlist ("config --global core.autocrlf false") -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError

    # clone/pull repositories into c:\inetpub\repositories\iis\
    new-item -itemtype directory -force -path "c:\inetpub\repositories\iis\"
    foreach ($instance in $config.websites.iis) {
        if (test-path ("c:\inetpub\repositories\{0}\.git" -f $instance.domain) ) {
            start-process -filepath "c:\Program Files (x86)\Git\bin\git.exe" -argumentlist ("-C c:\inetpub\repositories\iis\{0} pull origin {1}" -f $instance.domain,$config.environments.$($args[0]).branch) -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
            get-content $provision
            get-content $provisionError
        } else {
            start-process -filepath "c:\Program Files (x86)\Git\bin\git.exe" -argumentlist ("clone --recursive --branch {1} {2} c:\inetpub\repositories\iis\{0}" -f $instance.domain,$config.environments.$($args[0]).branch,$instance.repo) -Wait -RedirectStandardOutput $provision -RedirectStandardError $provisionError
            get-content $provision
            get-content $provisionError
        }
    }
    # create an array of domains
    $domains = @()
    foreach ($instance in $config.websites.iis) {
        $domains += $instance.domain
    }
    # cleanup directories from domains array
    get-childitem "c:\catapult\repositories\iis\*" | ?{ $_.PSIsContainer } | foreach-object {
        $domain = split-path $_.FullName -leaf
        if (-not($domains -contains $domain)) {
            echo "`nWebsite does not exist in secrets/configuration.yml, removing $domain ..."
            remove-item -recurse -force $_.FullName
        }
    }

    echo "`n==> Removing websites"
    if (get-childitem -Path IIS:\Sites | where-object {$_.Name -ne "Default Web Site"}) {
        $websites = get-childitem -Path IIS:\Sites | where-object {$_.Name -ne "Default Web Site"}
        foreach ($website in $websites) {
            remove-item ("IIS:\Sites\{0}" -f $website.Name) -recurse
        }
    }

    echo "`n==> Removing application pools"
    if (get-childitem -Path IIS:\AppPools | where-object {$_.Name -ne "DefaultAppPool"}) {
        $apppools = get-childitem -Path IIS:\AppPools | where-object {$_.Name -ne "DefaultAppPool"}
        foreach ($apppool in $apppools) {
            remove-item ("IIS:\AppPools\{0}" -f $apppool.Name) -recurse
        }
    }

    echo "`n==> Creating application pools"
    foreach ($instance in $config.websites.iis) {
        new-item ("IIS:\AppPools\$($args[0]).{0}" -f $instance.domain)
        set-itemproperty ("IIS:\AppPools\$($args[0]).{0}" -f $instance.domain) managedRuntimeVersion v4.0
    }

    echo "`n==> Creating websites"
    foreach ($instance in $config.websites.iis) {
        new-website -name ("$($args[0]).{0}" -f $instance.domain) -hostheader ("$($args[0]).{0}" -f $instance.domain) -port 80 -physicalpath ("c:\inetpub\repositories\iis\{0}\{1}" -f $instance.domain,$instance.webroot) -ApplicationPool ("$($args[0]).{0}" -f $instance.domain) -force
   }

    echo "`n==> Starting websites"
    if (get-childitem -Path IIS:\Sites) {
        get-childitem -Path IIS:\Sites | foreach { start-website $_.Name; }
    }
    foreach ($instance in $config.websites.iis) {
        echo ("http://$($args[0]).{0}" -f $instance.domain)
    }

}


# cleanup files
remove-item "c:\catapult\secrets\configuration.yml"
remove-item "c:\catapult\secrets\id_rsa"
remove-item "c:\catapult\secrets\id_rsa.pub"


$provisionend = Get-Date
echo ("`n`n`n==> Provision complete ({0}) seconds" -f [math]::floor((New-TimeSpan -Start $provisionstart -End $provisionend).TotalSeconds))
