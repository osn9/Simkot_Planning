using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi5ViewModel
    {
        public int AnuSuchi5_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Project_Name { get; set; }
        public string Project_Run_Org { get; set; }
        public string Upabhokta_Samiti_Adakshya { get; set; }
        public string Project_Estimate_Amount { get; set; }
        public string Municipality_Amount { get; set; }
        public string Jana_Sahabhagita_Amount { get; set; }
        public string Other_Org_Source_Amount { get; set; }
        public string Project_Contract_Date { get; set; }
        public string Project_End_Date { get; set; }
        public string Total_Project_Beneficiaries { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public string Total_Male { get; set; }
        public string Total_Female { get; set; }
        public List<Anusuchi5ViewModel> Anusuchi5ViewModelList { get; set; }

    }
}