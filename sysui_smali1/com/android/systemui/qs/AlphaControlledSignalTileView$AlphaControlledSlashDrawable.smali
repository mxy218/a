.class public Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;
.super Lcom/android/systemui/qs/SlashDrawable;
.source "AlphaControlledSignalTileView.java"


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected setDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    return-void
.end method

.method public setFinalTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
