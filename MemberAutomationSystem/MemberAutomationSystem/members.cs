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
    
    public partial class members
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public members()
        {
            this.check_In_Out = new HashSet<check_In_Out>();
            this.excuse = new HashSet<excuse>();
        }
    
        public int member_Id { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string Tc_No { get; set; }
        public Nullable<System.DateTime> date_Of_Birth { get; set; }
        public Nullable<bool> is_Active { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<check_In_Out> check_In_Out { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<excuse> excuse { get; set; }
    }
}