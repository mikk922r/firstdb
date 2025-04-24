using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Blazor.DBService.Models;

public partial class brand
{
    [Key]
    public int id { get; set; }

    public string? name { get; set; }

    [InverseProperty("brand")]
    public virtual ICollection<product> products { get; set; } = new List<product>();
}
