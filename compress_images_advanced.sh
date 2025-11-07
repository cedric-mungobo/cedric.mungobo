#!/bin/bash

# Script avancé de compression d'images pour le web
# Utilise des outils spécialisés pour une meilleure compression

IMAGE_DIR="public/images"
BACKUP_DIR="public/images_backup_original"

echo "🚀 Compression avancée des images pour le web..."

# Créer une sauvegarde originale si elle n'existe pas
if [ ! -d "$BACKUP_DIR" ]; then
    echo "📁 Création de la sauvegarde originale..."
    mkdir -p "$BACKUP_DIR"
    cp -r "$IMAGE_DIR"/* "$BACKUP_DIR"/
fi

echo ""
echo "🗜️  Compression PNG avec optipng et pngquant..."

# Compression PNG avancée
for file in "$IMAGE_DIR"/*.png; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        # Obtenir la taille avant compression
        original_size=$(stat -f%z "$file")
        original_size_h=$(du -h "$file" | cut -f1)

        echo "   • Compression avancée de $filename ($original_size_h)..."

        # Utiliser pngquant pour la compression avec perte (réduction des couleurs)
        pngquant --quality=65-85 --speed=1 --force --output "$file" "$file"

        # Utiliser optipng pour la compression sans perte
        optipng -o7 -strip all "$file"

        # Obtenir la nouvelle taille
        new_size=$(stat -f%z "$file")
        new_size_h=$(du -h "$file" | cut -f1)

        # Calculer le pourcentage de réduction
        reduction=$(( (original_size - new_size) * 100 / original_size ))

        echo "     ✅ $filename: $original_size_h → $new_size_h (-${reduction}%)"
    fi
done

echo ""
echo "🗜️  Compression JPEG avec jpegoptim..."

# Compression JPEG avancée
for file in "$IMAGE_DIR"/*.jpg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        # Skip profil.jpg qui est déjà bien optimisé
        if [[ "$filename" == "profil.jpg" ]]; then
            echo "   ⏭️  $filename déjà optimisée, ignorée"
            continue
        fi

        # Obtenir la taille avant compression
        original_size=$(stat -f%z "$file")
        original_size_h=$(du -h "$file" | cut -f1)

        echo "   • Compression de $filename ($original_size_h)..."

        # Installer jpegoptim si nécessaire
        if ! command -v jpegoptim &> /dev/null; then
            brew install jpegoptim
        fi

        # Utiliser jpegoptim pour la compression
        jpegoptim --size=30% --strip-all "$file"

        # Obtenir la nouvelle taille
        new_size=$(stat -f%z "$file")
        new_size_h=$(du -h "$file" | cut -f1)

        # Calculer le pourcentage de réduction
        reduction=$(( (original_size - new_size) * 100 / original_size ))

        echo "     ✅ $filename: $original_size_h → $new_size_h (-${reduction}%)"
    fi
done

# Optimiser aussi les fichiers .jpeg
for file in "$IMAGE_DIR"/*.jpeg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        # Obtenir la taille avant compression
        original_size=$(stat -f%z "$file")
        original_size_h=$(du -h "$file" | cut -f1)

        echo "   • Compression de $filename ($original_size_h)..."

        # Utiliser jpegoptim
        jpegoptim --size=30% --strip-all "$file"

        # Obtenir la nouvelle taille
        new_size=$(stat -f%z "$file")
        new_size_h=$(du -h "$file" | cut -f1)

        # Calculer le pourcentage de réduction
        reduction=$(( (original_size - new_size) * 100 / original_size ))

        echo "     ✅ $filename: $original_size_h → $new_size_h (-${reduction}%)"
    fi
done

echo ""
echo "📊 RÉSULTATS FINAUX:"
echo "==================="

# Calculer les tailles totales
original_total=$(du -sh "$BACKUP_DIR" | cut -f1)
new_total=$(du -sh "$IMAGE_DIR" | cut -f1)

echo "📦 Taille totale originale: $original_total"
echo "📦 Taille totale compressée: $new_total"

# Calculer l'économie de espace
original_bytes=$(du -sb "$BACKUP_DIR" | cut -f1)
new_bytes=$(du -sb "$IMAGE_DIR" | cut -f1)
saved_bytes=$((original_bytes - new_bytes))
saved_mb=$((saved_bytes / 1024 / 1024))

echo "💰 Espace économisé: ${saved_mb}MB ($(echo "scale=1; $saved_bytes * 100 / $original_bytes" | bc)% de réduction)"

echo ""
echo "📋 Détail des fichiers optimisés:"
echo "--------------------------------"
for file in "$IMAGE_DIR"/*.*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        size=$(du -h "$file" | cut -f1)
        echo "  • $filename: $size"
    fi
done

echo ""
echo "🎉 Compression avancée terminée !"
echo "💾 Vos images originales sont sauvegardées dans: $BACKUP_DIR"
echo "⚡ Les images sont maintenant optimisées pour un chargement web rapide !"