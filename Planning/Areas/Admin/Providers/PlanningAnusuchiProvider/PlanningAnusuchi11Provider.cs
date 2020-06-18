using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi11Provider
    {
        public List<Anusuchi11ViewModel> getAnusuchi11List(int Planning_Samjhauta_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi11ViewModel model = new Anusuchi11ViewModel();
                List<Anusuchi11ViewModel> List = (from a in ent.AnuSuchi11
                                                 where a.Planning_Samjhauta_Id == Planning_Samjhauta_Id
                                                 select new Anusuchi11ViewModel()
                                                 {
                                                     AnuSuchi11_Id = a.AnuSuchi11_Id,
                                                     Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                     Name=a.Name,
                                                     Position=a.Position,
                                                     Date=a.Date,
                                                     Suggestion=a.Suggestion,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdateAnusuchi11(Anusuchi11ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi11.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                if (data.Count > 0)
                {
                    var objAnusuchi11 = ent.AnuSuchi11.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).ToList();
                    foreach (var item in objAnusuchi11)
                    {
                        ent.AnuSuchi11.Remove(item);
                        ent.SaveChanges();
                    }
                    foreach (var item in model.Anusuchi11ViewModelList)
                    {
                        var Anusuchi11Entity = new AnuSuchi11()
                        {
                            AnuSuchi11_Id = model.AnuSuchi11_Id,
                            Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                            Name = item.Name,
                            Position = item.Position,
                            Date = item.Date,
                            Suggestion = item.Suggestion,
                            Status = true,
                            UpdatedBy = model.UpdatedBy,
                            UpdatedDate = DateTime.Now,
                        };
                        ent.AnuSuchi11.Add(Anusuchi11Entity);
                    }
                }
                else
                {
                    int anuSuchi11Id = 0;
                    foreach (var item in model.Anusuchi11ViewModelList)
                    {
                        var AnuSuchi11Entity = new AnuSuchi11()
                        {
                            Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                            Name = item.Name,
                            Position = item.Position,
                            Date = item.Date,
                            Suggestion = item.Suggestion,
                            Status = true,
                            CreatedBy = model.CreatedBy,
                            CreatedDate = DateTime.Now,
                        };
                        ent.AnuSuchi11.Add(AnuSuchi11Entity);
                        anuSuchi11Id = AnuSuchi11Entity.AnuSuchi11_Id;
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