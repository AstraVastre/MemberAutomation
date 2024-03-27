using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MemberAutomationSystem.Classes
{
    public class signIn
    {
        MemberAutomationEntities db = new MemberAutomationEntities();

        public bool MemberSignIn(string Tc, string password)
        {
            try
            {
                var query = db.authorityMembers.Where(x => x.Tc_No == Tc && x.password == password);
                if (query.Count() > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }
    }
}