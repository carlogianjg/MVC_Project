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
            //you can add prompt here or insinde SQLExecNQInsert
        }

        public bool Edit(ContactsController data)
        {
            cmd = new SqlCommand("usp_update_list");
            cmd.Parameters.AddWithValue("@id", data.User_ID);
            cmd.Parameters.AddWithValue("@FirstName", data.FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", data.MiddleName);
            cmd.Parameters.AddWithValue("@LastName", data.LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", data.PhoneNumber);
            cmd.Parameters.AddWithValue("@Gender", data.Gender);
            return SQLQueries.SqlExecNQUpdate(cmd);
            //you can add prompt here or insinde SqlExecNQUpdate
        }

        /// <summary>
        /// *****NOTE: THIS METHOD IS UNECESSARY IF YOU ARE USING A LIST 
        /// FOR A EXAMPLE A LIST WITH A TYPE OF CONTACTSCONTROLLER List<ContactsController>
        /// </summary>
        /// <returns></returns>
        public DataTable InitializeDTContact()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("FirstName", typeof(string));
            dt.Columns.Add("MiddleName", typeof(string));
            dt.Columns.Add("LastName", typeof(string));
            dt.Columns.Add("PhoneNumber", typeof(string));
            dt.Columns.Add("Gender", typeof(string));
            return dt;
        }

        /// <summary>
        /// add new row to your datatable
        /// </summary>
        /// <param name="dtContacts"></param>
        /// <param name="data" this is from ContactCRUDWindow.xaml.cs></param>
        /// <returns></returns>
        public DataTable AddToContactsDT(DataTable dtContacts, ContactsController data)
        {
            dtContacts.Rows.Add(
                data.FirstName,
                data.MiddleName,
                data.LastName,
                data.PhoneNumber,
                data.Gender
                );
            return dtContacts;
        }

        public bool BulkSave(ContactsController data)
        {
            cmd = new SqlCommand("usp_BulkSaveContact");
            cmd.Parameters.AddWithValue("@dtContactsForSaving", data.dtContactsForSaving);
            return SQLQueries.SqlExecNQInsert(cmd);
            //you can add prompt here or insinde SQLExecNQInsert
        }
    }
}
