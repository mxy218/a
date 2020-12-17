.class public Lcom/android/systemui/volume/HideVolumeService;
.super Landroid/app/IntentService;
.source "HideVolumeService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "HideVolumeService"

    .line 14
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 19
    sget-object p0, Lcom/android/systemui/volume/VolumeUI;->volumeUI:Lcom/android/systemui/volume/VolumeUI;

    if-eqz p0, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeUI;->dismiss()V

    :cond_7
    return-void
.end method
