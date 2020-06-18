//using Planning.Planning.Entities;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Net.NetworkInformation;
//using System.Web;


//namespace Planning.Helpers
//{
//    public class LoginTempHelper
//    {
//        public static bool IsYourLoginStillTrue(string userId, string sid)
//        {
//            PLANNINGEntities context = new PLANNINGEntities();

//            IEnumerable<LoginTempTable> logins = (from i in context.LoginTempTable
//                                                  where i.status == true &&
//                                                  i.UserId == userId && i.SesionId == sid
//                                                  select i).AsEnumerable();
//            return logins.Any();
//        }
//        public static bool IsUserLoggedOnElsewhere(string userId, string sid)
//        {
//            PLANNINGEntities context = new PLANNINGEntities();

//            IEnumerable<LoginTempTable> logins = (from i in context.LoginTempTable
//                                                  where i.status == true &&
//                                                  i.UserId == userId && i.SesionId != sid
//                                                  select i).AsEnumerable();
//            return logins.Any();
//        }

//        public static void LogEveryoneElseOut(string userId, string sid)
//        {
//            PLANNINGEntities context = new PLANNINGEntities();

//            IEnumerable<LoginTempTable> logins = (from i in context.LoginTempTable
//                                                  where i.status == true &&
//                                                  i.UserId == userId &&
//                                                  i.SesionId != sid // need to filter by user ID
//                                                  select i).AsEnumerable();

//            foreach (LoginTempTable item in logins)
//            {
//                item.status = false;
//            }

//            context.SaveChanges();
//        }

//        public static bool IsUserLoggedIn(string UserName)
//        {
//            bool IsLoginIn = false;
//            using (PLANNINGEntities ent = new PLANNINGEntities())
//            {
//                var result = ent.LoginTempTable.Where(x => x.UserId == UserName);
//                if (result.Count() > 0)
//                {
//                    IsLoginIn = (bool)result.FirstOrDefault().status;
//                }
//                return IsLoginIn;
//            }
//        }
//        public static bool LogOfFromUser(string UserId)
//        {
//            bool LogoffStatus = false;
//            using (PLANNINGEntities ent = new PLANNINGEntities())
//            {
//                var result = ent.LoginTempTable.Where(x => x.UserId == UserId);
//                if (result.Count() > 0)
//                {
//                    LogoffStatus = (bool)result.FirstOrDefault().status;
//                    if (LogoffStatus)
//                    {
//                        result.FirstOrDefault().status = false;
//                        ent.SaveChanges();
//                    }
//                }

//            }
//            return true;
//        }

//        public static bool InsertOrUpdateLogin(string UserId, string SessionId, bool loginStatus, string CompAddress)
//        {
//            using (PLANNINGEntities ent = new PLANNINGEntities())
//            {
//                //first count 
//                var result = ent.LoginTempTable.Where(x => x.UserId == UserId).ToList();
//                if (result.Count > 0)
//                {
//                    result.FirstOrDefault().status = true;
//                    result.FirstOrDefault().SesionId = SessionId;
//                    result.FirstOrDefault().CreatedorUpdateDate = DateTime.Now;
//                    result.FirstOrDefault().ComputerAddress = CompAddress;
//                }
//                else
//                {
//                    var ObjToInsert = new LoginTempTable()
//                    {
//                        SesionId = SessionId,
//                        UserId = UserId,
//                        status = loginStatus,
//                        CreatedorUpdateDate = DateTime.Now,
//                        ComputerAddress = CompAddress
//                    };
//                    ent.LoginTempTable.Add(ObjToInsert);

//                }

//                ent.SaveChanges();
//                return true;
//            }
//        }
//        public static string GetMacAddress()
//        {
//            var macAddr = (
//                           from nic in NetworkInterface.GetAllNetworkInterfaces()
//                           //where nic.OperationalStatus == OperationalStatus.Up
//                           select nic.GetPhysicalAddress().ToString()
//                       ).FirstOrDefault();
//            return macAddr;
//        }

//        public static string GetMacAddressOfUser(string userId)
//        {
//            string macAddress = string.Empty;
//            using (PLANNINGEntities ent = new PLANNINGEntities())
//            {
//                var Address = ent.LoginTempTable.Where(x => x.UserId == userId);
//                if (Address.Count() > 0)
//                {
//                    return Address.FirstOrDefault().ComputerAddress;
//                }
//                else
//                {
//                    return "";
//                }
//            }
//        }
//        public static bool UpdateMacAddress(string Uid, string ComputerAdd)
//        {
//            using (PLANNINGEntities ent = new PLANNINGEntities())
//            {
//                var result = ent.LoginTempTable.Where(x => x.UserId == Uid);
//                if (result.Count() > 0)
//                {
//                    result.FirstOrDefault().ComputerAddress = ComputerAdd;
//                    ent.SaveChanges();
//                    return true;
//                }
//                else
//                {
//                    return false;
//                }
//            }
//        }


//    }



//    public class LoginsTemps
//    {
//        public int LoginTempTableId { get; set; }
//        public string UserId { get; set; }
//        public string SesionId { get; set; }
//        public bool status { get; set; }
//        public DateTime CreatedorUpdateDate { get; set; }
//    }
//}