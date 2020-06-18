using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi10ViewModel
    {
        //For Anusuchi10
        public int AnuSuchi10_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Adakshya { get; set; }
        public string Adakshya_Gender { get; set; }
        public string Adakshya_MobileNo { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi10ViewModel> Anusuchi10ViewModelList { get; set; }


        //For Anusuchi10_Members
        public int AnuSuchi10_Members_Id { get; set; }
        public string Members { get; set; }
        public string Members_Gender { get; set; }
        public string Members_Pad { get; set; }
        public string Members_MobileNo { get; set; }
        public int UpabhoktaSamitiMemberDetailId { get; set; }
        public List<Anusuchi10ViewModel> Anusuchi10_MembersViewModelList { get; set; }
        public List<Anusuchi10ViewModel> PlanningSamjhautaMembersViewModelList { get; set; }


        //For Anusuchi10_Subjects
        public int AnuSuchi10_Discussion_Subjects_Id { get; set; }
        public string Subjects { get; set; }
        public List<Anusuchi10ViewModel> Anusuchi10_Discussion_SubjectsViewModelList { get; set; }


        //For Anusuchi10_Conclusions
        public int AnuSuchi10_Discussion_Conclusions_Id { get; set; }
        public string Conclusions { get; set; }
        public List<Anusuchi10ViewModel> Anusuchi10_Discussion_ConclusionsViewModelList { get; set; }


        //For Anusuchi10_Meetings
        public int AnuSuchi10_Meeting_Id { get; set; }
        public string Baithak_No { get; set; }
        public string Baithak_Date { get; set; }
        public List<Anusuchi10ViewModel> Anusuchi10_MeetingViewModelList { get; set; }
        

    }
}