.class public Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;
.source "FaceProfileStatusPreferenceController.java"


# static fields
.field public static final KEY_FACE_SETTINGS:Ljava/lang/String; = "face_settings_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "face_settings_profile"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getUserId()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    return p0
.end method

.method protected isUserSupported()Z
    .registers 3

    .line 32
    iget v0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_10

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
