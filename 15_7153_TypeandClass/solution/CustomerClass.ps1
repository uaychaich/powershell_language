# class Customer1 {
#     [int]$Id; [string]$FirstName; [string]$LastName; [datetime]$Birthday; [double]$Salary
# }
#----------------------------------------------------------------------
# class Customer2 {
#     [ValidateRange(0,1000000)][ValidateNotNullOrWhiteSpace()][int]$Id 
#     [ValidateLength(3,50)][string]$FirstName
#     [ValidateLength(3,50)][string]$LastName
#     [ValidateScript({$_ -ge (Get-Date)})][datetime]$Birthday
#     [ValidateRange(0,1000000)][double]$Salary
# }
#----------------------------------------------------------------------
# class Customer3 {
#     [ValidateRange(0)][ValidateNotNullOrWhiteSpace()][int]$Id 
#     [ValidateLength(3,50)][string]$FirstName
#     [ValidateLength(3,50)][string]$LastName
#     hidden [datetime]$Birthday
#     [ValidateRange(0)][double]$Salary

#     [void]setBirthday([datetime]$inputBirthday){if($inputBirthday -le (Get-Date)){$this.Birthday = $inputBirthday}}
#     [datetime]getBirthday(){return $this.Birthday}
# }
#----------------------------------------------------------------------
# class Customer4 {
#     [ValidateRange(0)][ValidateNotNullOrWhiteSpace()][int]$Id 
#     [ValidateLength(3,50)][string]$FirstName
#     [ValidateLength(3,50)][string]$LastName
    
#     hidden [datetime]$_Birthday
#     hidden [double]$_Salary

#     static [hashtable[]] $MemberDefinitions = @(
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Birthday'
#             Value       = { $this._Birthday } # Getter
#             SecondValue = {                # Setter
#                 $ProposedValue = [datetime]$args[0]

#                 if ($ProposedValue -le (Get-date)) {
#                     $this._Birthday = $ProposedValue
#                 } else{
#                     throw 
#                 }
#             }
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Salary'
#             Value       = { $this._Salary } # Getter
#             SecondValue = {                # Setter
#                 $ProposedValue = [double]$args[0]

#                 if ($ProposedValue -gt 0) {
#                     $this._Salary = $ProposedValue
#                 } else{
#                     throw 
#                 }
#             }
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'FullName'
#             Value       = { "$($this.FirstName) $($this.LastName)" } # Getter
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Age'
#             Value       = { (Get-Date).Year - $this._Birthday.Year } # Getter
#         }
#     )

#     static Customer4() {
#         $TypeName = [Customer4].Name
#         foreach ($Definition in [Customer4]::MemberDefinitions) {
#             Update-TypeData -TypeName $TypeName @Definition
#         }
#     }
# }
#----------------------------------------------------------------------

# class Customer5 {
#     [ValidateRange(0)][ValidateNotNullOrWhiteSpace()][int]$Id 
#     [ValidateLength(3,50)][string]$FirstName
#     [ValidateLength(3,50)][string]$LastName
    
#     hidden [datetime]$_Birthday
#     hidden [double]$_Salary

#     static [hashtable[]] $MemberDefinitions = @(
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Birthday'
#             Value       = { $this._Birthday } # Getter
#             SecondValue = {                # Setter
#                 $ProposedValue = [datetime]$args[0]

#                 if ($ProposedValue -le (Get-date)) {
#                     $this._Birthday = $ProposedValue
#                 } else{
#                     throw 
#                 }
#             }
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Salary'
#             Value       = { $this._Salary } # Getter
#             SecondValue = {                # Setter
#                 $ProposedValue = [double]$args[0]

#                 if ($ProposedValue -gt 0) {
#                     $this._Salary = $ProposedValue
#                 } else{
#                     throw 
#                 }
#             }
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'FullName'
#             Value       = { "$($this.FirstName) $($this.LastName)" } # Getter
#         },
#         @{
#             MemberType  = 'ScriptProperty'
#             MemberName  = 'Age'
#             Value       = { (Get-Date).Year - $this._Birthday.Year } # Getter
#         }
#     )

#     static Customer5() {
#         $TypeName = [Customer5].Name
#         foreach ($Definition in [Customer5]::MemberDefinitions) {
#             Update-TypeData -TypeName $TypeName @Definition
#         }
#     }

#     Customer5(){
#         $this.Id = 9999;$this.FirstName="non";$this.LastName="non";$this.Birthday=(Get-Date);$this.Salary=1
#     }
#     Customer5([int]$Id,[string]$FirstName,[string]$LastName){
#         $this.Id = $Id;$this.FirstName=$FirstName;$this.LastName=$LastName;
#     }
#     Customer5([int]$Id,[string]$FirstName,[string]$LastName,[datetime]$Birthday,[double]$Salary){
#         $this.Id = $Id;$this.FirstName=$FirstName;$this.LastName=$LastName;$this.Birthday=$Birthday;$this.Salary=$Salary
#     }
# }

#----------------------------------------------------------------------

# class BaseClass{
#     [int]$prop1
#     [string] method1(){return "This result is $($this.prop1)"}
#     BaseClass(){$this.prop1=5}
# }

# class InheritClass:BaseClass{
#     [int]$prop2
#     [string] method1(){return "This result is $($this.prop1) and $($this.prop2)"}
#     InheritClass():base(){$this.prop2=20}
# }

#----------------------------------------------------------------------

# class CalculateArea{
#     static [double] Rectangle([double]$width,[double]$height){return $width*$height}
#     static [double] Triangle([double]$base,[double]$height){return 0.5*$base*$height}
# }