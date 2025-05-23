import pandas as pd

# Specify the file path
file_path = 'eq_results.csv'

# Read the file into a DataFrame
df = pd.read_csv(file_path)

# Group the DataFrame by basis and technic
grouped_df = df.groupby(['basis', 'technic'])


# Calculate the sum of runtime for each group
sum_runtime = grouped_df['time'].sum()

# Print the sum of runtime for each group
print("sum_runtime:")
print(sum_runtime)

# Count the number of lines where result is not "TIMEOUT" for each group
count_lines = grouped_df['result'].apply(lambda x: (x != "TIMEOUT").sum())
# Print the count of lines for each group
print("count finished files:")
print(count_lines)

# Calculate the average runtime for entries with result not "TIMEOUT"
average_runtime = grouped_df['result'].apply(lambda x: (x != "TIMEOUT").mean())
# Print the average runtime for each group
print("average_runtime:")
print(average_runtime)

# Group the DataFrame by basis, technic, file1, and file2
grouped_df = df.groupby(['basis', 'technic', 'file1', 'file2'])
# Check if there is only one entry for each basis and technic combination
assert(grouped_df.size().eq(1).all())