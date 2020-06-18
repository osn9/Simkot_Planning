using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningDocumentsViewModel
{
    public class PlanningDocumentsViewModel
    {
        public int Planning_Documents_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Fiscal_Year { get; set; }
        public string Project_Name { get; set; }
        public string Upabhokta_Gathan { get; set; }
        public string Nirnaya { get; set; }
        public string Samjhauta { get; set; }
        public string Anuman { get; set; }
        public string Mapan { get; set; }
        public string Pramanikaran { get; set; }
        public string Karya_Sampanna { get; set; }
        public string Bhuktani_Nibedan { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }

        public List<PlanningDocumentsViewModel> PlanningDocumentsViewModelList { get; set; }
    }
}