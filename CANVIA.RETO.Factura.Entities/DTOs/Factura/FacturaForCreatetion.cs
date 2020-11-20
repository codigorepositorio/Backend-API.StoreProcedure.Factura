﻿using System;
using System.Collections.Generic;

namespace CANVIA.RETO.Factura.Entities.DTOs
{
    public class FacturaForCreatetion
    {

        public int codigoFactura { get; set; }
        public int codigoCliente { get; set; }
        public string numeroFactura { get; set; }
        public decimal TotalPago { get; set; }
        public ICollection<FacturaDetalleForCreatetion> FacturaDetalle { get; set; }
    }
}
