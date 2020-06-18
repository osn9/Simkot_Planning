using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi4Provider
    {
        public int InsertAnusuchi4(Anusuchi4ViewModel model)
        {
            int anuSuchi4Id = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var AnuSuchi4Entity = new AnuSuchi4()
                {
                    Project_Name = model.Project_Name,
                    Project_Place = model.Project_Place,
                    Project_Estimated_Amount = model.Project_Estimated_Amount,
                    Fiscal_Year = model.Fiscal_Year,
                    Project_Approval_Date = model.Project_Approval_Date,
                    Project_To_Finish_Date = model.Project_To_Finish_Date,
                    Project_Ended_Date = model.Project_Ended_Date,
                    Samiti_Expenses_Approval_Date = model.Samiti_Expenses_Approval_Date,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.AnuSuchi4.Add(AnuSuchi4Entity);
                anuSuchi4Id = AnuSuchi4Entity.AnuSuchi4_Id;

                var Anusuchi4_IncomeEntity = new Anusuchi4_Income()
                {
                    Anusuchi4_Id = anuSuchi4Id,
                    First_Kista = model.First_Kista,
                    Second_Kista = model.Second_Kista,
                    Third_Kista = model.Third_Kista,
                    Janashram = model.Janashram,
                    Bastugat_Sahayata = model.Bastugat_Sahayata,
                    Lagat_Sahabhagita = model.Lagat_Sahabhagita,
                };
                ent.Anusuchi4_Income.Add(Anusuchi4_IncomeEntity);

                var Anusuchi4_ExpensesEntity = new Anusuchi4_Expenses()
                {
                    Anusuchi4_Id = anuSuchi4Id,
                    Jyalla = model.Jyalla,
                    Nirman_Samagri_Kharid = model.Nirman_Samagri_Kharid,
                    Dhuwani = model.Dhuwani,
                    Bhada = model.Bhada,
                    Bawestapan_Kharcha = model.Bawestapan_Kharcha,
                };
                ent.Anusuchi4_Expenses.Add(Anusuchi4_ExpensesEntity);

                int i = ent.SaveChanges();

                if (i > 0)
                {
                    return AnuSuchi4Entity.AnuSuchi4_Id;
                }
                else
                {
                    return 0;
                }
            }
        }

        public List<Anusuchi4ViewModel> getAnusuchi4List(int anuSuchi4_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi4ViewModel model = new Anusuchi4ViewModel();
                List<Anusuchi4ViewModel> List = (from a in ent.AnuSuchi4
                                                 join i in ent.Anusuchi4_Income on a.AnuSuchi4_Id equals i.Anusuchi4_Id
                                                 join e in ent.Anusuchi4_Expenses on a.AnuSuchi4_Id equals e.Anusuchi4_Id
                                                 where a.AnuSuchi4_Id == anuSuchi4_Id
                                                 select new Anusuchi4ViewModel()
                                                 {
                                                     AnuSuchi4_Id = a.AnuSuchi4_Id,
                                                     Project_Name=a.Project_Name,
                                                     Project_Place=a.Project_Place,
                                                     Project_Estimated_Amount=a.Project_Estimated_Amount,
                                                     Fiscal_Year=a.Fiscal_Year,
                                                     Project_Approval_Date=a.Project_Approval_Date,
                                                     Project_To_Finish_Date=a.Project_To_Finish_Date,
                                                     Project_Ended_Date=a.Project_Ended_Date,
                                                     Samiti_Expenses_Approval_Date=a.Samiti_Expenses_Approval_Date,
                                                     First_Kista=i.First_Kista,
                                                     Second_Kista=i.Second_Kista,
                                                     Third_Kista=i.Third_Kista,
                                                     Janashram=i.Janashram,
                                                     Bastugat_Sahayata=i.Bastugat_Sahayata,
                                                     Lagat_Sahabhagita=i.Lagat_Sahabhagita,
                                                     Jyalla=e.Jyalla,
                                                     Nirman_Samagri_Kharid=e.Nirman_Samagri_Kharid,
                                                     Dhuwani=e.Dhuwani,
                                                     Bhada=e.Bhada,
                                                     Bawestapan_Kharcha=e.Bawestapan_Kharcha,
                                                     Status=a.Status,
                                                     DeletedDate=a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi4ViewModel> GetAnusuchi4List()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi4ViewModel model = new Anusuchi4ViewModel();
                List<Anusuchi4ViewModel> List = (from a in ent.AnuSuchi4
                                                 join i in ent.Anusuchi4_Income on a.AnuSuchi4_Id equals i.Anusuchi4_Id
                                                 join e in ent.Anusuchi4_Expenses on a.AnuSuchi4_Id equals e.Anusuchi4_Id
                                                 where a.DeletedDate == null && a.Status==true
                                                 select new Anusuchi4ViewModel()
                                                 {
                                                     AnuSuchi4_Id = a.AnuSuchi4_Id,
                                                     Project_Name = a.Project_Name,
                                                     Project_Place = a.Project_Place,
                                                     Project_Estimated_Amount = a.Project_Estimated_Amount,
                                                     Fiscal_Year = a.Fiscal_Year,
                                                     Project_Approval_Date = a.Project_Approval_Date,
                                                     Project_To_Finish_Date = a.Project_To_Finish_Date,
                                                     Project_Ended_Date = a.Project_Ended_Date,
                                                     Samiti_Expenses_Approval_Date = a.Samiti_Expenses_Approval_Date,
                                                     First_Kista = i.First_Kista,
                                                     Second_Kista = i.Second_Kista,
                                                     Third_Kista = i.Third_Kista,
                                                     Janashram = i.Janashram,
                                                     Bastugat_Sahayata = i.Bastugat_Sahayata,
                                                     Lagat_Sahabhagita = i.Lagat_Sahabhagita,
                                                     Jyalla = e.Jyalla,
                                                     Nirman_Samagri_Kharid = e.Nirman_Samagri_Kharid,
                                                     Dhuwani = e.Dhuwani,
                                                     Bhada = e.Bhada,
                                                     Bawestapan_Kharcha = e.Bawestapan_Kharcha,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).ToList();
                return List;
            }
        }

        public int UpdateAnusuchi4(Anusuchi4ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi4.Where(x => x.AnuSuchi4_Id == model.AnuSuchi4_Id).SingleOrDefault();
                data.AnuSuchi4_Id = model.AnuSuchi4_Id;
                data.Project_Name = model.Project_Name;
                data.Project_Place = model.Project_Place;
                data.Project_Estimated_Amount = model.Project_Estimated_Amount;
                data.Fiscal_Year = model.Fiscal_Year;
                data.Project_Approval_Date = model.Project_Approval_Date;
                data.Project_To_Finish_Date = model.Project_To_Finish_Date;
                data.Project_Ended_Date = model.Project_Ended_Date;
                data.Samiti_Expenses_Approval_Date = model.Samiti_Expenses_Approval_Date;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;

                var objAnusuchi4_Income = ent.Anusuchi4_Income.Where(x => x.Anusuchi4_Id == model.AnuSuchi4_Id).ToList();
                foreach (var item in objAnusuchi4_Income)
                {
                    ent.Anusuchi4_Income.Remove(item);
                    ent.SaveChanges();
                }
                var Anusuchi4_IncomeEntity = new Anusuchi4_Income()
                {
                    Anusuchi4_Id = model.AnuSuchi4_Id,
                    First_Kista = model.First_Kista,
                    Second_Kista = model.Second_Kista,
                    Third_Kista = model.Third_Kista,
                    Janashram = model.Janashram,
                    Bastugat_Sahayata = model.Bastugat_Sahayata,
                    Lagat_Sahabhagita = model.Lagat_Sahabhagita,
                };
                ent.Anusuchi4_Income.Add(Anusuchi4_IncomeEntity);

                var objAnusuchi4_Expenses = ent.Anusuchi4_Expenses.Where(x => x.Anusuchi4_Id == model.AnuSuchi4_Id).ToList();
                foreach (var item in objAnusuchi4_Expenses)
                {
                    ent.Anusuchi4_Expenses.Remove(item);
                    ent.SaveChanges();
                }
                var Anusuchi4_ExpensesEntity = new Anusuchi4_Expenses()
                {
                    Anusuchi4_Id = model.AnuSuchi4_Id,
                    Jyalla = model.Jyalla,
                    Nirman_Samagri_Kharid = model.Nirman_Samagri_Kharid,
                    Dhuwani = model.Dhuwani,
                    Bhada = model.Bhada,
                    Bawestapan_Kharcha = model.Bawestapan_Kharcha,
                };
                ent.Anusuchi4_Expenses.Add(Anusuchi4_ExpensesEntity);

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }



        //For SoluDudhkunda Nagarpalika
        public List<Anusuchi4ViewModel> getPlanningSamjhautaAnusuchi4List(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi4ViewModel model = new Anusuchi4ViewModel();
                List<Anusuchi4ViewModel> List = (from a in ent.AnuSuchi4
                                                 join i in ent.Anusuchi4_Income on a.AnuSuchi4_Id equals i.Anusuchi4_Id
                                                 join e in ent.Anusuchi4_Expenses on a.AnuSuchi4_Id equals e.Anusuchi4_Id
                                                 where a.Planning_Samjhauta_Id == id
                                                 select new Anusuchi4ViewModel()
                                                 {
                                                     AnuSuchi4_Id = a.AnuSuchi4_Id,
                                                     Planning_Samjhauta_Id=a.Planning_Samjhauta_Id,
                                                     Project_Name = a.Project_Name,
                                                     Project_Place = a.Project_Place,
                                                     Project_Estimated_Amount = a.Project_Estimated_Amount,
                                                     Fiscal_Year = a.Fiscal_Year,
                                                     Project_Approval_Date = a.Project_Approval_Date,
                                                     Project_To_Finish_Date = a.Project_To_Finish_Date,
                                                     Project_Ended_Date = a.Project_Ended_Date,
                                                     Samiti_Expenses_Approval_Date = a.Samiti_Expenses_Approval_Date,
                                                     First_Kista = i.First_Kista,
                                                     Second_Kista = i.Second_Kista,
                                                     Third_Kista = i.Third_Kista,
                                                     Janashram = i.Janashram,
                                                     Bastugat_Sahayata = i.Bastugat_Sahayata,
                                                     Lagat_Sahabhagita = i.Lagat_Sahabhagita,
                                                     Jyalla = e.Jyalla,
                                                     Nirman_Samagri_Kharid = e.Nirman_Samagri_Kharid,
                                                     Dhuwani = e.Dhuwani,
                                                     Bhada = e.Bhada,
                                                     Bawestapan_Kharcha = e.Bawestapan_Kharcha,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi4ViewModel> getPlanningSamjhautaAnusuchi4ListFromSamjhauta(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi4ViewModel model = new Anusuchi4ViewModel();
                List<Anusuchi4ViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                         from pe in proentry.DefaultIfEmpty()
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id into manjuri
                                                         from mp in manjuri.DefaultIfEmpty()
                                                         select new Anusuchi4ViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Project_Estimated_Amount = pe.Project_estimated_Amount,
                                                             Fiscal_Year = p.Fiscal_Year_Record,
                                                             Project_Approval_Date = mp.Municipality_Manjuri_Date,
                                                             Project_To_Finish_Date= pe.Project_End_Date,
                                                             Status = p.Status,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdatePlanningSamjhautaAnusuchi4(Anusuchi4ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi4.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                if (data != null)
                {
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.AnuSuchi4_Id = model.AnuSuchi4_Id;
                    data.Project_Name = model.Project_Name;
                    data.Project_Place = model.Project_Place;
                    data.Project_Estimated_Amount = model.Project_Estimated_Amount;
                    data.Fiscal_Year = model.Fiscal_Year;
                    data.Project_Approval_Date = model.Project_Approval_Date;
                    data.Project_To_Finish_Date = model.Project_To_Finish_Date;
                    data.Project_Ended_Date = model.Project_Ended_Date;
                    data.Samiti_Expenses_Approval_Date = model.Samiti_Expenses_Approval_Date;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnusuchi4_Income = ent.Anusuchi4_Income.Where(x => x.Anusuchi4_Id == model.AnuSuchi4_Id).ToList();
                    foreach (var item in objAnusuchi4_Income)
                    {
                        ent.Anusuchi4_Income.Remove(item);
                        ent.SaveChanges();
                    }
                    var Anusuchi4_IncomeEntity = new Anusuchi4_Income()
                    {
                        Anusuchi4_Id = model.AnuSuchi4_Id,
                        First_Kista = model.First_Kista,
                        Second_Kista = model.Second_Kista,
                        Third_Kista = model.Third_Kista,
                        Janashram = model.Janashram,
                        Bastugat_Sahayata = model.Bastugat_Sahayata,
                        Lagat_Sahabhagita = model.Lagat_Sahabhagita,
                    };
                    ent.Anusuchi4_Income.Add(Anusuchi4_IncomeEntity);

                    var objAnusuchi4_Expenses = ent.Anusuchi4_Expenses.Where(x => x.Anusuchi4_Id == model.AnuSuchi4_Id).ToList();
                    foreach (var item in objAnusuchi4_Expenses)
                    {
                        ent.Anusuchi4_Expenses.Remove(item);
                        ent.SaveChanges();
                    }
                    var Anusuchi4_ExpensesEntity = new Anusuchi4_Expenses()
                    {
                        Anusuchi4_Id = model.AnuSuchi4_Id,
                        Jyalla = model.Jyalla,
                        Nirman_Samagri_Kharid = model.Nirman_Samagri_Kharid,
                        Dhuwani = model.Dhuwani,
                        Bhada = model.Bhada,
                        Bawestapan_Kharcha = model.Bawestapan_Kharcha,
                    };
                    ent.Anusuchi4_Expenses.Add(Anusuchi4_ExpensesEntity);
                }
                else
                {
                    int anuSuchi4Id = 0;
                    
                        var AnuSuchi4Entity = new AnuSuchi4()
                        {
                            Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                            Project_Name = model.Project_Name,
                            Project_Place = model.Project_Place,
                            Project_Estimated_Amount = model.Project_Estimated_Amount,
                            Fiscal_Year = model.Fiscal_Year,
                            Project_Approval_Date = model.Project_Approval_Date,
                            Project_To_Finish_Date = model.Project_To_Finish_Date,
                            Project_Ended_Date = model.Project_Ended_Date,
                            Samiti_Expenses_Approval_Date = model.Samiti_Expenses_Approval_Date,
                            Status = true,
                            CreatedBy = model.CreatedBy,
                            CreatedDate = DateTime.Now,
                        };
                        ent.AnuSuchi4.Add(AnuSuchi4Entity);
                        anuSuchi4Id = AnuSuchi4Entity.AnuSuchi4_Id;

                        var Anusuchi4_IncomeEntity = new Anusuchi4_Income()
                        {
                            Anusuchi4_Id = anuSuchi4Id,
                            First_Kista = model.First_Kista,
                            Second_Kista = model.Second_Kista,
                            Third_Kista = model.Third_Kista,
                            Janashram = model.Janashram,
                            Bastugat_Sahayata = model.Bastugat_Sahayata,
                            Lagat_Sahabhagita = model.Lagat_Sahabhagita,
                        };
                        ent.Anusuchi4_Income.Add(Anusuchi4_IncomeEntity);

                        var Anusuchi4_ExpensesEntity = new Anusuchi4_Expenses()
                        {
                            Anusuchi4_Id = anuSuchi4Id,
                            Jyalla = model.Jyalla,
                            Nirman_Samagri_Kharid = model.Nirman_Samagri_Kharid,
                            Dhuwani = model.Dhuwani,
                            Bhada = model.Bhada,
                            Bawestapan_Kharcha = model.Bawestapan_Kharcha,
                        };
                        ent.Anusuchi4_Expenses.Add(Anusuchi4_ExpensesEntity);
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