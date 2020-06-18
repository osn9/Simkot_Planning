using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi11ViewModel
    {
        public int AnuSuchi11_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Name { get; set; }
        public string Position { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Suggestion { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi11ViewModel> Anusuchi11ViewModelList { get; set; }
    }
}