using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi7ViewModel
    {
        //For Anusuchi7
        public int AnuSuchi7_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public Nullable<System.DateTime> Samiti_Estd_Date { get; set; }
        public string Samiti_Address { get; set; }
        public string Established_Type { get; set; }
        public string Adakshyata { get; set; }
        public string Total_Present_No { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi7ViewModel> Anusuchi7ViewModelList { get; set; }


        //For Anusuchi7_Upabhokta_Samiti
        public int AnuSuchi7_Upabhokta_Samiti_Id { get; set; }
        public string Upabhokta_Samiti_Position { get; set; }
        public string Upabhokta_Samiti_Member_Name { get; set; }
        public string Upabhokta_Samiti_Gender { get; set; }
        public string Upabhokta_Samiti_Father_Husband_Name { get; set; }
        public string Upabhokta_Samiti_GrandFather_Name { get; set; }
        public string Upabhokta_Samiti_Mobile_No { get; set; }
        public List<Anusuchi7ViewModel> Anusuchi7_Upabhokta_SamitiViewModelList { get; set; }


        //For Anusuchi7_Anugaman
        public int AnuSuchi7_Anugaman_Samiti_Id { get; set; }
        public string Anugaman_Samiti_Position { get; set; }
        public string Anugaman_Samiti_Member_Name { get; set; }
        public string Anugaman_Samiti_Gender { get; set; }
        public string Anugaman_Samiti_Father_Husband_Name { get; set; }
        public string Anugaman_Samiti_GrandFather_Name { get; set; }
        public string Anugaman_Samiti_Mobile_No { get; set; }
        public List<Anusuchi7ViewModel> Anusuchi7_Anugaman_SamitiViewModelList { get; set; }

        //Other Required 

        public string Adakshya { get; set; }
        public string Sachib { get; set; }
        public string Koshadakshya { get; set; }
        public int UpabhoktaSamitiMemberDetailId { get; set; }
        public string Members { get; set; }
        public List<Anusuchi7ViewModel> PlanningSamjhautaMembersViewModelList { get; set; }


    }
}