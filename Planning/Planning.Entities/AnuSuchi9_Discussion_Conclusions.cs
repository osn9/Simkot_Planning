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
    
    public partial class AnuSuchi9_Discussion_Conclusions
    {
        public int AnuSuchi9_Discussion_Conclusions_Id { get; set; }
        public Nullable<int> AnuSuchi9_Id { get; set; }
        public string Conclusions { get; set; }
    
        public virtual AnuSuchi9 AnuSuchi9 { get; set; }
    }
}
