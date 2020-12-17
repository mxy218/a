.class public interface abstract Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
.super Ljava/lang/Object;
.source "FlymeIFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
    }
.end annotation


# virtual methods
.method public abstract deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V
.end method

.method public abstract endEnroll()V
.end method

.method public abstract endVerify()V
.end method

.method public abstract getEnrollChallenge()J
.end method

.method public abstract getFingerPrintCount()I
.end method

.method public abstract getFingerPrintName(I)Ljava/lang/String;
.end method

.method public abstract getIds()[I
.end method

.method public abstract getMaxFingerprintSupport()I
.end method

.method public abstract getTipsEnrollFingerSideCount()I
.end method

.method public abstract isAppUnlockWithFingerprintEnabled()Z
.end method

.method public abstract isDocumentUnlockWithFingerprintEnabled()Z
.end method

.method public abstract isScreenUnlockWithFingerprintEnabled()Z
.end method

.method public abstract isVerifying()Z
.end method

.method public abstract modifyFingerPrintName(ILjava/lang/String;)Z
.end method

.method public abstract release()V
.end method

.method public abstract releaseFingerprintLockout([B)V
.end method

.method public abstract setAppUnlockWithFingerprintEnable(Z)V
.end method

.method public abstract setDocumentUnlockWithFingerprintEnable(Z)V
.end method

.method public abstract setFODIconVisiable(Z)V
.end method

.method public abstract setScreenUnlockWithFingerprintEnable(Z)V
.end method

.method public abstract startEnroll(Landroid/os/Handler;[B)V
.end method

.method public abstract startVerify(Landroid/os/Handler;)V
.end method
