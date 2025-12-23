function TestFunction1 {Get-ChildItem}

function Get-UayChildItem {Get-ChildItem}

function Get-UayChildItem2($param1, $param2) {
    Get-ChildItem | Where-Object -FilterScript {$_.Name -like "*$param1*"} | ForEach-Object -Process {"$param2 $($_.Name)"}
}

function Get-UayChildItem3([string]$param1, [double]$param2) {
    Write-Host "$param1 $param2"
}

function Get-UayChildItem4 {
    param([string]$param1, [double]$param2)
    dynamicparam {Write-Host "Dynamic Para Block"}
    begin {Write-Host "Begin Block"}
    process {Write-Host "Process Block"}
    end {Write-Host "End Block"}
    clean {Write-Host "Clean Block"}
}

function Get-UayChildItem5 {
    param([string]$param1, [double]$param2)
    begin {$x=25}
    process {Write-Host "`$x=$x"}
}

function Get-UayChildItem6{
    [CmdletBinding()]
    param([Parameter(Mandatory=$false)][string]$param1="Uay")
    process {Write-Host "`$param1=$param1"}
}

function Get-UayChildItem7{
    [CmdletBinding()]
    param([Parameter(Position=0)][string]$param1="Uay",
          [Parameter(Position=1)][string]$param2="Uay",
          [Parameter(ValueFromRemainingArguments=$true)]
          [string[]]$param3)
    process {Write-Host "`$param1=$param1";
             Write-Host "`$param2=$param2";
             $param3 | ForEach-Object -Process{$_}}
}

function Get-UayChildItem8{
    [CmdletBinding()]
    param([Parameter(ValueFromPipeline=$true)]
          [string]$param1="Uay",
          [Parameter(ValueFromPipelineByPropertyName=$true)]
          [string]$Name="Uay")
    process {Write-Host "`$param1=$param1 `$Name=$Name";}
}

function Get-UayChildItem9{
    [CmdletBinding()]
    param([Parameter(ValueFromPipeline=$true)]
          [string]$param1="Uay",
          [Parameter(ValueFromPipelineByPropertyName=$true)]
          [string]$Name="Uay")
    process {Write-Host "`$param1=$param1 `$Name=$Name";}
}

function Get-UayChildItem10{
    [CmdletBinding()]
    param([Parameter(ParameterSetName="Car")]
          [string]$CarModel="Uay",
          [Parameter(ParameterSetName="Flower")]
          [string]$FlowerType="Uay",
          [Parameter(ParameterSetName="Car")]
          [Parameter(ParameterSetName="Flower")]
          [string]$Color="Uay")
    process {
        switch ($PSCmdlet.ParameterSetName) {
            "Car" {Write-Host "This car($CarModel) color is $Color"}
            "Flower" {Write-Host "This flower($FlowerType) color is $Color"}
            Default {Write-Host "I don`'t know"}
        }
    }
}

function Get-UayChildItem11{
    [CmdletBinding()]
    param([Parameter(HelpMessage="This is message from Uaychai Kiki")][string]$param1)
    process {
        Write-Host "`$param1=$param1";
    }
}

function Get-UayChildItem12 {
    [CmdletBinding()]
    param (
        [System.Obsolete("The NoTypeInformation parameter is obsolete.")]
        [Parameter(Mandatory=$true, DontShow= $true)]
        [string]$oldparam="Uay",
        [Parameter(Mandatory=$true)]
        [string]$newparam="Uay"
    )
    process {
        Write-Host "`$oldparam=$oldparam";
        Write-Host "`$newparam=$newparam";
    }
}

function Get-UayChildItem13 {
    [CmdletBinding()]
    param (
        [Alias("pr","pm")]
        [string]$param="Uay"   
    )
    process {
        Write-Host "`$param=$param";
    }
}

function Get-UayChildItem14 {
    [CmdletBinding()]
    param (
        [SupportsWildcards()]
        [string]$param="Uay"   
    )
    process {
        Get-ChildItem | Where-Object -FilterScript {$_.Name -like $param} 
    }
}

function Get-UayChildItem15 {
    [CmdletBinding()]
    param (
        [AllowNull()]
        [Parameter(Mandatory=$true)]
        [hashtable]$param 
    )
    process {
        write-Host "`$param=$param";
    }
}

function Get-UayChildItem16 {
    [CmdletBinding()]
    param (
        [AllowEmptyString()]
        [Parameter(Mandatory=$true)]
        [string]$param 
    )
    process {
        write-Host "`$param=$param";
    }
}

function Get-UayChildItem17 {
    [CmdletBinding()]
    param (
        [ValidateLength(3,50)]
        [string]$firstname
    )
    process {
        write-Host "`$firstname=$firstname";
    }
}

function Get-UayChildItem18 {
    [CmdletBinding()]
    param (
        [ValidatePattern("P[0-9]{4}")]
        [string]$productid
    )
    process {
        write-Host "`$productid=$productid";
    }
}

function Get-UayChildItem19 {
    [CmdletBinding()]
    param (
        [ValidateRange(1,120)]
        [int]$age
    )
    process {
        write-Host "`$age=$age";
    }
}

function Get-UayChildItem20 {
    [CmdletBinding()]
    param (
        [ValidateSet(10,20,30,40,50)]
        [int]$age,
        [ValidateSet("Apple","Banana","Orange")]
        [string]$fruit
    )
    process {
        write-Host "`$age=$age";
        write-Host "`$fruit=$fruit";
    }
}

function Get-UayChildItem21 {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrWhiteSpace()]
        [string]$require1,
        [Parameter(Mandatory=$true)]
        [string]$require2
    )
    process {
        write-Host "`$require1=$require1";
        write-Host "`$require2=$require2";
    }
}

function Get-UayChildItem22 {
    [CmdletBinding()]
    param (
        [ValidateCount(3,5)]
        [AllowEmptyCollection()]
        [Parameter(Mandatory=$true)]
        [string[]]$param
    )
    process {
        write-Host "`$param=$param";
    }
}

function Get-UayChildItem23 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateScript(
            {$_ -ge (Get-Date)},
            ErrorMessage = "{0} isn't a future date. Specify a later date."
        )]
        [datetime]$EventDate
    )
    process {
        write-Host "`$EventDate=$EventDate";
    }
}

function Get-UayChildItem24 {
    [CmdletBinding()]
    param (
        [ArgumentCompletions("Option1","Option2","Option3")]
        [string]$param
    )
    process {
        write-Host "`$param=$param";
    }
}
# --------------------------------------------------------------
function MyArgumentCompleter{
    param ( $commandName,
            $parameterName,
            $wordToComplete,
            $commandAst,
            $fakeBoundParameters )

$possibleValues = @{
        Fruits = @('Apple', 'Orange', 'Banana')
        Vegetables = @('Onion', 'Carrot', 'Lettuce')
    }

if ($fakeBoundParameters.ContainsKey('Type')) {
        $possibleValues[$fakeBoundParameters.Type] | Where-Object {
            $_ -like "$wordToComplete*"
        }
    } else {
        $possibleValues.Values | ForEach-Object {$_}
    }
}

function Test-ArgumentCompleter {
[CmdletBinding()]
 param (
        [Parameter(Mandatory=$true)]
        [ValidateSet('Fruits', 'Vegetables')]
        $Type,

[Parameter(Mandatory=$true)]
        [ArgumentCompleter({ MyArgumentCompleter @args })]
        $Value
      )
}