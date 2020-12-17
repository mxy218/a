.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
    }
.end annotation


# instance fields
.field private mActivityEnabled:Z

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private final mContext:Landroid/content/Context;

.field private mDualWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mForceBlockWifi:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsAirplaneMode:Z

.field private mMobileStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mSlotAirplane:Ljava/lang/String;

.field private final mSlotDualWifi:Ljava/lang/String;

.field private final mSlotEthernet:Ljava/lang/String;

.field private final mSlotMobile:Ljava/lang/String;

.field private final mSlotNoSim:Ljava/lang/String;

.field private final mSlotVpn:Ljava/lang/String;

.field private final mSlotWifi:Ljava/lang/String;

.field private mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiVisible:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const-string v0, "dual_wifi"

    .line 658
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotDualWifi:Ljava/lang/String;

    const-string v0, "no_sims"

    .line 659
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotNoSim:Ljava/lang/String;

    .line 662
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDualWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10406ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10406c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10406cf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10406b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10406ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$bool;->config_showActivity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 81
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 82
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 84
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "icon_blacklist"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private currentVpnIconId(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 105
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_7

    :cond_5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    :goto_7
    return p0
.end method

.method private getAnotherSlotId(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 273
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    move v1, v2

    :goto_f
    if-ge v1, v0, :cond_2b

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_28

    return v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$UsBELiDs0GJjQ8hYeagcWJmxhFc(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVpn()V

    return-void
.end method

.method private mzGetState(Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .registers 6

    .line 626
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x359c9447

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1b

    const v1, 0x68b377b

    if-eq v0, v1, :cond_10

    goto :goto_26

    :cond_10
    const-string/jumbo v0, "subId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    goto :goto_27

    :cond_1b
    const-string/jumbo v0, "slotId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    move p1, v2

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, -0x1

    :goto_27
    if-eqz p1, :cond_43

    if-eq p1, v2, :cond_2c

    goto :goto_5a

    .line 636
    :cond_2c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 637
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    if-ne v0, p2, :cond_32

    return-object p1

    .line 628
    :cond_43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 629
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v0, p2, :cond_49

    return-object p1

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .registers 2

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 185
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    return-void
.end method

.method private updateVolteMergeId()I
    .registers 7

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_8e

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVolteMergeId: slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->getSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",radioOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",volteId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBarSignalPolicy"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->getSlotId()I

    move-result v4

    if-nez v4, :cond_5e

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    if-eqz v4, :cond_5e

    .line 600
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    aput v4, v0, v1

    .line 602
    :cond_5e
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->getSlotId()I

    move-result v4

    if-ne v4, v2, :cond_15

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    if-eqz v4, :cond_15

    .line 603
    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    aput v3, v0, v2

    goto :goto_15

    .line 606
    :cond_6d
    aget p0, v0, v1

    if-eqz p0, :cond_8e

    aget p0, v0, v2

    if-eqz p0, :cond_8e

    .line 607
    aget p0, v0, v1

    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_amr_wb:I

    if-ne p0, v1, :cond_85

    .line 608
    aget p0, v0, v2

    if-ne p0, v1, :cond_82

    .line 609
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_ims_double:I

    goto :goto_8e

    .line 611
    :cond_82
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_ims_second_disable:I

    goto :goto_8e

    .line 614
    :cond_85
    aget p0, v0, v2

    if-ne p0, v1, :cond_8c

    .line 615
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_ims_first_disable:I

    goto :goto_8e

    .line 617
    :cond_8c
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_ims_disable:I

    :cond_8e
    :goto_8e
    return v1
.end method

.method private updateVpn()V
    .registers 7

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->currentVpnIconId(Z)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->accessibility_vpn_on:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .registers 4

    .line 189
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_18

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-lez v0, :cond_18

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_20

    .line 193
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_20
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "icon_blacklist"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 121
    :cond_9
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 127
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-ne p2, v2, :cond_35

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-ne v0, v2, :cond_35

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-ne p1, v2, :cond_35

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-eq v1, v2, :cond_51

    .line 129
    :cond_35
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-nez v1, :cond_44

    .line 132
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mForceBlockWifi:Z

    if-eqz p1, :cond_42

    goto :goto_44

    :cond_42
    const/4 p1, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p1, 0x1

    :goto_45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_51
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 5

    .line 327
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    .line 328
    :cond_6
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 329
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-lez v0, :cond_1c

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_24

    .line 335
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_24
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 6

    .line 341
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 342
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 343
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 345
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-eqz v3, :cond_28

    if-lez v0, :cond_28

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v2, v3, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2f

    .line 349
    :cond_28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_2f
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZLcom/android/systemui/statusbar/policy/NetworkController$FlymeState;)V
    .registers 15

    const-string/jumbo p2, "subId"

    .line 207
    invoke-direct {p0, p2, p12}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mzGetState(Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 215
    :cond_a
    iget p4, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 p9, 0x1

    const/4 p10, 0x0

    if-eq p3, p4, :cond_16

    if-eqz p3, :cond_14

    if-nez p4, :cond_16

    :cond_14
    move p4, p9

    goto :goto_17

    :cond_16
    move p4, p10

    .line 217
    :goto_17
    iget-boolean p11, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz p11, :cond_21

    iget-boolean p11, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez p11, :cond_21

    move p11, p9

    goto :goto_22

    :cond_21
    move p11, p10

    :goto_22
    iput-boolean p11, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    .line 218
    iget p11, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p11, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 219
    iput p3, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 220
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    .line 221
    iput-object p8, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 222
    iput-boolean p13, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz p5, :cond_3a

    .line 223
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p1, :cond_3a

    move p1, p9

    goto :goto_3b

    :cond_3a
    move p1, p10

    :goto_3b
    iput-boolean p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    if-eqz p6, :cond_45

    .line 224
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p1, :cond_45

    move p1, p9

    goto :goto_46

    :cond_45
    move p1, p10

    :goto_46
    iput-boolean p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 225
    iput p7, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 227
    iget-boolean p1, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->isRadioOn:Z

    iput-boolean p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isRadioOn:Z

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVolteMergeId()I

    move-result p1

    .line 230
    iget p3, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getAnotherSlotId(I)I

    move-result p3

    .line 232
    iget-boolean p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    iget-boolean p6, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceVisible:Z

    if-eq p5, p6, :cond_5f

    goto :goto_60

    :cond_5f
    move p9, p10

    :goto_60
    iput-boolean p9, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    .line 233
    iput p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    .line 234
    iget p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->activityInoutId:I

    iput p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    .line 235
    iget-boolean p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceVisible:Z

    iput-boolean p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    .line 236
    iget p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceTypeId:I

    iput p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    .line 237
    iget p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->voiceStrengthId:I

    iput p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    .line 238
    iget p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->networkTypeIdWhenShowVoiceType:I

    iput p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    .line 239
    iget-boolean p5, p14, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;->canShowHD:Z

    iput-boolean p5, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    const-string/jumbo p5, "slotId"

    .line 241
    invoke-direct {p0, p5, p3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mzGetState(Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p3

    if-eqz p3, :cond_87

    .line 243
    iput p1, p3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    .line 246
    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setMobileDataIndicators: state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBarSignalPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p4, :cond_c3

    .line 252
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 254
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c3

    .line 255
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :cond_c3
    return-void
.end method

.method public setNoSims(ZZ)V
    .registers 8

    .line 317
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirPlaneMode()Z

    move-result v0

    .line 318
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_no_sims:I

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->accessibility_no_sims:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v4, "no_sims"

    invoke-interface {v3, v4, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-nez v0, :cond_2b

    if-eqz p1, :cond_2b

    if-nez p2, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    invoke-interface {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 291
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubs: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarSignalPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_6c

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSubs: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_6c
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 148
    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 p3, 0x1

    const/4 p6, 0x0

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-nez p1, :cond_c

    move p1, p3

    goto :goto_d

    :cond_c
    move p1, p6

    :goto_d
    if-eqz p4, :cond_17

    .line 149
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p4, :cond_17

    if-eqz p1, :cond_17

    move p4, p3

    goto :goto_18

    :cond_17
    move p4, p6

    :goto_18
    if-eqz p5, :cond_22

    .line 150
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p5, :cond_22

    if-eqz p1, :cond_22

    move p5, p3

    goto :goto_23

    :cond_22
    move p5, p6

    :goto_23
    const-string p7, "dual_wifi"

    .line 154
    invoke-virtual {p7, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_2e

    .line 155
    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDualWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    goto :goto_30

    :cond_2e
    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :goto_30
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p8

    .line 158
    iput-boolean p1, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    .line 159
    iget p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p1, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 160
    iput-boolean p4, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    .line 161
    iput-boolean p5, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    .line 164
    iput-object p9, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 166
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean p1, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 167
    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 170
    iget p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz p1, :cond_53

    goto :goto_54

    :cond_53
    move p3, p6

    :goto_54
    iput-boolean p3, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 172
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    if-eqz p7, :cond_5e

    .line 176
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDualWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    goto :goto_60

    .line 178
    :cond_5e
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :goto_60
    return-void
.end method
