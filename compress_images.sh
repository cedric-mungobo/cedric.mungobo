#!/bin/bash

# Script de compression d'images pour le web
# Auteur: Claude Code
# Date: $(date)

IMAGE_DIR="public/images"
BACKUP_DIR="public/images_backup"

echo "🖼️  Compression des images pour le web..."

# Créer un dossier de sauvegarde
if [ ! -d "$BACKUP_DIR" ]; then
    echo "📁 Création du dossier de sauvegarde..."
    mkdir -p "$BACKUP_DIR"
fi

# Sauvegarder les images originales
echo "💾 Sauvegarde des images originales..."
cp -r "$IMAGE_DIR"/* "$BACKUP_DIR"/ 2>/dev/null || true

# Compresser les images PNG (qualité 85-90% pour le web)
echo "🗜️  Compression des images PNG..."
for file in "$IMAGE_DIR"/*.png; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "   • Compression de $filename..."

        # Obtenir la taille originale
        original_size=$(du -h "$file" | cut -f1)

        # Compresser avec qualité 85% et optimisation PNG (compression lossless)
        magick "$file" -quality 85 -strip "${file%.*}_compressed.png"

        # Remplacer l'original par le compressé
        mv "${file%.*}_compressed.png" "$file"

        # Obtenir la nouvelle taille
        new_size=$(du -h "$file" | cut -f1)

        echo "     ✅ $filename: $original_size → $new_size"
    fi
done

# Compresser les images JPEG (qualité 85% pour le web)
echo "🗜️  Compression des images JPEG..."
for file in "$IMAGE_DIR"/*.jpg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        # Skip si déjà compressé (contient "profil.jpg" qui est déjà optimisé)
        if [[ "$filename" == "profil.jpg" ]] || [[ "$filename" == *compressed* ]]; then
            echo "   ⏭️  $filename déjà optimisée, ignorée"
            continue
        fi

        echo "   • Compression de $filename..."

        # Obtenir la taille originale
        original_size=$(du -h "$file" | cut -f1)

        # Compresser avec qualité 85%
        magick "$file" -quality 85 -strip "${file%.*}_compressed.jpg"

        # Remplacer l'original par le compressé
        mv "${file%.*}_compressed.jpg" "$file"

        # Obtenir la nouvelle taille
        new_size=$(du -h "$file" | cut -f1)

        echo "     ✅ $filename: $original_size → $new_size"
    fi
done

# Optimiser également les fichiers .jpeg
for file in "$IMAGE_DIR"/*.jpeg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "   • Compression de $filename..."

        # Obtenir la taille originale
        original_size=$(du -h "$file" | cut -f1)

        # Compresser avec qualité 85%
        magick "$file" -quality 85 -strip "${file%.*}_compressed.jpeg"

        # Remplacer l'original par le compressé
        mv "${file%.*}_compressed.jpeg" "$file"

        # Obtenir la nouvelle taille
        new_size=$(du -h "$file" | cut -f1)

        echo "     ✅ $filename: $original_size → $new_size"
    fi
done

echo ""
echo "📊 Résumé de la compression:"
echo "========================="

# Calculer la taille totale avant et après
original_total=$(du -sh "$BACKUP_DIR" | cut -f1)
new_total=$(du -sh "$IMAGE_DIR" | cut -f1)

echo "Taille originale: $original_total"
echo "Taille compressée: $new_total"

# Afficher le détail des fichiers
echo ""
echo "Détail des fichiers compressés:"
for file in "$IMAGE_DIR"/*.*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        size=$(du -h "$file" | cut -f1)
        echo "  • $filename: $size"
    fi
done

echo ""
echo "✨ Compression terminée ! Les images sont maintenant optimisées pour le web."
echo "💡 Les originaux sont sauvegardés dans: $BACKUP_DIR"