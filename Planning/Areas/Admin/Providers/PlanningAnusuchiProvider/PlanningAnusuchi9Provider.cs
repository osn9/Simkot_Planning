using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi9Provider
    {
        public List<Anusuchi9ViewModel> getAnusuchi9List(int Planning_Samjhauta_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi9ViewModel model = new Anusuchi9ViewModel();
                List<Anusuchi9ViewModel> List = (from a in ent.AnuSuchi9
                                                 where a.Planning_Samjhauta_Id == Planning_Samjhauta_Id
                                                 select new Anusuchi9ViewModel()
                                                 {
                                                     AnuSuchi9_Id = a.AnuSuchi9_Id,
                                                     Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                     Adakshya = a.Adakshya,
                                                     Adakshya_Address = a.Adakshya_Address,
                                                     Sachib = a.Sachib,
                                                     Sachib_Address = a.Sachib_Address,
                                                     Koshadakshya = a.Koshadakshya,
                                                     Koshadakshya_Address = a.Koshadakshya_Address,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> GetAnusuchi9MembersList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi9ViewModel model = new Anusuchi9ViewModel();
                List<Anusuchi9ViewModel> List = (from a in ent.AnuSuchi9_Members
                                                 where a.AnuSuchi9_Id == id
                                                 select new Anusuchi9ViewModel()
                                                 {
                                                     AnuSuchi9_Members_Id = a.AnuSuchi9_Members_Id,
                                                     Members = a.Members,
                                                     Members_Address = a.Members_Address
                                                 }).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> GetAnusuchi9SubjectList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi9ViewModel model = new Anusuchi9ViewModel();
                List<Anusuchi9ViewModel> List = (from a in ent.AnuSuchi9_Discussion_Subjects
                                                 where a.AnuSuchi9_Id == id
                                                 select new Anusuchi9ViewModel()
                                                 {
                                                     AnuSuchi9_Discussion_Subjects_Id = a.AnuSuchi9_Discussion_Subjects_Id,
                                                     Subjects = a.Subjects
                                                 }).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> GetAnusuchi9ConclusionList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi9ViewModel> List = ent.AnuSuchi9_Discussion_Conclusions.Where(x => x.AnuSuchi9_Id == id).Select(x => new Anusuchi9ViewModel()
                {
                    AnuSuchi9_Discussion_Conclusions_Id = x.AnuSuchi9_Discussion_Conclusions_Id,
                    Conclusions = x.Conclusions
                }).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> GetAnusuchi9MeetingList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi9ViewModel model = new Anusuchi9ViewModel();
                List<Anusuchi9ViewModel> List = (from a in ent.AnuSuchi9_Meeting
                                                 where a.AnuSuchi9_Id == id
                                                 select new Anusuchi9ViewModel()
                                                 {
                                                     Baithak_Date = a.Baithak_Date,
                                                     Baithak_No = a.Baithak_No,
                                                     AnuSuchi9_Meeting_Id = a.AnuSuchi9_Meeting_Id
                                                 }).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> getPlanningSamjhautaList(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi9ViewModel model = new Anusuchi9ViewModel();
                List<Anusuchi9ViewModel> List = (from p in ent.Planning_Samjhauta
                                                 join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                 from pd in samiti.DefaultIfEmpty()
                                                 select new Anusuchi9ViewModel
                                                 {
                                                     Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                     Adakshya = pd.Adakshya,
                                                     Sachib = pd.Sachib,
                                                     Koshadakshya = pd.Koshadakshya,
                                                     Status = p.Status,
                                                     DeletedDate = p.DeletedDate,
                                                 }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi9ViewModel> GetPlanningSamjhautaMembersList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi9ViewModel> List = ent.UpaBhokta_Samiti_Members_Details.Where(x => x.Planning_Samjhauta_Id == id).Select(x => new Anusuchi9ViewModel()
                {
                    UpabhoktaSamitiMemberDetailId = x.UpaBhokta_Samiti_Members_Details_Id,
                    Members = x.MemberName
                }).ToList();
                return List;
            }
        }


        public int UpdateAnusuchi9(Anusuchi9ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi9.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                if (data != null)
                {
                    data.AnuSuchi9_Id = model.AnuSuchi9_Id;
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.Adakshya = model.Adakshya;
                    data.Adakshya_Address = model.Adakshya_Address;
                    data.Sachib = model.Sachib;
                    data.Sachib_Address = model.Sachib_Address;
                    data.Koshadakshya = model.Koshadakshya;
                    data.Koshadakshya_Address = model.Koshadakshya_Address;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnusuchi9_Member = ent.AnuSuchi9_Members.Where(x => x.AnuSuchi9_Id == model.AnuSuchi9_Id).ToList();
                    foreach (var item in objAnusuchi9_Member)
                    {
                        ent.AnuSuchi9_Members.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi9_MembersViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_MembersViewModelList)
                        {
                            var Anusuchi9_MembersEntity = new AnuSuchi9_Members()
                            {
                                AnuSuchi9_Id = model.AnuSuchi9_Id,
                                Members = item.Members,
                                Members_Address = item.Members_Address
                            };
                            ent.AnuSuchi9_Members.Add(Anusuchi9_MembersEntity);
                        }
                    }

                   
                            var Anusuchi9_MeetingEntity = new AnuSuchi9_Meeting()
                            {
                                AnuSuchi9_Id = model.AnuSuchi9_Id,
                                Baithak_Date = model.Baithak_Date,
                                Baithak_No = model.Baithak_No,
                            };
                            ent.AnuSuchi9_Meeting.Add(Anusuchi9_MeetingEntity);
                   

                    var objAnusuchi9_Subject = ent.AnuSuchi9_Discussion_Subjects.Where(x => x.AnuSuchi9_Id == model.AnuSuchi9_Id).ToList();
                    foreach (var item in objAnusuchi9_Subject)
                    {
                        ent.AnuSuchi9_Discussion_Subjects.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi9_Discussion_SubjectsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_Discussion_SubjectsViewModelList)
                        {
                            var Anusuchi9_SubjectEntity = new AnuSuchi9_Discussion_Subjects()
                            {
                                AnuSuchi9_Id = model.AnuSuchi9_Id,
                                Subjects = item.Subjects
                            };
                            ent.AnuSuchi9_Discussion_Subjects.Add(Anusuchi9_SubjectEntity);
                        }
                    }

                    var objAnusuchi9_Conclusions = ent.AnuSuchi9_Discussion_Conclusions.Where(x => x.AnuSuchi9_Id == model.AnuSuchi9_Id).ToList();
                    foreach (var item in objAnusuchi9_Conclusions)
                    {
                        ent.AnuSuchi9_Discussion_Conclusions.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi9_Discussion_ConclusionsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_Discussion_ConclusionsViewModelList)
                        {
                            var Anusuchi9_ConclusionsEntity = new AnuSuchi9_Discussion_Conclusions()
                            {
                                AnuSuchi9_Id = model.AnuSuchi9_Id,
                                Conclusions = item.Conclusions
                            };
                            ent.AnuSuchi9_Discussion_Conclusions.Add(Anusuchi9_ConclusionsEntity);
                        }
                    }

                }
                else
                {
                    int anuSuchi9Id = 0;

                    var AnuSuchi9Entity = new AnuSuchi9()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        AnuSuchi9_Id = model.AnuSuchi9_Id,
                        Adakshya = model.Adakshya,
                        Adakshya_Address = model.Adakshya_Address,
                        Sachib = model.Sachib,
                        Sachib_Address = model.Sachib_Address,
                        Koshadakshya = model.Koshadakshya,
                        Koshadakshya_Address = model.Koshadakshya_Address,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.AnuSuchi9.Add(AnuSuchi9Entity);
                    anuSuchi9Id = AnuSuchi9Entity.AnuSuchi9_Id;

                    if (model.Anusuchi9_MembersViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_MembersViewModelList)
                        {
                            var Anusuchi9_MembersEntity = new AnuSuchi9_Members()
                            {
                                AnuSuchi9_Id = anuSuchi9Id,
                                Members = item.Members,
                                Members_Address = item.Members_Address
                            };
                            ent.AnuSuchi9_Members.Add(Anusuchi9_MembersEntity);
                        }
                    }

                    if (model.Anusuchi9_Discussion_SubjectsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_Discussion_SubjectsViewModelList)
                        {
                            var Anusuchi9_SubjectsEntity = new AnuSuchi9_Discussion_Subjects()
                            {
                                AnuSuchi9_Id = anuSuchi9Id,
                                Subjects = item.Subjects
                            };
                            ent.AnuSuchi9_Discussion_Subjects.Add(Anusuchi9_SubjectsEntity);
                        }
                    }

                    if (model.Anusuchi9_Discussion_ConclusionsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi9_Discussion_ConclusionsViewModelList)
                        {
                            var Anusuchi9_ConclusionsEntity = new AnuSuchi9_Discussion_Conclusions()
                            {
                                AnuSuchi9_Id = anuSuchi9Id,
                                Conclusions = item.Conclusions
                            };
                            ent.AnuSuchi9_Discussion_Conclusions.Add(Anusuchi9_ConclusionsEntity);
                        }
                    }
                   
                            var Anusuchi9_MeetingEntity = new AnuSuchi9_Meeting()
                            {
                                AnuSuchi9_Id = anuSuchi9Id,
                                Baithak_Date = model.Baithak_Date,
                                Baithak_No = model.Baithak_No,
                            };
                            ent.AnuSuchi9_Meeting.Add(Anusuchi9_MeetingEntity);
                    
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