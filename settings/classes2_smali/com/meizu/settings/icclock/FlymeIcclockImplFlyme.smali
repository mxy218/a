.class public Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;
.super Ljava/lang/Object;
.source "FlymeIcclockImplFlyme.java"

# interfaces
.implements Lcom/meizu/settings/icclock/FlymeIIcclock;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMultiSimCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean p2, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mMultiSimCard:Z

    return-void
.end method

.method private getSubId0UsingSlotId(Landroid/content/Context;I)I
    .registers 3

    .line 75
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_11

    .line 76
    array-length p1, p0

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 80
    aget p0, p0, p1

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method private isValidSubId(I)Z
    .registers 5

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 87
    aget v2, p0, v1

    if-ne v2, p1, :cond_15

    const/4 v0, 0x1

    goto :goto_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 38
    invoke-static {p1, p2, p3}, Landroid/telephony/MzTelephonyManager;->changeIccLockPasswordBySlotId(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getRemainTimes(I)I
    .registers 2

    const/4 p0, -0x1

    if-nez p1, :cond_a

    const-string p1, "gsm.sim.retry.pin1"

    .line 44
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_a
    const-string p1, "gsm.sim.retry.pin1.2"

    .line 46
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isIccLockEnabled(I)Z
    .registers 2

    .line 28
    invoke-static {p1}, Landroid/telephony/MzTelephonyManager;->getIccLockEnabledBySlotId(I)Z

    move-result p0

    return p0
.end method

.method public isRadioOn(I)Z
    .registers 7

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->isValidSubId(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 55
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isQcomPlatform()Z

    move-result v0

    const/4 v3, -0x1

    const-string v4, "msim_mode_setting"

    if-eqz v0, :cond_22

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_2c

    .line 59
    :cond_22
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_2c
    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_32

    move v2, v1

    :cond_32
    return v2
.end method

.method public setIccLockEnabled(ZLjava/lang/String;I)Z
    .registers 4

    .line 33
    invoke-static {p1, p2, p3}, Landroid/telephony/MzTelephonyManager;->setIccLockEnabledBySlotId(ZLjava/lang/String;I)Z

    move-result p0

    return p0
.end method
