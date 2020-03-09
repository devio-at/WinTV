
exec sp_catalogs 'hcw'

/*
D:\data\WinTV\Channel Database\hcwChanDB_5	NULL
D:\data\WinTV\Channel Database\hcwChanDB_5-lastgood	NULL
*/

select * from hcw.[D:\data\WinTV\Channel Database\hcwChanDB_5]..hcwChannels

/*
OLE DB provider "MSDASQL" for linked server "hcw" returned message "[Microsoft][ODBC Microsoft Access Driver] Syntaxfehler (fehlender Operator) in Abfrageausdruck '`Tbl1002`.`id` `Col1005`'.".
Msg 7321, Level 16, State 2, Line 4
An error occurred while preparing the query "SELECT `Tbl1002`.`id` `Col1005`,`Tbl1002`.`service_id` `Col1006`,`Tbl1002`.`preferred_name` `Col1007`,`Tbl1002`.`preferred_number` `Col1008`,`Tbl1002`.`description` `Col1009`,`Tbl1002`.`audio_lang` `Col1010`,`Tbl1002`.`subtitle_lang` `Col1011`,`Tbl1002`.`audio_mode` `Col1012`,`Tbl1002`.`irblaster_data` `Col1013`,`Tbl1002`.`channel_type` `Col1014`,`Tbl1002`.`language` `Col1015`,`Tbl1002`.`genre` `Col1016`,`Tbl1002`.`duplicate_channel_id` `Col1017`,`Tbl1002`.`duplicate_priority` `Col1018`,`Tbl1002`.`blocked_flag` `Col1019`,`Tbl1002`.`last_used` `Col1020`,`Tbl1002`.`epg_source` `Col1021`,`Tbl1002`.`preferred_minor` `Col1003` FROM `D:\data\WinTV\Channel Database\hcwChanDB_5`.`hcwChannels` `Tbl1002`" for execution against OLE DB provider "MSDASQL" for linked server "hcw". 
*/

select * from openquery(hcw, 'select * from hcwChannels')
/*
... channels result set ...
*/


exec sp_catalogs 'hcwole'
/*
OLE DB provider "Microsoft.ACE.OLEDB.12.0" for linked server "hcwole" returned message "Falscher Parameter.".
Msg 7399, Level 16, State 1, Procedure sp_catalogs, Line 7 [Batch Start Line 16]
The OLE DB provider "Microsoft.ACE.OLEDB.12.0" for linked server "hcwole" reported an error. One or more arguments were reported invalid by the provider.
Msg 7311, Level 16, State 2, Procedure sp_catalogs, Line 7 [Batch Start Line 16]
Cannot obtain the schema rowset "DBSCHEMA_CATALOGS" for OLE DB provider "Microsoft.ACE.OLEDB.12.0" for linked server "hcwole". The provider supports the interface, but returns a failure code when it is used.
*/

select * from hcwole...hcwChannels
/*
... channels result set ...
*/
