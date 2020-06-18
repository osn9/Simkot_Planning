using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.DarkhastaFormViewModel
{
    public class DarkhastaFormViewModel
    {
        public int Darkhasta_Form_Id { get; set; }
        public string Bank_Name { get; set; }
        public Nullable<int> Ward_No { get; set; }
        public string Samiti_Name { get; set; }
        public string Adakshya_Name { get; set; }
        public string Koshadakshya_Name { get; set; }
        public string Sachib_Name { get; set; }
        public string Chalani_Number { get; set; }
        public string Fiscal_Year_Record { get; set; }
        public string Other_Bank_Name { get; set; }
        public string Yojana { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }

        public List<DarkhastaFormViewModel> DarkhastaFormViewModelList { get; set; }

        //ORGANIZATION SETUP
        public int Organization_Setup_Id { get; set; }
        public string Organization_Name { get; set; }
        public string Organization_Type { get; set; }
        public string District_Name { get; set; }
        public string State_Country { get; set; }
        public string Image_Path { get; set; }
        public List<DarkhastaFormViewModel> OrganizationSetupList { get; set; }

    }
}