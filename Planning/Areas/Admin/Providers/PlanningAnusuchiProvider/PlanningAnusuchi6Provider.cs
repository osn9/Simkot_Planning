using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi6Provider
    {
        public int InsertAnusuchi6(Anusuchi6ViewModel model)
        {
            int anuSuchi6Id = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Anusuchi6Entity = new Anusuchi6()
                {
                    Project_Name = model.Project_Name,
                    Ward_No = model.Ward_No,
                    Street_Name = model.Street_Name,
                    Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name,
                    Adakshya = model.Adakshya,
                    Sachib = model.Sachib,
                    Anudan_Rakam = model.Anudan_Rakam,
                    Chanda_Rakam = model.Chanda_Rakam,
                    Jana_Sahabhagita_Rakam=model.Jana_Sahabhagita_Rakam,
                    Total_Amount=model.Total_Amount,
                    Total_Expenses_TillNow=model.Total_Expenses_TillNow,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Anusuchi6.Add(Anusuchi6Entity);
                anuSuchi6Id = Anusuchi6Entity.Anusuchi6_Id;

                var Anusuchi6_KaryalayaEntity = new Anusuchi6_Karyalaya()
                {
                    Anusuchi6_Id = anuSuchi6Id,
                    Karyalaya_Amount = model.Karyalaya_Amount,
                    Nirman_Samagri_Amount = model.Nirman_Samagri_Amount,
                    Dashya_Amount = model.Dashya_Amount,
                    Adashya_Amount = model.Adashya_Amount,
                    Others_Amount = model.Others_Amount,
                    Travel_Expenses_Amount = model.Travel_Expenses_Amount,
                    Technical_Supervise_Amount=model.Technical_Supervise_Amount,
                    Masalanda_Amount=model.Masalanda_Amount
                };
                ent.Anusuchi6_Karyalaya.Add(Anusuchi6_KaryalayaEntity);

                var Anusuchi6_JanasahabhagitaEntity = new Anusuchi6_Janasahabhagita()
                {
                    Anusuchi6_Id = anuSuchi6Id,
                    Janasahabhagita_Amount = model.Janasahabhagita_Amount,
                    Sharam_Amount = model.Sharam_Amount,
                    Jinsi_Amount = model.Jinsi_Amount,
                    Technical_Review_Amount = model.Technical_Review_Amount,
                    Upabhikta_Decision_Amount = model.Upabhikta_Decision_Amount,
                    Kista_Rakam_Demand=model.Kista_Rakam_Demand,
                    Field_Supervise_Decision=model.Field_Supervise_Decision,
                    Main_Expenses=model.Main_Expenses
                };
                ent.Anusuchi6_Janasahabhagita.Add(Anusuchi6_JanasahabhagitaEntity);

                foreach (var item in model.Anusuchi6_SolutionsViewModelList)
                {
                    var Anusuchi6_SolutionsEntity = new Anusuchi6_Solutions()
                    {
                        Anusuchi6_Id = anuSuchi6Id,
                        Solutions = item.Solutions,
                    };
                    ent.Anusuchi6_Solutions.Add(Anusuchi6_SolutionsEntity);
                }

                int i = ent.SaveChanges();

                if (i > 0)
                {
                    return Anusuchi6Entity.Anusuchi6_Id;
                }
                else
                {
                    return 0;
                }
            }
        }

        public List<Anusuchi6ViewModel> getAnusuchi6List(int anuSuchi6_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi6ViewModel model = new Anusuchi6ViewModel();
                List<Anusuchi6ViewModel> List = (from a in ent.Anusuchi6
                                                 join k in ent.Anusuchi6_Karyalaya on a.Anusuchi6_Id equals k.Anusuchi6_Id
                                                 join j in ent.Anusuchi6_Janasahabhagita on a.Anusuchi6_Id equals j.Anusuchi6_Id
                                                 where a.Anusuchi6_Id == anuSuchi6_Id
                                                 select new Anusuchi6ViewModel()
                                                 {
                                                     Anusuchi6_Id = a.Anusuchi6_Id,
                                                     Project_Name = a.Project_Name,
                                                     Ward_No = a.Ward_No,
                                                     Street_Name = a.Street_Name,
                                                     Upabhokta_Samiti_Name = a.Upabhokta_Samiti_Name,
                                                     Adakshya = a.Adakshya,
                                                     Sachib = a.Sachib,
                                                     Anudan_Rakam = a.Anudan_Rakam,
                                                     Chanda_Rakam = a.Chanda_Rakam,
                                                     Jana_Sahabhagita_Rakam=a.Jana_Sahabhagita_Rakam,
                                                     Total_Amount=a.Total_Amount,
                                                     Total_Expenses_TillNow=a.Total_Expenses_TillNow,
                                                     Karyalaya_Amount=k.Karyalaya_Amount,
                                                     Nirman_Samagri_Amount=k.Nirman_Samagri_Amount,
                                                     Dashya_Amount=k.Dashya_Amount,
                                                     Adashya_Amount=k.Adashya_Amount,
                                                     Others_Amount=k.Others_Amount,
                                                     Travel_Expenses_Amount=k.Travel_Expenses_Amount,
                                                     Technical_Supervise_Amount=k.Technical_Supervise_Amount,
                                                     Masalanda_Amount=k.Masalanda_Amount,
                                                     Janasahabhagita_Amount=j.Janasahabhagita_Amount,
                                                     Sharam_Amount=j.Sharam_Amount,
                                                     Jinsi_Amount=j.Jinsi_Amount,
                                                     Technical_Review_Amount=j.Technical_Review_Amount,
                                                     Upabhikta_Decision_Amount=j.Upabhikta_Decision_Amount,
                                                     Kista_Rakam_Demand=j.Kista_Rakam_Demand,
                                                     Field_Supervise_Decision=j.Field_Supervise_Decision,
                                                     Main_Expenses=j.Main_Expenses,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi6ViewModel> GetAnusuchi6List()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi6ViewModel model = new Anusuchi6ViewModel();
                List<Anusuchi6ViewModel> List = (from a in ent.Anusuchi6
                                                 join k in ent.Anusuchi6_Karyalaya on a.Anusuchi6_Id equals k.Anusuchi6_Id
                                                 join j in ent.Anusuchi6_Janasahabhagita on a.Anusuchi6_Id equals j.Anusuchi6_Id
                                                 where a.DeletedDate == null && a.Status == true
                                                 select new Anusuchi6ViewModel()
                                                 {
                                                     Anusuchi6_Id = a.Anusuchi6_Id,
                                                     Project_Name = a.Project_Name,
                                                     Ward_No=a.Ward_No,
                                                     Upabhokta_Samiti_Name=a.Upabhokta_Samiti_Name,
                                                     Total_Amount=a.Total_Amount,
                                                     Total_Expenses_TillNow=a.Total_Expenses_TillNow,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).ToList();
                return List;
            }
        }

        public List<Anusuchi6ViewModel> GetAnusuchi6SolutionsList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi6ViewModel> List = ent.Anusuchi6_Solutions.Where(x => x.Anusuchi6_Id == id).Select(x => new Anusuchi6ViewModel()
                {
                    Anusuchi6_Solutions_Id = x.Anusuchi6_Solutions_Id,
                    Anusuchi6_Id = x.Anusuchi6_Id??0,
                    Solutions = x.Solutions,
                }).ToList();
                return List;
            }
        }

        public int UpdateAnusuchi6(Anusuchi6ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Anusuchi6.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).SingleOrDefault();
                data.Anusuchi6_Id = model.Anusuchi6_Id;
                data.Project_Name = model.Project_Name;
                data.Ward_No = model.Ward_No;
                data.Street_Name = model.Street_Name;
                data.Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name;
                data.Adakshya = model.Adakshya;
                data.Sachib = model.Sachib;
                data.Anudan_Rakam = model.Anudan_Rakam;
                data.Chanda_Rakam = model.Chanda_Rakam;
                data.Jana_Sahabhagita_Rakam = model.Jana_Sahabhagita_Rakam;
                data.Total_Amount = model.Total_Amount;
                data.Total_Expenses_TillNow = model.Total_Expenses_TillNow;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;

                var objAnusuchi6_Karyalaya = ent.Anusuchi6_Karyalaya.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                foreach (var item in objAnusuchi6_Karyalaya)
                {
                    ent.Anusuchi6_Karyalaya.Remove(item);
                    ent.SaveChanges();
                }
                var Anusuchi6_KaryalayaEntity = new Anusuchi6_Karyalaya()
                {
                    Anusuchi6_Id = model.Anusuchi6_Id,
                    Karyalaya_Amount = model.Karyalaya_Amount,
                    Nirman_Samagri_Amount = model.Nirman_Samagri_Amount,
                    Dashya_Amount = model.Dashya_Amount,
                    Adashya_Amount = model.Adashya_Amount,
                    Others_Amount = model.Others_Amount,
                    Travel_Expenses_Amount = model.Travel_Expenses_Amount,
                    Technical_Supervise_Amount = model.Technical_Supervise_Amount,
                    Masalanda_Amount = model.Masalanda_Amount
                };
                ent.Anusuchi6_Karyalaya.Add(Anusuchi6_KaryalayaEntity);

                var objAnusuchi6_Janasahabhagita = ent.Anusuchi6_Janasahabhagita.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                foreach (var item in objAnusuchi6_Janasahabhagita)
                {
                    ent.Anusuchi6_Janasahabhagita.Remove(item);
                    ent.SaveChanges();
                }
                var Anusuchi6_JanasahabhagitaEntity = new Anusuchi6_Janasahabhagita()
                {
                    Anusuchi6_Id = model.Anusuchi6_Id,
                    Janasahabhagita_Amount = model.Janasahabhagita_Amount,
                    Sharam_Amount = model.Sharam_Amount,
                    Jinsi_Amount = model.Jinsi_Amount,
                    Technical_Review_Amount = model.Technical_Review_Amount,
                    Upabhikta_Decision_Amount = model.Upabhikta_Decision_Amount,
                    Kista_Rakam_Demand = model.Kista_Rakam_Demand,
                    Field_Supervise_Decision = model.Field_Supervise_Decision,
                    Main_Expenses = model.Main_Expenses
                };
                ent.Anusuchi6_Janasahabhagita.Add(Anusuchi6_JanasahabhagitaEntity);

                var objAnusuchi6_Solutions = ent.Anusuchi6_Solutions.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                foreach (var item in objAnusuchi6_Solutions)
                {
                    ent.Anusuchi6_Solutions.Remove(item);
                    ent.SaveChanges();
                }

                foreach (var item in model.Anusuchi6_SolutionsViewModelList)
                {
                    var Anusuchi6_SolutionsEntity = new Anusuchi6_Solutions()
                    {
                        Anusuchi6_Id = model.Anusuchi6_Id,
                        Solutions = item.Solutions,
                    };
                    ent.Anusuchi6_Solutions.Add(Anusuchi6_SolutionsEntity);
                }

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }


        //For SoluDudhkunda Nagarpalika

        public List<Anusuchi6ViewModel> getPlanningSamjhautaAnusuchi6List(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi6ViewModel model = new Anusuchi6ViewModel();
                List<Anusuchi6ViewModel> List = (from a in ent.Anusuchi6
                                                 join k in ent.Anusuchi6_Karyalaya on a.Anusuchi6_Id equals k.Anusuchi6_Id
                                                 join j in ent.Anusuchi6_Janasahabhagita on a.Anusuchi6_Id equals j.Anusuchi6_Id
                                                 where a.Planning_Samjhauta_Id == id
                                                 select new Anusuchi6ViewModel()
                                                 {
                                                     Anusuchi6_Id = a.Anusuchi6_Id,
                                                     Planning_Samjhauta_Id=a.Planning_Samjhauta_Id,
                                                     Project_Name = a.Project_Name,
                                                     Ward_No = a.Ward_No,
                                                     Street_Name = a.Street_Name,
                                                     Upabhokta_Samiti_Name = a.Upabhokta_Samiti_Name,
                                                     Adakshya = a.Adakshya,
                                                     Sachib = a.Sachib,
                                                     Anudan_Rakam = a.Anudan_Rakam,
                                                     Chanda_Rakam = a.Chanda_Rakam,
                                                     Jana_Sahabhagita_Rakam = a.Jana_Sahabhagita_Rakam,
                                                     Total_Amount = a.Total_Amount,
                                                     Total_Expenses_TillNow = a.Total_Expenses_TillNow,
                                                     Karyalaya_Amount = k.Karyalaya_Amount,
                                                     Nirman_Samagri_Amount = k.Nirman_Samagri_Amount,
                                                     Dashya_Amount = k.Dashya_Amount,
                                                     Adashya_Amount = k.Adashya_Amount,
                                                     Others_Amount = k.Others_Amount,
                                                     Travel_Expenses_Amount = k.Travel_Expenses_Amount,
                                                     Technical_Supervise_Amount = k.Technical_Supervise_Amount,
                                                     Masalanda_Amount = k.Masalanda_Amount,
                                                     Janasahabhagita_Amount = j.Janasahabhagita_Amount,
                                                     Sharam_Amount = j.Sharam_Amount,
                                                     Jinsi_Amount = j.Jinsi_Amount,
                                                     Technical_Review_Amount = j.Technical_Review_Amount,
                                                     Upabhikta_Decision_Amount = j.Upabhikta_Decision_Amount,
                                                     Kista_Rakam_Demand = j.Kista_Rakam_Demand,
                                                     Field_Supervise_Decision = j.Field_Supervise_Decision,
                                                     Main_Expenses = j.Main_Expenses,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi6ViewModel> getPlanningSamjhautaAnusuchi6ListFromSamjhauta(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi6ViewModel model = new Anusuchi6ViewModel();
                List<Anusuchi6ViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id into prodetail
                                                         from ps in prodetail.DefaultIfEmpty()
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                         from pe in proentry.DefaultIfEmpty()
                                                         join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                         from pd in samiti.DefaultIfEmpty()
                                                         join planet in ent.Planning_Entry on p.Planning_Samjhauta_Id equals planet.Planning_Samjhauta_Id into planningEntry
                                                         from planet in planningEntry.DefaultIfEmpty()
                                                         select new Anusuchi6ViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Project_Name = pe.Project_Name,
                                                             Ward_No = planet.Ward_No.ToString(),
                                                             Upabhokta_Samiti_Name= p.Samjhauta_Org_Name,
                                                             Adakshya = pd.Adakshya,
                                                             Sachib = pd.Sachib,
                                                             Janasahabhagita_Amount= ps.Loan_Grant,
                                                             Total_Amount = ps.Project_estimated_Amount,
                                                             Karyalaya_Amount= ps.Municipality,
                                                             Status = p.Status,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdatePlanningSamjhautaAnusuchi6(Anusuchi6ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Anusuchi6.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id && x.Anusuchi6_Id==model.Anusuchi6_Id).SingleOrDefault();
                if (data != null)
                {
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.Anusuchi6_Id = model.Anusuchi6_Id;
                    data.Project_Name = model.Project_Name;
                    data.Ward_No = model.Ward_No;
                    data.Street_Name = model.Street_Name;
                    data.Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name;
                    data.Adakshya = model.Adakshya;
                    data.Sachib = model.Sachib;
                    data.Anudan_Rakam = model.Anudan_Rakam;
                    data.Chanda_Rakam = model.Chanda_Rakam;
                    data.Jana_Sahabhagita_Rakam = model.Jana_Sahabhagita_Rakam;
                    data.Total_Amount = model.Total_Amount;
                    data.Total_Expenses_TillNow = model.Total_Expenses_TillNow;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnusuchi6_Karyalaya = ent.Anusuchi6_Karyalaya.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                    foreach (var item in objAnusuchi6_Karyalaya)
                    {
                        ent.Anusuchi6_Karyalaya.Remove(item);
                        ent.SaveChanges();
                    }
                    var Anusuchi6_KaryalayaEntity = new Anusuchi6_Karyalaya()
                    {
                        Anusuchi6_Id = model.Anusuchi6_Id,
                        Karyalaya_Amount = model.Karyalaya_Amount,
                        Nirman_Samagri_Amount = model.Nirman_Samagri_Amount,
                        Dashya_Amount = model.Dashya_Amount,
                        Adashya_Amount = model.Adashya_Amount,
                        Others_Amount = model.Others_Amount,
                        Travel_Expenses_Amount = model.Travel_Expenses_Amount,
                        Technical_Supervise_Amount = model.Technical_Supervise_Amount,
                        Masalanda_Amount = model.Masalanda_Amount
                    };
                    ent.Anusuchi6_Karyalaya.Add(Anusuchi6_KaryalayaEntity);

                    var objAnusuchi6_Janasahabhagita = ent.Anusuchi6_Janasahabhagita.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                    foreach (var item in objAnusuchi6_Janasahabhagita)
                    {
                        ent.Anusuchi6_Janasahabhagita.Remove(item);
                        ent.SaveChanges();
                    }
                    var Anusuchi6_JanasahabhagitaEntity = new Anusuchi6_Janasahabhagita()
                    {
                        Anusuchi6_Id = model.Anusuchi6_Id,
                        Janasahabhagita_Amount = model.Janasahabhagita_Amount,
                        Sharam_Amount = model.Sharam_Amount,
                        Jinsi_Amount = model.Jinsi_Amount,
                        Technical_Review_Amount = model.Technical_Review_Amount,
                        Upabhikta_Decision_Amount = model.Upabhikta_Decision_Amount,
                        Kista_Rakam_Demand = model.Kista_Rakam_Demand,
                        Field_Supervise_Decision = model.Field_Supervise_Decision,
                        Main_Expenses = model.Main_Expenses
                    };
                    ent.Anusuchi6_Janasahabhagita.Add(Anusuchi6_JanasahabhagitaEntity);

                    var objAnusuchi6_Solutions = ent.Anusuchi6_Solutions.Where(x => x.Anusuchi6_Id == model.Anusuchi6_Id).ToList();
                    foreach (var item in objAnusuchi6_Solutions)
                    {
                        ent.Anusuchi6_Solutions.Remove(item);
                        ent.SaveChanges();
                    }

                    foreach (var item in model.Anusuchi6_SolutionsViewModelList)
                    {
                        var Anusuchi6_SolutionsEntity = new Anusuchi6_Solutions()
                        {
                            Anusuchi6_Id = model.Anusuchi6_Id,
                            Solutions = item.Solutions,
                        };
                        ent.Anusuchi6_Solutions.Add(Anusuchi6_SolutionsEntity);
                    }
                }
                else
                {
                    int anuSuchi6Id = 0;

                    var Anusuchi6Entity = new Anusuchi6()
                    {
                        Planning_Samjhauta_Id=model.Planning_Samjhauta_Id,
                        Project_Name = model.Project_Name,
                        Ward_No = model.Ward_No,
                        Street_Name = model.Street_Name,
                        Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name,
                        Adakshya = model.Adakshya,
                        Sachib = model.Sachib,
                        Anudan_Rakam = model.Anudan_Rakam,
                        Chanda_Rakam = model.Chanda_Rakam,
                        Jana_Sahabhagita_Rakam = model.Jana_Sahabhagita_Rakam,
                        Total_Amount = model.Total_Amount,
                        Total_Expenses_TillNow = model.Total_Expenses_TillNow,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Anusuchi6.Add(Anusuchi6Entity);
                    anuSuchi6Id = Anusuchi6Entity.Anusuchi6_Id;

                    var Anusuchi6_KaryalayaEntity = new Anusuchi6_Karyalaya()
                    {
                        Anusuchi6_Id = anuSuchi6Id,
                        Karyalaya_Amount = model.Karyalaya_Amount,
                        Nirman_Samagri_Amount = model.Nirman_Samagri_Amount,
                        Dashya_Amount = model.Dashya_Amount,
                        Adashya_Amount = model.Adashya_Amount,
                        Others_Amount = model.Others_Amount,
                        Travel_Expenses_Amount = model.Travel_Expenses_Amount,
                        Technical_Supervise_Amount = model.Technical_Supervise_Amount,
                        Masalanda_Amount = model.Masalanda_Amount
                    };
                    ent.Anusuchi6_Karyalaya.Add(Anusuchi6_KaryalayaEntity);

                    var Anusuchi6_JanasahabhagitaEntity = new Anusuchi6_Janasahabhagita()
                    {
                        Anusuchi6_Id = anuSuchi6Id,
                        Janasahabhagita_Amount = model.Janasahabhagita_Amount,
                        Sharam_Amount = model.Sharam_Amount,
                        Jinsi_Amount = model.Jinsi_Amount,
                        Technical_Review_Amount = model.Technical_Review_Amount,
                        Upabhikta_Decision_Amount = model.Upabhikta_Decision_Amount,
                        Kista_Rakam_Demand = model.Kista_Rakam_Demand,
                        Field_Supervise_Decision = model.Field_Supervise_Decision,
                        Main_Expenses = model.Main_Expenses
                    };
                    ent.Anusuchi6_Janasahabhagita.Add(Anusuchi6_JanasahabhagitaEntity);

                    foreach (var item in model.Anusuchi6_SolutionsViewModelList)
                    {
                        var Anusuchi6_SolutionsEntity = new Anusuchi6_Solutions()
                        {
                            Anusuchi6_Id = anuSuchi6Id,
                            Solutions = item.Solutions,
                        };
                        ent.Anusuchi6_Solutions.Add(Anusuchi6_SolutionsEntity);
                    }
                }

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }

       

    }
}