Traffic Accident Visual Encoding Analysis

Student Name: Vikasini M
Register Number: 23BAD127

**Aim**

To analyze traffic accident data using perceptually effective visual encoding techniques and identify high-risk locations and severity patterns.

**Dataset Description**

The dataset (4.traffic_accidents.csv) contains traffic accident records with details such as accident location, severity level, accident type, vehicles involved, and casualties. Each row represents one accident occurrence.

**Methodology**

The accident data was first imported and preprocessed using R. The Accident_Type and Severity variables were converted into factors to enable categorical encoding. Since accident frequency was not directly available in the dataset, it was computed by grouping the data based on Location, Severity, and Accident Type, and counting the number of occurrences for each group.

**Visual Encoding Strategy**

Color represents accident severity, using a sequential red color palette to intuitively indicate increasing severity.

Size represents accident frequency, where larger points indicate higher accident counts.

Shape distinguishes different accident types for categorical comparison.

X-axis shows accident locations.

Y-axis represents the number of accidents.

This combination allows simultaneous analysis of multiple variables without overloading the viewer.

**Visualization Outcome**

The scatter plot clearly highlights high-risk accident locations, severe accident patterns, and frequently occurring accident types. Locations with larger and darker points indicate areas requiring immediate attention from traffic authorities.

**Conclusion**

Effective visual encoding improves interpretability and supports data-driven decision making. By mapping severity, frequency, and accident type to perceptually meaningful visual variables, the visualization enables quick identification of risk zones and accident trends.
