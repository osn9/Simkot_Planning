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
    
    public partial class Planning_Entry_Anudan
    {
        public int Planning_Entry_Anudan_Id { get; set; }
        public Nullable<int> Planning_Entry_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Nagarpalika_Amt { get; set; }
        public string UpaBhoktaSamiti_Amt { get; set; }
        public string Other_Amt { get; set; }
        public string JanaSahaBhagita_Amt { get; set; }
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
