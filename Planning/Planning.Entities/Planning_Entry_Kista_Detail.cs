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
    
    public partial class Planning_Entry_Kista_Detail
    {
        public int Planning_Entry_Kista_Detail_Id { get; set; }
        public Nullable<int> Planning_Entry_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Kista_Kram { get; set; }
        public string Kista_Rakam { get; set; }
        public Nullable<System.DateTime> Payment_Date { get; set; }
        public string Peski_Bhuktani { get; set; }
        public string Sarta { get; set; }
        public string Remarks { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        public virtual Planning_Samjhauta Planning_Samjhauta { get; set; }
        public virtual Planning_Entry Planning_Entry { get; set; }
    }
}
