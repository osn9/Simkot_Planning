using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi4ViewModel
    {
        //For Anusuchi4
        public int AnuSuchi4_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Project_Name { get; set; }
        public string Project_Place { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Project_Estimated_Amount { get; set; }
        public string Fiscal_Year { get; set; }
        public string Project_Approval_Date { get; set; }
        public string Project_To_Finish_Date { get; set; }
        public string Project_Ended_Date { get; set; }
        public Nullable<System.DateTime> Samiti_Expenses_Approval_Date { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi4ViewModel> Anusuchi4ViewModelList { get; set; }

        //For Anusuchi4_Income
        public int Anusuchi4_Income_Id { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string First_Kista { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Second_Kista { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Third_Kista { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Janashram { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Bastugat_Sahayata { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Lagat_Sahabhagita { get; set; }
        public List<Anusuchi4ViewModel> Anusuchi4_IncomeViewModelList { get; set; }

        //For Anusuchi4_Expenses
        public int Anusuchi4_Expenses_Id { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Jyalla { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Nirman_Samagri_Kharid { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Dhuwani { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Bhada { get; set; }
        [RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Bawestapan_Kharcha { get; set; }
        public List<Anusuchi4ViewModel> Anusuchi4_ExpensesViewModelList { get; set; }


    }
}