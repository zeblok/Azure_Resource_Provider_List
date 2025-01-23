#!/bin/bash

providers=(
    "microsoft.support"
    "Microsoft.SerialConsole"
    "Microsoft.Resources"
    "Microsoft.ResourceNotifications"
    "Microsoft.ResourceGraph"
    "Microsoft.Portal"
    "Microsoft.MarketplaceOrdering"
    "Microsoft.Features"
    "Microsoft.CostManagement"
    "Microsoft.Consumption"
    "Microsoft.Commerce"
    "Microsoft.ClassicSubscription"
    "Microsoft.Billing"
    "Microsoft.Authorization"
    "Microsoft.ADHybridHealthService"
    "Microsoft.Network"
    "Microsoft.Compute"
    "Microsoft.OperationalInsights"
    "Microsoft.ManagedIdentity"
    "Microsoft.Blueprint"
    "Microsoft.Storage"
    "Microsoft.DataProtection"
    "Microsoft.DevTestLab"
    "Microsoft.ContainerService"
    "Microsoft.Advisor"
    "Microsoft.AppConfiguration"
    "Microsoft.AVS"
    "Microsoft.HealthcareApis"
    "Microsoft.DataProtection"
)

for provider in "${providers[@]}"
do
    echo "Registering $provider..."
    az provider register --namespace $provider
    if [ $? -eq 0 ]; then
        echo "$provider registered successfully."
    else
        echo "Failed to register $provider."
    fi
done
