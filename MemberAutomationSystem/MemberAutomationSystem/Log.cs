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
    
    public partial class Log
    {
        public int log_Id { get; set; }
        public Nullable<int> log_Type_Id { get; set; }
        public Nullable<System.DateTime> log_Date { get; set; }
        public string log_Detail { get; set; }
    
        public virtual logType logType { get; set; }
    }
}
