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
    
    public partial class AnuSuchi10_Members
    {
        public int AnuSuchi10_Members_Id { get; set; }
        public Nullable<int> AnuSuchi10_Id { get; set; }
        public string Members { get; set; }
        public string Members_Gender { get; set; }
        public string Members_Pad { get; set; }
        public string Members_MobileNo { get; set; }
    
        public virtual AnuSuchi10 AnuSuchi10 { get; set; }
    }
}
