.class public Lcom/meizu/settings/icclock/FlymeIccLockSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeIccLockSettings.java"

# interfaces
.implements Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private isAbsent:Z

.field private mContext:Landroid/content/Context;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mFlymeIIcclock:Lcom/meizu/settings/icclock/FlymeIIcclock;

.field private mHandler:Landroid/os/Handler;

.field private mMultiSimCardSupport:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

.field private mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 102
    iput-boolean v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mMultiSimCardSupport:Z

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    .line 115
    new-instance v0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;-><init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;-><init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/icclock/FlymeIccLockSettings;ZI)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/icclock/FlymeIccLockSettings;ZI)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mNewPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->isAbsent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    return p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Lcom/meizu/settings/icclock/FlymeIIcclock;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mFlymeIIcclock:Lcom/meizu/settings/icclock/FlymeIIcclock;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    return-object p0
.end method

.method private getInsertSimSlotId()I
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 245
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_26

    .line 246
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_26

    .line 250
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 251
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_14

    :cond_25
    return v0

    :cond_26
    :goto_26
    const-string p0, "FlymeIccLockSettings"

    const-string v1, " getInsertSimSlotId error,return"

    .line 247
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 490
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_e
    if-lez p1, :cond_22

    .line 492
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f100053

    new-array v4, v1, [Ljava/lang/Object;

    .line 494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 493
    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 496
    :cond_22
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 499
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FlymeIccLockSettings"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez p0, :cond_50

    move v0, v1

    :cond_50
    invoke-static {p1, v0, v2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private iccLockChanged(ZI)V
    .registers 3

    if-eqz p1, :cond_a

    .line 452
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    invoke-virtual {p1, p2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_13

    .line 454
    :cond_a
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    :goto_13
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 457
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->resetDialogState()V

    return-void
.end method

.method private iccPinChanged(ZI)V
    .registers 5

    if-nez p1, :cond_c

    .line 462
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_27

    .line 464
    :cond_c
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f1213f8

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {p1, p2, v0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 466
    iget-object p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    :goto_27
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->resetDialogState()V

    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method private resetDialogState()V
    .registers 2

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    .line 516
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const-string v0, ""

    .line 517
    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    .line 518
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    .line 519
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 520
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->updatePreferences()V

    return-void
.end method

.method private setDialogValues()V
    .registers 9

    .line 338
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    if-eqz v0, :cond_e9

    .line 339
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 341
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_86

    const/4 v3, 0x2

    const v4, 0x7f1213f7

    if-eq v0, v3, :cond_64

    const/4 v3, 0x3

    if-eq v0, v3, :cond_42

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1f

    const-string v0, ""

    goto/16 :goto_b8

    .line 360
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121422

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-object v5, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v6, :cond_32

    move v6, v2

    goto :goto_33

    :cond_32
    move v6, v1

    :goto_33
    iget-object v7, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 362
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v5, v6, v4}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 355
    :cond_42
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121404

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-object v5, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v6, :cond_55

    move v6, v2

    goto :goto_56

    :cond_55
    move v6, v1

    :goto_56
    iget-object v7, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 357
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v5, v6, v4}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 350
    :cond_64
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121406

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-object v5, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v6, :cond_77

    move v6, v2

    goto :goto_78

    :cond_77
    move v6, v1

    :goto_78
    iget-object v7, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 352
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-static {v5, v6, v4}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 343
    :cond_86
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121407

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-object v4, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v5, :cond_99

    move v5, v2

    goto :goto_9a

    :cond_99
    move v5, v1

    .line 345
    :goto_9a
    iget-boolean v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    if-eqz v6, :cond_a8

    .line 346
    iget-object v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f121401

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b1

    .line 347
    :cond_a8
    iget-object v6, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f1213fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 344
    :goto_b1
    invoke-static {v4, v5, v6}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 365
    :goto_b8
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    if-eqz v3, :cond_d5

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 367
    iput-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    .line 369
    :cond_d5
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v4, :cond_dc

    move v1, v2

    :cond_dc
    invoke-static {v3, v1, v0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_e9
    return-void
.end method

.method private showPinDialog()V
    .registers 2

    .line 329
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    if-nez v0, :cond_5

    return-void

    .line 332
    :cond_5
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->setDialogValues()V

    .line 334
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/icclock/EditPinPreference;->showPinDialog()V

    return-void
.end method

.method private tryChangeIccLockState()V
    .registers 4

    .line 436
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 437
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;

    invoke-direct {v2, p0, v0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;-><init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 446
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 447
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method

.method private tryChangePin()V
    .registers 4

    .line 472
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 473
    iput v1, v0, Landroid/os/Message;->what:I

    .line 474
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/meizu/settings/icclock/FlymeIccLockSettings$4;

    invoke-direct {v2, p0, v0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings$4;-><init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 483
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePreferences()V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mFlymeIIcclock:Lcom/meizu/settings/icclock/FlymeIIcclock;

    iget v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/meizu/settings/icclock/FlymeIIcclock;->isRadioOn(I)Z

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mFlymeIIcclock:Lcom/meizu/settings/icclock/FlymeIIcclock;

    iget v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    invoke-interface {v2, v3}, Lcom/meizu/settings/icclock/FlymeIIcclock;->isIccLockEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 260
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->isAbsent:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_21

    if-eqz v0, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->isAbsent:Z

    if-nez v2, :cond_2e

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/icclock/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 263
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_43
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 169
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 176
    :cond_11
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const v0, 0x7f160071

    .line 178
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 180
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "sim_pin"

    .line 181
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/icclock/EditPinPreference;

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v0, "sim_toggle"

    .line 185
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p1, :cond_a7

    const-string v0, "dialogState"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const-string v0, "dialogPin"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    const-string v0, "dialogError"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    const-string v0, "enableState"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    .line 193
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const/4 v2, 0x3

    const-string v3, "oldPinCode"

    if-eq v0, v2, :cond_a1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_92

    goto :goto_a7

    .line 199
    :cond_92
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_a7

    .line 195
    :cond_a1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    .line 210
    :cond_a7
    :goto_a7
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/icclock/EditPinPreference;->setOnPinEnteredListener(Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;)V

    .line 213
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    if-le p1, v1, :cond_c7

    move p1, v1

    goto :goto_c8

    :cond_c7
    move p1, v4

    :goto_c8
    iput-boolean p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mMultiSimCardSupport:Z

    .line 217
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 218
    iget-boolean v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mMultiSimCardSupport:Z

    const/4 v2, -0x1

    if-nez v0, :cond_d6

    .line 220
    iput v4, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    goto :goto_ed

    :cond_d6
    if-eqz p1, :cond_e7

    const-string v0, "extra_slotid"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 224
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    goto :goto_ed

    .line 227
    :cond_e7
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->getInsertSimSlotId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    .line 229
    :goto_ed
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mslotId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMultiSimCardSupport = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mMultiSimCardSupport:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeIccLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-ne p1, v2, :cond_11b

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 234
    :cond_11b
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    if-nez p1, :cond_123

    move p1, v1

    goto :goto_124

    :cond_123
    move p1, v4

    :goto_124
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f12141a

    .line 235
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v2, p1, v3}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSlotId:I

    if-nez v2, :cond_13d

    goto :goto_13e

    :cond_13d
    move v1, v4

    :goto_13e
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f12141d

    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v0, v1, v2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    new-instance p1, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;

    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mMultiSimCardSupport:Z

    invoke-direct {p1, v0, v1}, Lcom/meizu/settings/icclock/FlymeIcclockImplFlyme;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mFlymeIIcclock:Lcom/meizu/settings/icclock/FlymeIIcclock;

    .line 239
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->updatePreferences()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 290
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 291
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/meizu/settings/icclock/EditPinPreference;Z)V
    .registers 5

    if-nez p2, :cond_6

    .line 376
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->resetDialogState()V

    return-void

    .line 380
    :cond_6
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    .line 381
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 383
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const p2, 0x7f1213e9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    return-void

    .line 387
    :cond_23
    iget p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_70

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_62

    const/4 p2, 0x4

    if-eq p1, v0, :cond_56

    if-eq p1, p2, :cond_33

    goto :goto_73

    .line 405
    :cond_33
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    iget-object p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 406
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mRes:Landroid/content/res/Resources;

    const p2, 0x7f12141e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    .line 407
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 408
    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    goto :goto_73

    .line 411
    :cond_50
    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->tryChangePin()V

    goto :goto_73

    .line 399
    :cond_56
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mNewPin:Ljava/lang/String;

    .line 400
    iput p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 401
    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    goto :goto_73

    .line 392
    :cond_62
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    .line 393
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 394
    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    .line 395
    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPin:Ljava/lang/String;

    .line 396
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    goto :goto_73

    .line 389
    :cond_70
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->tryChangeIccLockState()V

    :goto_73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 419
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinToggle:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v0, 0x1

    if-ne p2, p1, :cond_11

    .line 421
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    .line 424
    iput v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    .line 425
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    goto :goto_1a

    .line 426
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    if-ne p2, p1, :cond_1a

    const/4 p1, 0x2

    .line 427
    iput p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public onResume()V
    .registers 4

    .line 269
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    if-eqz v0, :cond_1b

    .line 275
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->showPinDialog()V

    goto :goto_1e

    .line 278
    :cond_1b
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->resetDialogState()V

    :goto_1e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/icclock/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 302
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mPinDialog:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogPin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mError:Ljava/lang/String;

    const-string v1, "dialogError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-boolean v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mToState:Z

    const-string v1, "enableState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    iget v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3b

    goto :goto_51

    .line 314
    :cond_3b
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mNewPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 310
    :cond_48
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 324
    :cond_4e
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    :goto_51
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 284
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 285
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->resetDialogState()V

    return-void
.end method
