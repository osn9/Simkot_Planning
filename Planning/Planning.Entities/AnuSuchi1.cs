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
    
    public partial class AnuSuchi1
    {
        public int AnuSuchi1_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Upabhokta_Samiti_Name { get; set; }
        public string Adakshya { get; set; }
        public string Upadakshya { get; set; }
        public string Sachib { get; set; }
        public string Koshadakshya { get; set; }
        public Nullable<System.DateTime> Establish_Date { get; set; }
        public string Bank_Name { get; set; }
        public string Account_Number { get; set; }
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
