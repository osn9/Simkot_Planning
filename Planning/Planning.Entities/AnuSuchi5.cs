//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Planning.Planning.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class AnuSuchi5
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
    
        public virtual Planning_Samjhauta Planning_Samjhauta { get; set; }
    }
}
