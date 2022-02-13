using System;
using System.Collections.Generic;
using System.Text;

namespace MVCDemo.Models
{
    public class ContactsModel
    {
        public int id { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Gender { get; set; }
    }
}
