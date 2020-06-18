using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models
{
    public class WorkAreaViewModel
    {
        public int Work_Area_Id { get; set; }
        public string Work_Area_Name { get; set; }
        public bool Status { get; set; }
    }
}