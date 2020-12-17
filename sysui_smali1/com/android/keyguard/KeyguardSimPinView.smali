.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSlotId:I

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    .line 63
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 67
    new-instance p1, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->setLockedSimMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPinView;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6b

    :cond_f
    if-lez p1, :cond_5c

    .line 182
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_40

    if-eqz p2, :cond_20

    .line 184
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_default_pin_message_multi_sim:I

    goto :goto_22

    .line 185
    :cond_20
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_wrong_pin_code_multi_sim:I

    .line 186
    :goto_22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6b

    :cond_40
    if-eqz p2, :cond_45

    .line 189
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_default_pin_message:I

    goto :goto_47

    .line 190
    :cond_45
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_wrong_pin_code:I

    .line 191
    :goto_47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6b

    :cond_5c
    if-eqz p2, :cond_61

    .line 195
    sget p2, Lcom/android/systemui/R$string;->kg_sim_pin_instructions:I

    goto :goto_63

    :cond_61
    sget p2, Lcom/android/systemui/R$string;->kg_password_pin_failed:I

    .line 196
    :goto_63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 198
    :goto_6b
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->kg_sim_lock_esim_instructions:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 200
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 202
    :cond_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSimPinView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2e

    .line 310
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 313
    sget p1, Lcom/android/systemui/R$string;->ok:I

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 315
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_31

    .line 318
    :cond_2e
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    :goto_31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_31

    .line 296
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_unlock_progress_dialog_message:I

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 304
    :cond_31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 157
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq v0, v1, :cond_1e

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 158
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    :cond_1e
    return-void
.end method

.method private setLockedSimMessage()V
    .registers 10

    .line 106
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 107
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    new-array v5, v1, [I

    sget v6, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, -0x1

    .line 112
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 113
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3e

    .line 115
    sget v2, Lcom/android/systemui/R$string;->kg_sim_pin_instructions:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_63

    .line 117
    :cond_3e
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 118
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 119
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_53

    :cond_51
    const-string v4, ""

    .line 120
    :goto_53
    sget v6, Lcom/android/systemui/R$string;->kg_sim_pin_instructions_multi:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v4, v8, v7

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_63

    .line 122
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    :cond_63
    :goto_63
    if-eqz v0, :cond_6f

    .line 126
    sget v0, Lcom/android/systemui/R$string;->kg_sim_lock_esim_instructions:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 129
    :cond_6f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7e

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    :cond_7e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private showDefaultMessage()V
    .registers 4

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->setLockedSimMessage()V

    .line 137
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-ltz v0, :cond_8

    return-void

    .line 142
    :cond_8
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const-string v2, ""

    invoke-direct {v0, p0, v2, v1}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 1

    .line 215
    sget p0, Lcom/android/systemui/R$id;->simPinEntry:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x104032b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 166
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 220
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v1, :cond_f

    .line 223
    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 225
    :cond_f
    sget v0, Lcom/android/systemui/R$id;->keyguard_sim:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 244
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 247
    :cond_a
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onResume(I)V
    .registers 3

    .line 235
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    .line 236
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    return-void
.end method

.method public resetState()V
    .registers 3

    .line 93
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    const-string v0, "KeyguardSimPinView"

    const-string v1, "Resetting state"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    .line 96
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_14

    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    .line 99
    :cond_14
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    .line 101
    sget v1, Lcom/android/systemui/R$id;->keyguard_esim_area:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_2a

    :cond_28
    const/16 v0, 0x8

    .line 102
    :goto_2a
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public startAppearAnimation()V
    .registers 1

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 331
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 335
    :cond_1e
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v0, :cond_3d

    .line 338
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 385
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_3d
    return-void
.end method
