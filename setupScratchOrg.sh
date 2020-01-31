echo '##### CREATING SCRATCH ORG #####'
SCRATCH_ALIAS=`git branch | grep \* | cut -d ' ' -f2`
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias $SCRATCH_ALIAS --setdefaultusername

echo '##### PUSHING METADATA #####'
sfdx force:source:push --targetusername $SCRATCH_ALIAS

echo '##### CLEANING STANDARD PAGE LAYOUTS #####'
sfdx texei:source:layouts:cleanorg -u $SCRATCH_ALIAS

echo '##### ASSIGN SYSTEM ADMIN PERMISSION SET #####'
sfdx force:user:permset:assign --permsetname System_Administrator --targetusername $SCRATCH_ALIAS 
sfdx force:user:permset:assign --permsetname Manage_Customer_User --targetusername $SCRATCH_ALIAS 

echo '##### UPDATING USER INFOS #####'
sfdx texei:user:update --values "LanguageLocaleKey=en_US" --targetusername $SCRATCH_ALIAS
sfdx texei:user:update --values "UserPermissionsMarketingUser=true"

echo '##### OPENING SCRATCH ORG #####'
sfdx force:org:open --path one/one.app --targetusername $SCRATCH_ALIAS
