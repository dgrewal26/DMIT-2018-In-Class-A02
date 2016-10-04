using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eRestaurant.Entities.POCO;

namespace eRestaurant.Entities.DTO
{
    public class CategoryWithItems
    {
        public string Description { get; set; }
        public List<MenuItem>MenuItems { get; set; }
    }
}
