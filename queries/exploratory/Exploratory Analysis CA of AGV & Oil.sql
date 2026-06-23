
--Exploratory Data Analysis (EDA) on the personal project CSV data--

select * from dbo.[Personal Project CSV]

--Data Inspection: Checking for missing values and data types--

select 
	column_name, 
	data_type, 
	is_nullable, 
	character_maximum_length
	from information_schema.columns
	where table_name = 'Personal Project CSV';

	--Data Cleaning: Handling missing values and outliers--

	select*
		from dbo.[Personal Project CSV]
		where Years is null or GDP_growth is null or Agriculture_Value is null or Oil_Rents is null or GDP_US is null or Inflation_Rate is null
		or Exchange_Rate is null or Agriculture_Growth_Rate is null or Agriculture_Performance is null or Oil_Growth_rate is null 
		or Oil_Performance is null or Hign_Inflation_Period is null or Excahange_Rate_Category is null or Economic_performance_label is null 
		or Agriculture_VS_oil is null or Dominant_Sector is null;

	-- Data types Structure and Conversion: Ensuring correct data types for analysis --

	select*
	from dbo.[Personal Project CSV]
	where 
		TRY_CAST(Years as smallint) is null or 
		TRY_CAST(GDP_growth as float) is null or 
		TRY_CAST(Agriculture_Value as float) is null or 
		TRY_CAST(Oil_Rents as float) is null or 
		TRY_CAST(GDP_US as float) is null or 
		TRY_CAST(Inflation_Rate as float) is null or 
		TRY_CAST(Exchange_Rate as float) is null or 
		TRY_CAST(Agriculture_Growth_Rate as float) is null or 
		Agriculture_Performance is null or 
		TRY_CAST(Oil_Growth_rate as float) is null or 
		Oil_Performance is null or 
		Hign_Inflation_Period is null or 
		Excahange_Rate_Category is null or 
		Economic_performance_label is null or 
		TRY_CAST(Agriculture_VS_oil as float) is null or 
		Dominant_Sector is null;

		--Initial Comparison: Analyzing the relationship between Agriculture and Oil sectors--

		select 
			Agriculture_Value, 
			Oil_Rents, 
			Agriculture_VS_oil, 
			Dominant_Sector
			from dbo.[Personal Project CSV]


			