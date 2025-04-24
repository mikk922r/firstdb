using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Blazor.DBService.Models;

public partial class category
{
    [Key]
    public int id { get; set; }

    public string? name { get; set; }

    [InverseProperty("category")]
    public virtual ICollection<product> products { get; set; } = new List<product>();
}
