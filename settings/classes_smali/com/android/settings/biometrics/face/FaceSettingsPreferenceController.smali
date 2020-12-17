.class public abstract Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "FaceSettingsPreferenceController.java"


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getUserId()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->mUserId:I

    return p0
.end method

.method public setUserId(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->mUserId:I

    return-void
.end method
