# Mobile Sales SQL Analysis — Business Insights

## Dataset Summary

The analysis uses 50,000 sales transactions covering mobile phones and laptops across five regions.

- Total transactions: 50,000
- Total quantity sold: 275,689 units
- Total gross sales value: ₦28.28 billion
- Average product price: ₦102,641.41
- Average transaction sales value: ₦565,581.62
- Price range: ₦5,008–₦199,999

## Product Performance

The dataset contains 25,017 laptop transactions and 24,983 mobile-phone transactions.

Laptops generated approximately ₦14.19 billion in gross sales value, compared with approximately ₦14.09 billion for mobile phones. The transaction counts are almost evenly split, while laptops contribute slightly more sales value.

## Regional Performance

The West region generated the highest gross sales value at approximately ₦5.86 billion.

The remaining regions were relatively close:

- South: approximately ₦5.62 billion
- North: approximately ₦5.61 billion
- Central: approximately ₦5.60 billion
- East: approximately ₦5.59 billion

The small spread between regions indicates that sales value is broadly distributed rather than dominated by a single region.

## Brand Performance

Google recorded the highest gross sales value among the brands, at approximately ₦1.51 billion.

Nokia followed at approximately ₦1.47 billion, while Apple generated approximately ₦1.47 billion.

Brand transaction counts were also relatively balanced, so differences in sales value should be examined alongside price and quantity rather than interpreted from transaction counts alone.

## Price Segmentation

The final analysis uses three price categories:

- Low Price: below ₦75,000
- Medium Price: ₦75,000–₦150,000
- High Price: above ₦150,000

The dataset contains:

- 17,997 low-price transactions
- 19,142 medium-price transactions
- 12,861 high-price transactions

## Dispatch Performance

The average time from inward receipt to dispatch is approximately 30.6 days.

A total of 44,247 transactions took more than seven days to dispatch, representing approximately 88.5% of all transactions.

This is a major operational metric for further investigation. The dataset alone does not establish why these delays occur, so additional analysis would be needed to identify the underlying causes.

## Business Recommendations

1. Investigate the dispatch workflow to identify the operational stages contributing to long fulfillment times.
2. Compare dispatch duration across regions, brands, and products to identify whether delays are concentrated in specific segments.
3. Examine whether high-value transactions experience different dispatch patterns from lower-value transactions.
4. Analyze price-category sales and quantity patterns to understand which price segments contribute most to revenue.
5. Extend the customer analysis with repeat-purchase history, customer lifetime value, or retention data if those fields become available.

## Analytical Note

The findings above are descriptive results from the current dataset. They identify patterns and areas for investigation; they do not by themselves establish causation.

