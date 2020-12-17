.class public Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;
.super Lcom/meizu/settings/display/MzDisplayModeSettings;
.source "FlymeDisplayModeUseLutFragment.java"


# instance fields
.field private mManager:Lmeizu/os/DeviceControlManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDisplayMode()I
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_display_lut_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getDisplayModeValues()I
    .registers 1

    const p0, 0x7f030072

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 24
    invoke-super {p0, p1}, Lcom/meizu/settings/display/MzDisplayModeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    const-string v0, "device_control"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmeizu/os/DeviceControlManager;

    iput-object p1, p0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;->mManager:Lmeizu/os/DeviceControlManager;

    .line 28
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method protected setDisplayMode(I)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;->mManager:Lmeizu/os/DeviceControlManager;

    invoke-virtual {v0, p1}, Lmeizu/os/DeviceControlManager;->setDisplayLutMode(I)I

    move-result v0

    if-ltz v0, :cond_f

    .line 41
    iget-object p0, p0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_display_lut_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    return-void
.end method
