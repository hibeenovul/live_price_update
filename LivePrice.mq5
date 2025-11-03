//+------------------------------------------------------------------+
//|                                                    LivePrice.mq5 |
//|                                         Ibrahim Adeyemi Ogunleke |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Ibrahim Adeyemi Ogunleke"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
int seconds_to_run = 60;

void OnStart()
  {
   Print("Starting live price tracking....");
   
   //Loop for a number of seconds
   for(int i=0; i < seconds_to_run; i++)
     {
      // Get the current Bid and Ask prices of the current chart symbol
      double bid = SymbolInfoDouble(_Symbol, SYMBOL_BID);
      double ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
      
      //Print them to the Expert tab
      PrintFormat("Tick %d: %s | Bid = %.5f Ask = %.5f",
                  
                  i+1, _Symbol, bid, ask);
      //Pause for 1 second before repeating            
      Sleep(1000);
     }
   Print("Done tracking price");  
  }
//+------------------------------------------------------------------+
