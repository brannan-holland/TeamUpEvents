table.insert(props, {
  Name = "Debug Print",
  Type = "enum",
  Choices = {"None", "Tx/Rx", "Tx", "Rx", "Function Calls", "All"},
  Value = "All"
})

table.insert(props,
{  
  Name = "Events",
  Type = "integer",
  Min = 1, 
  Max = 10,
  Value = 2, 
})

table.insert(props,
{  
  Name = "Triggers",
  Type = "integer",
  Min = 1, 
  Max = 20,
  Value = 10, 
})

table.insert(props,
{  
  Name = "hourlyTriggers",
  Type = "integer",
  Min = 1, 
  Max = 20,
  Value = 2, 
})