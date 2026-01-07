#!/bin/bash
#
# Trigger SDK generation workflows across all language repositories
#
# Prerequisites:
#   - GitHub CLI (gh) installed and authenticated
#   - Access to all SDK repositories
#
# Usage:
#   ./trigger-all-sdks.sh                    # Trigger generation for all SDKs
#   ./trigger-all-sdks.sh --version 0.3.0    # Set specific version
#   ./trigger-all-sdks.sh --force            # Force regeneration
#   ./trigger-all-sdks.sh --publish          # Trigger publish workflows instead

set -e

# Configuration - Add your SDK repositories here
GITHUB_ORG="emailr-dev"
SDK_REPOS=(
    "emailr-typescript"
    # "emailr-python"
    # "emailr-go"
    # "emailr-java"
    # "emailr-csharp"
)

# Default values
WORKFLOW="sdk_generation.yaml"
FORCE="false"
VERSION=""

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --version)
            VERSION="$2"
            shift 2
            ;;
        --force)
            FORCE="true"
            shift
            ;;
        --publish)
            WORKFLOW="sdk_publish.yaml"
            shift
            ;;
        --help)
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --version VERSION  Set specific SDK version (e.g., 0.3.0)"
            echo "  --force            Force regeneration even if no changes"
            echo "  --publish          Trigger publish workflow instead of generation"
            echo "  --help             Show this help message"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI (gh) is not installed."
    echo "Install it from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "Error: Not authenticated with GitHub CLI."
    echo "Run: gh auth login"
    exit 1
fi

echo "Triggering $WORKFLOW across SDK repositories..."
echo ""

# Build inputs JSON
if [[ "$WORKFLOW" == "sdk_generation.yaml" ]]; then
    INPUTS=""
    if [[ "$FORCE" == "true" ]]; then
        INPUTS="$INPUTS -f force=true"
    fi
    if [[ -n "$VERSION" ]]; then
        INPUTS="$INPUTS -f set_version=$VERSION"
    fi
fi

# Trigger workflows
for repo in "${SDK_REPOS[@]}"; do
    echo "Triggering $WORKFLOW in $GITHUB_ORG/$repo..."

    if [[ "$WORKFLOW" == "sdk_generation.yaml" ]]; then
        # shellcheck disable=SC2086
        if gh workflow run "$WORKFLOW" -R "$GITHUB_ORG/$repo" $INPUTS 2>/dev/null; then
            echo "  ✓ Triggered successfully"
        else
            echo "  ✗ Failed to trigger (repo may not exist or workflow not found)"
        fi
    else
        # Publish workflow has no inputs
        if gh workflow run "$WORKFLOW" -R "$GITHUB_ORG/$repo" 2>/dev/null; then
            echo "  ✓ Triggered successfully"
        else
            echo "  ✗ Failed to trigger (repo may not exist or workflow not found)"
        fi
    fi
done

echo ""
echo "Done! Check workflow status:"
for repo in "${SDK_REPOS[@]}"; do
    echo "  https://github.com/$GITHUB_ORG/$repo/actions"
done
