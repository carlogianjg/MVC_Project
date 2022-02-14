using MVCDemo.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace MVCDemo.Controllers
{
    public class ContactsController : ContactsModel
    {
        static SqlCommand cmd = new SqlCommand();

        public DataTable GetContacts(string keyword)
        {
            keyword = string.IsNullOrWhiteSpace(keyword) == false ? keyword : "";
            cmd = new SqlCommand("usp_read_list");
            cmd.Parameters.AddWithValue("@Keyword", keyword);
            DataTable dt = SQLQueries.SqlExecReaderWithParams(cmd);
            return dt;
        }
        public bool Save(ContactsController data)
        {
            cmd = new SqlCommand("usp_add_list");
            cmd.Parameters.AddWithValue("@FirstName", data.FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", data.MiddleName);
            cmd.Parameters.AddWithValue("@LastName", data.LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", data.PhoneNumber);
            cmd.Parameters.AddWithValue("@Gender", data.Gender);
            return SQLQueries.SqlExecNQInsert(cmd);
        }

        public bool Edit(ContactsController data)
        {
            cmd = new SqlCommand("usp_update_list");
            cmd.Parameters.AddWithValue("@id", data.id);
            cmd.Parameters.AddWithValue("@FirstName", data.FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", data.MiddleName);
            cmd.Parameters.AddWithValue("@LastName", data.LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", data.PhoneNumber);
            cmd.Parameters.AddWithValue("@Gender", data.Gender);
            return SQLQueries.SqlExecNQUpdate(cmd);
        }


        public bool Delete(ContactsController data)
        {
            cmd = new SqlCommand("usp_delete_list");
            cmd.Parameters.AddWithValue("@id", data.id);
            cmd.Parameters.AddWithValue("@FirstName", data.FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", data.MiddleName);
            cmd.Parameters.AddWithValue("@LastName", data.LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", data.PhoneNumber);
            cmd.Parameters.AddWithValue("@Gender", data.Gender);
            return SQLQueries.SqlExecNQUpdate(cmd);
        }




    }
}
