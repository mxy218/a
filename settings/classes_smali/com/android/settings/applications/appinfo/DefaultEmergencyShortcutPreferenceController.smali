.class public Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultEmergencyShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_emergency_app"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "default_emergency_app"

    const-string v1, "android.app.role.EMERGENCY"

    .line 26
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
