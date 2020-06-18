using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi3Provider
    {
        public int InsertAnusuchi3(Anusuchi3ViewModel model)
        {
            int anuSuchi3Id = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var AnuSuchi3Entity = new AnuSuchi3()
                {
                    Project_Name = model.Project_Name,
                    Project_Place = model.Project_Place,
                    Estimated_Amount = model.Estimated_Amount,
                    Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name,
                    Project_Start_Date = model.Project_Start_Date,
                    Project_End_Date = model.Project_End_Date,
                    Adakshya_Name = model.Adakshya_Name,
                    Total_Members = model.Total_Members,
                    Male_No = model.Male_No,
                    Female_No = model.Female_No,
                    Total_Benificial_No = model.Total_Benificial_No,
                    Rohabar_Name = model.Rohabar_Name,
                    Rohabar_Position = model.Rohabar_Position,
                    Rohabar_Date = model.Rohabar_Date,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.AnuSuchi3.Add(AnuSuchi3Entity);
                anuSuchi3Id = AnuSuchi3Entity.AnuSuchi3_Id;

                if (model.Anusuchi3IncomeViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3IncomeViewModelList)
                    {
                        var AnuSuchi3_IncomeEntity = new AnuSuchi3_Income()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Income_Source = item.Income_Source,
                            Amount_Quantity = item.Amount_Quantity,
                            Income_Remarks = item.Income_Remarks,
                        };
                        ent.AnuSuchi3_Income.Add(AnuSuchi3_IncomeEntity);
                    }
                }

                if (model.Anusuchi3ExpensesViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList2 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList2)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList3 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList3)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList4 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList4)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }

                if (model.Anusuchi3MaujatViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList2 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList2)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList3 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList3)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList4 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList4)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }

                var AnuSuchi3_BhuktaniEntity = new AnuSuchi3_Bhuktani()
                {
                    AnuSuchi3_Id = anuSuchi3Id,
                    Bhuktani_Details = model.Bhuktani_Details,
                    Bhuktani_Amount = model.Bhuktani_Amount,
                };
                ent.AnuSuchi3_Bhuktani.Add(AnuSuchi3_BhuktaniEntity);

                var AnuSuchi3_Project_Work_DetailEntity = new AnuSuchi3_Project_Work_Detail()
                {
                    AnuSuchi3_Id = anuSuchi3Id,
                    Work_Details = model.Work_Details,
                    Work_Plan = model.Work_Plan,
                    Work_Progress = model.Work_Progress,
                };
                ent.AnuSuchi3_Project_Work_Detail.Add(AnuSuchi3_Project_Work_DetailEntity);

                if (model.Anusuchi3WorkDivisionViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3WorkDivisionViewModelList)
                    {
                        var AnuSuchi3_Work_DivisionEntity = new AnuSuchi3_Work_Division()
                        {
                            AnuSuchi3_Id = anuSuchi3Id,
                            Members = item.Members,
                        };
                        ent.AnuSuchi3_Work_Division.Add(AnuSuchi3_Work_DivisionEntity);
                    }
                }

                int i = ent.SaveChanges();

                if (i > 0)
                {
                    return AnuSuchi3Entity.AnuSuchi3_Id;
                }
                else
                {
                    return 0;
                }
            }
        }
        public List<Anusuchi3ViewModel> getAnusuchi3List(int anuSuchi3_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi3ViewModel model = new Anusuchi3ViewModel();
                List<Anusuchi3ViewModel> List = (from a in ent.AnuSuchi3
                                                 join b in ent.AnuSuchi3_Bhuktani on a.AnuSuchi3_Id equals b.AnuSuchi3_Id
                                                 join pd in ent.AnuSuchi3_Project_Work_Detail on a.AnuSuchi3_Id equals pd.AnuSuchi3_Id
                                                 where a.AnuSuchi3_Id == anuSuchi3_Id
                                                 select new Anusuchi3ViewModel()
                                                 {
                                                     AnuSuchi3_Id = a.AnuSuchi3_Id,
                                                     Project_Name = a.Project_Name,
                                                     Project_Place = a.Project_Place,
                                                     Estimated_Amount = a.Estimated_Amount,
                                                     Project_Start_Date = a.Project_Start_Date,
                                                     Project_End_Date = a.Project_End_Date,
                                                     Upabhokta_Samiti_Name = a.Upabhokta_Samiti_Name,
                                                     Adakshya_Name = a.Adakshya_Name,
                                                     Total_Members = a.Total_Members,
                                                     Male_No = a.Male_No,
                                                     Female_No = a.Female_No,
                                                     Total_Benificial_No = a.Total_Benificial_No,
                                                     Rohabar_Name = a.Rohabar_Name,
                                                     Rohabar_Position = a.Rohabar_Position,
                                                     Rohabar_Date = a.Rohabar_Date,
                                                     Bhuktani_Details = b.Bhuktani_Details,
                                                     Bhuktani_Amount = b.Bhuktani_Amount,
                                                     Work_Details = pd.Work_Details,
                                                     Work_Plan = pd.Work_Plan,
                                                     Work_Progress = pd.Work_Progress,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> GetAnusuchi3List()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi3ViewModel model = new Anusuchi3ViewModel();
                List<Anusuchi3ViewModel> List = (from a in ent.AnuSuchi3
                                                 where a.DeletedDate == null && a.Status == true
                                                 select new Anusuchi3ViewModel()
                                                 {
                                                     AnuSuchi3_Id = a.AnuSuchi3_Id,
                                                     Project_Name = a.Project_Name,
                                                     Project_Place = a.Project_Place,
                                                     Upabhokta_Samiti_Name = a.Upabhokta_Samiti_Name,
                                                     Project_Start_Date = a.Project_Start_Date,
                                                     Project_End_Date = a.Project_End_Date,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> GetAnusuchi3IncomeList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi3ViewModel> List = ent.AnuSuchi3_Income.Where(x => x.AnuSuchi3_Id == id).Select(x => new Anusuchi3ViewModel()
                {
                    AnuSuchi3_Income_Id = x.AnuSuchi3_Income_Id,
                    AnuSuchi3_Id = x.AnuSuchi3_Id ?? 0,
                    Income_Source = x.Income_Source,
                    Amount_Quantity = x.Amount_Quantity,
                    Income_Remarks = x.Income_Remarks,
                }).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> GetAnusuchi3WorkDivisionList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi3ViewModel> List = ent.AnuSuchi3_Work_Division.Where(x => x.AnuSuchi3_Id == id).Select(x => new Anusuchi3ViewModel()
                {
                    AnuSuchi3_Work_Division_Id = x.AnuSuchi3_Work_Division_Id,
                    AnuSuchi3_Id = x.AnuSuchi3_Id ?? 0,
                    Members = x.Members,
                }).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> GetAnusuchi3ExpensesList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi3ViewModel> List = ent.AnuSuchi3_Expenses.Where(x => x.AnuSuchi3_Id == id).Select(x => new Anusuchi3ViewModel()
                {
                    AnuSuchi3_Expenses_Id = x.AnuSuchi3_Expenses_Id,
                    AnuSuchi3_Id = x.AnuSuchi3_Id ?? 0,
                    Expenses_Details = x.Expenses_Details,
                    Expenses_Rate = x.Expenses_Rate,
                    Expenses_Quantity = x.Expenses_Quantity,
                    Expenses_Total = x.Expenses_Total,
                    Type = x.Type ?? 0,
                }).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> GetAnusuchi3MaujatList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi3ViewModel> List = ent.AnuSuchi3_Maujat.Where(x => x.AnuSuchi3_Id == id).Select(x => new Anusuchi3ViewModel()
                {
                    AnuSuchi3_Maujat_Id = x.AnuSuchi3_Maujat_Id,
                    AnuSuchi3_Id = x.AnuSuchi3_Id ?? 0,
                    Maujat_Details = x.Maujat_Details,
                    Maujat_Amount = x.Maujat_Amount,
                    Maujat_Remarks = x.Maujat_Remarks,
                    Type = x.Type ?? 0,
                }).ToList();
                return List;
            }
        }
        public int UpdateAnusuchi3(Anusuchi3ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi3.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).SingleOrDefault();
                data.AnuSuchi3_Id = model.AnuSuchi3_Id;
                data.Project_Name = model.Project_Name;
                data.Project_Place = model.Project_Place;
                data.Estimated_Amount = model.Estimated_Amount;
                data.Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name;
                data.Project_Start_Date = model.Project_Start_Date;
                data.Project_End_Date = model.Project_End_Date;
                data.Adakshya_Name = model.Adakshya_Name;
                data.Total_Members = model.Total_Members;
                data.Male_No = model.Male_No;
                data.Female_No = model.Female_No;
                data.Total_Benificial_No = model.Total_Benificial_No;
                data.Rohabar_Name = model.Rohabar_Name;
                data.Rohabar_Position = model.Rohabar_Position;
                data.Rohabar_Date = model.Rohabar_Date;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;

                var objAnuSuchi3_Income = ent.AnuSuchi3_Income.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Income)
                {
                    ent.AnuSuchi3_Income.Remove(item);
                    ent.SaveChanges();
                }
                if (model.Anusuchi3IncomeViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3IncomeViewModelList)
                    {
                        var AnuSuchi3_IncomeEntity = new AnuSuchi3_Income()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Income_Source = item.Income_Source,
                            Amount_Quantity = item.Amount_Quantity,
                            Income_Remarks = item.Income_Remarks,
                        };
                        ent.AnuSuchi3_Income.Add(AnuSuchi3_IncomeEntity);
                    }
                }

                var objAnuSuchi3_Expenses = ent.AnuSuchi3_Expenses.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Expenses)
                {
                    ent.AnuSuchi3_Expenses.Remove(item);
                    ent.SaveChanges();
                }
                if (model.Anusuchi3ExpensesViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type=item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList2 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList2)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList3 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList3)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }
                if (model.Anusuchi3ExpensesViewModelList4 != null)
                {
                    foreach (var item in model.Anusuchi3ExpensesViewModelList4)
                    {
                        var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Expenses_Details = item.Expenses_Details,
                            Expenses_Rate = item.Expenses_Rate,
                            Expenses_Quantity = item.Expenses_Quantity,
                            Expenses_Total = item.Expenses_Total,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                    }
                }

                var objAnuSuchi3_Maujat = ent.AnuSuchi3_Maujat.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Maujat)
                {
                    ent.AnuSuchi3_Maujat.Remove(item);
                    ent.SaveChanges();
                }
                if (model.Anusuchi3MaujatViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList2 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList2)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList3 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList3)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }
                if (model.Anusuchi3MaujatViewModelList4 != null)
                {
                    foreach (var item in model.Anusuchi3MaujatViewModelList4)
                    {
                        var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Maujat_Details = item.Maujat_Details,
                            Maujat_Amount = item.Maujat_Amount,
                            Maujat_Remarks = item.Maujat_Remarks,
                            Type = item.Type,
                        };
                        ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                    }
                }

                var objAnuSuchi3_Bhuktani = ent.AnuSuchi3_Bhuktani.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Bhuktani)
                {
                    ent.AnuSuchi3_Bhuktani.Remove(item);
                    ent.SaveChanges();
                }
                var AnuSuchi3_BhuktaniEntity = new AnuSuchi3_Bhuktani()
                {
                    AnuSuchi3_Id = model.AnuSuchi3_Id,
                    Bhuktani_Details = model.Bhuktani_Details,
                    Bhuktani_Amount = model.Bhuktani_Amount,
                };
                ent.AnuSuchi3_Bhuktani.Add(AnuSuchi3_BhuktaniEntity);

                var objAnuSuchi3_Project_Work_Detail = ent.AnuSuchi3_Project_Work_Detail.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Project_Work_Detail)
                {
                    ent.AnuSuchi3_Project_Work_Detail.Remove(item);
                    ent.SaveChanges();
                }
                var AnuSuchi3_Project_Work_DetailEntity = new AnuSuchi3_Project_Work_Detail()
                {
                    AnuSuchi3_Id = model.AnuSuchi3_Id,
                    Work_Details = model.Work_Details,
                    Work_Plan = model.Work_Plan,
                    Work_Progress = model.Work_Progress,
                };
                ent.AnuSuchi3_Project_Work_Detail.Add(AnuSuchi3_Project_Work_DetailEntity);

                var objAnuSuchi3_Work_Division = ent.AnuSuchi3_Work_Division.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                foreach (var item in objAnuSuchi3_Work_Division)
                {
                    ent.AnuSuchi3_Work_Division.Remove(item);
                    ent.SaveChanges();
                }
                if (model.Anusuchi3WorkDivisionViewModelList != null)
                {
                    foreach (var item in model.Anusuchi3WorkDivisionViewModelList)
                    {
                        var AnuSuchi3_Work_DivisionEntity = new AnuSuchi3_Work_Division()
                        {
                            AnuSuchi3_Id = model.AnuSuchi3_Id,
                            Members = item.Members,
                        };
                        ent.AnuSuchi3_Work_Division.Add(AnuSuchi3_Work_DivisionEntity);
                    }
                }

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }


        //For SoluDudhkunda Nagarpalika

        public List<Anusuchi3ViewModel> getPlanningSamjhautaAnusuchi3List(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi3ViewModel model = new Anusuchi3ViewModel();
                List<Anusuchi3ViewModel> List = (from a in ent.AnuSuchi3
                                                 join b in ent.AnuSuchi3_Bhuktani on a.AnuSuchi3_Id equals b.AnuSuchi3_Id
                                                 join pd in ent.AnuSuchi3_Project_Work_Detail on a.AnuSuchi3_Id equals pd.AnuSuchi3_Id
                                                 where a.Planing_Samjhauta_Id == id
                                                 select new Anusuchi3ViewModel()
                                                 {
                                                     Planing_Samjhauta_Id=a.Planing_Samjhauta_Id,
                                                     AnuSuchi3_Id = a.AnuSuchi3_Id,
                                                     Project_Name = a.Project_Name,
                                                     Project_Place = a.Project_Place,
                                                     Estimated_Amount = a.Estimated_Amount,
                                                     Project_Start_Date = a.Project_Start_Date,
                                                     Project_End_Date = a.Project_End_Date,
                                                     Upabhokta_Samiti_Name = a.Upabhokta_Samiti_Name,
                                                     Adakshya_Name = a.Adakshya_Name,
                                                     Total_Members = a.Total_Members,
                                                     Male_No = a.Male_No,
                                                     Female_No = a.Female_No,
                                                     Total_Benificial_No = a.Total_Benificial_No,
                                                     Rohabar_Name = a.Rohabar_Name,
                                                     Rohabar_Position = a.Rohabar_Position,
                                                     Rohabar_Date = a.Rohabar_Date,
                                                     Bhuktani_Details = b.Bhuktani_Details,
                                                     Bhuktani_Amount = b.Bhuktani_Amount,
                                                     Work_Details = pd.Work_Details,
                                                     Work_Plan = pd.Work_Plan,
                                                     Work_Progress = pd.Work_Progress,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }
        public List<Anusuchi3ViewModel> getPlanningSamjhautaAnusuchi3ListFromSamjhauta(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi3ViewModel model = new Anusuchi3ViewModel();
                List<Anusuchi3ViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join b in ent.Beneficiaries_Group on p.Planning_Samjhauta_Id equals b.Planning_Samjhauta_Id into benif
                                                         from b in benif.DefaultIfEmpty()
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                         from pe in proentry.DefaultIfEmpty()
                                                         join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                         from pd in samiti.DefaultIfEmpty()
                                                         select new Anusuchi3ViewModel
                                                         {
                                                             Planing_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Place = pe.Project_Place,
                                                             Estimated_Amount = pe.Project_estimated_Amount,
                                                             Project_Start_Date = pe.Project_Start_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Upabhokta_Samiti_Name = p.Samjhauta_Org_Name,
                                                             Adakshya_Name = pd.Adakshya,
                                                             Male_No = b.Total_Male,
                                                             Female_No = b.Total_Female,
                                                             Status = p.Status,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.Planing_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdatePlanningSamjhautaAnusuchi3(Anusuchi3ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi3.Where(x => x.Planing_Samjhauta_Id == model.Planing_Samjhauta_Id && x.AnuSuchi3_Id == model.AnuSuchi3_Id).SingleOrDefault();
                if (data != null)
                {
                    data.Planing_Samjhauta_Id = model.Planing_Samjhauta_Id;
                    data.AnuSuchi3_Id = model.AnuSuchi3_Id;
                    data.Project_Name = model.Project_Name;
                    data.Project_Place = model.Project_Place;
                    data.Estimated_Amount = model.Estimated_Amount;
                    data.Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name;
                    data.Project_Start_Date = model.Project_Start_Date;
                    data.Project_End_Date = model.Project_End_Date;
                    data.Adakshya_Name = model.Adakshya_Name;
                    data.Total_Members = model.Total_Members;
                    data.Male_No = model.Male_No;
                    data.Female_No = model.Female_No;
                    data.Total_Benificial_No = model.Total_Benificial_No;
                    data.Rohabar_Name = model.Rohabar_Name;
                    data.Rohabar_Position = model.Rohabar_Position;
                    data.Rohabar_Date = model.Rohabar_Date;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnuSuchi3_Income = ent.AnuSuchi3_Income.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Income)
                    {
                        ent.AnuSuchi3_Income.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi3IncomeViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3IncomeViewModelList)
                        {
                            var AnuSuchi3_IncomeEntity = new AnuSuchi3_Income()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Income_Source = item.Income_Source,
                                Amount_Quantity = item.Amount_Quantity,
                                Income_Remarks = item.Income_Remarks,
                            };
                            ent.AnuSuchi3_Income.Add(AnuSuchi3_IncomeEntity);
                        }
                    }

                    var objAnuSuchi3_Expenses = ent.AnuSuchi3_Expenses.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Expenses)
                    {
                        ent.AnuSuchi3_Expenses.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi3ExpensesViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList2 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList2)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList3 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList3)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList4 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList4)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }

                    var objAnuSuchi3_Maujat = ent.AnuSuchi3_Maujat.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Maujat)
                    {
                        ent.AnuSuchi3_Maujat.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi3MaujatViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList2 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList2)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList3 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList3)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList4 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList4)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }

                    var objAnuSuchi3_Bhuktani = ent.AnuSuchi3_Bhuktani.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Bhuktani)
                    {
                        ent.AnuSuchi3_Bhuktani.Remove(item);
                        ent.SaveChanges();
                    }
                    var AnuSuchi3_BhuktaniEntity = new AnuSuchi3_Bhuktani()
                    {
                        AnuSuchi3_Id = model.AnuSuchi3_Id,
                        Bhuktani_Details = model.Bhuktani_Details,
                        Bhuktani_Amount = model.Bhuktani_Amount,
                    };
                    ent.AnuSuchi3_Bhuktani.Add(AnuSuchi3_BhuktaniEntity);

                    var objAnuSuchi3_Project_Work_Detail = ent.AnuSuchi3_Project_Work_Detail.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Project_Work_Detail)
                    {
                        ent.AnuSuchi3_Project_Work_Detail.Remove(item);
                        ent.SaveChanges();
                    }
                    var AnuSuchi3_Project_Work_DetailEntity = new AnuSuchi3_Project_Work_Detail()
                    {
                        AnuSuchi3_Id = model.AnuSuchi3_Id,
                        Work_Details = model.Work_Details,
                        Work_Plan = model.Work_Plan,
                        Work_Progress = model.Work_Progress,
                    };
                    ent.AnuSuchi3_Project_Work_Detail.Add(AnuSuchi3_Project_Work_DetailEntity);

                    var objAnuSuchi3_Work_Division = ent.AnuSuchi3_Work_Division.Where(x => x.AnuSuchi3_Id == model.AnuSuchi3_Id).ToList();
                    foreach (var item in objAnuSuchi3_Work_Division)
                    {
                        ent.AnuSuchi3_Work_Division.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi3WorkDivisionViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3WorkDivisionViewModelList)
                        {
                            var AnuSuchi3_Work_DivisionEntity = new AnuSuchi3_Work_Division()
                            {
                                AnuSuchi3_Id = model.AnuSuchi3_Id,
                                Members = item.Members,
                            };
                            ent.AnuSuchi3_Work_Division.Add(AnuSuchi3_Work_DivisionEntity);
                        }
                    }

                }
                else
                {
                    int anuSuchi3Id = 0;

                    var AnuSuchi3Entity = new AnuSuchi3()
                    {
                        Planing_Samjhauta_Id = model.Planing_Samjhauta_Id,
                        Project_Name = model.Project_Name,
                        Project_Place = model.Project_Place,
                        Estimated_Amount = model.Estimated_Amount,
                        Upabhokta_Samiti_Name = model.Upabhokta_Samiti_Name,
                        Project_Start_Date = model.Project_Start_Date,
                        Project_End_Date = model.Project_End_Date,
                        Adakshya_Name = model.Adakshya_Name,
                        Total_Members = model.Total_Members,
                        Male_No = model.Male_No,
                        Female_No = model.Female_No,
                        Total_Benificial_No = model.Total_Benificial_No,
                        Rohabar_Name = model.Rohabar_Name,
                        Rohabar_Position = model.Rohabar_Position,
                        Rohabar_Date = model.Rohabar_Date,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.AnuSuchi3.Add(AnuSuchi3Entity);
                    anuSuchi3Id = AnuSuchi3Entity.AnuSuchi3_Id;

                    if (model.Anusuchi3IncomeViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3IncomeViewModelList)
                        {
                            var AnuSuchi3_IncomeEntity = new AnuSuchi3_Income()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Income_Source = item.Income_Source,
                                Amount_Quantity = item.Amount_Quantity,
                                Income_Remarks = item.Income_Remarks,
                            };
                            ent.AnuSuchi3_Income.Add(AnuSuchi3_IncomeEntity);
                        }
                    }

                    if (model.Anusuchi3ExpensesViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList2 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList2)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList3 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList3)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }
                    if (model.Anusuchi3ExpensesViewModelList4 != null)
                    {
                        foreach (var item in model.Anusuchi3ExpensesViewModelList4)
                        {
                            var AnuSuchi3_ExpensesEntity = new AnuSuchi3_Expenses()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Expenses_Details = item.Expenses_Details,
                                Expenses_Rate = item.Expenses_Rate,
                                Expenses_Quantity = item.Expenses_Quantity,
                                Expenses_Total = item.Expenses_Total,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Expenses.Add(AnuSuchi3_ExpensesEntity);
                        }
                    }

                    if (model.Anusuchi3MaujatViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList2 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList2)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList3 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList3)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }
                    if (model.Anusuchi3MaujatViewModelList4 != null)
                    {
                        foreach (var item in model.Anusuchi3MaujatViewModelList4)
                        {
                            var AnuSuchi3_MaujatEntity = new AnuSuchi3_Maujat()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Maujat_Details = item.Maujat_Details,
                                Maujat_Amount = item.Maujat_Amount,
                                Maujat_Remarks = item.Maujat_Remarks,
                                Type = item.Type,
                            };
                            ent.AnuSuchi3_Maujat.Add(AnuSuchi3_MaujatEntity);
                        }
                    }

                    var AnuSuchi3_BhuktaniEntity = new AnuSuchi3_Bhuktani()
                    {
                        AnuSuchi3_Id = anuSuchi3Id,
                        Bhuktani_Details = model.Bhuktani_Details,
                        Bhuktani_Amount = model.Bhuktani_Amount,
                    };
                    ent.AnuSuchi3_Bhuktani.Add(AnuSuchi3_BhuktaniEntity);

                    var AnuSuchi3_Project_Work_DetailEntity = new AnuSuchi3_Project_Work_Detail()
                    {
                        AnuSuchi3_Id = anuSuchi3Id,
                        Work_Details = model.Work_Details,
                        Work_Plan = model.Work_Plan,
                        Work_Progress = model.Work_Progress,
                    };
                    ent.AnuSuchi3_Project_Work_Detail.Add(AnuSuchi3_Project_Work_DetailEntity);

                    if (model.Anusuchi3WorkDivisionViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi3WorkDivisionViewModelList)
                        {
                            var AnuSuchi3_Work_DivisionEntity = new AnuSuchi3_Work_Division()
                            {
                                AnuSuchi3_Id = anuSuchi3Id,
                                Members = item.Members,
                            };
                            ent.AnuSuchi3_Work_Division.Add(AnuSuchi3_Work_DivisionEntity);
                        }
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