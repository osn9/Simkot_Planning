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
    
    public partial class AnuSuchi3_Income
    {
        public int AnuSuchi3_Income_Id { get; set; }
        public Nullable<int> AnuSuchi3_Id { get; set; }
        public string Income_Source { get; set; }
        public string Amount_Quantity { get; set; }
        public string Income_Remarks { get; set; }
    
        public virtual AnuSuchi3 AnuSuchi3 { get; set; }
    }
}
