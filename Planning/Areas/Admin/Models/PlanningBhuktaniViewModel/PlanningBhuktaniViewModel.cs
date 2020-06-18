using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningBhuktaniViewModel
{
    public class PlanningBhuktaniViewModel
    {
        public int Planning_Bhuktani_Id { get; set; }
        public string Fiscal_Year_Record { get; set; }
        public string Budget_Title { get; set; }
        public string Budget_Title_Number { get; set; }
        public string Nirman_Upabhokta { get; set; }
        public string Aayojana_Karyakram { get; set; }
        public string AdakshyaName { get; set; }
        public string SamjhautaDate { get; set; }
        public string ManjuriSamjhautaDate { get; set; }
        public string Kul_La_Ie { get; set; }
        public string NaPa_Binayajit { get; set; }
        public string Otheers { get; set; }
        public string Jana_Sahabagita { get; set; }
        public string Peski { get; set; }
        public string Farchot_Amount { get; set; }
        public string Running_Bhuktani { get; set; }
        public string Samajik_Surekchya { get; set; }
        public string Technical_Amount { get; set; }
        public string Kantigenci { get; set; }
        public string Remaining_Bhuktani_Amount { get; set; }
        public bool Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string Bahal_Kar { get; set; }
        public string Agrim_Shulka { get; set; }
        public string Katti_Rakam { get; set; }
        public string Aanya_Raaya { get; set; }
        public string Parishramik { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public Nullable<int> Bhuktani_Type { get; set; }
        public bool IsBhuktaniApproval { get; set; }

        
        public int Kar_Katti_Id { get; set; }
        public string Kantigenci1 { get; set; }
        public string Samajik_Surekchya1 { get; set; }
        public string Agrim_Shulka1 { get; set; }
        public string Parishramik1 { get; set; }
        public string  Bahal_Kar1 { get; set; }
        public string Marmat_Sambhar1 { get; set; }
        public int ward { get; set; }
        //added for marmatsamar


        public string Marmat_Sambhar { get; set; }
        //ended 




        public List<PlanningBhuktaniViewModel> PlanningBhuktaniViewModelList { get; set; }
        public List<PlanningBhuktaniViewModel> PlanningBhuktaniSamjhautaDetailsViewModelList { get; set; }
        public List<PlanningBhuktaniViewModel> PlanningBhuktaniKarKattiViewModelList { get; set; }

        //ORGANIZATION SETUP
        public int Organization_Setup_Id { get; set; }
        public string Organization_Name { get; set; }
        public string Organization_Type { get; set; }
        public string District_Name { get; set; }
        public string State_Country { get; set; }
        public string Image_Path { get; set; }
        public List<PlanningBhuktaniViewModel> OrganizationSetupList { get; set; }

    }
}