# Github--Actions
## Del 1: Github-repo med Azure Environment-variabler
-Lag et nytt GitHub-repositorium med navn som "GITHUB-ACTIONS"
Legg til en .env-fil  for å lagre Azure Environment-variabler. Dette kan inkludere ting som ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID, ARM_TENANT_ID.
 Legge til .env i .gitignore for å unngå å laste opp sensitiv informasjon til GitHub.

## Del 2: Konfigurere Terraform Backend for tfstate-fil
Opprett en Terraform-konfigurasjonsfil  "backend.tf" og konfigurer backend for å lagre tfstate-filen. 

## Del 3: Opprette en Terraform-konfigurasjon for testressurs


## Del 4: GitHub Actions for CI/CD 
Opprett en mappe .github/workflows/ i roten av ditt GitHub-repositorium.

Opprett en fil (terraform.yml) og konfigurer GitHub Actions-workflowen.