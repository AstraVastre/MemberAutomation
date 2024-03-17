using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace MemberAutomationSystem
{
    public class transactions
    {

        MemberAutomationEntities db = new MemberAutomationEntities();
        

        public bool memberRegistration(string name, string surname, string TcNo, DateTime doBirth)
        {
            try
            {
                members members = new members();
                members.name = name;
                members.surname = surname;
                members.Tc_No = TcNo;
                members.date_Of_Birth = doBirth;
                members.is_Active = true;
                try
                {
                    db.members.Add(members);
                    db.SaveChanges();
                    return true;
                }
                catch (Exception e)
                {
                   Console.WriteLine(e.Message);
                    return false;
                }
            }
            catch (Exception e) { return false; }
        }

        public bool memberControl(string TcNo)
        {
            try
            {
                members members = new members();
                var member = db.members.SingleOrDefault(x => x.Tc_No == TcNo);
                if (member != null) return true; else return false;
            }
            catch (Exception e) {
                Console.WriteLine(e.Message);
                return false; }

        }

        public bool memberInactive(int memberId)
        {
            try
            {
                var member = db.members.SingleOrDefault(x => x.member_Id == memberId);
                if (member != null)
                {
                    member.is_Active = false;
                    db.SaveChanges();
                    return true;
                }
                return false;

            }
            catch (Exception e) { return false;
                Console.WriteLine(e.Message);
            }
        }

        public bool memberUpdate(int memberId, string name, string surname, string TcNo, DateTime doBirth)
        {
            try
            {
                var member = db.members.SingleOrDefault(x => x.member_Id == memberId);
                if (member != null)
                {

                    member.name = name;
                    member.surname = surname;
                    member.Tc_No = TcNo;
                    member.date_Of_Birth = doBirth;
                    db.SaveChanges();
                    return true;

                }
                return false;
            }
            catch (Exception e) { return false;
                Console.WriteLine(e.Message);
            }
        }
        
       
        
    }
}