using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi6ViewModel
    {
        //For Anusuchi6
        public int Anusuchi6_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Project_Name { get; set; }
        public string Ward_No { get; set; }
        public string Street_Name { get; set; }
        public string Upabhokta_Samiti_Name { get; set; }
        public string Adakshya { get; set; }
        public string Sachib { get; set; }
        public string Anudan_Rakam { get; set; }
        public string Chanda_Rakam { get; set; }
        public string Jana_Sahabhagita_Rakam { get; set; }
        public string Total_Amount { get; set; }
        public string Total_Expenses_TillNow { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi6ViewModel> Anusuchi6ViewModelList { get; set; }

        //For Anusuchi6_Karyalaya
        public int Anusuchi6_Karyalaya_Id { get; set; }
        public string Karyalaya_Amount { get; set; }
        public string Nirman_Samagri_Amount { get; set; }
        public string Dashya_Amount { get; set; }
        public string Adashya_Amount { get; set; }
        public string Others_Amount { get; set; }
        public string Travel_Expenses_Amount { get; set; }
        public string Technical_Supervise_Amount { get; set; }
        public string Masalanda_Amount { get; set; }
        public List<Anusuchi6ViewModel> Anusuchi6_KaryalayaViewModelList { get; set; }

        //For Anusuchi6_Janasahabhagita
        public int Anusuchi6_Janasahabhagita_Id { get; set; }
        public string Janasahabhagita_Amount { get; set; }
        public string Sharam_Amount { get; set; }
        public string Jinsi_Amount { get; set; }
        public string Technical_Review_Amount { get; set; }
        public string Upabhikta_Decision_Amount { get; set; }
        public string Kista_Rakam_Demand { get; set; }
        public string Field_Supervise_Decision { get; set; }
        public string Main_Expenses { get; set; }
        public List<Anusuchi6ViewModel> Anusuchi6_JanasahabhagitaViewModelList { get; set; }

        //For Anusuchi6_Solutions
        public int Anusuchi6_Solutions_Id { get; set; }
        public string Solutions { get; set; }
        public List<Anusuchi6ViewModel> Anusuchi6_SolutionsViewModelList { get; set; }

    }
}