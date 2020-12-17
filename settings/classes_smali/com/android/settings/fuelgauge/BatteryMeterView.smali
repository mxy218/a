.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field mAccentColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mErrorColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mForegroundColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f06016d

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 55
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010435

    .line 56
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    .line 58
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x7f06002d

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    .line 60
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010030

    .line 61
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mForegroundColorFilter:Landroid/graphics/ColorFilter;

    .line 63
    new-instance p3, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    .line 64
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateColorFilter()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getBatteryLevel()I

    move-result v1

    if-eqz v0, :cond_16

    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mForegroundColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2d

    .line 100
    :cond_16
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getCriticalLevel()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2d

    .line 103
    :cond_26
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getCharging()Z
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getCharging()Z

    move-result p0

    return p0
.end method

.method public getPowerSave()Z
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result p0

    return p0
.end method

.method public setBatteryLevel(I)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->updateColorFilter()V

    return-void
.end method

.method public setCharging(Z)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public setPowerSave(Z)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setPowerSaveEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->updateColorFilter()V

    return-void
.end method
