#!/bin/bash
# ─────────────────────────────────────────────────────────────────────────────
# Bank Churn Dashboard — One-shot installer
# Usage: bash install.sh
# ─────────────────────────────────────────────────────────────────────────────

echo "======================================================"
echo " Installing Bank Churn Dashboard dependencies..."
echo "======================================================"

pip install streamlit==1.35.0 \
            pandas \
            numpy \
            scikit-learn \
            matplotlib \
            seaborn \
            joblib \
            scipy

echo ""
echo "======================================================"
echo " Installation complete!"
echo " Run the dashboard with:"
echo "   streamlit run app.py"
echo "======================================================"
