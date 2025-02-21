@echo off
setlocal

:: Définir le répertoire de base (modifie si nécessaire)
set BASE_DIR=lib

:: Créer les dossiers
mkdir %BASE_DIR%\backend\schema\structs
mkdir %BASE_DIR%\backend\schema\util
mkdir %BASE_DIR%\components
mkdir %BASE_DIR%\flutter_flow\nav
mkdir %BASE_DIR%\pages\auth\forgot_password
mkdir %BASE_DIR%\pages\auth\login
mkdir %BASE_DIR%\pages\auth\register
mkdir %BASE_DIR%\pages\edit_password
mkdir %BASE_DIR%\pages\edit_profil
mkdir %BASE_DIR%\pages\home
mkdir %BASE_DIR%\pages\leader_board
mkdir %BASE_DIR%\pages\learning_path
mkdir %BASE_DIR%\pages\onboarding
mkdir %BASE_DIR%\pages\profil
mkdir %BASE_DIR%\pages\questions_loading
mkdir %BASE_DIR%\pages\questions_room
mkdir %BASE_DIR%\pages\waitting_room

echo Structure de dossiers créée avec succès !
pause
