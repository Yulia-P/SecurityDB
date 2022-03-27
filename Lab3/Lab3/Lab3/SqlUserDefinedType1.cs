using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using Microsoft.SqlServer.Server;

[Serializable]
[SqlUserDefinedType(Format.UserDefined, MaxByteSize = 8000)]

public struct JobDescription : INullable, IBinarySerialize
{
    string surname;
    string PhoneNum;
    public override string ToString()
    {
        return $"Surname: {this.surname}, PhoneNum: {this.PhoneNum}";
    }
    public bool IsNull
    {
        get
        {
            return _null;
        }
    }
    public static JobDescription Null
    {
        get
        {
            JobDescription h = new JobDescription();
            h._null = true;
            return h;
        }
    }
    public static JobDescription Parse(SqlString s)
    {
        if (s.IsNull)
            return Null;
        string[] param = s.Value.Split(',');
        JobDescription u = new JobDescription();
        u.surname = param[0];
        u.PhoneNum = param[1];
        return u;
    }
    public string Method1()
    {
        return string.Empty;
    }
    public static SqlString Method2()
    {
        return new SqlString("");
    }
    public void Read(BinaryReader r)
    {
        surname = r.ReadString();
    }
    public void Write(BinaryWriter w)
    {
        w.Write(surname.ToString() + " - " + PhoneNum.ToString());
    }
    public int _var1;
    private bool _null;
}

