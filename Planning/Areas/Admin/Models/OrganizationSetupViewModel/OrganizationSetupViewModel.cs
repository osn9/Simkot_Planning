using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.OrganizationSetupViewModel
{
    public class OrganizationSetupViewModel
    {
        public int Organization_Setup_Id { get; set; }
        public string Organization_Name { get; set; }
        public string Organization_Type { get; set; }
        public string District_Name { get; set; }
        public string State_Country { get; set; }
        public string Image_Path { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public List<OrganizationSetupViewModel> OrganizationSetupViewModelList { get; set; }


        public int Kar_Katti_Id { get; set; }
        public string Contigency { get; set; }
        public string SamajikSurekchya { get; set; }
        public string BahalKar { get; set; }
        public string AgrimShulka { get; set; }
        public string Parishramik { get; set; }
        public string MarmatSambhar { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public List<OrganizationSetupViewModel> KarKattiViewModelList { get; set; }

        public int Sarta_Setup_Id { get; set; }
        public string Description { get; set; }
        public List<OrganizationSetupViewModel> SartaViewModelList { get; set; }

    }
}