import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv("dataset/ecommerce_sales.csv")

# Display basic information
print("Dataset Preview:")
print(df.head())

print("\nDataset Information:")
print(df.info())

# Total Sales
total_sales = df["Sales"].sum()
print("\nTotal Sales:", total_sales)

# Total Profit
total_profit = df["Profit"].sum()
print("Total Profit:", total_profit)

# Total Orders
total_orders = df["Order_ID"].count()
print("Total Orders:", total_orders)

# Category-wise Sales
category_sales = df.groupby("Category")["Sales"].sum().sort_values(ascending=False)
print("\nCategory-wise Sales:")
print(category_sales)

# Region-wise Sales
region_sales = df.groupby("Region")["Sales"].sum().sort_values(ascending=False)
print("\nRegion-wise Sales:")
print(region_sales)

# Product-wise Sales
product_sales = df.groupby("Product")["Sales"].sum().sort_values(ascending=False)
print("\nProduct-wise Sales:")
print(product_sales)

# Monthly Sales
df["Order_Date"] = pd.to_datetime(df["Order_Date"])
monthly_sales = df.groupby(df["Order_Date"].dt.month)["Sales"].sum()

# Sales by Category Chart
category_sales.plot(kind="bar", title="Sales by Category")
plt.xlabel("Category")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()

# Monthly Sales Chart
monthly_sales.plot(kind="line", marker="o", title="Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()
