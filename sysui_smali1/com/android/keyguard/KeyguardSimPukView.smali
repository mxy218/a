.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# instance fields
.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWrongPukCodeMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 66
    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 68
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 70
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWrongPukCodeMessageMap:Ljava/util/Map;

    .line 72
    new-instance p2, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->updateWrongPukMessageMap(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .registers 1

    .line 51
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSimPukView;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukView;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSimPukView;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPukView;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V

    return-void
.end method

.method private checkPin()Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1b

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private checkPuk()Z
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 413
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private getMessageTextForWrongPukCode(I)Ljava/lang/String;
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWrongPukCodeMessageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return-object p0
.end method

.method private getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_17

    .line 257
    iget p2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardSimPukView;->getMessageTextForWrongPukCode(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_44

    .line 259
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_44

    :cond_17
    if-lez p1, :cond_35

    if-eqz p2, :cond_1e

    .line 264
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_default_puk_message:I

    goto :goto_20

    .line 265
    :cond_1e
    sget p2, Lcom/android/systemui/R$plurals;->kg_password_wrong_puk_code:I

    .line 266
    :goto_20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_44

    :cond_35
    if-eqz p2, :cond_3a

    .line 269
    sget p2, Lcom/android/systemui/R$string;->kg_puk_enter_puk_hint:I

    goto :goto_3c

    .line 270
    :cond_3a
    sget p2, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    .line 271
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 273
    :cond_44
    :goto_44
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 274
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->kg_sim_lock_esim_instructions:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 275
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 277
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSimPukView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p1

    .line 396
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2e

    .line 397
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 400
    sget p1, Lcom/android/systemui/R$string;->ok:I

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 402
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_31

    .line 405
    :cond_2e
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 407
    :goto_31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_37

    .line 381
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_unlock_progress_dialog_message:I

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 386
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_37

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 391
    :cond_37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .registers 3

    .line 238
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 240
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    if-eq v0, v1, :cond_1e

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 241
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    :cond_1e
    return-void
.end method

.method private showDefaultMessage()V
    .registers 11

    .line 191
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    const/4 v1, 0x1

    if-ltz v0, :cond_f

    .line 192
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    .line 197
    :cond_f
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    .line 198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 201
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    new-array v5, v1, [I

    sget v6, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, -0x1

    .line 202
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 203
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    const-string v6, ""

    if-ge v2, v4, :cond_45

    .line 205
    sget v2, Lcom/android/systemui/R$string;->kg_puk_enter_puk_hint:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_69

    .line 207
    :cond_45
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 208
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 209
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_59

    :cond_58
    move-object v4, v6

    .line 210
    :goto_59
    sget v8, Lcom/android/systemui/R$string;->kg_puk_enter_puk_hint_multi:I

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_69

    .line 212
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    :cond_69
    :goto_69
    if-eqz v0, :cond_75

    .line 216
    sget v0, Lcom/android/systemui/R$string;->kg_sim_lock_esim_instructions:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 218
    :cond_75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_7c

    .line 219
    invoke-interface {v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 221
    :cond_7c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 224
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v6, v6, v1}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateSim()V
    .registers 5

    .line 434
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_1d

    .line 437
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 485
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected getPasswordTextViewId()I
    .registers 1

    .line 296
    sget p0, Lcom/android/systemui/R$id;->pukEntry:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 506
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x104032c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 311
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    .line 312
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->resetState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 318
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    .line 319
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 301
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v1, :cond_f

    .line 304
    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 306
    :cond_f
    sget v0, Lcom/android/systemui/R$id;->keyguard_sim:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 330
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_a
    return-void
.end method

.method public resetState()V
    .registers 1

    .line 284
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 285
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

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

.method updateWrongPukMessageMap(Landroid/content/Context;)V
    .registers 10

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->kg_wrong_puk_code_message_list:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 107
    array-length v0, p1

    const-string v1, "KeyguardSimPukView"

    if-nez v0, :cond_15

    const-string p0, "There is no customization PUK prompt"

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_15
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v0, :cond_4c

    aget-object v4, p1, v3

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 113
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3f

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid key value config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 117
    :cond_3f
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWrongPukCodeMessageMap:Ljava/util/Map;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_4c
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 1

    .line 491
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    return-void
.end method
