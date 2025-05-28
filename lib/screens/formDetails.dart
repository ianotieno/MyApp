import 'package:flutter/material.dart';
import 'package:pizza_app/models/product_model.dart';

class DetailsForm extends StatelessWidget {
  final List<ProductDetails> productDetailsList;

  const DetailsForm({super.key, required this.productDetailsList});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 24),
          color: theme.colorScheme.primary,
        ),
        backgroundColor: theme.colorScheme.surface,
        elevation: 3,
        shadowColor: theme.colorScheme.shadow.withOpacity(0.5),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        itemCount: productDetailsList.length,
        itemBuilder: (context, index) => _buildProductCard(context, productDetailsList[index]),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, ProductDetails productDetails) {
    final theme = Theme.of(context);

    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Product Name Section
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.15),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: theme.colorScheme.primary,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productDetails.productName ?? "No Name Provided",
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        productDetails.productdetails ?? "No Description Provided",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(thickness: 1, height: 1),
            const SizedBox(height: 24),
            // Product Size Section
            _buildDetailRow(
              context,
              icon: Icons.check_circle_outline,
              label: "Size",
              value: productDetails.productSize ?? "Not Selected",
            ),
            const SizedBox(height: 16),
            // Top Product Section
            _buildDetailRow(
              context,
              icon: Icons.star_border,
              label: "Top Product",
              value: productDetails.isTopProduct ?? false ? "Yes" : "No",
            ),
            const SizedBox(height: 16),
            // Product Type Section
            _buildDetailRow(
              context,
              icon: Icons.category_outlined,
              label: "Type",
              value: productDetails.productType?.name ?? "Not Selected",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
          child: Icon(
            icon,
            color: theme.colorScheme.primary,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }
}