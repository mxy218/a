.class public Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerScreenPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VrListenerScreenPreferenceController.java"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerScreenPreferenceController;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerScreenPreferenceController;->mActivityManager:Landroid/app/ActivityManager;

    .line 37
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x3

    :goto_1a
    return p0
.end method
