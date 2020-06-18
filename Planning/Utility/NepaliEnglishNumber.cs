
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Planning.Entities;

namespace Planning.Utility
{
    public class NepaliEnglishNumber
    {
        public static string English_Nepali(string EnglishNumericValue)
        {
            if (EnglishNumericValue == null)
            {
                EnglishNumericValue = " ";
            }
            string Eng_Value = EnglishNumericValue; // unicode  numeric chars
            string Nep_value = "";
            string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
            string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
            char[] Inputtext = Eng_Value.ToString().ToCharArray();
            for (int j = 0; j < Eng_Value.Length; j++)
            {
                for (int i = 0; i < 13; i++)
                {
                    string value = Text_English[i].ToString();
                    string value1 = Inputtext[j].ToString();
                    if (value == value1)
                    {
                        Nep_value += Text_Nepali[i].ToString();
                    }
                }

            }
            return Nep_value;
        }

        public static string Nepali_English(string NepaliNumericValue)
        {
            int k = 0;
            string Nepali_Value = NepaliNumericValue;
            string Eng_Value = "";
            string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
            string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
            char[] InputText = NepaliNumericValue.ToString().ToCharArray();
            for (int j = 0; j < Nepali_Value.Length; j++)
            {
                for (int i = 0; i < 13; i++)
                {
                    string value = Text_Nepali[i].ToString();
                    string value1 = InputText[j].ToString();
                    if (value == value1)
                    {
                        Eng_Value += Text_English[i].ToString();
                        k++;
                    }
                }
                if (k == 0)
                {
                    return Eng_Value = Nepali_Value;
                }
            }
            return Eng_Value;
        }

        public static string GetNepaliMonthIdOrDateFromEnglishDate(DateTime EnglishDate, int YearOrMonthOrDate)
        {
            string NepaliDate = "";
            string NepaliMonthId = "";

            NepaliDate = Utility.CommonUtility.getNepaliDate(EnglishDate.ToShortDateString());
            int FirstIndex = NepaliDate.IndexOf("/") + 1;
            int LastIndex = NepaliDate.LastIndexOf("/") + 1;
            if (YearOrMonthOrDate == 1)//1 is year
            {
                NepaliMonthId = NepaliDate.Substring(0, 4);
            }
            else if (YearOrMonthOrDate == 2)//2 is month
            {
                NepaliMonthId = NepaliDate.Substring(FirstIndex, 2);
            }
            else//3 is date
            {
                NepaliMonthId = NepaliDate.Substring(LastIndex, 2);
            }

            return NepaliMonthId;
        }

        public static int GetFiscalYearMonthId(string MonthId, int FiscalYearTypeId)
        {
            int returnValue = 0;

            switch (MonthId)
            {
                case "01":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 10;
                    }
                    else
                    {
                        returnValue = 1;
                    }
                    break;
                case "02":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 11;
                    }
                    else
                    {
                        returnValue = 2;
                    }
                    break;
                case "03":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 12;
                    }
                    else
                    {
                        returnValue = 3;
                    }
                    break;

                case "04":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 1;
                    }
                    else
                    {
                        returnValue = 4;
                    }
                    break;
                case "05":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 2;
                    }
                    else
                    {
                        returnValue = 5;
                    }
                    break;

                case "06":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 3;
                    }
                    else
                    {
                        returnValue = 6;
                    }
                    break;
                case "07":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 4;
                    }
                    else
                    {
                        returnValue = 7;
                    }
                    break;
                case "08":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 5;
                    }
                    else
                    {
                        returnValue = 8;
                    }
                    break;
                case "09":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 6;
                    }
                    else
                    {
                        returnValue = 9;
                    }
                    break;

                case "10":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 7;
                    }
                    else
                    {
                        returnValue = 10;
                    }
                    break;
                case "11":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 8;
                    }
                    else
                    {
                        returnValue = 11;
                    }

                    break;
                case "12":
                    if (FiscalYearTypeId == 2)
                    {
                        returnValue = 9;
                    }
                    else
                    {
                        returnValue = 12;
                    }
                    break;

                default:
                    break;
            }

            return returnValue;

        }

        public static IEnumerable<SelectListItem> GetNepaliMonthDropDownList()
        {
            return new SelectList(new[]
            {
                new {Id="1",Value="साउन"},
                new {Id="2",Value="भाद्र"},
                new {Id="3",Value="असोज"},
                new {Id="4",Value="कार्तिक"},
                new {Id="5",Value="मङ्शिर"},
                new {Id="6",Value="पुष"},
                new {Id="7",Value="माघ"},
                new {Id="8",Value="फाल्गुन"},
                new {Id="9",Value="चैत्र"},
                new {Id="10",Value="बैशाख"},
                new {Id="11",Value="जेष्ठ"},
                new {Id="12",Value="असार"},


            }, "Id", "Value");

        }

        public static Int32 GetAge(DateTime dateOfBirth)
        {
            var today = DateTime.Today;
            var a = (today.Year * 100 + today.Month) * 100 + today.Day;
            var b = (dateOfBirth.Year * 100 + dateOfBirth.Month) * 100 + dateOfBirth.Day;
            return (a - b) / 10000;
        }


        public static DateTime CurrentMonthStartDate(string NepaliYear, string CurrentMonthId)
        {
            NepaliYear = "2073";
            CurrentMonthId = "3";
            DateTime StartdateCurrent = DateTime.Now;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var StartDate = ent.Database.SqlQuery<DateTime>(@"select E_Start_Date as StartDate from DateConversion_TblNepaliCalender where YearID='" + NepaliYear + "' and MonthID='" + CurrentMonthId + "' ").ToList();
                if (StartDate.Count > 0)
                {
                    StartdateCurrent = StartDate.SingleOrDefault();
                }
                return StartdateCurrent;

            }

        }


        public static DateTime CurrentMonthEndDate(string NepaliYear, string CurrentMonthId)
        {
            NepaliYear = "2073";
            CurrentMonthId = "3";
            DateTime EnddateCurrent = DateTime.Now;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var EndDate = ent.Database.SqlQuery<DateTime>(@"select E_End_Date as EndDate from DateConversion_TblNepaliCalender where YearID='" + NepaliYear + "' and MonthID='" + CurrentMonthId + "' ").ToList();
                if (EndDate.Count > 0)
                {
                    EnddateCurrent = EndDate.SingleOrDefault();
                }
                return EnddateCurrent;
            }

        }

        //added by bipin
        public static string Get_Nepali_English(string NepaliNumericValue)
        {
            if (NepaliNumericValue != null)
            {
                int k = 0;
                string Nepali_Value = NepaliNumericValue;
                string Eng_Value = "";
                string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
                string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
                char[] InputText = NepaliNumericValue.ToString().ToCharArray();
                for (int j = 0; j < Nepali_Value.Length; j++)
                {
                    for (int i = 0; i < 13; i++)
                    {
                        string value = Text_Nepali[i].ToString();
                        string value1 = InputText[j].ToString();
                        if (value == value1)
                        {
                            Eng_Value += Text_English[i].ToString();
                            k++;
                        }
                    }
                    if (k == 0)
                    {
                        return Eng_Value = Nepali_Value;
                    }
                }
                return Eng_Value;
            }
            else
            {
                return 0.ToString();
            }
        }


        public static string Get_English_Nepali(string EnglishNumericValue)
        {
            if (EnglishNumericValue == null)
            {
                //EnglishNumericValue = " ";
                EnglishNumericValue = 0.ToString();
            }
            //if (EnglishNumericValue != null)
            //{ 
            string Eng_Value = EnglishNumericValue; // unicode  numeric chars
            string Nep_value = "";
            string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
            string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
            char[] Inputtext = Eng_Value.ToString().ToCharArray();
            for (int j = 0; j < Eng_Value.Length; j++)
            {
                for (int i = 0; i < 13; i++)
                {
                    string value = Text_English[i].ToString();
                    string value1 = Inputtext[j].ToString();
                    if (value == value1)
                    {
                        Nep_value += Text_Nepali[i].ToString();
                    }
                }

            }
            return Nep_value;
        //}
        //    else
        //    {
        //        return "";
        //    }
        }


        //end

    }
}
