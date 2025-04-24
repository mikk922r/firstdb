using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Blazor.DBService.Models;

public partial class user
{
    [Key]
    public int id { get; set; }

    public string? name { get; set; }

    public string? email { get; set; }

    public int? phone_code { get; set; }

    public string? phone_number { get; set; }

    [InverseProperty("user")]
    public virtual ICollection<product> products { get; set; } = new List<product>();
}
