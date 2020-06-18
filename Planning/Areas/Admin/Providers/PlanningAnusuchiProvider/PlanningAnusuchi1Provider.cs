using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi1Provider
    {
        public List<Anusuchi1ViewModel> getAnusuchi1List(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi1ViewModel model = new Anusuchi1ViewModel();
                List<Anusuchi1ViewModel> List = (from a in ent.AnuSuchi1
                                                  where a.Planning_Samjhauta_Id == id
                                                  select new Anusuchi1ViewModel()
                                                  {
                                                      AnuSuchi1_Id = a.AnuSuchi1_Id,
                                                      Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                      Upabhokta_Samiti_Name=a.Upabhokta_Samiti_Name,
                                                      Adakshya = a.Adakshya,
                                                      Upadakshya = a.Upadakshya,
                                                      Sachib=a.Sachib,
                                                      Koshadakshya=a.Koshadakshya,
                                                      Establish_Date=a.Establish_Date,
                                                      Bank_Name=a.Bank_Name,
                                                      Account_Number=a.Account_Number,
                                                      Status = a.Status,
                                                      DeletedDate = a.DeletedDate,
                                                  }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi1ViewModel> getPlanningSamjhautaList(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi1ViewModel model = new Anusuchi1ViewModel();
                List<Anusuchi1ViewModel> List = (from p in ent.Planning_Samjhauta
                                                 join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                 from pd in samiti.DefaultIfEmpty()
                                                 select new Anusuchi1ViewModel
                                                 {
                                                     Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                     Upabhokta_Samiti_Name = p.Samjhauta_Org_Name,
                                                     Adakshya = pd.Adakshya,
                                                     Sachib=pd.Sachib,
                                                     Koshadakshya=pd.Koshadakshya,
                                                     Establish_Date=pd.Samiti_Estd_Date,
                                                     Status = p.Status,
                                                     DeletedDate = p.DeletedDate,
                                                 }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }


        public int UpdateAnusuchi1(Anusuchi1ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi1.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                if (data.Count > 0)
                {
                    var objAnusuchi1 = ent.AnuSuchi1.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                    foreach (var item in objAnusuchi1)
                    {
                        ent.AnuSuchi1.Remove(item);
                        ent.SaveChanges();
                    }
                    foreach (var item in model.Anusuchi1ViewModelList)
                    {
                        var Anusuchi1Entity = new AnuSuchi1()
                        {
                           AnuSuchi1_Id = model.AnuSuchi1_Id,
                           Planning_Samjhauta_Id=model.Planning_Samjhauta_Id,
                           Upabhokta_Samiti_Name=item.Upabhokta_Samiti_Name,
                           Adakshya=item.Adakshya,
                           Upadakshya= item.Upadakshya,
                           Sachib= item.Sachib,
                           Koshadakshya= item.Koshadakshya,
                           Establish_Date= item.Establish_Date,
                           Bank_Name= item.Bank_Name,
                           Account_Number= item.Account_Number,
                           Status=true,
                           UpdatedBy=model.UpdatedBy,
                           UpdatedDate= DateTime.Now,
                        };
                        ent.AnuSuchi1.Add(Anusuchi1Entity);
                    }                  

                }
                else
                {
                    int anuSuchi1Id = 0;
                    foreach (var item in model.Anusuchi1ViewModelList)
                    {
                        var AnuSuchi1Entity = new AnuSuchi1()
                        {
                            Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                            Upabhokta_Samiti_Name = item.Upabhokta_Samiti_Name,
                            Adakshya = item.Adakshya,
                            Upadakshya = item.Upadakshya,
                            Sachib = item.Sachib,
                            Koshadakshya = item.Koshadakshya,
                            Establish_Date = item.Establish_Date,
                            Bank_Name = item.Bank_Name,
                            Account_Number = item.Account_Number,
                            Status = true,
                            CreatedBy = model.CreatedBy,
                            CreatedDate = DateTime.Now,
                        };
                        ent.AnuSuchi1.Add(AnuSuchi1Entity);
                        anuSuchi1Id = AnuSuchi1Entity.AnuSuchi1_Id;
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