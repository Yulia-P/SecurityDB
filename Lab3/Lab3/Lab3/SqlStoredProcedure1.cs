using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [SqlProcedure]
    public static void Employeey()
    {
        SqlCommand command = new SqlCommand();
        command.Connection = new SqlConnection("Context connection = true");
        command.Connection.Open();
        command.CommandText = @"DECLARE @cmd sysname, @var sysname  
                                select @var = PhoneNum from official_inf where idEmployee = 15449161;
                                SET @cmd = 'echo ' + 'Employee NUM: '+ @var + ' > C:\db\output.txt'
                                EXEC master..xp_cmdshell @cmd";
        SqlContext.Pipe.ExecuteAndSend(command);
        command.Connection.Close();

    }
}