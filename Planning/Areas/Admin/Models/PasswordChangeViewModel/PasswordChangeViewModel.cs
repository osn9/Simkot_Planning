using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PasswordChangeViewModel
{
    public class PasswordChangeViewModel
    {
        [Display(Name = "इमेल")]
        public string Email { get; set; }
        [Required(ErrorMessage = "कृपया तपाईंको हालको पासवर्ड प्रविष्ट गर्नुहोस्।")]
        [Display(Name = "हालको पासवर्ड")]
        public string currentPassword { get; set; }
        [Required(ErrorMessage = "कृपया नयाँ पासवर्ड प्रविष्ट गर्नुहोस्।")]
        [StringLength(50, ErrorMessage = "Must be between 5 and 50 characters", MinimumLength = 5)]
        [Display(Name = "नयाँ पासवर्ड")]
        public string newPassword { get; set; }
        [Required(ErrorMessage = "कृपया नयाँ पासवर्ड पुन: प्रविष्ट गर्नुहोस्।")]
        [System.ComponentModel.DataAnnotations.CompareAttribute("newPassword", ErrorMessage = "पासवर्ड मेल खाएन।")]
        [Display(Name = "नयाँ पासवर्ड पुन:")]
        public string confirmPassword { get; set; }
        [Required]
        [Display(Name = "User ID")]
        public string UserId { get; set; }
    }

    public class NewUserRegisterViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "इमेल")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "पासवर्ड कम से कम ६ क्यारेक्टर हुनु पर्छ ।")]
        [DataType(DataType.Password)]
        [Display(Name = "पासवर्ड")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "पासवर्ड पुन:")]
        [Compare("Password", ErrorMessage = "पासवर्ड मेल खाएन।")]
        public string ConfirmPassword { get; set; }
    }


}