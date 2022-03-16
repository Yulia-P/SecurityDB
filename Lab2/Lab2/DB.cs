using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Lab2
{
    internal class DB
    {
        SqlConnection conn;
        public void openConnection(string connStr)
        {
            conn = new SqlConnection(connStr);
            conn.Open();
        }
        public void closeConnection()
        {
            conn.Close();
        }
        // ------------------------------------------------------------------------------
        public void AddOffInf(int idEmployee, int personalNum, string surname, string name, string patronymic, int idDep, int idPost, string education, int idSpec, string experience, string phoneNum, int wage, string status)
        {
            SqlCommand command = new SqlCommand("AddOfficial_inf", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("IdEmployee", sqlDbType: SqlDbType.Int).Value = idEmployee;
            command.Parameters.Add("personalNum", sqlDbType: SqlDbType.Int).Value = personalNum;
            command.Parameters.Add("Surname", sqlDbType: SqlDbType.NVarChar).Value = surname;
            command.Parameters.Add("Name", sqlDbType: SqlDbType.NVarChar).Value = name;
            command.Parameters.Add("Patronymic", sqlDbType: SqlDbType.NVarChar).Value = patronymic;
            command.Parameters.Add("IdDep", sqlDbType: SqlDbType.Int).Value = idDep;
            command.Parameters.Add("IdPost", sqlDbType: SqlDbType.Int).Value = idPost;
            command.Parameters.Add("Education", sqlDbType: SqlDbType.NVarChar).Value = education;
            command.Parameters.Add("IdSpec", sqlDbType: SqlDbType.Int).Value = idSpec;
            command.Parameters.Add("Experience", sqlDbType: SqlDbType.NVarChar).Value = education;
            command.Parameters.Add("PhoneNum", sqlDbType: SqlDbType.NVarChar).Value = phoneNum;
            command.Parameters.Add("Wage", sqlDbType: SqlDbType.Int).Value = wage;
            command.Parameters.Add("Status", sqlDbType: SqlDbType.NVarChar).Value = status;
            command.ExecuteNonQuery();
        }
        public void DropOffInf(int idEmployee)
        {
            SqlCommand command = new SqlCommand("DeleteOINF", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("IdEmployee", sqlDbType: SqlDbType.Int).Value = idEmployee;
            command.ExecuteNonQuery();
        }
        //error
        public void UpdateOffInf(int idEmployee, int personalNum, string surname, string name, string patronymic, int idDep, int idPost, string education, int idSpec, string experience, string phoneNum, int wage, string status)
        {
            SqlCommand command = new SqlCommand("UpdateOINF", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("IdEmployee", sqlDbType: SqlDbType.Int).Value = idEmployee;
            command.Parameters.Add("personalNum", sqlDbType: SqlDbType.Int).Value = personalNum;
            command.Parameters.Add("Surname", sqlDbType: SqlDbType.NVarChar).Value = surname;
            command.Parameters.Add("Name", sqlDbType: SqlDbType.NVarChar).Value = name;
            command.Parameters.Add("Patronymic", sqlDbType: SqlDbType.NVarChar).Value = patronymic;
            command.Parameters.Add("IdDep", sqlDbType: SqlDbType.Int).Value = idDep;
            command.Parameters.Add("IdPost", sqlDbType: SqlDbType.Int).Value = idPost;
            command.Parameters.Add("Education", sqlDbType: SqlDbType.NVarChar).Value = education;
            command.Parameters.Add("IdSpec", sqlDbType: SqlDbType.Int).Value = idSpec;
            command.Parameters.Add("Experience", sqlDbType: SqlDbType.NVarChar).Value = education;
            command.Parameters.Add("PhoneNum", sqlDbType: SqlDbType.NVarChar).Value = phoneNum;
            command.Parameters.Add("Wage", sqlDbType: SqlDbType.Int).Value = wage;
            command.Parameters.Add("Status", sqlDbType: SqlDbType.NVarChar).Value = status;
            command.ExecuteNonQuery();
        }
        // ------------------------------------------------------------------------------
        public void AddPersInf(int personalNum, string placeBirth, string passport, string address, string regAddress, string maritalStat, int children, string dateBirth)
        {
            SqlCommand command = new SqlCommand("AddPersonal_inf", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("PersonalNum", sqlDbType: SqlDbType.Int).Value = personalNum;
            command.Parameters.Add("PlaceBirth", sqlDbType: SqlDbType.NVarChar).Value = placeBirth;
            command.Parameters.Add("Passport", sqlDbType: SqlDbType.NVarChar).Value = passport;
            command.Parameters.Add("Address", sqlDbType: SqlDbType.NVarChar).Value = address;
            command.Parameters.Add("RegAddress", sqlDbType: SqlDbType.NVarChar).Value = regAddress;
            command.Parameters.Add("MaritalStat", sqlDbType: SqlDbType.NVarChar).Value = maritalStat;
            command.Parameters.Add("Children", sqlDbType: SqlDbType.Int).Value = children;
            command.Parameters.Add("DateBirth", sqlDbType: SqlDbType.NVarChar).Value = dateBirth;
            command.ExecuteNonQuery();
        }
        public void DropPersInf(int personalNum)
        {
            SqlCommand command = new SqlCommand("DeletePINF", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("PersonalNum", sqlDbType: SqlDbType.Int).Value = personalNum;
            command.ExecuteNonQuery();
        }
        public void UpdatePersInf(int personalNum, string placeBirth, string passport, string address, string regAddress, string maritalStat, int children, string dateBirth)
        {
            SqlCommand command = new SqlCommand("UpdatePINF", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add("PersonalNum", sqlDbType: SqlDbType.Int).Value = personalNum;
            command.Parameters.Add("PlaceBirth", sqlDbType: SqlDbType.NVarChar).Value = placeBirth;
            command.Parameters.Add("Passport", sqlDbType: SqlDbType.NVarChar).Value = passport;
            command.Parameters.Add("Address", sqlDbType: SqlDbType.NVarChar).Value = address;
            command.Parameters.Add("RegAddress", sqlDbType: SqlDbType.NVarChar).Value = regAddress;
            command.Parameters.Add("MaritalStat", sqlDbType: SqlDbType.NVarChar).Value = maritalStat;
            command.Parameters.Add("Children", sqlDbType: SqlDbType.Int).Value = children;
            command.Parameters.Add("DateBirth", sqlDbType: SqlDbType.NVarChar).Value = dateBirth;
            command.ExecuteNonQuery();
        }
    }
}