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
    
    public partial class Municipality_Samiti_Manjuri_Patra
    {
        public int Municipality_Samiti_Manjuri_Patra_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Municipality_Rep_Name { get; set; }
        public string Municipality_Rep_Post { get; set; }
        public string Municipality_Rep_Sign { get; set; }
        public string Municipality_Manjuri_Date { get; set; }
        public string Samiti_Adakshya_Name { get; set; }
        public string Samiti_Adakshya_Sign { get; set; }
        public string Samiti_Sachib_Name { get; set; }
        public string Samiti_Sachib_Sign { get; set; }
        public string Samiti_Rohabar_Name { get; set; }
        public string Samiti_Rohabar_Sign { get; set; }
        public string yojanSakhaRepresentativePostSign { get; set; }
        public string yojanSakhaRepresentativePost { get; set; }
        public string yojanSakhaRepresentaive { get; set; }
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
