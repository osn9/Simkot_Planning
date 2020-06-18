using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi10Provider
    {
        public List<Anusuchi10ViewModel> getAnusuchi10List(int Planning_Samjhauta_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from a in ent.AnuSuchi10
                                                  where a.Planning_Samjhauta_Id == Planning_Samjhauta_Id
                                                  select new Anusuchi10ViewModel()
                                                  {
                                                      AnuSuchi10_Id = a.AnuSuchi10_Id,
                                                      Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                      Adakshya = a.Adakshya,
                                                      Adakshya_Gender = a.Adakshya_Gender,
                                                      Adakshya_MobileNo = a.Adakshya_MobileNo,
                                                      Status = a.Status,
                                                      CreatedBy = a.CreatedBy,
                                                      CreatedDate = a.CreatedDate,
                                                      UpdatedBy = a.UpdatedBy,
                                                      UpdatedDate = a.UpdatedDate,
                                                      DeletedDate = a.DeletedDate,
                                                  }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }
        public List<Anusuchi10ViewModel> GetAnusuchi10MembersList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from a in ent.AnuSuchi10_Members
                                                  where a.AnuSuchi10_Id == id
                                                  select new Anusuchi10ViewModel()
                                                  {
                                                      AnuSuchi10_Members_Id = a.AnuSuchi10_Members_Id,
                                                      Members = a.Members,
                                                      Members_Gender = a.Members_Gender,
                                                      Members_MobileNo = a.Members_MobileNo,
                                                      Members_Pad = a.Members_Pad
                                                  }).ToList();
                return List;
            }
        }

        public List<Anusuchi10ViewModel> GetAnusuchi10SubjectList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from a in ent.AnuSuchi10_Discussion_Subjects
                                                  where a.AnuSuchi10_Id == id
                                                  select new Anusuchi10ViewModel()
                                                  {
                                                      AnuSuchi10_Discussion_Subjects_Id = a.AnuSuchi10_Discussion_Subjects_Id,
                                                      Subjects = a.Subjects
                                                  }).ToList();
                return List;
            }
        }

        public List<Anusuchi10ViewModel> GetAnusuchi10ConclusionList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi10ViewModel> List = ent.AnuSuchi10_Discussion_Conclusions.Where(x => x.AnuSuchi10_Id == id).Select(x => new Anusuchi10ViewModel()
                {
                    AnuSuchi10_Discussion_Conclusions_Id = x.AnuSuchi10_Discussion_Conclusions_Id,
                    Conclusions = x.Conclusions
                }).ToList();
                return List;
            }
        }

        public List<Anusuchi10ViewModel> GetAnusuchi10MeetingList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from a in ent.AnuSuchi10_Meeting
                                                  where a.AnuSuchi10_Id == id
                                                  select new Anusuchi10ViewModel()
                                                  {
                                                      Baithak_Date = a.Baithak_Date,
                                                      Baithak_No = a.Baithak_No,
                                                      AnuSuchi10_Meeting_Id = a.AnuSuchi10_Meeting_Id
                                                  }).ToList();
                return List;
            }
        }

        public List<Anusuchi10ViewModel> getPlanningSamjhautaList(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from p in ent.Planning_Samjhauta
                                                  join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                  from pd in samiti.DefaultIfEmpty()
                                                  select new Anusuchi10ViewModel
                                                  {
                                                      Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                      Adakshya = pd.Adakshya,
                                                      Status = p.Status,
                                                      DeletedDate = p.DeletedDate,
                                                  }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi10ViewModel> GetPlanningSamjhautaMembersList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi10ViewModel> List = ent.UpaBhokta_Samiti_Members_Details.Where(x => x.Planning_Samjhauta_Id == id).Select(x => new Anusuchi10ViewModel()
                {
                    UpabhoktaSamitiMemberDetailId = x.UpaBhokta_Samiti_Members_Details_Id,
                    Members = x.MemberName
                }).ToList();
                return List;
            }
        }

        public int UpdateAnusuchi10(Anusuchi10ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi10.Where(x => x.AnuSuchi10_Id == model.AnuSuchi10_Id).SingleOrDefault();
                if (data != null)
                {
                    data.AnuSuchi10_Id = model.AnuSuchi10_Id;
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.Adakshya = model.Adakshya;
                    data.Adakshya_Gender = model.Adakshya_Gender;
                    data.Adakshya_MobileNo = model.Adakshya_MobileNo;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnusuchi10_Member = ent.AnuSuchi10_Members.Where(x => x.AnuSuchi10_Id == model.AnuSuchi10_Id).ToList();
                    foreach (var item in objAnusuchi10_Member)
                    {
                        ent.AnuSuchi10_Members.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi10_MembersViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_MembersViewModelList)
                        {
                            var Anusuchi10_MembersEntity = new AnuSuchi10_Members()
                            {
                                AnuSuchi10_Id = model.AnuSuchi10_Id,
                                Members = item.Members,
                                Members_Gender = item.Members_Gender,
                                Members_MobileNo = item.Members_MobileNo,
                                Members_Pad = item.Members_Pad
                            };
                            ent.AnuSuchi10_Members.Add(Anusuchi10_MembersEntity);
                        }
                    }
                    var MeetingEntity = ent.AnuSuchi10_Meeting.Where(x => x.AnuSuchi10_Id == model.AnuSuchi10_Id).ToList();
                    foreach (var itemsss in MeetingEntity)
                    {
                        ent.AnuSuchi10_Meeting.Remove(itemsss);
                        ent.SaveChanges();
                    }
                    var Anusuchi10_MeetingEntity = new AnuSuchi10_Meeting()
                    {
                        AnuSuchi10_Id = model.AnuSuchi10_Id,
                        Baithak_Date = model.Baithak_Date,
                        Baithak_No = model.Baithak_No,
                    };
                    ent.AnuSuchi10_Meeting.Add(Anusuchi10_MeetingEntity);


                    var objAnusuchi10_Subject = ent.AnuSuchi10_Discussion_Subjects.Where(x => x.AnuSuchi10_Id == model.AnuSuchi10_Id).ToList();
                    foreach (var item in objAnusuchi10_Subject)
                    {
                        ent.AnuSuchi10_Discussion_Subjects.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi10_Discussion_SubjectsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_Discussion_SubjectsViewModelList)
                        {
                            var Anusuchi10_SubjectEntity = new AnuSuchi10_Discussion_Subjects()
                            {
                                AnuSuchi10_Id = model.AnuSuchi10_Id,
                                Subjects = item.Subjects
                            };
                            ent.AnuSuchi10_Discussion_Subjects.Add(Anusuchi10_SubjectEntity);
                        }
                    }

                    var objAnusuchi10_Conclusions = ent.AnuSuchi10_Discussion_Conclusions.Where(x => x.AnuSuchi10_Id == model.AnuSuchi10_Id).ToList();
                    foreach (var item in objAnusuchi10_Conclusions)
                    {
                        ent.AnuSuchi10_Discussion_Conclusions.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi10_Discussion_ConclusionsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_Discussion_ConclusionsViewModelList)
                        {
                            var Anusuchi10_ConclusionsEntity = new AnuSuchi10_Discussion_Conclusions()
                            {
                                AnuSuchi10_Id = model.AnuSuchi10_Id,
                                Conclusions = item.Conclusions
                            };
                            ent.AnuSuchi10_Discussion_Conclusions.Add(Anusuchi10_ConclusionsEntity);
                        }
                    }
                }
                else
                {
                    int anuSuchi10Id = 0;

                    var AnuSuchi10Entity = new AnuSuchi10()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        AnuSuchi10_Id = model.AnuSuchi10_Id,
                        Adakshya = model.Adakshya,
                        Adakshya_Gender = model.Adakshya_Gender,
                        Adakshya_MobileNo = model.Adakshya_MobileNo,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.AnuSuchi10.Add(AnuSuchi10Entity);
                    anuSuchi10Id = AnuSuchi10Entity.AnuSuchi10_Id;

                    if (model.Anusuchi10_MembersViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_MembersViewModelList)
                        {
                            var Anusuchi10_MembersEntity = new AnuSuchi10_Members()
                            {
                                AnuSuchi10_Id = anuSuchi10Id,
                                Members = item.Members,
                                Members_Gender = item.Members_Gender,
                                Members_MobileNo = item.Members_MobileNo,
                                Members_Pad = item.Members_Pad
                            };
                            ent.AnuSuchi10_Members.Add(Anusuchi10_MembersEntity);
                        }
                    }

                    if (model.Anusuchi10_Discussion_SubjectsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_Discussion_SubjectsViewModelList)
                        {
                            var Anusuchi10_SubjectsEntity = new AnuSuchi10_Discussion_Subjects()
                            {
                                AnuSuchi10_Id = anuSuchi10Id,
                                Subjects = item.Subjects
                            };
                            ent.AnuSuchi10_Discussion_Subjects.Add(Anusuchi10_SubjectsEntity);
                        }
                    }

                    if (model.Anusuchi10_Discussion_ConclusionsViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi10_Discussion_ConclusionsViewModelList)
                        {
                            var Anusuchi10_ConclusionsEntity = new AnuSuchi10_Discussion_Conclusions()
                            {
                                AnuSuchi10_Id = anuSuchi10Id,
                                Conclusions = item.Conclusions
                            };
                            ent.AnuSuchi10_Discussion_Conclusions.Add(Anusuchi10_ConclusionsEntity);
                        }
                    }



                    var Anusuchi10_MeetingEntity = new AnuSuchi10_Meeting()
                    {
                        AnuSuchi10_Id = anuSuchi10Id,
                        Baithak_Date = model.Baithak_Date,
                        Baithak_No = model.Baithak_No,
                    };
                    ent.AnuSuchi10_Meeting.Add(Anusuchi10_MeetingEntity);

                }


                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }


        }
        public List<Anusuchi10ViewModel> getAnusuchi10Lists(int Planning_Samjhauta_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi10ViewModel model = new Anusuchi10ViewModel();
                List<Anusuchi10ViewModel> List = (from a in ent.AnuSuchi10
                                                  join ashu in ent.AnuSuchi10_Meeting on a.AnuSuchi10_Id equals ashu.AnuSuchi10_Id into ashusd
                                                  from ashu in ashusd.DefaultIfEmpty()
                                                  where a.Planning_Samjhauta_Id == Planning_Samjhauta_Id
                                                  select new Anusuchi10ViewModel()
                                                  {
                                                      AnuSuchi10_Id = a.AnuSuchi10_Id,
                                                      Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                      Adakshya = a.Adakshya,
                                                      Adakshya_Gender = a.Adakshya_Gender,
                                                      Adakshya_MobileNo = a.Adakshya_MobileNo,
                                                      Baithak_No=ashu.Baithak_No,
                                                      Baithak_Date=ashu.Baithak_Date,
                                                      Status = a.Status,
                                                      CreatedBy = a.CreatedBy,
                                                      CreatedDate = a.CreatedDate,
                                                      UpdatedBy = a.UpdatedBy,
                                                      UpdatedDate = a.UpdatedDate,
                                                      DeletedDate = a.DeletedDate,
                                                  }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public bool deleteAnugaman(int id)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            try
            {

                var data = ent.AnuSuchi10.Where(x => x.AnuSuchi10_Id == id).FirstOrDefault();
                if (data!=null)
                {
                    data.DeletedDate = DateTime.UtcNow;
                    int i = ent.SaveChanges();
                    if (i > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }

            }
            catch (Exception)
            {

                throw;
            }

            return false;
        }
    }
}