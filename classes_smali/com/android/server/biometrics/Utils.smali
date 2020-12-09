.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 26
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    .line 27
    return v0

    .line 30
    :cond_6
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_f

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_f

    .line 31
    return v0

    .line 34
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "biometric_debug_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1c

    .line 37
    return v0

    .line 39
    :cond_1c
    const/4 p0, 0x1

    return p0
.end method
