.class public final Lcom/flyme/systemui/statusbar/utils/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# direct methods
.method public static getSlotCount()I
    .registers 1

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static isRadioOn(J)Z
    .registers 4

    const-string v0, "SIMHelper"

    const-string v1, "phone"

    .line 34
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_19

    long-to-int p0, p0

    .line 37
    :try_start_f
    invoke-interface {v1, p0, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p0

    :catch_14
    const-string p0, "mTelephony exception"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return p0
.end method
