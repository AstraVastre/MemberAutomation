//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MemberAutomationSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class authorityMembers
    {
        public int authority_member_Id { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string Tc_No { get; set; }
        public Nullable<int> authority_type_Id { get; set; }
    
        public virtual authority authority { get; set; }
    }
}
