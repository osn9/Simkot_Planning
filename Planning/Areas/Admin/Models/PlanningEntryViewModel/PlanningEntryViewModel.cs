using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningEntryViewModel
{
    public class PlanningEntryViewModel
    {
        //For Planning_Entry
        public int Planning_Entry_Id { get; set; }
        public string FiscalYear { get; set; }
        public string Planning_Name { get; set; }
        public string Planning_Start_Date { get; set; }
        public string Planning_End_Date { get; set; }
        public string Work_Details { get; set; }
        public string Amount_Estimate { get; set; }
        public Nullable<int> Work_Type { get; set; }
        public Nullable<int> Ward_No { get; set; }
        public Nullable<int> Work_Area { get; set; }
        public Nullable<int> Budget_Source_Id { get; set; }
        public string Planning_Type { get; set; }
        public string UpaBhoktaSamiti_HeadName { get; set; }
        public string Contractor_Name { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        //New Added Field in DataBase
        public Nullable<System.DateTime> Planning_Completed_Date { get; set; }
        public string Total_Use_Amount { get; set; }

        //For Planning_Entry_Anudan
        public int Planning_Entry_Anudan_Id { get; set; }
        public string Nagarpalika_Amt { get; set; }
        public string UpaBhoktaSamiti_Amt { get; set; }
        public string Other_Amt { get; set; }
        public string JanaSahaBhagita_Amt { get; set; }

        //For Planning_Entry_Kista_Detail
        public int Planning_Entry_Kista_Detail_Id { get; set; }
        public string Kista_Kram { get; set; }
        public string Kista_Rakam { get; set; }
        public Nullable<System.DateTime> Payment_Date { get; set; }
        public string Peski_Bhuktani { get; set; }
        public string Sarta { get; set; }
        public string Remarks { get; set; }

        //others
        public string BudgetSource { get; set; }

        public List<PlanningEntryViewModel> PlanningEntryViewModelList { get; set; }

        public List<PlanningEntryViewModel> KistaFirstDetailsList { get; set; }
        public List<PlanningEntryViewModel> KistaSecondDetailsList { get; set; }
        public List<PlanningEntryViewModel> KistaThirdDetailsList { get; set; }
        public List<PlanningEntryViewModel> KistaLastDetailsList { get; set; }

        public List<PlanningEntryViewModel> OdaWiseViewModelList { get; set; }
        public List<PlanningEntryViewModel> NagarWiseViewModelList { get; set; }
        public List<PlanningEntryViewModel> AnuSuchiViewModelListByWard { get; set; }
        public List<PlanningEntryViewModel> AnuSuchiViewModelListByWorkArea { get; set; }

        //ORGANIZATION SETUP
        public int Organization_Setup_Id { get; set; }
        public string Organization_Name { get; set; }
        public string Organization_Type { get; set; }
        public string District_Name { get; set; }
        public string State_Country { get; set; }
        public string Image_Path { get; set; }
        public List<PlanningEntryViewModel> OrganizationSetupList { get; set; }


    }
}