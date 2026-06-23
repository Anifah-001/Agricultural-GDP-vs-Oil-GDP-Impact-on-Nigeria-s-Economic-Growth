

--Ad-hoc queries for personal project CSV table--

--Sector Analysis: Agriculture--

select Years, Agriculture_Value from dbo.[Personal Project CSV] where [Dominant_Sector] = 'Agriculture';

--Sector Analysis: Oil--

Select Years, Oil_Rents from dbo.[Personal Project CSV] where [Dominant_Sector] = 'Oil';

-- Highest and lowest performing sectors based on GDP growth--

select Years, GDP_growth, Dominant_Sector from dbo.[Personal Project CSV] order by GDP_growth desc;

-- Highest and lowest performing years based on Agriculture Growth Rate--

select Years, Agriculture_Growth_Rate from dbo.[Personal Project CSV] order by Agriculture_Growth_Rate desc;

--Highest and lowest performing years based on Oil Growth Rate--

select Years, Oil_Growth_rate from dbo.[Personal Project CSV] order by Oil_Growth_rate desc;

--Inflation Analysis--

--High inflation period analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Inflation_Rate, Hign_Inflation_Period from dbo.[Personal Project CSV]
where Hign_Inflation_Period = 'High Inflation'
order by Inflation_Rate desc;

--Normal Inflation Analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Inflation_Rate, Hign_Inflation_Period from dbo.[Personal Project CSV]
where Hign_Inflation_Period = 'Normal'
order by Inflation_Rate Asc;

--Exchange Rate Analysis--

--High Exchange Rate Analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Exchange_Rate, Excahange_Rate_Category from dbo.[Personal Project CSV]
where Excahange_Rate_Category = 'High rate'
order by Exchange_Rate desc;

--Low Exchange Rate Analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Exchange_Rate, Excahange_Rate_Category from dbo.[Personal Project CSV]
where Excahange_Rate_Category = 'Low rate'
order by Exchange_Rate asc;


--Sudden drop in GDP growth rate analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Inflation_Rate, Exchange_Rate from dbo.[Personal Project CSV]
where GDP_growth < 0


--Sudden drop in Agriculture and Oil growth rate analysis--

select Years,GDP_growth, Agriculture_Growth_Rate, Oil_Growth_rate, Inflation_Rate, Exchange_Rate from dbo.[Personal Project CSV]
where Agriculture_Growth_Rate < 0 and Oil_Growth_rate < 0

