using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningSamjhautaViewModel;
using Planning.Areas.Admin.Models.PlanningBhuktaniViewModel;
using Planning.Areas.Admin.Models.PlanningEntryViewModel;
using Planning.Areas.Admin.Models.PlanningDocumentsViewModel;
using Planning.Planning.Entities;
using System.Data.Entity;
using System.Collections;
using System.Data.Entity.Validation;
using System.Text.RegularExpressions;
using Planning.Areas.Admin.Models;

namespace Planning.Areas.Admin.Providers.PlanningSamjhautaProvider
{
    public class PlanningSamjhautaProvider
    {
        public int InsertPlanningSamjhauta(PlanningSamjhautaViewModel model)
        {
            int planningSamjhautaId = 0;
            int planningEntryId;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Planning_SamjhautaEntity = new Planning_Samjhauta()
                {
                    //Fiscal_Year_Record = Utility.NepaliEnglishNumber.Nepali_English(model.Fiscal_Year_Record),
                    //Fiscal_Year_Record = model.Fiscal_Year_Record,
                    Fiscal_Year_Record = model.FiscalYear,
                    Samjhauta_Org_Name = model.Samjhauta_Org_Name,
                    Contegency_Amount = model.Contegency_Amount,
                    MarmatSambhar_Amount = model.MarmatSambhar_Amount,
                    Total_Amount = model.Total_Amount,
                    Contegency_Percentage = model.Contegency_Percentage,
                    Status = true,
                    Samjhauta_Acceptance=model.Samjhauta_Acceptance,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Samjhauta.Add(Planning_SamjhautaEntity);
                planningSamjhautaId = Planning_SamjhautaEntity.Planning_Samjhauta_Id;

                var Organization_RepresentativeEntitity = new Organization_Representative()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Representative_Name = model.Representative_Name,
                    Representative_Designition = model.Representative_Designition,
                    Representative_Address = model.Representative_Address,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Organization_Representative.Add(Organization_RepresentativeEntitity);

                //string startdate = Utility.NepaliEnglishNumber.Nepali_English(model.startdate);
                //string enddate = Utility.NepaliEnglishNumber.Nepali_English(model.enddate);
                //string estimatedamount = Utility.NepaliEnglishNumber.Nepali_English(model.Project_estimated_Amount.ToString());
                var Project_Entry_DetailEntity = new Project_Entry_Detail()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Project_Name = model.Project_Name,
                    Project_Place = model.Project_Place,
                    Project_Objective = model.Project_Objective,
                    Project_Acceptance_By = model.Project_Acceptance_By,
                    Project_Start_Date = model.Project_Start_Date,
                    Project_End_Date = model.Project_End_Date,
                    Project_estimated_Amount = model.Project_estimated_Amount,
                    //Project_estimated_Amount = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Project_estimated_Amount))),

                    //Project_Start_Date = Convert.ToDateTime(startdate),
                    //Project_End_Date = Convert.ToDateTime(enddate),
                    //Project_estimated_Amount = Convert.ToDecimal(estimatedamount),
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Project_Entry_Detail.Add(Project_Entry_DetailEntity);

                var Project_Source_DetailEntity = new Project_Source_Detail()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    //Project_estimated_Amount=Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Project_estimated_Amount))),
                    //Nepal_Government = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Nepal_Government))),
                    //Municipality = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Municipality))),
                    //State = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.State))),
                    //NGO_INGO = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.NGO_INGO))),
                    //Community_Org = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Community_Org))),
                    //Foreign_Org = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Foreign_Org))),
                    //Public_Community = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Public_Community))),
                    //Loan_Grant = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Loan_Grant))),
                    //Other_Source = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Other_Source))),
                    //Total_Amount = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Total_Amount))),


                    Project_estimated_Amount = model.Project_estimated_Amount,
                    Nepal_Government = model.Nepal_Government,
                    Municipality = model.Municipality,
                    State = model.State,
                    NGO_INGO = model.NGO_INGO,
                    Community_Org = model.Community_Org,
                    Foreign_Org = model.Foreign_Org,
                    Public_Community = model.Public_Community,
                    Loan_Grant = model.Loan_Grant,
                    Other_Source = model.Other_Source,
                    Total_Amount = model.Total_Amount_Source,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Project_Source_Detail.Add(Project_Source_DetailEntity);

                //var Project_Other_SourceEntity= new Project_Other_Source()
                //{
                //    Planning_Samjhauta_Id = planningSamjhautaId,
                //    Source_Name=model.Source_Name,
                //    Quantity=model.Quantity,
                //    Material_Details=model.Material_Details,
                //    Unit=model.Unit,
                //    Status = true,
                //    CreatedBy = model.CreatedBy,
                //    CreatedDate = DateTime.Now,
                //};
                //ent.Project_Other_Source.Add(Project_Other_SourceEntity);

                ////comment Nov-17-2018
                //foreach (var item in model.PlanningSamjhautaSourceList)
                //{
                //    var Project_Other_SourceEntity = new Project_Other_Source()
                //    {
                //        Planning_Samjhauta_Id = planningSamjhautaId,
                //        Source_Name = model.Source_Name,
                //        //Quantity = model.Quantity,
                //        Quantity = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Quantity))),
                //        Material_Details = model.Material_Details,
                //        //Unit = model.Unit,
                //        Unit = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Unit))),
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Project_Other_Source.Add(Project_Other_SourceEntity);
                //}

                var Beneficiaries_GroupEntity = new Beneficiaries_Group()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Total_House = model.Total_House,
                    Total_Female = model.Total_Female,
                    Total_Male = model.Total_Male,
                    //Total_House = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Total_House))),
                    //Total_Female = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Total_Female))),
                    //Total_Male = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Total_Male))),
                    Community = model.Community,
                    Other = model.Other,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Beneficiaries_Group.Add(Beneficiaries_GroupEntity);

                var Samiti_DetailEntity = new Samiti_Detail()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Samiti_Estd_Date = model.Samiti_Estd_Date,
                    Adakshya = model.Adakshya,
                    Sachib = model.Sachib,
                    Koshadakshya = model.Koshadakshya,
                    //Added for ContactNumber
                    AdakshyaContactNumber=model.AdakshyaContactNumber,
                    KoshadakshyaConctactNumber=model.KoshadakshyaContactNumber,
                    SachibContactNumber =model.SachibContactNumber,


                    //Ended
                    //Sadashya = model.Sadashya,
                    Beneficiaries_Attendance = model.Beneficiaries_Attendance,
                    Beneficiaries_Absent = model.Beneficiaries_Absent,
                    //Beneficiaries_Attendance = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Beneficiaries_Attendance))),
                    //Beneficiaries_Absent = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Beneficiaries_Absent))),
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Samiti_Detail.Add(Samiti_DetailEntity);


                //var Payment_RecordsEntity = new Payment_Records()
                //{
                //    Planning_Samjhauta_Id = planningSamjhautaId,
                //    Kista_Kram = model.Kista_Kram,
                //    Payment_Date = model.Payment_Date,
                //    Kista_Rakam = model.Kista_Rakam,
                //    Nirmarn_Samagri = model.Nirmarn_Samagri,
                //    Remarks = model.Remarks,
                //    Status = true,
                //    CreatedBy = model.CreatedBy,
                //    CreatedDate = DateTime.Now,
                //};
                //ent.Payment_Records.Add(Payment_RecordsEntity);


                foreach (var item in model.UpaBhoktaSamitiMemberList)
                {
                    var UpaBhokta_Samiti_Members_DetailsEntity = new UpaBhokta_Samiti_Members_Details()
                    {
                        Planning_Samjhauta_Id = planningSamjhautaId,
                        MemberName = item.Sadashya,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.UpaBhokta_Samiti_Members_Details.Add(UpaBhokta_Samiti_Members_DetailsEntity);
                }


                foreach (var item in model.PlanningSamjhautaKistaFirstDetailsList)
                {
                    if(item.NepaliPaymentDate != null)
                    {
                        var isdates = Regex.IsMatch(item.NepaliPaymentDate, @"([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))");
                        if (isdates)
                        {
                            model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                        }
                        else
                        {
                            model.Payment_Date = null;
                        }
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }
                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = planningSamjhautaId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }
                foreach (var item in model.PlanningSamjhautaKistaSecondDetailsList)
                {
                    if (item.NepaliPaymentDate != null)
                    {
                        var isdates = Regex.IsMatch(item.NepaliPaymentDate, @"([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))");
                        if (isdates)
                        {
                            model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                        }
                        else
                        {
                            model.Payment_Date = null;
                        }
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }
                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = planningSamjhautaId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }
                foreach (var item in model.PlanningSamjhautaKistaThirdDetailsList)
                {
                    if (item.NepaliPaymentDate != null)
                    {
                        var isdates = Regex.IsMatch(item.NepaliPaymentDate, @"([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))");
                        if (isdates)
                        {
                            model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                        }
                        else
                        {
                            model.Payment_Date = null;
                        }
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }
                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = planningSamjhautaId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }



                var Aayojana_MaintainanceEntity = new Aayojana_Maintainance()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Responsible_Org = model.Responsible_Org,
                    Janashram = model.Janashram,
                    SewaSulka = model.SewaSulka,
                    Dastur_Chanda = model.Dastur_Chanda,
                    Lagat_Anudan = model.Lagat_Anudan,
                    Interest_Saving = model.Interest_Saving,
                    //Janashram = Convert.ToInt32(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Janashram))),
                    //SewaSulka = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.SewaSulka))),
                    //Dastur_Chanda = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Dastur_Chanda))),
                    //Lagat_Anudan = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Lagat_Anudan))),
                    //Interest_Saving = Convert.ToDecimal(Utility.NepaliEnglishNumber.Nepali_English(Convert.ToString(model.Interest_Saving))),
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Aayojana_Maintainance.Add(Aayojana_MaintainanceEntity);

                var Municipality_Samiti_Manjuri_PatraEntity = new Municipality_Samiti_Manjuri_Patra()
                {
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Municipality_Rep_Name = model.Municipality_Rep_Name,
                    Municipality_Rep_Post = model.Municipality_Rep_Post,
                    Municipality_Rep_Sign = model.Municipality_Rep_Sign,
                    Municipality_Manjuri_Date = model.Municipality_Manjuri_Date,
                    Samiti_Adakshya_Name = model.Samiti_Adakshya_Name,
                    Samiti_Adakshya_Sign = model.Samiti_Adakshya_Sign,
                    Samiti_Sachib_Name = model.Samiti_Sachib_Name,
                    Samiti_Sachib_Sign = model.Samiti_Sachib_Sign,
                    Samiti_Rohabar_Name = model.Samiti_Rohabar_Name,
                    Samiti_Rohabar_Sign = model.Samiti_Rohabar_Sign,
                    yojanSakhaRepresentaive=model.yojanSakhaRepresentaive,
                    yojanSakhaRepresentativePost=model.yojanSakhaRepresentativePost,
                    yojanSakhaRepresentativePostSign=model.yojanSakhaRepresentativePostSign,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Municipality_Samiti_Manjuri_Patra.Add(Municipality_Samiti_Manjuri_PatraEntity);


                var Planning_EntryEntity = new Planning_Entry()
                {
                    //FiscalYear = model.Fiscal_Year_Record,
                    FiscalYear = model.FiscalYear,
                    Planning_Samjhauta_Id = planningSamjhautaId,
                    Planning_Name = model.Planning_Name,
                    Planning_Start_Date = model.Planning_Start_Date,
                    Planning_End_Date = model.Planning_End_Date,
                    Work_Details = model.Work_Details,
                    Budget_Source = model.Budget_Source_Id,
                    Amount_Estimate = model.Amount_Estimate,
                    Work_Type = model.Work_Type,
                    Work_Area = model.Work_Area,
                    Ward_No = model.Ward_No,
                    SerialNo=model.PlanningSerialNo,
                    Planning_Type = model.Planning_Type,
                    UpaBhoktaSamiti_HeadName = model.UpaBhoktaSamiti_HeadName,
                    Contractor_Name = model.Contractor_Name,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Entry.Add(Planning_EntryEntity);
                planningEntryId = Planning_EntryEntity.Planning_Entry_Id;

                //var Planning_Entry_AnudanEntitity = new Planning_Entry_Anudan()
                //{
                //    Planning_Entry_Id = planningEntryId,
                //    Planning_Samjhauta_Id = planningSamjhautaId,
                //    Nagarpalika_Amt = model.Nagarpalika_Amt,
                //    UpaBhoktaSamiti_Amt = model.UpaBhoktaSamiti_Amt,
                //    Other_Amt = model.Other_Amt,
                //    JanaSahaBhagita_Amt = model.JanaSahaBhagita_Amt,
                //    Status = true,
                //    CreatedBy = model.CreatedBy,
                //    CreatedDate = DateTime.Now,
                //};
                //ent.Planning_Entry_Anudan.Add(Planning_Entry_AnudanEntitity);

                //foreach (var item in model.KistaFirstDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = planningSamjhautaId,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaSecondDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = planningSamjhautaId,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaThirdDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = planningSamjhautaId,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaLastDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = planningSamjhautaId,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}

                if (model.Amant_Name != null)
                {
                    var Amant_Kism = new Amanat_Deatils()
                    {
                        Name = model.Amant_Name,
                        Darja = model.Darja,
                        SahiDate = model.Amant_SahiDate,
                        Planning_Samjhata_Id = Municipality_Samiti_Manjuri_PatraEntity.Planning_Samjhauta_Id
                    };
                    ent.Amanat_Deatils.Add(Amant_Kism);
                }

                if (model.Upbhogata_Name != null)
                {
                    var Upbhoghata = new UpbhoktaSamiti_Details()
                    {
                        Name = model.Upbhogata_Name,
                        ContactNo = model.ContactNo,
                        SahiDate = model.Upbhogata_SahiDate,
                        Planning_Ssamjhata_Id = Municipality_Samiti_Manjuri_PatraEntity.Planning_Samjhauta_Id
                    };
                    ent.UpbhoktaSamiti_Details.Add(Upbhoghata);
                }

                int i = ent.SaveChanges();


                if (i > 0)
                {
                    return Municipality_Samiti_Manjuri_PatraEntity.Planning_Samjhauta_Id ?? 0;
                }
                else
                {
                    return 0;
                }
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaList(/*int planningSamjhautaId*/string FiscalYear, string OrgName, string ProjectName)
        {
            if (FiscalYear != null /*&& OrgName != null*/ && ProjectName != null)
            {
                using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                {
                    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                    List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                             join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                             join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id
                                                             //join pr in ent.Payment_Records on p.Planning_Samjhauta_Id equals pr.Planning_Samjhauta_Id
                                                             //where p.Planning_Samjhauta_Id == planningSamjhautaId
                                                             join ms in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals ms.Planning_Samjhauta_Id
                                                             join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                             select new PlanningSamjhautaViewModel()
                                                             {
                                                                 Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                                 Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                                 Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                                 Planning_Type=ple.Planning_Type,
                                                                 Project_Name = pe.Project_Name,
                                                                 Total_Amount = p.Total_Amount,
                                                                 Total_Amount_Source = ps.Total_Amount,
                                                                 Contegency_Amount = p.Contegency_Amount,
                                                                 MarmatSambhar_Amount =p.MarmatSambhar_Amount,
                                                                 Loan_Grant = ps.Loan_Grant,
                                                                 Contegency_Percentage = p.Contegency_Percentage,
                                                                 Project_Start_Date=pe.Project_Start_Date,
                                                                 //contAmt=Convert.ToDecimal(p.Contegency_Amount),
                                                                 //totAmt= Convert.ToDecimal(p.Total_Amount),

                                                                 //Total_Remaining_Amount= (Convert.ToDecimal(p.Total_Amount)-Convert.ToDecimal(p.Contegency_Amount)).ToString(),
                                                                 //Total_Remaining_Amount = p.Total_Amount - p.Contegency_Amount,


                                                                 //Total_Remaining_Amount=p.Total_Amount-p.Contegency_Amount,

                                                                 Project_estimated_Amount = pe.Project_estimated_Amount,
                                                                 Municipality = ps.Municipality,

                                                                 Nepal_Government = ps.Nepal_Government,
                                                                 State = ps.State,
                                                                 NGO_INGO = ps.NGO_INGO,
                                                                 Community_Org = ps.Community_Org,
                                                                 Foreign_Org = ps.Foreign_Org,
                                                                 Public_Community = ps.Public_Community,
                                                                 Other_Source = ps.Other_Source,

                                                                 Municipality_Manjuri_Date = ms.Municipality_Manjuri_Date,
                                                                 Ward_No = ple.Ward_No,
                                                                 Work_Area=ple.Work_Area,
                                                                 PlanningSerialNo=ple.SerialNo,
                                                                

                                                                 DeletedDate = p.DeletedDate
                                                             }).Where(x => x.DeletedDate == null).ToList();

                    if (!String.IsNullOrEmpty(FiscalYear))
                    {
                        List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(ProjectName))
                    {
                        List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(OrgName))
                    {
                        List = List.Where(x => x.Samjhauta_Org_Name.Trim() == OrgName.Trim()).ToList();
                    }
                    foreach (var item in List)
                    {
                        if (item.Project_Start_Date!=null)
                        {

                            DateTime datess = DateTime.UtcNow;
                            DateTime.TryParse(item.Project_Start_Date, out datess);

                            item.Project_Start_Date = datess.ToString("yyyy-MM-dd");
                        }
                    }
                    return List;
                }
            }
            else
            {
                return null;
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningKaryadeshList(string FiscalYear, string OrgName, string ProjectName)
        {
            if (FiscalYear != null /*&& OrgName != null*/ && ProjectName != null)
            {
                using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                {
                    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                    List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                             join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                             join sd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals sd.Planning_Samjhauta_Id
                                                             join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id
                                                             join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                             join org in ent.Organization_Representative on p.Planning_Samjhauta_Id equals org.Planning_Samjhauta_Id
                                                             join src in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals src.Planning_Samjhauta_Id

                                                             //join munsam in ent .Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals munsam.Planning_Samjhauta_Id
                                                             select new PlanningSamjhautaViewModel()
                                                             {
                                                                 Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                                 Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                                 Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                                 Total_Amount = p.Total_Amount,
                                                                 Project_Name = pe.Project_Name,
                                                                 Adakshya = sd.Adakshya,
                                                                 Municipality_Manjuri_Date = mp.Municipality_Manjuri_Date,
                                                                 DeletedDate = p.DeletedDate,
                                                                 Ward_No = ple.Ward_No,
                                                                 Planning_Type = ple.Planning_Type,
                                                                 Work_Area=ple.Work_Area,
                                                                 PlanningSerialNo=ple.SerialNo,
                                                                 Community_Org=src.Community_Org,
                                                                 Municipality=src.Municipality,
                                                                 Project_Start_Date =pe.Project_Start_Date,
                                                                 Project_End_Date = pe.Project_End_Date,
                                                                 Representative_Address = org.Representative_Address,
                                                                 
                                                             }).Where(x => x.DeletedDate == null).ToList();

                    if (!String.IsNullOrEmpty(FiscalYear))
                    {
                        //List = List.Where(x => x.Fiscal_Year_Record.Contains(FiscalYear)).ToList();
                        List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(ProjectName))
                    {
                        List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(OrgName))
                    {
                        List = List.Where(x => x.Samjhauta_Org_Name.Trim() == OrgName.Trim()).ToList();
                    }

                    return List;
                }
            }
            else
            {
                return null;
            }
        }

        public Planning_Samjhauta GetPlanning_SamjhautaByID(int? id)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            Planning_Samjhauta entity = ent.Planning_Samjhauta.Where(x => x.Planning_Samjhauta_Id == id).FirstOrDefault();
            return entity;
        }

        public int InsertPlanningBhuktani(PlanningBhuktaniViewModel model)
        {
            int planningBhuktaniId = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Planning_BhuktaniEntity = new Planning_Bhuktani()
                {
                    Bhuktani_Type = model.Bhuktani_Type,
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    IsBhuktaniApproval = model.IsBhuktaniApproval,
                    Fiscal_Year_Record = model.Fiscal_Year_Record,
                    Budget_Title = model.Budget_Title,
                    Budget_Title_Number = model.Budget_Title_Number,
                    Aayojana_Karyakram = model.Aayojana_Karyakram,
                    Nirman_Upabhokta = model.Nirman_Upabhokta,
                    AdakshyaName = model.AdakshyaName,
                    SamjhautaDate = model.SamjhautaDate,
                    Kul_La_Ie = model.Kul_La_Ie,
                    NaPa_Binayajit = model.NaPa_Binayajit,
                    Otheers = model.Otheers,
                    Jana_Sahabagita = model.Jana_Sahabagita,
                    Kantigenci = model.Kantigenci,
                    Peski = model.Peski,
                    Farchot_Amount = model.Farchot_Amount,
                    Running_Bhuktani = model.Running_Bhuktani,
                    Technical_Amount = model.Technical_Amount,
                    Samajik_Surekchya = model.Samajik_Surekchya,
                    Agrim_Shulka = model.Agrim_Shulka,
                    Parishramik = model.Parishramik,
                    Bahal_Kar‍ = model.Bahal_Kar,
                    Katti_Rakam = model.Katti_Rakam,
                    Remaining_Bhuktani_Amount = model.Remaining_Bhuktani_Amount,
                    Aanya_Raaya = model.Aanya_Raaya,
                    MarmatShmar =model.Marmat_Sambhar,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Bhuktani.Add(Planning_BhuktaniEntity);
                planningBhuktaniId = Planning_BhuktaniEntity.Planning_Bhuktani_Id;


                int i = ent.SaveChanges();


                if (i > 0)
                {
                    return Planning_BhuktaniEntity.Planning_Bhuktani_Id;
                }
                else
                {
                    return 0;
                }
            }
        }

        public List<PlanningBhuktaniViewModel> GetPlanningBhuktaniList(int planningBhuktaniId)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Planning_Bhuktani
                                                        where p.Planning_Bhuktani_Id == planningBhuktaniId
                                                        select new PlanningBhuktaniViewModel()
                                                        {
                                                            Planning_Bhuktani_Id = p.Planning_Bhuktani_Id,
                                                            Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                            Budget_Title = p.Budget_Title,
                                                            Budget_Title_Number = p.Budget_Title_Number,
                                                            Aayojana_Karyakram = p.Aayojana_Karyakram,
                                                            Nirman_Upabhokta = p.Nirman_Upabhokta,
                                                            AdakshyaName = p.AdakshyaName,
                                                            SamjhautaDate = p.SamjhautaDate,
                                                            Kul_La_Ie = p.Kul_La_Ie,
                                                            NaPa_Binayajit = p.NaPa_Binayajit,
                                                            Otheers = p.Otheers,
                                                            Jana_Sahabagita = p.Jana_Sahabagita,
                                                            Kantigenci = p.Kantigenci,
                                                            Peski = p.Peski,
                                                            Farchot_Amount = p.Farchot_Amount,
                                                            Running_Bhuktani = p.Running_Bhuktani,
                                                            Technical_Amount = p.Technical_Amount,
                                                            Samajik_Surekchya = p.Samajik_Surekchya,
                                                            Agrim_Shulka = p.Agrim_Shulka,
                                                            Parishramik = p.Parishramik,
                                                            Bahal_Kar = p.Bahal_Kar,
                                                            Katti_Rakam = p.Katti_Rakam,
                                                            Remaining_Bhuktani_Amount = p.Remaining_Bhuktani_Amount,
                                                            Aanya_Raaya = p.Aanya_Raaya,
                                                            DeletedDate = p.DeletedDate,
                                                            Marmat_Sambhar=p.MarmatShmar
                                                        }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetBudgetBiniyojanList(string FiscalYear)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join sd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals sd.Planning_Samjhauta_Id
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id
                                                         join pr in ent.Payment_Records on p.Planning_Samjhauta_Id equals pr.Planning_Samjhauta_Id
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Total_Amount = p.Total_Amount,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Kista_Kram = pr.Kista_Kram,
                                                             Kista_Rakam = pr.Kista_Rakam,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.DeletedDate == null).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record == FiscalYear).ToList();
                }

                return List;
            }
        }

        public bool UploadRelatedFile(PlanningSamjhautaViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Upload_FileEntity = new Upload_File()
                {
                    File_Name = model.FileName,
                    File_Path = model.FilePath,
                    File_Id = model.FileId,
                    WardNo = model.WardNo,
                    FiscalYear = model.Fiscal_Year_Record,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Upload_File.Add(Upload_FileEntity);

                int i = ent.SaveChanges();
                if (i > 0)
                    return true;
                else
                    return false;
            }
        }

        public List<PlanningSamjhautaViewModel> GetUploadFiles(int fileId, string wardNo, string fiscalYear)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from u in ent.Upload_File
                                                         where u.File_Id == fileId
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             UploadFileId = u.Upload_File_Id,
                                                             FileName = u.File_Name,
                                                             FilePath = u.File_Path,
                                                             WardNo = u.WardNo,
                                                             Fiscal_Year_Record = u.FiscalYear,
                                                             FileId = u.File_Id ?? 0,
                                                             DeletedDate = u.DeletedDate,
                                                         }).Where(x => x.DeletedDate == null).ToList();

                if (!String.IsNullOrEmpty(fiscalYear))
                {
                    //List = List.Where(x => x.Fiscal_Year_Record.Trim() == Utility.NepaliEnglishNumber.Nepali_English(fiscalYear.Trim())).ToList();
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == fiscalYear.Trim()).ToList();
                }

                //if (!String.IsNullOrEmpty(fiscalYear))
                //{
                //    List = List.Where(x => x.Fiscal_Year_Record.Contains(fiscalYear)).ToList();
                //}

                if (!String.IsNullOrEmpty(wardNo))
                {
                    //List = List.Where(x => x.WardNo == Utility.NepaliEnglishNumber.Nepali_English(wardNo.Trim())).ToList();
                    List = List.Where(x => x.WardNo == wardNo.Trim()).ToList();
                }
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetCurrentPlanningSamjhautaList(string year)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                       //  where p.DeletedDate == null && p.Status == true && p.Fiscal_Year_Record == year || string.IsNullOrEmpty(year)
                                                         where p.DeletedDate == null && p.Status == true 
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,//2
                                                             Samjhauta_Acceptance=p.Samjhauta_Acceptance??false,//3
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,//1
                                                             CreatedDate = p.CreatedDate,
                                                             Ward_No = ple.Ward_No,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaFilterData(string planning_Type, string samjhauta_Org_Name, bool samjhauta_Acceptance, string year)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            if (samjhauta_Acceptance == false)
            {
                    List<PlanningSamjhautaViewModel> List1 = (from p in ent.Planning_Samjhauta
                                                             join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                             join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                             where p.DeletedDate == null && p.Status == true && p.Fiscal_Year_Record == year
                                                             && ple.Planning_Type == planning_Type && p.Samjhauta_Org_Name == samjhauta_Org_Name
                                                             select new PlanningSamjhautaViewModel
                                                             {
                                                                 Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                                 Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                                 Samjhauta_Org_Name = p.Samjhauta_Org_Name,//2
                                                                 Samjhauta_Acceptance = p.Samjhauta_Acceptance ?? false,//3
                                                                 Project_Name = pe.Project_Name,
                                                                 Project_Place = pe.Project_Place,
                                                                 Project_Start_Date = pe.Project_Start_Date,
                                                                 Project_End_Date = pe.Project_End_Date,
                                                                 Planning_Type = ple.Planning_Type,//1
                                                                 CreatedDate = p.CreatedDate,
                                                             }).OrderByDescending(x => x.CreatedDate).ToList();
                    return List1;
                }
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true && p.Fiscal_Year_Record == year
                                                         && ple.Planning_Type == planning_Type && p.Samjhauta_Org_Name == samjhauta_Org_Name
                                                         && p.Samjhauta_Acceptance == samjhauta_Acceptance
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,//2
                                                             Samjhauta_Acceptance = p.Samjhauta_Acceptance ?? false,//3
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,//1
                                                             CreatedDate = p.CreatedDate,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();
                return List;
            }
        }


        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaFilterDataplanning_Type(string planning_Type, string year)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true && p.Fiscal_Year_Record == year
                                                         && ple.Planning_Type == planning_Type && p.Samjhauta_Acceptance == null
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,//2
                                                             Samjhauta_Acceptance = p.Samjhauta_Acceptance ?? false,//3
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,//1
                                                             CreatedDate = p.CreatedDate,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaFilterDataWithOutBool(string planning_Type, string samjhauta_Org_Name, string year)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true && p.Fiscal_Year_Record == year
                                                         && ple.Planning_Type == planning_Type && p.Samjhauta_Acceptance == null
                                                         && p.Samjhauta_Org_Name == samjhauta_Org_Name
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,//2
                                                             Samjhauta_Acceptance = p.Samjhauta_Acceptance ?? false,//3
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,//1
                                                             CreatedDate = p.CreatedDate,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,
                                                             CreatedDate = p.CreatedDate,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();
                return List;
            }
        }
        
        public List<PlanningSamjhautaViewModel> GetPlanningSamjhautaById(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join b in ent.Beneficiaries_Group on p.Planning_Samjhauta_Id equals b.Planning_Samjhauta_Id into benif
                                                         from b in benif.DefaultIfEmpty()
                                                         join po in ent.Project_Other_Source on p.Planning_Samjhauta_Id equals po.Planning_Samjhauta_Id into prosou
                                                         from po in prosou.DefaultIfEmpty()
                                                         join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id into prodetail
                                                         from ps in prodetail.DefaultIfEmpty()
                                                         join or in ent.Organization_Representative on p.Planning_Samjhauta_Id equals or.Planning_Samjhauta_Id into orgrep
                                                         from or in orgrep.DefaultIfEmpty()
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                         from pe in proentry.DefaultIfEmpty()
                                                         join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                         from pd in samiti.DefaultIfEmpty()
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id into manjuri
                                                         from mp in manjuri.DefaultIfEmpty()
                                                         join am in ent.Aayojana_Maintainance on p.Planning_Samjhauta_Id equals am.Planning_Samjhauta_Id into maintenance
                                                         from am in maintenance.DefaultIfEmpty()

                                                         join planet in ent.Planning_Entry on p.Planning_Samjhauta_Id equals planet.Planning_Samjhauta_Id into planningEntry
                                                         from planet in planningEntry.DefaultIfEmpty()
                                                         join anudan in ent.Planning_Entry_Anudan on p.Planning_Samjhauta_Id equals anudan.Planning_Samjhauta_Id into planningAnudan
                                                         from anudan in planningAnudan.DefaultIfEmpty()

                                                         join upbhogata in ent.UpbhoktaSamiti_Details on p.Planning_Samjhauta_Id equals upbhogata.Planning_Ssamjhata_Id into UpbhogataDeatils
                                                         from upbhogata in UpbhogataDeatils.DefaultIfEmpty()
                                                         join amanat in ent.Amanat_Deatils on p.Planning_Samjhauta_Id equals amanat.Planning_Samjhata_Id into empDept
                                                         from amanat in empDept.DefaultIfEmpty()

                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Samjhauta_Acceptance=p.Samjhauta_Acceptance??false,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Contegency_Amount = p.Contegency_Amount,
                                                             Contegency_Percentage = p.Contegency_Percentage,
                                                             MarmatSambhar_Amount = p.MarmatSambhar_Amount,
                                                             Total_Amount = p.Total_Amount,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Objective = pe.Project_Objective,
                                                             Project_Acceptance_By = pe.Project_Acceptance_By,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             Total_House = b.Total_House,
                                                             Total_Male = b.Total_Male,
                                                             Total_Female = b.Total_Female,
                                                             Community = b.Community,
                                                             Other = b.Other,
                                                             Source_Name = po.Source_Name,
                                                             Quantity = po.Quantity,
                                                             Material_Details = po.Material_Details,
                                                             Unit = po.Unit,
                                                             Project_estimated_Amount_Source = ps.Project_estimated_Amount,
                                                             Nepal_Government = ps.Nepal_Government,
                                                             Municipality = ps.Municipality,
                                                             State = ps.State,
                                                             NGO_INGO = ps.NGO_INGO,
                                                             Community_Org = ps.Community_Org,
                                                             Foreign_Org = ps.Foreign_Org,
                                                             Public_Community = ps.Public_Community,
                                                             Loan_Grant = ps.Loan_Grant,
                                                             Other_Source = ps.Other_Source,
                                                             Representative_Name = or.Representative_Name,
                                                             Representative_Designition = or.Representative_Designition,
                                                             Representative_Address = or.Representative_Address,
                                                             Samiti_Estd_Date = pd.Samiti_Estd_Date,
                                                             Adakshya = pd.Adakshya,
                                                             AdakshyaContactNumber=pd.AdakshyaContactNumber,
                                                             Sachib = pd.Sachib,
                                                             SachibContactNumber=pd.SachibContactNumber,

                                                             Koshadakshya = pd.Koshadakshya,
                                                             KoshadakshyaContactNumber=pd.KoshadakshyaConctactNumber,
                                                             Sadashya = pd.Sadashya,
                                                             Beneficiaries_Attendance = pd.Beneficiaries_Attendance,
                                                             Beneficiaries_Absent = pd.Beneficiaries_Absent,
                                                             Municipality_Rep_Name = mp.Municipality_Rep_Name,
                                                             Municipality_Rep_Post = mp.Municipality_Rep_Post,
                                                             Municipality_Manjuri_Date = mp.Municipality_Manjuri_Date,
                                                             Samiti_Adakshya_Name = mp.Samiti_Adakshya_Name,
                                                             Samiti_Sachib_Name = mp.Samiti_Sachib_Name,
                                                             Samiti_Rohabar_Name = mp.Samiti_Rohabar_Name,
                                                             yojanSakhaRepresentaive=mp.yojanSakhaRepresentaive,
                                                             yojanSakhaRepresentativePost=mp.yojanSakhaRepresentativePost,
                                                             Responsible_Org = am.Responsible_Org,
                                                             Janashram = am.Janashram,
                                                             SewaSulka = am.SewaSulka,
                                                             Dastur_Chanda = am.Dastur_Chanda,
                                                             Lagat_Anudan = am.Lagat_Anudan,
                                                             Interest_Saving = am.Interest_Saving,
                                                             Status = p.Status,
                                                             DeletedDate = p.DeletedDate,
                                                             PlanningSerialNo= planet.SerialNo,
                                                             FiscalYear = p.Fiscal_Year_Record,
                                                             //FiscalYear = planet.FiscalYear,
                                                             Planning_Entry_Id = planet.Planning_Entry_Id,
                                                             Planning_Name = planet.Planning_Name,
                                                             Planning_Start_Date = planet.Planning_Start_Date,
                                                             Planning_End_Date = planet.Planning_End_Date,
                                                             Work_Details = planet.Work_Details,
                                                             Amount_Estimate = planet.Amount_Estimate,
                                                             Work_Type = planet.Work_Type,
                                                             Ward_No = planet.Ward_No,
                                                             Work_Area = planet.Work_Area,
                                                             Budget_Source_Id = planet.Budget_Source,
                                                             Planning_Type = planet.Planning_Type,
                                                             UpaBhoktaSamiti_HeadName = planet.UpaBhoktaSamiti_HeadName,
                                                             Contractor_Name = planet.Contractor_Name,
                                                             Nagarpalika_Amt = anudan.Nagarpalika_Amt,
                                                             UpaBhoktaSamiti_Amt = anudan.UpaBhoktaSamiti_Amt,
                                                             Other_Amt = anudan.Other_Amt,
                                                             JanaSahaBhagita_Amt = anudan.JanaSahaBhagita_Amt,
                                                             //----------------
                                                             Amant_Name = amanat.Name,
                                                             Amanat_Deatils_Id = amanat == null ? 0 : amanat.Id,
                                                             Darja = amanat.Darja,
                                                             Amant_SahiDate = amanat.SahiDate,

                                                             UpbhoktaSamiti_Deatils_Id = upbhogata == null ? 0 : upbhogata.Id,
                                                             Upbhogata_Name = upbhogata.Name,
                                                             ContactNo = upbhogata.ContactNo,
                                                             Upbhogata_SahiDate = upbhogata.SahiDate,
                                                         }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdatePlanningSamjhauta(PlanningSamjhautaViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Planning_Samjhauta.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                //data.Fiscal_Year_Record = model.Fiscal_Year_Record;
                data.Fiscal_Year_Record = model.FiscalYear;
                data.Samjhauta_Org_Name = model.Samjhauta_Org_Name;
                data.Contegency_Amount = model.Contegency_Amount;
                data.MarmatSambhar_Amount = model.MarmatSambhar_Amount;
                data.Total_Amount = model.Total_Amount;
                data.Status = model.Status;
                data.Samjhauta_Acceptance = model.Samjhauta_Acceptance;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;

                var objOrganization_Representative = ent.Organization_Representative.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objOrganization_Representative)
                {
                    ent.Organization_Representative.Remove(item);
                    ent.SaveChanges();
                }
                var Organization_RepresentativeEntitity = new Organization_Representative()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Representative_Name = model.Representative_Name,
                    Representative_Designition = model.Representative_Designition,
                    Representative_Address = model.Representative_Address,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Organization_Representative.Add(Organization_RepresentativeEntitity);

                var objProject_Entry_Detail = ent.Project_Entry_Detail.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objProject_Entry_Detail)
                {
                    ent.Project_Entry_Detail.Remove(item);
                    ent.SaveChanges();
                }
                var Project_Entry_DetailEntity = new Project_Entry_Detail()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Project_Name = model.Project_Name,
                    Project_Place = model.Project_Place,
                    Project_Objective = model.Project_Objective,
                    Project_Acceptance_By = model.Project_Acceptance_By,
                    Project_Start_Date = model.Project_Start_Date,
                    Project_End_Date = model.Project_End_Date,
                    Project_estimated_Amount = model.Project_estimated_Amount,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Project_Entry_Detail.Add(Project_Entry_DetailEntity);

                var objProject_Source_Detail = ent.Project_Source_Detail.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objProject_Source_Detail)
                {
                    ent.Project_Source_Detail.Remove(item);
                    ent.SaveChanges();
                }
                var Project_Source_DetailEntity = new Project_Source_Detail()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Project_estimated_Amount = model.Project_estimated_Amount,
                    Nepal_Government = model.Nepal_Government,
                    Municipality = model.Municipality,
                    State = model.State,
                    NGO_INGO = model.NGO_INGO,
                    Community_Org = model.Community_Org,
                    Foreign_Org = model.Foreign_Org,
                    Public_Community = model.Public_Community,
                    Loan_Grant = model.Loan_Grant,
                    Other_Source = model.Other_Source,
                    Total_Amount = model.Total_Amount_Source,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Project_Source_Detail.Add(Project_Source_DetailEntity);


                var objProject_Other_Source = ent.Project_Other_Source.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objProject_Other_Source)
                {
                    ent.Project_Other_Source.Remove(item);
                    ent.SaveChanges();
                }
                //foreach (var item in model.PlanningSamjhautaSourceList)
                //{
                //    var Project_Other_SourceEntity = new Project_Other_Source()
                //    {
                //        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //        Source_Name = model.Source_Name,
                //        Quantity = model.Quantity,
                //        Material_Details = model.Material_Details,
                //        Unit = model.Unit,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Project_Other_Source.Add(Project_Other_SourceEntity);
                //}


                var objBeneficiaries_Group = ent.Beneficiaries_Group.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objBeneficiaries_Group)
                {
                    ent.Beneficiaries_Group.Remove(item);
                    ent.SaveChanges();
                }
                var Beneficiaries_GroupEntity = new Beneficiaries_Group()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Total_House = model.Total_House,
                    Total_Female = model.Total_Female,
                    Total_Male = model.Total_Male,
                    Community = model.Community,
                    Other = model.Other,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Beneficiaries_Group.Add(Beneficiaries_GroupEntity);


                var objSamiti_Detail = ent.Samiti_Detail.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objSamiti_Detail)
                {
                    ent.Samiti_Detail.Remove(item);
                    ent.SaveChanges();
                }
                var Samiti_DetailEntity = new Samiti_Detail()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Samiti_Estd_Date = model.Samiti_Estd_Date,
                    Adakshya = model.Adakshya,
                    Sachib = model.Sachib,
                    Koshadakshya = model.Koshadakshya,
                    AdakshyaContactNumber = model.AdakshyaContactNumber,
                    SachibContactNumber = model.SachibContactNumber,
                    KoshadakshyaConctactNumber=model.KoshadakshyaContactNumber,
                    //Sadashya = model.Sadashya,
                    Beneficiaries_Attendance = model.Beneficiaries_Attendance,
                    Beneficiaries_Absent = model.Beneficiaries_Absent,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Samiti_Detail.Add(Samiti_DetailEntity);

                var objUpaBhokta_Samiti_Members_Details = ent.UpaBhokta_Samiti_Members_Details.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objUpaBhokta_Samiti_Members_Details)
                {
                    ent.UpaBhokta_Samiti_Members_Details.Remove(item);
                    ent.SaveChanges();
                }

                foreach (var item in model.UpaBhoktaSamitiMemberList)
                {
                    var UpaBhokta_Samiti_Members_DetailsEntity = new UpaBhokta_Samiti_Members_Details()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        MemberName = item.Sadashya,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.UpaBhokta_Samiti_Members_Details.Add(UpaBhokta_Samiti_Members_DetailsEntity);
                }


                var objPayment_Records = ent.Payment_Records.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objPayment_Records)
                {
                    ent.Payment_Records.Remove(item);
                    ent.SaveChanges();
                }

                foreach (var item in model.PlanningSamjhautaKistaFirstDetailsList)
                {
                    if (item.NepaliPaymentDate != null)
                    {
                        model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }

                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }
                foreach (var item in model.PlanningSamjhautaKistaSecondDetailsList)
                {
                    if (item.NepaliPaymentDate != null)
                    {
                        model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }
                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }
                foreach (var item in model.PlanningSamjhautaKistaThirdDetailsList)
                {
                    if (item.NepaliPaymentDate != null)
                    {
                        model.Payment_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(item.NepaliPaymentDate));
                    }
                    else
                    {
                        model.Payment_Date = null;
                    }
                    var Payment_RecordsEntity = new Payment_Records()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        //Payment_Date = item.Payment_Date,
                        Payment_Date = model.Payment_Date,
                        Nirmarn_Samagri = item.Nirmarn_Samagri,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Payment_Records.Add(Payment_RecordsEntity);
                }


                //var Payment_RecordsEntity = new Payment_Records()
                //{
                //    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //    Kista_Kram = model.Kista_Kram,
                //    Payment_Date = model.Payment_Date,
                //    Kista_Rakam = model.Kista_Rakam,
                //    Nirmarn_Samagri = model.Nirmarn_Samagri,
                //    Remarks = model.Remarks,
                //    Status = true,
                //    CreatedBy = model.CreatedBy,
                //    CreatedDate = DateTime.Now,
                //};
                //ent.Payment_Records.Add(Payment_RecordsEntity);


                var objAayojana_Maintainance = ent.Aayojana_Maintainance.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objAayojana_Maintainance)
                {
                    ent.Aayojana_Maintainance.Remove(item);
                    ent.SaveChanges();
                }
                var Aayojana_MaintainanceEntity = new Aayojana_Maintainance()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Responsible_Org = model.Responsible_Org,
                    Janashram = model.Janashram,
                    SewaSulka = model.SewaSulka,
                    Dastur_Chanda = model.Dastur_Chanda,
                    Lagat_Anudan = model.Lagat_Anudan,
                    Interest_Saving = model.Interest_Saving,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Aayojana_Maintainance.Add(Aayojana_MaintainanceEntity);


                var objMunicipality_Samiti_Manjuri_Patra = ent.Municipality_Samiti_Manjuri_Patra.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objMunicipality_Samiti_Manjuri_Patra)
                {
                    ent.Municipality_Samiti_Manjuri_Patra.Remove(item);
                    ent.SaveChanges();
                }
                var Municipality_Samiti_Manjuri_PatraEntity = new Municipality_Samiti_Manjuri_Patra()
                {
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Municipality_Rep_Name = model.Municipality_Rep_Name,
                    Municipality_Rep_Post = model.Municipality_Rep_Post,
                    Municipality_Rep_Sign = model.Municipality_Rep_Sign,
                    Municipality_Manjuri_Date = model.Municipality_Manjuri_Date,
                    Samiti_Adakshya_Name = model.Samiti_Adakshya_Name,
                    Samiti_Adakshya_Sign = model.Samiti_Adakshya_Sign,
                    Samiti_Sachib_Name = model.Samiti_Sachib_Name,
                    Samiti_Sachib_Sign = model.Samiti_Sachib_Sign,
                    Samiti_Rohabar_Name = model.Samiti_Rohabar_Name,
                    Samiti_Rohabar_Sign = model.Samiti_Rohabar_Sign,
                    yojanSakhaRepresentaive=model.yojanSakhaRepresentaive,
                    yojanSakhaRepresentativePost=model.yojanSakhaRepresentativePost,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Municipality_Samiti_Manjuri_Patra.Add(Municipality_Samiti_Manjuri_PatraEntity);


                var objPlanning_Entry_Anudan = ent.Planning_Entry_Anudan.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objPlanning_Entry_Anudan)
                {
                    ent.Planning_Entry_Anudan.Remove(item);
                    ent.SaveChanges();
                }
                var objPlanning_Entry_Kista_Detail = ent.Planning_Entry_Kista_Detail.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objPlanning_Entry_Kista_Detail)
                {
                    ent.Planning_Entry_Kista_Detail.Remove(item);
                    ent.SaveChanges();
                }
                var objPlanning_Entry = ent.Planning_Entry.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                foreach (var item in objPlanning_Entry)
                {
                    ent.Planning_Entry.Remove(item);
                    ent.SaveChanges();
                }


                int planningEntryId;

                var Planning_EntryEntity = new Planning_Entry()
                {
                    //FiscalYear = model.Fiscal_Year_Record,
                    FiscalYear = model.FiscalYear,
                    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                    Planning_Name = model.Planning_Name,
                    Planning_Start_Date = model.Planning_Start_Date,
                    Planning_End_Date = model.Planning_End_Date,
                    Work_Details = model.Work_Details,
                    Budget_Source = model.Budget_Source_Id,
                    Amount_Estimate = model.Amount_Estimate,
                    Work_Type = model.Work_Type,
                    Work_Area = model.Work_Area,
                    Ward_No = model.Ward_No,
                    SerialNo=model.PlanningSerialNo,
                    Planning_Type = model.Planning_Type,
                    UpaBhoktaSamiti_HeadName = model.UpaBhoktaSamiti_HeadName,
                    Contractor_Name = model.Contractor_Name,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Entry.Add(Planning_EntryEntity);
                planningEntryId = Planning_EntryEntity.Planning_Entry_Id;

                //var Planning_Entry_AnudanEntitity = new Planning_Entry_Anudan()
                //{
                //    Planning_Entry_Id = planningEntryId,
                //    Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //    Nagarpalika_Amt = model.Nagarpalika_Amt,
                //    UpaBhoktaSamiti_Amt = model.UpaBhoktaSamiti_Amt,
                //    Other_Amt = model.Other_Amt,
                //    JanaSahaBhagita_Amt = model.JanaSahaBhagita_Amt,
                //    Status = true,
                //    CreatedBy = model.CreatedBy,
                //    CreatedDate = DateTime.Now,
                //};
                //ent.Planning_Entry_Anudan.Add(Planning_Entry_AnudanEntitity);

                //foreach (var item in model.KistaFirstDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaSecondDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaThirdDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}
                //foreach (var item in model.KistaLastDetailsList)
                //{
                //    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                //    {
                //        Planning_Entry_Id = planningEntryId,
                //        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                //        Kista_Kram = item.Kista_Kram,
                //        Kista_Rakam = item.Kista_Rakam,
                //        Payment_Date = item.Payment_Date,
                //        Peski_Bhuktani = item.Peski_Bhuktani,
                //        Sarta = item.Sarta,
                //        Remarks = item.Remarks,
                //        Status = true,
                //        CreatedBy = model.CreatedBy,
                //        CreatedDate = DateTime.Now,
                //    };
                //    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                //}

                if (model.Amanat_Deatils_Id > 0)
                {
                    var amant = ent.Amanat_Deatils.Where(x => x.Id == model.Amanat_Deatils_Id).FirstOrDefault();
                    amant.Name = model.Amant_Name;
                    amant.Darja = model.Darja;
                    amant.SahiDate = model.Amant_SahiDate;
                    ent.Entry(amant).State = EntityState.Modified;
                }
                else if (model.Amant_Name != null && model.Amanat_Deatils_Id <= 0)
                {
                    var Amant_Kism = new Amanat_Deatils()
                    {
                        Name = model.Amant_Name,
                        Darja = model.Darja,
                        SahiDate = model.Amant_SahiDate,
                        Planning_Samjhata_Id = Municipality_Samiti_Manjuri_PatraEntity.Planning_Samjhauta_Id
                    };
                    ent.Amanat_Deatils.Add(Amant_Kism);
                }
                if (model.UpbhoktaSamiti_Deatils_Id > 0)
                {
                    var upbhogata = ent.UpbhoktaSamiti_Details.Where(x => x.Id == model.UpbhoktaSamiti_Deatils_Id).FirstOrDefault();
                    upbhogata.Name = model.Upbhogata_Name;
                    upbhogata.ContactNo = model.ContactNo;
                    upbhogata.SahiDate = model.Upbhogata_SahiDate;
                    ent.Entry(upbhogata).State = EntityState.Modified;
                }
                else if (model.Upbhogata_Name != null && model.UpbhoktaSamiti_Deatils_Id <= 0)
                {
                    var Upbhoghata = new UpbhoktaSamiti_Details()
                    {
                        Name = model.Upbhogata_Name,
                        ContactNo = model.ContactNo,
                        SahiDate = model.Upbhogata_SahiDate,
                        Planning_Ssamjhata_Id = Municipality_Samiti_Manjuri_PatraEntity.Planning_Samjhauta_Id
                    };
                    ent.UpbhoktaSamiti_Details.Add(Upbhoghata);
                }

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }

        public List<PlanningBhuktaniViewModel> GetPlanningBhuktaniList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Planning_Bhuktani
                                                        where p.DeletedDate == null && p.Status == true
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Planning_Bhuktani_Id = p.Planning_Bhuktani_Id,
                                                            Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                            Budget_Title = p.Budget_Title,
                                                            Budget_Title_Number = p.Budget_Title_Number,
                                                            Nirman_Upabhokta = p.Nirman_Upabhokta,
                                                            Aayojana_Karyakram = p.Aayojana_Karyakram,
                                                        }).ToList();
                return List;
            }
        }

        public PlanningBhuktaniViewModel GetPlanningBhuktaniById(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                var data = ent.Planning_Bhuktani.Where(x => x.Planning_Bhuktani_Id == id).Select(x => new PlanningBhuktaniViewModel()
                {
                    Planning_Bhuktani_Id = x.Planning_Bhuktani_Id,
                    Planning_Samjhauta_Id = x.Planning_Samjhauta_Id,
                    Bhuktani_Type = x.Bhuktani_Type,
                    IsBhuktaniApproval = x.IsBhuktaniApproval ?? false,
                    Fiscal_Year_Record = x.Fiscal_Year_Record,
                    Budget_Title = x.Budget_Title,
                    Budget_Title_Number = x.Budget_Title_Number,
                    Aayojana_Karyakram = x.Aayojana_Karyakram,
                    Nirman_Upabhokta = x.Nirman_Upabhokta,
                    AdakshyaName = x.AdakshyaName,
                    SamjhautaDate = x.SamjhautaDate,
                    Kul_La_Ie = x.Kul_La_Ie,
                    NaPa_Binayajit = x.NaPa_Binayajit,
                    Otheers = x.Otheers,
                    Jana_Sahabagita = x.Jana_Sahabagita,
                    Kantigenci = x.Kantigenci,
                    Peski = x.Peski,
                    Farchot_Amount = x.Farchot_Amount,
                    Running_Bhuktani = x.Running_Bhuktani,
                    Technical_Amount = x.Technical_Amount,
                    Samajik_Surekchya = x.Samajik_Surekchya,
                    Agrim_Shulka = x.Agrim_Shulka,
                    Parishramik = x.Parishramik,
                    Bahal_Kar = x.Bahal_Kar,
                    Katti_Rakam = x.Katti_Rakam,
                    Remaining_Bhuktani_Amount = x.Remaining_Bhuktani_Amount,
                    Aanya_Raaya = x.Aanya_Raaya,
                    Marmat_Sambhar=x.MarmatShmar,
                    Status = x.Status ?? false,
                }).SingleOrDefault();
                return data;
            }
        }

        public List<PlanningBhuktaniViewModel> GetPlanningBhuktaniListByPlanningSamjhautaId(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Planning_Bhuktani
                                                        where p.Planning_Samjhauta_Id == id && p.DeletedDate == null && p.Status == true
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                            Planning_Bhuktani_Id = p.Planning_Bhuktani_Id,
                                                            Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                            Budget_Title = p.Budget_Title,
                                                            Budget_Title_Number = p.Budget_Title_Number,
                                                            Nirman_Upabhokta = p.Nirman_Upabhokta,
                                                            Aayojana_Karyakram = p.Aayojana_Karyakram,
                                                            Bhuktani_Type = p.Bhuktani_Type,
                                                            Remaining_Bhuktani_Amount = p.Remaining_Bhuktani_Amount,
                                                            IsBhuktaniApproval = p.IsBhuktaniApproval ?? false,
                                                        }).ToList();
                return List;
            }
        }

        public int UpdatePlanningBhuktani(PlanningBhuktaniViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Planning_Bhuktani.Where(x => x.Planning_Bhuktani_Id == model.Planning_Bhuktani_Id).SingleOrDefault();
                data.Planning_Bhuktani_Id = model.Planning_Bhuktani_Id;
                data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                data.Bhuktani_Type = model.Bhuktani_Type;
                data.IsBhuktaniApproval = model.IsBhuktaniApproval;
                data.Fiscal_Year_Record = model.Fiscal_Year_Record;
                data.Budget_Title = model.Budget_Title;
                data.Budget_Title_Number = model.Budget_Title_Number;
                data.Aayojana_Karyakram = model.Aayojana_Karyakram;
                data.Nirman_Upabhokta = model.Nirman_Upabhokta;
                data.AdakshyaName = model.AdakshyaName;
                data.SamjhautaDate = model.SamjhautaDate;
                data.Kul_La_Ie = model.Kul_La_Ie;
                data.NaPa_Binayajit = model.NaPa_Binayajit;
                data.Otheers = model.Otheers;
                data.Jana_Sahabagita = model.Jana_Sahabagita;
                data.Kantigenci = model.Kantigenci;
                data.Peski = model.Peski;
                data.Farchot_Amount = model.Farchot_Amount;
                data.Running_Bhuktani = model.Running_Bhuktani;
                data.Technical_Amount = model.Technical_Amount;
                data.Samajik_Surekchya = model.Samajik_Surekchya;
                data.Agrim_Shulka = model.Agrim_Shulka;
                data.Parishramik = model.Parishramik;
                data.Bahal_Kar‍ = model.Bahal_Kar;
                data.Katti_Rakam = model.Katti_Rakam;
                data.Remaining_Bhuktani_Amount = model.Remaining_Bhuktani_Amount;
                data.Aanya_Raaya = model.Aanya_Raaya;
                data.MarmatShmar = model.Marmat_Sambhar;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;
                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }

        public List<PlanningEntryViewModel> GetPlanningEntryList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningEntryViewModel model = new PlanningEntryViewModel();
                List<PlanningEntryViewModel> List = (from p in ent.Planning_Entry
                                                     join pa in ent.Planning_Entry_Anudan on p.Planning_Entry_Id equals pa.Planning_Entry_Id
                                                     where p.DeletedDate == null && p.Status == true
                                                     select new PlanningEntryViewModel
                                                     {
                                                         Planning_Entry_Id = p.Planning_Entry_Id,
                                                         FiscalYear = p.FiscalYear,
                                                         Planning_Type = p.Planning_Type,
                                                         Work_Area = p.Work_Area,
                                                         Budget_Source_Id = p.Budget_Source,
                                                         Planning_Name = p.Planning_Name,
                                                         Ward_No = p.Ward_No,
                                                         Planning_Start_Date = p.Planning_Start_Date,
                                                         Planning_End_Date = p.Planning_End_Date,
                                                         Amount_Estimate = p.Amount_Estimate,
                                                     }).ToList();
                return List;
            }
        }

        //public int InsertPlanningEntry(PlanningEntryViewModel model)
        //{
        //    int planningEntryId = 0;
        //    using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
        //    {
        //        var Planning_EntryEntity = new Planning_Entry()
        //        {
        //            FiscalYear = model.FiscalYear,
        //            Planning_Name = model.Planning_Name,
        //            Planning_Start_Date = model.Planning_Start_Date,
        //            Planning_End_Date = model.Planning_End_Date,
        //            Work_Details = model.Work_Details,
        //            Budget_Source=model.Budget_Source_Id,
        //            Amount_Estimate = model.Amount_Estimate,
        //            Work_Type = model.Work_Type,
        //            Work_Area = model.Work_Area,
        //            Ward_No=model.Ward_No,
        //            Planning_Type=model.Planning_Type,
        //            UpaBhoktaSamiti_HeadName=model.UpaBhoktaSamiti_HeadName,
        //            Contractor_Name=model.Contractor_Name,
        //            Status = true,
        //            CreatedBy = model.CreatedBy,
        //            CreatedDate = DateTime.Now,
        //        };
        //        ent.Planning_Entry.Add(Planning_EntryEntity);
        //        planningEntryId = Planning_EntryEntity.Planning_Entry_Id;

        //        var Planning_Entry_AnudanEntitity = new Planning_Entry_Anudan()
        //        {
        //            Planning_Entry_Id = planningEntryId,
        //            Nagarpalika_Amt = model.Nagarpalika_Amt,
        //            UpaBhoktaSamiti_Amt = model.UpaBhoktaSamiti_Amt,
        //            Other_Amt = model.Other_Amt,
        //            JanaSahaBhagita_Amt=model.JanaSahaBhagita_Amt,
        //            Status = true,
        //            CreatedBy = model.CreatedBy,
        //            CreatedDate = DateTime.Now,
        //        };
        //        ent.Planning_Entry_Anudan.Add(Planning_Entry_AnudanEntitity);

        //        foreach (var item in model.KistaFirstDetailsList)
        //        {
        //            var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
        //            {
        //                Planning_Entry_Id = planningEntryId,
        //                Kista_Kram = item.Kista_Kram,
        //                Kista_Rakam = item.Kista_Rakam,
        //                Payment_Date = item.Payment_Date,
        //                Peski_Bhuktani = item.Peski_Bhuktani,
        //                Sarta = item.Sarta,
        //                Remarks = item.Remarks,
        //                Status = true,
        //                CreatedBy = model.CreatedBy,
        //                CreatedDate = DateTime.Now,
        //            };
        //            ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
        //        }
        //        foreach (var item in model.KistaSecondDetailsList)
        //        {
        //            var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
        //            {
        //                Planning_Entry_Id = planningEntryId,
        //                Kista_Kram = item.Kista_Kram,
        //                Kista_Rakam = item.Kista_Rakam,
        //                Payment_Date = item.Payment_Date,
        //                Peski_Bhuktani = item.Peski_Bhuktani,
        //                Sarta = item.Sarta,
        //                Remarks = item.Remarks,
        //                Status = true,
        //                CreatedBy = model.CreatedBy,
        //                CreatedDate = DateTime.Now,
        //            };
        //            ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
        //        }
        //        foreach (var item in model.KistaThirdDetailsList)
        //        {
        //            var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
        //            {
        //                Planning_Entry_Id = planningEntryId,
        //                Kista_Kram = item.Kista_Kram,
        //                Kista_Rakam = item.Kista_Rakam,
        //                Payment_Date = item.Payment_Date,
        //                Peski_Bhuktani = item.Peski_Bhuktani,
        //                Sarta = item.Sarta,
        //                Remarks = item.Remarks,
        //                Status = true,
        //                CreatedBy = model.CreatedBy,
        //                CreatedDate = DateTime.Now,
        //            };
        //            ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
        //        }
        //        foreach (var item in model.KistaLastDetailsList)
        //        {
        //            var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
        //            {
        //                Planning_Entry_Id = planningEntryId,
        //                Kista_Kram = item.Kista_Kram,
        //                Kista_Rakam = item.Kista_Rakam,
        //                Payment_Date = item.Payment_Date,
        //                Peski_Bhuktani = item.Peski_Bhuktani,
        //                Sarta = item.Sarta,
        //                Remarks = item.Remarks,
        //                Status = true,
        //                CreatedBy = model.CreatedBy,
        //                CreatedDate = DateTime.Now,
        //            };
        //            ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
        //        }

        //        int i = ent.SaveChanges();

        //        if (i > 0)
        //        {
        //            return 1;
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //}

        public int InsertPlanningEntry(PlanningEntryViewModel model)
        {
            int planningEntryId = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Planning_EntryEntity = new Planning_Entry()
                {
                    FiscalYear = model.FiscalYear,
                    Planning_Name = model.Planning_Name,
                    Planning_Start_Date = model.Planning_Start_Date,
                    Planning_End_Date = model.Planning_End_Date,
                    Work_Details = model.Work_Details,
                    Budget_Source = model.Budget_Source_Id,
                    Amount_Estimate = model.Amount_Estimate,
                    Work_Type = model.Work_Type,
                    Work_Area = model.Work_Area,
                    Ward_No = model.Ward_No,
                    Planning_Type = model.Planning_Type,
                    UpaBhoktaSamiti_HeadName = model.UpaBhoktaSamiti_HeadName,
                    Contractor_Name = model.Contractor_Name,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Entry.Add(Planning_EntryEntity);
                planningEntryId = Planning_EntryEntity.Planning_Entry_Id;

                var Planning_Entry_AnudanEntitity = new Planning_Entry_Anudan()
                {
                    Planning_Entry_Id = planningEntryId,
                    Nagarpalika_Amt = model.Nagarpalika_Amt,
                    UpaBhoktaSamiti_Amt = model.UpaBhoktaSamiti_Amt,
                    Other_Amt = model.Other_Amt,
                    JanaSahaBhagita_Amt = model.JanaSahaBhagita_Amt,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Entry_Anudan.Add(Planning_Entry_AnudanEntitity);

                foreach (var item in model.KistaFirstDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = planningEntryId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaSecondDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = planningEntryId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaThirdDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = planningEntryId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaLastDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = planningEntryId,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }

                int i = ent.SaveChanges();

                if (i > 0)
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
        }

        //public PlanningEntryViewModel UpdatePlanningEntryById(int id)
        //{
        //    using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
        //    {
        //        PlanningEntryViewModel model = new PlanningEntryViewModel();
        //        var data = ent.Planning_Entry.Where(x => x.Planning_Entry_Id == id).Select(x => new PlanningEntryViewModel()
        //        {
        //            Planning_Entry_Id = x.Planning_Entry_Id,
        //            FiscalYear = x.FiscalYear,
        //            Planning_Name = x.Planning_Name,
        //            Planning_Start_Date = x.Planning_Start_Date,
        //            Planning_End_Date = x.Planning_End_Date,
        //            Work_Details = x.Work_Details,
        //            Amount_Estimate = x.Amount_Estimate,
        //            Work_Type = x.Work_Type,
        //            Ward_No = x.Ward_No,
        //            Work_Area = x.Work_Area,
        //            Budget_Source_Id = x.Budget_Source,
        //            Planning_Type = x.Planning_Type,
        //            UpaBhoktaSamiti_HeadName = x.UpaBhoktaSamiti_HeadName,
        //            Contractor_Name = x.Contractor_Name,
        //            Status = x.Status ?? false,
        //        }).SingleOrDefault();
        //        return data;
        //    }
        //}

        public List<PlanningEntryViewModel> UpdatePlanningEntryById(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningEntryViewModel model = new PlanningEntryViewModel();
                List<PlanningEntryViewModel> List = (from p in ent.Planning_Entry
                                                     join pa in ent.Planning_Entry_Anudan on p.Planning_Entry_Id equals pa.Planning_Entry_Id
                                                     select new PlanningEntryViewModel
                                                     {
                                                         Planning_Entry_Id = p.Planning_Entry_Id,
                                                         FiscalYear = p.FiscalYear,
                                                         Planning_Name = p.Planning_Name,
                                                         Planning_Start_Date = p.Planning_Start_Date,
                                                         Planning_End_Date = p.Planning_End_Date,
                                                         Work_Details = p.Work_Details,
                                                         Amount_Estimate = p.Amount_Estimate,
                                                         Work_Type = p.Work_Type,
                                                         Ward_No = p.Ward_No,
                                                         Work_Area = p.Work_Area,
                                                         Budget_Source_Id = p.Budget_Source,
                                                         Planning_Type = p.Planning_Type,
                                                         UpaBhoktaSamiti_HeadName = p.UpaBhoktaSamiti_HeadName,
                                                         Contractor_Name = p.Contractor_Name,
                                                         Nagarpalika_Amt = pa.Nagarpalika_Amt,
                                                         UpaBhoktaSamiti_Amt = pa.UpaBhoktaSamiti_Amt,
                                                         Other_Amt = pa.Other_Amt,
                                                         JanaSahaBhagita_Amt = pa.JanaSahaBhagita_Amt,
                                                         Status = p.Status ?? false,
                                                         DeletedDate = p.DeletedDate,
                                                     }).Where(x => x.Planning_Entry_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningEntryViewModel> GetKistaDetailListByPlanningEntryId(int planningEntryId)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<PlanningEntryViewModel> List = ent.Planning_Entry_Kista_Detail.Where(x => x.Planning_Entry_Id == planningEntryId).Select(x => new PlanningEntryViewModel()
                {
                    Planning_Entry_Kista_Detail_Id = x.Planning_Entry_Kista_Detail_Id,
                    Planning_Entry_Id = x.Planning_Entry_Id ?? 0,
                    Kista_Kram = x.Kista_Kram,
                    Kista_Rakam = x.Kista_Rakam,
                    Payment_Date = x.Payment_Date,
                    Peski_Bhuktani = x.Peski_Bhuktani,
                    Sarta = x.Sarta,
                    Remarks = x.Remarks,
                    Status = x.Status ?? false,
                }).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetKistaDetailListByPlanningSamjhautaEntryId(int planningSamjhautaId)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<PlanningSamjhautaViewModel> List = ent.Planning_Entry_Kista_Detail.Where(x => x.Planning_Samjhauta_Id == planningSamjhautaId).Select(x => new PlanningSamjhautaViewModel()
                {
                    Planning_Entry_Kista_Detail_Id = x.Planning_Entry_Kista_Detail_Id,
                    Planning_Samjhauta_Id = x.Planning_Samjhauta_Id ?? 0,
                    Planning_Entry_Id = x.Planning_Entry_Id ?? 0,
                    Kista_Kram = x.Kista_Kram,
                    Kista_Rakam = x.Kista_Rakam,
                    Payment_Date = x.Payment_Date,
                    Peski_Bhuktani = x.Peski_Bhuktani,
                    Sarta = x.Sarta,
                    Remarks = x.Remarks,
                    Status = x.Status ?? false,
                }).ToList();
                return List;
            }
        }

        public int UpdatePlanningEntry(PlanningEntryViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Planning_Entry.Where(x => x.Planning_Entry_Id == model.Planning_Entry_Id).SingleOrDefault();
                data.Planning_Entry_Id = model.Planning_Entry_Id;
                data.FiscalYear = model.FiscalYear;
                data.Planning_Name = model.Planning_Name;
                data.Planning_Start_Date = model.Planning_Start_Date;
                data.Planning_End_Date = model.Planning_End_Date;
                data.Work_Details = model.Work_Details;
                data.Budget_Source = model.Budget_Source_Id;
                data.Amount_Estimate = model.Amount_Estimate;
                data.Work_Type = model.Work_Type;
                data.Work_Area = model.Work_Area;
                data.Ward_No = model.Ward_No;
                data.Planning_Type = model.Planning_Type;
                data.UpaBhoktaSamiti_HeadName = model.UpaBhoktaSamiti_HeadName;
                data.Contractor_Name = model.Contractor_Name;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;

                var objPlanning_Entry_Anudan = ent.Planning_Entry_Anudan.Where(x => x.Planning_Entry_Id == model.Planning_Entry_Id).ToList();
                foreach (var anudanItem in objPlanning_Entry_Anudan)
                {
                    ent.Planning_Entry_Anudan.Remove(anudanItem);
                    ent.SaveChanges();
                }
                var Planning_Entry_AnudanEntitity = new Planning_Entry_Anudan()
                {
                    Planning_Entry_Id = model.Planning_Entry_Id,
                    Nagarpalika_Amt = model.Nagarpalika_Amt,
                    UpaBhoktaSamiti_Amt = model.UpaBhoktaSamiti_Amt,
                    Other_Amt = model.Other_Amt,
                    JanaSahaBhagita_Amt = model.JanaSahaBhagita_Amt,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Planning_Entry_Anudan.Add(Planning_Entry_AnudanEntitity);


                var objPlanning_Entry_Kista_Detail = ent.Planning_Entry_Kista_Detail.Where(x => x.Planning_Entry_Id == model.Planning_Entry_Id).ToList();
                foreach (var item in objPlanning_Entry_Kista_Detail)
                {
                    ent.Planning_Entry_Kista_Detail.Remove(item);
                    ent.SaveChanges();
                }

                foreach (var item in model.KistaFirstDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = model.Planning_Entry_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaSecondDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = model.Planning_Entry_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaThirdDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = model.Planning_Entry_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }
                foreach (var item in model.KistaLastDetailsList)
                {
                    var Planning_Entry_Kista_DetailEntity = new Planning_Entry_Kista_Detail()
                    {
                        Planning_Entry_Id = model.Planning_Entry_Id,
                        Kista_Kram = item.Kista_Kram,
                        Kista_Rakam = item.Kista_Rakam,
                        Payment_Date = item.Payment_Date,
                        Peski_Bhuktani = item.Peski_Bhuktani,
                        Sarta = item.Sarta,
                        Remarks = item.Remarks,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Entry_Kista_Detail.Add(Planning_Entry_Kista_DetailEntity);
                }


                int i = ent.SaveChanges();
                if (i > 0)
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningYojanaListForOdaAndNagar()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from ps in ent.Planning_Samjhauta
                                                         join p in ent.Planning_Entry on ps.Planning_Samjhauta_Id equals p.Planning_Samjhauta_Id
                                                         join ped in ent.Project_Entry_Detail on ps.Planning_Samjhauta_Id equals ped.Planning_Samjhauta_Id
                                                         join psd in ent.Project_Source_Detail on ps.Planning_Samjhauta_Id equals psd.Planning_Samjhauta_Id
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             Planning_Samjhauta_Id = ps.Planning_Samjhauta_Id,
                                                             Planning_Entry_Id = p.Planning_Entry_Id,
                                                             FiscalYear = ps.Fiscal_Year_Record,
                                                             Contegency_Amount = ps.Contegency_Amount,
                                                             MarmatSambhar_Amount = ps.MarmatSambhar_Amount,
                                                             Total_Amount = ps.Total_Amount,
                                                             Project_Name = ped.Project_Name,
                                                             Project_Place = ped.Project_Place,
                                                             Project_estimated_Amount = ped.Project_estimated_Amount,
                                                             Nepal_Government = psd.Nepal_Government,
                                                             Municipality = psd.Municipality,
                                                             State = psd.State,
                                                             NGO_INGO = psd.NGO_INGO,
                                                             Community_Org = psd.Community_Org,
                                                             Foreign_Org = psd.Foreign_Org,
                                                             Public_Community = psd.Public_Community,
                                                             Loan_Grant = psd.Loan_Grant,
                                                             Other_Source = psd.Other_Source,
                                                             Work_Area = p.Work_Area,
                                                             Ward_No = p.Ward_No,
                                                             Planning_Type = p.Planning_Type,
                                                             BudgetSource = p.Budget_Source1.Source_Name,
                                                             DeletedDate = p.DeletedDate,
                                                             Status = ps.Status,
                                                         }).Where(x => x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningEntryViewModel> GetOdaWisePlanningList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningEntryViewModel model = new PlanningEntryViewModel();
                List<PlanningEntryViewModel> List = (from ps in ent.Planning_Samjhauta
                                                     join p in ent.Planning_Entry on ps.Planning_Samjhauta_Id equals p.Planning_Samjhauta_Id
                                                     join pa in ent.Planning_Entry_Anudan on p.Planning_Entry_Id equals pa.Planning_Entry_Id into planningAnudan
                                                     from pa in planningAnudan.DefaultIfEmpty()
                                                     select new PlanningEntryViewModel()
                                                     {
                                                         Planning_Entry_Id = p.Planning_Entry_Id,
                                                         FiscalYear = ps.Fiscal_Year_Record,
                                                         Planning_Name = p.Planning_Name,
                                                         Planning_Start_Date = p.Planning_Start_Date,
                                                         Planning_End_Date = p.Planning_End_Date,
                                                         Work_Details = p.Work_Details,
                                                         Work_Area = p.Work_Area,
                                                         Work_Type = p.Work_Type,
                                                         Ward_No = p.Ward_No,
                                                         Planning_Type = p.Planning_Type,
                                                         Amount_Estimate = p.Amount_Estimate,
                                                         UpaBhoktaSamiti_HeadName = p.UpaBhoktaSamiti_HeadName,
                                                         Contractor_Name = p.Contractor_Name,
                                                         Nagarpalika_Amt = pa.Nagarpalika_Amt,
                                                         UpaBhoktaSamiti_Amt = pa.UpaBhoktaSamiti_Amt,
                                                         Other_Amt = pa.Other_Amt,
                                                         JanaSahaBhagita_Amt = pa.JanaSahaBhagita_Amt,
                                                         Status = p.Status,
                                                         DeletedDate = p.DeletedDate,
                                                     }).Where(x => x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningEntryViewModel> GetNagarWisePlanningDetailList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningEntryViewModel model = new PlanningEntryViewModel();
                List<PlanningEntryViewModel> List = (from ps in ent.Planning_Samjhauta
                                                     join p in ent.Planning_Entry on ps.Planning_Samjhauta_Id equals p.Planning_Samjhauta_Id
                                                     join pa in ent.Planning_Entry_Anudan on p.Planning_Entry_Id equals pa.Planning_Entry_Id /*into planningAnudan*/
                                                     select new PlanningEntryViewModel()
                                                     {
                                                         Planning_Entry_Id = p.Planning_Entry_Id,
                                                         FiscalYear = ps.Fiscal_Year_Record,
                                                         Planning_Name = p.Planning_Name,
                                                         Planning_Start_Date = p.Planning_Start_Date,
                                                         Planning_End_Date = p.Planning_End_Date,
                                                         Work_Details = p.Work_Details,
                                                         Work_Area = p.Work_Area,
                                                         Work_Type = p.Work_Type,
                                                         Ward_No = p.Ward_No,
                                                         Planning_Type = p.Planning_Type,
                                                         Amount_Estimate = p.Amount_Estimate,
                                                         UpaBhoktaSamiti_HeadName = p.UpaBhoktaSamiti_HeadName,
                                                         Contractor_Name = p.Contractor_Name,
                                                         Nagarpalika_Amt = pa.Nagarpalika_Amt,
                                                         UpaBhoktaSamiti_Amt = pa.UpaBhoktaSamiti_Amt,
                                                         Other_Amt = pa.Other_Amt,
                                                         JanaSahaBhagita_Amt = pa.JanaSahaBhagita_Amt,
                                                         Status = p.Status,
                                                         DeletedDate = p.DeletedDate,
                                                     }).Where(x => x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetKistaDetailListByPlanningSamjhautaId(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Payment_Records
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Payment_Records_Id = p.Payment_Records_Id,
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id ?? 0,
                                                             Kista_Kram = p.Kista_Kram,
                                                             Kista_Rakam = p.Kista_Rakam,
                                                             Payment_Date = (DateTime)p.Payment_Date,
                                                             //NepaliPaymentDate=p.Payment_Date.ToString(),
                                                             //NepaliPaymentDate= Utility.CommonUtility.getNepaliDate(p.Payment_Date.Value.ToShortDateString()),
                                                             Nirmarn_Samagri = p.Nirmarn_Samagri,
                                                             Remarks = p.Remarks,
                                                             Status = p.Status,
                                                         }).Where(x => x.Status == true && x.Planning_Samjhauta_Id == id).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetPlanningBhuktaniReportList(string FiscalYear, string OrgName, string ProjectName)
        {
            if (FiscalYear != null && OrgName != null && ProjectName != null)
            {
                using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
                {
                    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                    List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                             join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                             join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                             join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id
                                                             select new PlanningSamjhautaViewModel()
                                                             {
                                                                 Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                                 Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                                 Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                                 Total_Amount = p.Total_Amount,
                                                                 Contegency_Amount = p.Contegency_Amount,
                                                                 Project_Name = pe.Project_Name,
                                                                 BudgetSource = ple.Budget_Source1.Source_Name,
                                                                 Nagarpalika_Amt = ps.Municipality,
                                                                 Loan_Grant = ps.Loan_Grant,
                                                                 DeletedDate = p.DeletedDate,
                                                                 Ward_No = ple.Ward_No,
                                                                 KulLaIe = pe.Project_estimated_Amount,
                                                                 Other_Amt = ps.Other_Source,
                                                             }).Where(x => x.DeletedDate == null).ToList();

                    if (!String.IsNullOrEmpty(FiscalYear))
                    {
                        List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(ProjectName))
                    {
                        List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                    }
                    if (!String.IsNullOrEmpty(OrgName))
                    {
                        List = List.Where(x => x.Samjhauta_Org_Name.Trim() == OrgName.Trim()).ToList();
                    }

                    return List;
                }
            }
            else
            {
                return null;
            }
        }

        public List<PlanningSamjhautaViewModel> GetOrganizationList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Organization_Setup
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Organization_Setup_Id = p.Organization_Setup_Id,
                                                             Organization_Name = p.Organization_Name,
                                                             Organization_Type = p.Organization_Type,
                                                             District_Name = p.District_Name,
                                                             State_Country = p.State_Country,
                                                             Image_Path = p.Image_Path,
                                                         }).ToList();
                return List;
            }
        }

        public List<PlanningEntryViewModel> GetOrganizationDtailList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningEntryViewModel model = new PlanningEntryViewModel();
                List<PlanningEntryViewModel> List = (from p in ent.Organization_Setup
                                                     select new PlanningEntryViewModel
                                                     {
                                                         Organization_Setup_Id = p.Organization_Setup_Id,
                                                         Organization_Name = p.Organization_Name,
                                                         Organization_Type = p.Organization_Type,
                                                         District_Name = p.District_Name,
                                                         State_Country = p.State_Country,
                                                         Image_Path = p.Image_Path,
                                                     }).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> GetUpaBhoktaSamitiList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<PlanningSamjhautaViewModel> List = ent.UpaBhokta_Samiti_Members_Details.Where(x => x.Planning_Samjhauta_Id == id).Select(x => new PlanningSamjhautaViewModel()
                {
                    UpaBhokta_Samiti_Members_Details_Id = x.UpaBhokta_Samiti_Members_Details_Id,
                    Planning_Samjhauta_Id = x.Planning_Samjhauta_Id ?? 0,
                    Sadashya = x.MemberName,
                    Status = x.Status
                }).ToList();
                return List;
            }
        }

        public List<PlanningBhuktaniViewModel> GetOrganizationListForBhuktani()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Organization_Setup
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Organization_Setup_Id = p.Organization_Setup_Id,
                                                            Organization_Name = p.Organization_Name,
                                                            Organization_Type = p.Organization_Type,
                                                            District_Name = p.District_Name,
                                                            State_Country = p.State_Country,
                                                            Image_Path = p.Image_Path,
                                                        }).ToList();
                return List;
            }
        }

        //public bool UploadPlanningDocuments(PlanningDocumentsViewModel model)
        //{
        //    using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
        //    {
        //        var Planning_DocumentsEntity =new Planning_Documents()
        //        {
        //            Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
        //            Fiscal_Year=model.Fiscal_Year,
        //            Project_Name=model.Project_Name,
        //            Upabhokta_Gathan=model.Upabhokta_Gathan,
        //            Nirnaya=model.Nirnaya,
        //            Samjhauta=model.Samjhauta,
        //            Anuman=model.Anuman,
        //            Mapan=model.Mapan,
        //            Pramanikaran=model.Pramanikaran,
        //            Karya_Sampanna=model.Karya_Sampanna,
        //            Bhuktani_Nibedan=model.Bhuktani_Nibedan,
        //            Status = true,
        //            CreatedBy = model.CreatedBy,
        //            CreatedDate = DateTime.Now,
        //        };

        //        ent.Planning_Documents.Add(Planning_DocumentsEntity);
        //        int i = ent.SaveChanges();
        //        if (i > 0)
        //            return true;
        //        else
        //            return false;

        //        //try
        //        //{
        //        //    ent.Planning_Documents.Add(Planning_DocumentsEntity);
        //        //    int i = ent.SaveChanges();
        //        //    if (i > 0)
        //        //        return true;
        //        //    else
        //        //        return false;
        //        //}
        //        //catch (DbEntityValidationException dbEx)// For Validation failed for one or more entities...check  
        //        //{
        //        //    foreach (var validationErrors in dbEx.EntityValidationErrors)
        //        //    {
        //        //        foreach (var validationError in validationErrors.ValidationErrors)
        //        //        {
        //        //            System.Console.WriteLine("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
        //        //        }
        //        //    }
        //        //    throw;
        //        //}
        //    }
        //}

        public int UploadPlanningDocuments(PlanningDocumentsViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                if (data != null)
                {
                    data.Planning_Documents_Id = model.Planning_Documents_Id;
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.Fiscal_Year = model.Fiscal_Year;
                    data.Project_Name = model.Project_Name;
                    if (model.Upabhokta_Gathan != null)
                    {
                        data.Upabhokta_Gathan = model.Upabhokta_Gathan;
                    }
                    else
                    {
                        data.Upabhokta_Gathan = data.Upabhokta_Gathan;
                    }
                    if (model.Nirnaya != null)
                    {
                        data.Nirnaya = model.Nirnaya;
                    }
                    else
                    {
                        data.Nirnaya = data.Nirnaya;
                    }
                    if (model.Samjhauta != null)
                    {
                        data.Samjhauta = model.Samjhauta;
                    }
                    else
                    {
                        data.Samjhauta = data.Samjhauta;
                    }
                    if (model.Anuman != null)
                    {
                        data.Anuman = model.Anuman;
                    }
                    else
                    {
                        data.Anuman = data.Anuman;
                    }
                    if (model.Mapan != null)
                    {
                        data.Mapan = model.Mapan;
                    }
                    else
                    {
                        data.Mapan = data.Mapan;
                    }
                    if (model.Pramanikaran != null)
                    {
                        data.Pramanikaran = model.Pramanikaran;
                    }
                    else
                    {
                        data.Pramanikaran = data.Pramanikaran;
                    }
                    if (model.Karya_Sampanna != null)
                    {
                        data.Karya_Sampanna = model.Karya_Sampanna;
                    }
                    else
                    {
                        data.Karya_Sampanna = data.Karya_Sampanna;
                    }
                    if (model.Bhuktani_Nibedan != null)
                    {
                        data.Bhuktani_Nibedan = model.Bhuktani_Nibedan;
                    }
                    else
                    {
                        data.Bhuktani_Nibedan = data.Bhuktani_Nibedan;
                    }
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                }
                else
                {
                    var Planning_DocumentsEntity = new Planning_Documents()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        Fiscal_Year = model.Fiscal_Year,
                        Project_Name = model.Project_Name,
                        Upabhokta_Gathan = model.Upabhokta_Gathan,
                        Nirnaya = model.Nirnaya,
                        Samjhauta = model.Samjhauta,
                        Anuman = model.Anuman,
                        Mapan = model.Mapan,
                        Pramanikaran = model.Pramanikaran,
                        Karya_Sampanna = model.Karya_Sampanna,
                        Bhuktani_Nibedan = model.Bhuktani_Nibedan,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Planning_Documents.Add(Planning_DocumentsEntity);
                }
                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }

        public List<PlanningDocumentsViewModel> GetAllPlanningDocuments(PlanningDocumentsViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<PlanningDocumentsViewModel> List = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).Select(x => new PlanningDocumentsViewModel()
                {
                    Planning_Documents_Id = x.Planning_Documents_Id,
                    Planning_Samjhauta_Id = x.Planning_Samjhauta_Id,
                    Fiscal_Year = x.Fiscal_Year,
                    Project_Name = x.Project_Name,
                    Upabhokta_Gathan = x.Upabhokta_Gathan,
                    Nirnaya = x.Nirnaya,
                    Samjhauta = x.Samjhauta,
                    Anuman = x.Anuman,
                    Mapan = x.Mapan,
                    Pramanikaran = x.Pramanikaran,
                    Karya_Sampanna = x.Karya_Sampanna,
                    Bhuktani_Nibedan = x.Bhuktani_Nibedan,
                    Status = x.Status,
                }).ToList();
                return List;
            }
        }

        public PlanningDocumentsViewModel GetAllPlanningDocumentsForEdit(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningDocumentsViewModel model = new PlanningDocumentsViewModel();
                var data = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => new PlanningDocumentsViewModel()
                {
                    Planning_Documents_Id = x.Planning_Documents_Id,
                    Planning_Samjhauta_Id = x.Planning_Samjhauta_Id,
                    Fiscal_Year = x.Fiscal_Year,
                    Project_Name = x.Project_Name,
                    Upabhokta_Gathan = x.Upabhokta_Gathan,
                    Nirnaya = x.Nirnaya,
                    Samjhauta = x.Samjhauta,
                    Anuman = x.Anuman,
                    Mapan = x.Mapan,
                    Pramanikaran = x.Pramanikaran,
                    Karya_Sampanna = x.Karya_Sampanna,
                    Bhuktani_Nibedan = x.Bhuktani_Nibedan,
                    Status = x.Status,
                }).SingleOrDefault();
                return data;
            }
        }

        public List<PlanningBhuktaniViewModel> GetPlanningSamjhautaDetailList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Planning_Samjhauta
                                                        join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id into prodetail
                                                        from ps in prodetail.DefaultIfEmpty()
                                                        join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                        from pe in proentry.DefaultIfEmpty()
                                                        join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                        from pd in samiti.DefaultIfEmpty()
                                                        join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id into manjuri
                                                        from mp in manjuri.DefaultIfEmpty()
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                            Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                            Aayojana_Karyakram = pe.Project_Name,
                                                            Nirman_Upabhokta = p.Samjhauta_Org_Name,
                                                            AdakshyaName = pd.Adakshya,
                                                            SamjhautaDate = mp.Municipality_Manjuri_Date,
                                                            Kul_La_Ie = pe.Project_estimated_Amount,
                                                            NaPa_Binayajit = ps.Municipality,
                                                            Jana_Sahabagita = ps.Loan_Grant,
                                                            Kantigenci = p.Contegency_Amount,
                                                            Status = p.Status ?? false,
                                                            Marmat_Sambhar=p.MarmatSambhar_Amount,
                                                            DeletedDate = p.DeletedDate,
                                                        }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<PlanningBhuktaniViewModel> GetPlanningKarKatti()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<PlanningBhuktaniViewModel> List = ent.Kar_Katti.Select(x => new PlanningBhuktaniViewModel()
                {
                    Kar_Katti_Id = x.Kar_Katti_Id,
                    Kantigenci1 = x.Contigency,
                    Samajik_Surekchya1 = x.SamajikSurekchya,
                    Agrim_Shulka1 = x.AgrimShulka,
                    Parishramik1 = x.Parishramik,
                    Bahal_Kar1 = x.BahalKar,
                    Marmat_Sambhar1=x.MarmatSambhar,
                    Status = x.Status ?? false
                }).ToList();
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> PlanningSelectedReport(string FiscalYear, string ProjectName, int? budgetSource, string OdaNagar)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,
                                                             Budget_Source_Id = ple.Budget_Source,
                                                             BudgetSource = ple.Budget_Source1.Source_Name,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             CreatedDate = p.CreatedDate,
                                                             Contegency_Amount = p.Contegency_Amount,
                                                             Contegency_Percentage = p.Contegency_Percentage,
                                                             MarmatSambhar_Amount = p.MarmatSambhar_Amount,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(ProjectName))
                {
                    List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                }
                if (budgetSource > 0)
                {
                    List = List.Where(x => x.Budget_Source_Id == budgetSource).ToList();
                }
                if (!String.IsNullOrEmpty(OdaNagar))
                {
                    List = List.Where(x => x.Planning_Type.Trim() == OdaNagar.Trim()).ToList();
                }
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> PlanningCompleteSelectedReport(string FiscalYear, string ProjectName, int? budgetSource, string OdaNagar)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true && pe.Project_Working_Status == true
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Entry_Id = ple.Planning_Entry_Id,
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             //Project_End_Date = pe.Project_End_Date,
                                                             Project_Completed_Date = pe.Project_Complete_Date,
                                                             Planning_Type = ple.Planning_Type,
                                                             Budget_Source_Id = ple.Budget_Source,
                                                             BudgetSource = ple.Budget_Source1.Source_Name,
                                                             //Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             Total_Used_Amount = pe.Total_Use_Amount,
                                                             CreatedDate = p.CreatedDate,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(ProjectName))
                {
                    List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                }
                if (budgetSource > 0)
                {
                    List = List.Where(x => x.Budget_Source_Id == budgetSource).ToList();
                }
                if (!String.IsNullOrEmpty(OdaNagar))
                {
                    List = List.Where(x => x.Planning_Type.Trim() == OdaNagar.Trim()).ToList();
                }
                return List;
            }
        }

        public PlanningSamjhautaViewModel GetCompleatedPlaningReport(int? id)
        {
            using(var ent = new PLANNING_OCT_03Entities())
            {
                var result = (from p in ent.Planning_Samjhauta
                            join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                            join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                            join or in ent.Organization_Representative on p.Planning_Samjhauta_Id equals or.Planning_Samjhauta_Id
                            where p.DeletedDate == null && p.Status == true && ple.Planning_Entry_Id == id
                            select new PlanningSamjhautaViewModel
                            {
                                Planning_Entry_Id = ple.Planning_Entry_Id,
                                Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                Fiscal_Year_Record = p.Fiscal_Year_Record,
                                Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                Project_Name = pe.Project_Name,
                                Project_Place = pe.Project_Place,
                                Project_Start_Date = pe.Project_Start_Date,
                                Project_End_Date = pe.Project_End_Date,
                                Project_Completed_Date = pe.Project_Complete_Date,
                                Planning_Type = ple.Planning_Type,
                                Budget_Source_Id = ple.Budget_Source,
                                BudgetSource = ple.Budget_Source1.Source_Name,
                                //Project_estimated_Amount = pe.Project_estimated_Amount,
                                Total_Used_Amount = pe.Total_Use_Amount,
                                CreatedDate = p.CreatedDate,
                                Representative_Address = or.Representative_Address,
                            }).OrderByDescending(x => x.CreatedDate).FirstOrDefault();
            return result;
            }
        }

        public List<PlanningSamjhautaViewModel> PlanningWardRelatedReport(string FiscalYear, int? wardNo)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         where p.DeletedDate == null && p.Status == true && ple.Planning_Type == "O"
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,
                                                             Budget_Source_Id = ple.Budget_Source,
                                                             BudgetSource = ple.Budget_Source1.Source_Name,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             CreatedDate = p.CreatedDate,
                                                             Contegency_Amount = p.Contegency_Amount,
                                                             Contegency_Percentage = p.Contegency_Percentage,
                                                             MarmatSambhar_Amount = p.MarmatSambhar_Amount,
                                                             Ward_No = ple.Ward_No,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (wardNo > 0)
                {
                    List = List.Where(x => x.Ward_No == wardNo).ToList();
                }
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> PlanningNagarRelatedReport(string FiscalYear, int? Work_Area)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         join wr in ent.Work_Area on ple.Work_Area equals wr.Work_Area_Id into manjuri
                                                         from wr in manjuri.DefaultIfEmpty()
                                                         where p.DeletedDate == null && p.Status == true && ple.Planning_Type == "N"
                                                         select new PlanningSamjhautaViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Planning_Type = ple.Planning_Type,
                                                             Budget_Source_Id = ple.Budget_Source,
                                                             BudgetSource = ple.Budget_Source1.Source_Name,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             CreatedDate = p.CreatedDate,
                                                             Contegency_Amount = p.Contegency_Amount,
                                                             Contegency_Percentage = p.Contegency_Percentage,
                                                             MarmatSambhar_Amount = p.MarmatSambhar_Amount,
                                                             Ward_No = ple.Ward_No,
                                                             Work_Area = ple.Work_Area,
                                                             WorkAreName = wr.Work_Area_Name,
                                                         }).OrderByDescending(x => x.CreatedDate).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (Work_Area > 0)
                {
                    List = List.Where(x => x.Work_Area == Work_Area).ToList();
                }
                return List;
            }
        }

        public bool Insert(ItemViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                BhukataniItem area = new BhukataniItem()
                {

                    //status = ,
                    itemid = model.itemId,
                    BhutaniID = model.BhutaniID,
                    Quantity = model.Quantity,
                };
                con.BhukataniItems.Add(area);
                int i = con.SaveChanges();
                if (i > 0)
                    return true;
            }
            return false;
        }

        public ItemViewModel GetBhuktaniItem(int id)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.BhukataniItems.Where(x => x.BhutaniID == id).Select(x=> new ItemViewModel
                {
                    itemId = x.itemid??0,
                    BhutaniID = x.BhutaniID,
                    Quantity = x.Quantity,
                    bhukataniItemId=x.bhukataniItemId
                }).FirstOrDefault();
                if (record== null)
                {
                    return new ItemViewModel();
                }
                return record;
            }
            
        }
        public bool Update(ItemViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.BhukataniItems.Where(x => x.BhutaniID == model.BhutaniID).FirstOrDefault();
                if (record != null)
                {
                    record.itemid = model.itemId;
                    record.Quantity = model.Quantity;

                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }
            }
            return false;
        }

        //public List<PlanningSamjhautaViewModel> GetProjectList()
        //{
        //    using (var ent = new PLANNING_OCT_03Entities())
        //    {

        //    }

        //        return null;
        //}

        public string[] getkarkatiforbhutain(string amt)
        {
            decimal contigRate = 00;
            decimal marmasamarRate = 00;
            decimal decamt = 00;
            decimal.TryParse(amt, out decamt);
            
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var objkarkati = con.Kar_Katti.FirstOrDefault();
                if (objkarkati!=null)
                {
                    contigRate = Convert.ToDecimal(Utility.NepaliEnglishNumber.Get_Nepali_English(objkarkati.Contigency));
                    marmasamarRate = Convert.ToDecimal(Utility.NepaliEnglishNumber.Get_Nepali_English(objkarkati.MarmatSambhar)); 
                }
                string[] result = new string[5];
                var contig = decamt * (contigRate / 100);
                var marmat = decamt * (marmasamarRate / 100);
                result[0] = Utility.NepaliEnglishNumber.English_Nepali(contig.ToString());
                result[1] = Utility.NepaliEnglishNumber.English_Nepali(marmat.ToString());
                
                return result;
            }
            
        }
        public string[] getAgrimKar(string amt)
        {
            decimal AgrimKarRate = 00;
            //decimal marmasamarRate = 00;
            decimal decamt = 00;
            decimal.TryParse(amt, out decamt);

            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var objkarkati = con.Kar_Katti.FirstOrDefault();
                if (objkarkati != null)
                {
                    AgrimKarRate = Convert.ToDecimal(Utility.NepaliEnglishNumber.Get_Nepali_English(objkarkati.AgrimShulka));
                }
                string[] result = new string[5];
                var cAgrim = decamt * (AgrimKarRate / 100);
               // var marmat = decamt * (marmasamarRate / 100);
                result[0] = Utility.NepaliEnglishNumber.English_Nepali(cAgrim.ToString());
               

                return result;
            }

        }
        public string[] getBahakal(string amt)
        {
            decimal BahakalRate = 00;
            //decimal marmasamarRate = 00;
            decimal decamt = 00;
            decimal.TryParse(amt, out decamt);

            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var objkarkati = con.Kar_Katti.FirstOrDefault();
                if (objkarkati != null)
                {
                    BahakalRate = Convert.ToDecimal(Utility.NepaliEnglishNumber.Get_Nepali_English(objkarkati.BahalKar));
                }
                string[] result = new string[5];
                var cAgrim = decamt * (BahakalRate / 100);
                // var marmat = decamt * (marmasamarRate / 100);
                result[0] = Utility.NepaliEnglishNumber.English_Nepali(cAgrim.ToString());


                return result;
            }

        }

        public List<PlanningBhuktaniViewModel> TriGetPlanningBhuktaniList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Planning_Bhuktani
                                                        join pl in ent.Planning_Entry on p.Planning_Samjhauta_Id equals pl.Planning_Samjhauta_Id

                                                        where p.DeletedDate == null && p.Status == true
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Planning_Bhuktani_Id = p.Planning_Bhuktani_Id,
                                                            Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                            Budget_Title = p.Budget_Title,
                                                            Budget_Title_Number = p.Budget_Title_Number,
                                                            Nirman_Upabhokta = p.Nirman_Upabhokta,
                                                            Aayojana_Karyakram = p.Aayojana_Karyakram,
                                                            Kul_La_Ie = p.Kul_La_Ie,
                                                            NaPa_Binayajit = p.NaPa_Binayajit,
                                                            Otheers = p.Otheers,
                                                            Jana_Sahabagita = p.Jana_Sahabagita,
                                                            Peski = p.Peski,
                                                            Technical_Amount = p.Technical_Amount,
                                                            Kantigenci = p.Kantigenci,
                                                            Bahal_Kar = p.Bahal_Kar,
                                                            Agrim_Shulka = p.Agrim_Shulka,
                                                            Katti_Rakam = p.Katti_Rakam,
                                                            Remaining_Bhuktani_Amount = p.Remaining_Bhuktani_Amount,
                                                            Aanya_Raaya = p.Aanya_Raaya,
                                                            DeletedDate = p.DeletedDate,
                                                            Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                            ward =pl.Ward_No??0
                                                            //IsBhuktaniApproved = p.IsBhuktaniApproved ?? false
                                                        }).ToList();
                return List;
            }
        }
        public List<PlanningBhuktaniViewModel> GetOrganizationDtailForBhuktaniList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
                List<PlanningBhuktaniViewModel> List = (from p in ent.Organization_Setup
                                                        select new PlanningBhuktaniViewModel
                                                        {
                                                            Organization_Setup_Id = p.Organization_Setup_Id,
                                                            Organization_Name = p.Organization_Name,
                                                            Organization_Type = p.Organization_Type,
                                                            District_Name = p.District_Name,
                                                            State_Country = p.State_Country,
                                                        }).ToList();
                return List;
            }
        }



        public string getPrathamBhuktani(int samjautaid)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            decimal a = 0;
            var PtBhutani = ent.Planning_Bhuktani.Where(x => x.Planning_Samjhauta_Id == samjautaid && x.Bhuktani_Type == 2).FirstOrDefault();
            var PtBhutani2 = PtBhutani == null ? "" : PtBhutani.Remaining_Bhuktani_Amount;
            //  string total = a.ToString();
            string PtBhutaniNp = Utility.NepaliEnglishNumber.Get_English_Nepali(PtBhutani2);
            return PtBhutani2;
        }
        public string getSecondBhuktani(int samjautaid)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            // decimal a = 0;
            var seconddBhutani = ent.Planning_Bhuktani.Where(x => x.Planning_Samjhauta_Id == samjautaid && x.Bhuktani_Type == 3).FirstOrDefault();
            var seconddBhutani2 = seconddBhutani == null ? "" : seconddBhutani.Remaining_Bhuktani_Amount;
            //  string total = a.ToString();
            string seconddBhutaniNp = Utility.NepaliEnglishNumber.Get_English_Nepali(seconddBhutani2);
            return seconddBhutani2;
        }
        public string getLastBhuktani(int samjautaid)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            //decimal a = 0;
            var getLastBhuktani = ent.Planning_Bhuktani.Where(x => x.Planning_Samjhauta_Id == samjautaid && x.Bhuktani_Type == 4).FirstOrDefault();
            var getLastBhuktani2 = getLastBhuktani == null ? "" : getLastBhuktani.Remaining_Bhuktani_Amount;
            //  string total = a.ToString();
            string getLastBhuktaniNp = Utility.NepaliEnglishNumber.Get_English_Nepali(getLastBhuktani2);
            return getLastBhuktani2;
        }

        public bool SoftDelete(int id)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Planning_Samjhauta.Where(x => x.Planning_Samjhauta_Id == id).FirstOrDefault();
                var planningsamjhauta = con.Project_Entry_Detail.Where(x => x.Planning_Samjhauta_Id == id).ToList();
                
                if (record != null)
                {
                    foreach (var item in planningsamjhauta)
                    {
                        item.Status = false;
                        item.DeletedDate = DateTime.Now;
                    }
                    record.Status = false;
                    record.DeletedDate = DateTime.Now;
                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }
            }
            return false;
        }
        public bool SoftDeleteBhuktani(int id)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Planning_Bhuktani.Where(x => x.Planning_Bhuktani_Id == id).FirstOrDefault();
             //   var planningsamjhauta = con.Project_Entry_Detail.Where(x => x.Planning_Samjhauta_Id == id).ToList();

                if (record != null)
                {
                   
                    record.Status = false;
                    record.DeletedDate = DateTime.Now;
                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }
            }
            return false;
        }
    }
}