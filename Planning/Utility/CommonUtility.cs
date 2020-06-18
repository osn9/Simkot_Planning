using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Planning.Entities;
using System.Web.Mvc;

using Microsoft.AspNet.Identity;
using System.Threading;
using System.Security.Claims;

namespace Planning.Utility
{
    public class CommonUtility
    {

        public static DateTime GetEnglishDateFromNepaliTest(string NepaliDate)
        {
            DateTime engdate;
            DateTime temp;
            string date = string.Empty;
            DateTime TodayDateDefault = DateTime.Now;
            try
            {
                if (DateTime.TryParse(NepaliDate, out temp))
                {
                    date = NepaliDate;
                    using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                    {
                        string[] arry = date.Split('-');
                        string yr = arry[0];
                        string mm = arry[1];//This is month...
                        string dd = arry[2];//This is date
                        int LastDateOfNepaliMonth = ent.Database.SqlQuery<int>("IsNepaliDateExist " + yr + "," + mm + "").FirstOrDefault<int>();
                        int ParameterDD = Convert.ToInt32(dd);

                        if (LastDateOfNepaliMonth >= ParameterDD)
                        {
                            engdate = ent.Database.SqlQuery<DateTime>("sp_GetRomanDate " + yr + "," + mm + "," + dd + "").FirstOrDefault<DateTime>();
                        }
                        else
                        {
                            engdate = DateTime.Now;
                        }
                    }
                    return engdate;
                }
                else
                {
                    if (NepaliDate != "")
                    {
                        using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                        {
                            date = NepaliDate;
                            string[] arry = date.Split('-');
                            string yr = arry[0];
                            string mm = arry[1];
                            string dd = arry[2];
                            if (Convert.ToInt32(dd) <= 32)
                            {
                                engdate = ent.Database.SqlQuery<DateTime>("sp_GetRomanDate " + yr + "," + mm + "," + dd + "").FirstOrDefault<DateTime>();
                                return engdate;
                            }
                            else
                            {
                                return DateTime.Now;
                            }
                        }
                    }
                    else
                    {
                        return DateTime.Now;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static DateTime GetEnglishDateFromNepali(string NepaliDate)
        {
            DateTime engdate;
            DateTime temp;
            string date = string.Empty;
            DateTime TodayDateDefault = DateTime.Now;
            try
            {
                if (DateTime.TryParse(NepaliDate, out temp))
                {
                    date = NepaliDate;
                    using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                    {
                        string[] arry = date.Split('/');
                        string yr = arry[0];
                        string mm = arry[1];//This is date
                        string dd = arry[2];//This is month...
                        int LastDateOfNepaliMonth = ent.Database.SqlQuery<int>("IsNepaliDateExist " + yr + "," + mm + "").FirstOrDefault<int>();
                        int ParameterDD = Convert.ToInt32(dd);

                        if (LastDateOfNepaliMonth >= ParameterDD)
                        {
                            engdate = ent.Database.SqlQuery<DateTime>("sp_GetRomanDate " + yr + "," + mm + "," + dd + "").FirstOrDefault<DateTime>();
                        }
                        else
                        {
                            engdate = DateTime.Now;
                        }
                    }
                    return engdate;
                }
                else
                {
                    if (NepaliDate != "")
                    {
                        using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                        {
                            date = NepaliDate;
                            string[] arry = date.Split('/');
                            string yr = arry[0];
                            string mm = arry[1];
                            string dd = arry[2];
                            if (Convert.ToInt32(dd) <= 32)
                            {
                                engdate = ent.Database.SqlQuery<DateTime>("sp_GetRomanDate " + yr + "," + mm + "," + dd + "").FirstOrDefault<DateTime>();
                                return engdate;
                            }
                            else
                            {
                                return DateTime.Now;
                            }
                        }
                    }
                    else
                    {
                        return DateTime.Now;
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static string getNepaliDate(string EnglishDate)
        {
            if (EnglishDate == "N/A")
            {
                EnglishDate = DateTime.Now.ToShortDateString();
            }
            if (EnglishDate == "1/1/0001")
            {
                EnglishDate = DateTime.Now.ToShortDateString();
            }
            if (EnglishDate == "")
            {
                EnglishDate = DateTime.Now.ToShortDateString();
            }
            if (EnglishDate == null)
            {
                EnglishDate = DateTime.Now.ToShortDateString();
            }
            string date = EnglishDate;
            int Pos = date.IndexOf(" ");
            if (Pos == -1)
            {
                Pos = 0;
            }
            string checkdate = EnglishDate.Substring(0, Pos);

            if (checkdate == "1/1/0001")
            {
                date = DateTime.Now.ToShortDateString();
            }
            if (date.Length > 10)
            {
                int position = date.IndexOf(" ");
                date = date.Substring(0, position);
            }
            string Nepalidate = "";
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Nepalidate = ent.Database.SqlQuery<string>("sp_GetLocalDate '" + date + "', 1").FirstOrDefault<string>();
            }
            //string nepaliD = Nepalidate.Replace("-", "/");
            //return nepaliD;
            return Nepalidate;
        }

        public static IEnumerable<SelectListItem> GetWardNoList()
        {
            return new SelectList(new[]
            {
                new {Id="",Value="--कृपया छान्नुहोस--"},
                new {Id="1",Value="वडा नं. १"},
                new {Id="2",Value="वडा नं. २"},
                new {Id="3",Value="वडा नं. ३"},
                new {Id="4",Value="वडा नं. ४"},
                new {Id="5",Value="वडा नं. ५"},
                new {Id="6",Value="वडा नं. ६"},
                new {Id="7",Value="वडा नं. ७"},
                new {Id="8",Value="वडा नं. ८"},
                new {Id="9",Value="वडा नं. ९"},
                new {Id="10",Value="वडा नं. १०"},
                new {Id="11",Value="वडा नं. ११"},
                new {Id="12",Value="वडा नं. १२"},
                new {Id="13",Value="वडा नं. १३"},
                new {Id="14",Value="वडा नं. १४"},
                new {Id="15",Value="वडा नं. १५"},
                new {Id="16",Value="वडा नं. १६"},
                new {Id="17",Value="वडा नं. १७"},
            }, "Id", "Value");
        }

        public static IEnumerable<SelectListItem> GetWorkTypeList()
        {
            return new SelectList(new[]
            {
                new {Id="1",Value="उपभोक्ता समिति"},
                new {Id="2",Value="ठेक्का पट्टा"},
                new {Id="3",Value="अमानत"},
            }, "Id", "Value");
        }

        public static IEnumerable<SelectListItem> GetWorkAreaList()
        {
            return new SelectList(new[]
            {
                new {Id="1",Value="पूर्वाधार"},
                new {Id="2",Value="सामाजिक"},
                new {Id="3",Value="आर्थिक"},
                new {Id="4",Value="वातावरण"},
            }, "Id", "Value");
        }

        public static SelectList GetAllWorkAreaList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Work_Area.Where(x => x.Status == true).ToList(), "Work_Area_Id", "Work_Area_Name");
            }
        }

        public static string GetWorkAreaNameById(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var workAreaName = ent.Work_Area.Where(x => x.Work_Area_Id == id).Select(x => x.Work_Area_Name).FirstOrDefault();
                return workAreaName;
            }
        }

        public static SelectList GetAllWorkTypeList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Work_Type.Where(x => x.Status == true).ToList(), "Work_Type_Id", "Work_Type_Name");
            }
        }

        public static string GetWorkTypeNameById(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var workTypeName = ent.Work_Type.Where(x => x.Work_Type_Id == id).Select(x => x.Work_Type_Name).FirstOrDefault();
                return workTypeName;
            }
        }

        public static SelectList GetBudgetSourceList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Budget_Source.Where(x => x.Status == true).ToList(), "Budget_Source_Id", "Source_Name");
            }
        }

        public static string GetBudgetSourceNameById(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var budgetSourceName = ent.Budget_Source.Where(x => x.Budget_Source_Id == id).Select(x => x.Source_Name).FirstOrDefault();
                return budgetSourceName;
            }
        }

        public static SelectList GetFiscalYearList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Planning_Samjhauta.Where(x => x.Status == true).Select(x => x.Fiscal_Year_Record).Distinct().ToList());
            }
        }

        public static SelectList GetSamjhautaOrgList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Planning_Samjhauta.Where(x => x.Status == true).Select(x => x.Samjhauta_Org_Name).ToList());
            }
        }

        public static SelectList GetProjectNameList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Project_Entry_Detail.Where(x => x.Status == true).Select(x => x.Project_Name).Distinct().ToList());
            }
        }

        public static IEnumerable<SelectListItem> GetGenderList()
        {
            return new SelectList(new[]
            {
                new {Id="महिला",Value="महिला"},
                new {Id="पुरुष",Value="पुरुष"},
                new {Id="अन्य",Value="अन्य"},
            }, "Id", "Value");
        }

        public static IEnumerable<SelectListItem> GetDesignitionList()
        {
            return new SelectList(new[]
            {
                new {Id="अध्यक्ष",Value="अध्यक्ष"},
                new {Id="उपाध्यक्ष",Value="उपाध्यक्ष"},
                new {Id="कोषाध्यक्ष",Value="कोषाध्यक्ष"},
                new {Id="सचिव",Value="सचिव"},
                new {Id="सदस्य",Value="सदस्य"},
            }, "Id", "Value");
        }

        public static SelectList GetClassABankList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Class_A_Bank_List.ToList(), "Bank_Name_Nepali", "Bank_Name_Nepali");
            }
        }

        public static IEnumerable<SelectListItem> GetContengencyPercentage()
        {
            return new SelectList(new[]
            {
                new {Id="1",Value="१%"},
                new {Id="2",Value="२%"},
                new {Id="3",Value="३%"},
                new {Id="4",Value="४%"},
                new {Id="5",Value="५%"},
                new {Id="6",Value="६%"},
                new {Id="7",Value="७%"},
                new {Id="8",Value="८%"},
                new {Id="9",Value="९%"},
                new {Id="10",Value="१०%"},
            }, "Id", "Value");
        }

        public static IEnumerable<SelectListItem> GetBhuktaniType()
        {
            return new SelectList(new[]
            {
                new {Id="1",Value="पेशकी"},
                new {Id="2",Value="प्रथम भुक्तानी"},
                new {Id="3",Value="दोश्रो भुक्तानी"},
                new {Id="4",Value="अन्तिम भुक्तानी"},
            }, "Id", "Value");
        }

        public static string GetCurrentFiscalYearTitle()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var FiscalYear = ent.Fiscal_Year_Record.ToList().Where(x => x.IsActive == true).SingleOrDefault();
                if (FiscalYear != null)
                    return FiscalYear.Title;
                else
                    return "N/A";
            }
        }
        public static string GetBudgetNameById(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Budget_Source.ToList().Where(x => x.Budget_Source_Id == id).SingleOrDefault();
                if (data != null)
                    return data.Source_Name;
                else
                    return "N/A";
            }
        }
        public static SelectList Samjhauta_Org_List()
        {
            using(var ent = new PLANNING_OCT_03Entities())
            {
                var result = new SelectList(ent.Planning_Samjhauta.ToList(), "Samjhauta_Org_Name", "Samjhauta_Org_Name");
                return result;
            }
        }

        public static string GetKarkatiMarmatSambhar()
        {
            using (var ent = new PLANNING_OCT_03Entities())
            {
                return ent.Kar_Katti.FirstOrDefault().MarmatSambhar;
            }
        }

        public static SelectList GetItemList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                return new SelectList(ent.Items.Where(x => x.Status == true).ToList(), "itemId", "name");
            }
        }

        public static string GetItemUnitFromId(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Items.Where(x => x.itemId == id).FirstOrDefault();
                if (data!=null)
                {
                    return data.ekainame;
                }

                return "N/A";
            }
        }
    }
}