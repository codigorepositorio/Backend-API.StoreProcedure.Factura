﻿using CANVIA.RETO.Item.DTOs;
using System;
using System.Collections.Generic;

namespace CANVIA.RETO.Factura.Entities.DTOs
{
    public class FacturaCabeceraDto
    {
        public int codigoFactura { get; set; }
        public int codigoCliente { get; set; }
        public string tipo { get; set; }
        public string NumeroFactura { get; set; }
        public decimal ImporteTotal { get; set; }
        public DateTime Fecha { get; set; }  
        
        public IEnumerable<ItemDetalleConsultaDto> itemDetalles  { get; set; }

}

}
