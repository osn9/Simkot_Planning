using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi3ViewModel
    {
        //For Anusuchi3
        public int AnuSuchi3_Id { get; set; }
        public Nullable<int> Planing_Samjhauta_Id { get; set; }
        public string Project_Name { get; set; }
        public string Project_Place { get; set; }
        public string Estimated_Amount { get; set; }
        public string Project_Start_Date { get; set; }
        public string Project_End_Date { get; set; }
        public string Upabhokta_Samiti_Name { get; set; }
        public string Adakshya_Name { get; set; }
        public string Total_Members { get; set; }
        public string Male_No { get; set; }
        public string Female_No { get; set; }
        public string Total_Benificial_No { get; set; }
        public string Rohabar_Name { get; set; }
        public string Rohabar_Position { get; set; }
        public Nullable<System.DateTime> Rohabar_Date { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ViewModelList { get; set; }

        //For Anusuchi3_Income
        public int AnuSuchi3_Income_Id { get; set; }
        public string Income_Source { get; set; }
        public string Amount_Quantity { get; set; }
        public string Income_Remarks { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3IncomeViewModelList { get; set; }

        //For Anusuchi3_Expenses
        public int AnuSuchi3_Expenses_Id { get; set; }
        public string Expenses_Details { get; set; }
        public string Expenses_Rate { get; set; }
        public string Expenses_Quantity { get; set; }
        public string Expenses_Total { get; set; }
        public int Type { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ExpensesViewModelList { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ExpensesViewModelList2 { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ExpensesViewModelList3 { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ExpensesViewModelList4 { get; set; }

        //For Anusuchi3_Maujat
        public int AnuSuchi3_Maujat_Id { get; set; }
        public string Maujat_Details { get; set; }
        public string Maujat_Amount { get; set; }
        public string Maujat_Remarks { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3MaujatViewModelList { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3MaujatViewModelList2 { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3MaujatViewModelList3 { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3MaujatViewModelList4 { get; set; }

        //For Anusuchi3_Bhuktani
        public int AnuSuchi3_Bhuktani_Id { get; set; }
        public string Bhuktani_Details { get; set; }
        public string Bhuktani_Amount { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3BhuktaniViewModelList { get; set; }

        //For Anusuchi3_Project_Work_Detail
        public int AnuSuchi3_Project_Work_Detail_Id { get; set; }
        public string Work_Details { get; set; }
        public string Work_Plan { get; set; }
        public string Work_Progress { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3ProjectWorkDetailViewModelList { get; set; }

        //For Anusuchi3_Work_Division
        public int AnuSuchi3_Work_Division_Id { get; set; }
        public string Members { get; set; }
        public List<Anusuchi3ViewModel> Anusuchi3WorkDivisionViewModelList { get; set; }

    }
}