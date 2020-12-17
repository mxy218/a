.class public Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeFingerprintManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;
    }
.end annotation


# static fields
.field private static volatile method_isMultiOpenUserId:Ljava/lang/reflect/Method;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppFingerprintSwitchLayout:Landroid/view/View;

.field private mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

.field private mAppUserFpSwitchTitle:Landroid/widget/TextView;

.field private mBootomButtonLayout:Landroid/view/View;

.field private mBootomButtonTextView:Landroid/widget/TextView;

.field private mCtsTipView:Landroid/widget/TextView;

.field private mCurrentEditName:Ljava/lang/String;

.field private mCurrentEditPosition:I

.field private mCurrentTextView:Landroid/widget/TextView;

.field private mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

.field private mDeleteFingerprint:Ljava/lang/Integer;

.field private mDeleteFingerprintPosition:Ljava/lang/Integer;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDocumentFingerprintSwitchLayout:Landroid/view/View;

.field private mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

.field private mDocumentUserFpSwitchTitle:Landroid/widget/TextView;

.field private mEnrollToken:[B

.field private mExtra:Landroid/os/Bundle;

.field private mFingerprintAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

.field private mFingerprintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mFpAnimationLayout:Landroid/widget/LinearLayout;

.field private mFpAnimationLine:Landroid/widget/LinearLayout;

.field private mFpAnimationSummary:Landroid/widget/TextView;

.field private mFromSetupwizard:Z

.field private mHasStartPasswordConfirmed:Z

.field private mLastFingerprintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

.field private mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mNameEditText:Landroid/widget/EditText;

.field private mNeedCreateFingerprint:Z

.field private mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

.field private mPasswordConfirmed:Z

.field private mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mScreenFingerprintSwitchLayout:Landroid/view/View;

.field private mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

.field private mScreenUserFpSwitchTitle:Landroid/widget/TextView;

.field private mTargetuserId:I

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLastFingerprintList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    .line 117
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDialog:Landroid/app/AlertDialog;

    .line 133
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    .line 922
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$13;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$13;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)I
    .registers 1

    .line 79
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;I)I
    .registers 2

    .line 79
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Z)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->updateViewToNormal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->startCreateFpActivity()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->deleteAndUpdateView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/Integer;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteFingerprintPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteFingerprintPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->handleFingerprintBindFeature()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->refreshFingerprintDatas()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->notifyDataSetChangedSafely()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/common/widget/Switch;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteFingerprint:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNameEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->clearErrorTips(Lcom/meizu/textinputlayout/TextInputLayout;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->saveFingerprintName()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;ZLcom/meizu/common/widget/Switch;)V
    .registers 3

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->handleUseFpSwitchChanged(ZLcom/meizu/common/widget/Switch;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/common/widget/Switch;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/common/widget/Switch;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->handAddFingerprintLayoutEnabled()V

    return-void
.end method

.method private checkPasswordConfirm()V
    .registers 9

    .line 415
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    if-eqz v0, :cond_5

    return-void

    .line 419
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_60

    .line 421
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->hasPassword()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 422
    :cond_1e
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v2, "password_from"

    .line 423
    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    const-string v2, "from_setupwizard"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "create_fingerprint"

    .line 428
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "create_biometric"

    .line 429
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    const-string v2, "verify_password_tips"

    .line 431
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120ff3

    const/4 v6, 0x3

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_60

    :cond_5c
    const/4 v0, 0x3

    .line 437
    invoke-direct {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->startEnterPasswordFragment(I)V

    .line 440
    :cond_60
    :goto_60
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    return-void
.end method

.method private clearErrorTips(Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 2

    .line 938
    invoke-virtual {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    .line 939
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 940
    invoke-virtual {p1, p0}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method private createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
    .registers 2

    .line 702
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    return-object v0
.end method

.method private deleteAndUpdateView()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 688
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteFingerprint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 689
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V

    return-void
.end method

.method private handAddFingerprintLayoutEnabled()V
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getMaxFingerprintSupport()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_13

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setAddFPLayoutEnabled(Z)V

    goto :goto_17

    :cond_13
    const/4 v0, 0x1

    .line 501
    invoke-direct {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setAddFPLayoutEnabled(Z)V

    :goto_17
    return-void
.end method

.method private handleFingerprintBindFeature()V
    .registers 7

    .line 739
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestModeFingerprintId()Ljava/lang/String;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_19

    .line 742
    array-length v3, v0

    if-lez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 743
    :goto_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_3c

    .line 745
    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v3, :cond_32

    .line 747
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 748
    :cond_32
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v1, v5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModeFingerprintId(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v1

    .line 751
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 755
    :cond_3c
    :goto_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 757
    :try_start_42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v3, :cond_52

    .line 759
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 760
    :cond_52
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0, v5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecreteModeFingerprintId(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    .line 763
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private handleUseFpSwitchChanged(ZLcom/meizu/common/widget/Switch;)V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_29

    .line 382
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    if-ne p2, v0, :cond_15

    .line 383
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    goto :goto_28

    .line 384
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    if-ne p2, v0, :cond_1f

    .line 385
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    goto :goto_28

    .line 386
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    if-ne p2, v0, :cond_28

    .line 387
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    :cond_28
    :goto_28
    return-void

    .line 379
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->startCreateFpActivity()V

    return-void
.end method

.method private initAddFPLayout(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a0063

    .line 622
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonLayout:Landroid/view/View;

    const v0, 0x7f0a0062

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonTextView:Landroid/widget/TextView;

    .line 624
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonLayout:Landroid/view/View;

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBackPressedListener()V
    .registers 2

    .line 160
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-void
.end method

.method private initFPAnimationSummary()V
    .registers 4

    .line 931
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 933
    aget-object v0, v1, v0

    .line 934
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFpAnimationSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initFpSwitchView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a02e7

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUserFpSwitchTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02e5

    .line 591
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    const v0, 0x7f0a02e6

    .line 592
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenFingerprintSwitchLayout:Landroid/view/View;

    .line 593
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenFingerprintSwitchLayout:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$7;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02e0

    .line 600
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUserFpSwitchTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02de

    .line 601
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    const v0, 0x7f0a02df

    .line 602
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppFingerprintSwitchLayout:Landroid/view/View;

    .line 603
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppFingerprintSwitchLayout:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$8;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$8;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02e3

    .line 610
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUserFpSwitchTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02e1

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    const v0, 0x7f0a02e2

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentFingerprintSwitchLayout:Landroid/view/View;

    .line 613
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentFingerprintSwitchLayout:Landroid/view/View;

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$9;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRecylerView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a05c9

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 582
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 583
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;)V

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    .line 584
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 585
    new-instance p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p1, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    .line 586
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private initTipsText()V
    .registers 4

    .line 572
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 571
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 574
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCtsTipView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 576
    invoke-direct {p0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setUseFpSwitchLayoutEnable(Z)V

    :cond_1a
    return-void
.end method

.method private initValues()V
    .registers 6

    .line 212
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 213
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 214
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.meizu.settings.MzSettingsActivity$MzFingerprintActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 215
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    goto :goto_29

    .line 217
    :cond_23
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    .line 219
    :goto_29
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    .line 220
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 223
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 230
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->isMultiOpenUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_72

    move v0, v2

    .line 235
    :cond_72
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 236
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 238
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_96

    goto :goto_99

    .line 245
    :cond_96
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    goto :goto_b4

    .line 241
    :cond_99
    :goto_99
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    .line 242
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v1, :cond_a2

    goto :goto_ae

    .line 243
    :cond_a2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 242
    :goto_ae
    invoke-static {v3, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    .line 247
    :goto_b4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 248
    iget v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    .line 249
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mTargetuserId:I

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mTargetuserId:I

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 252
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mTargetuserId:I

    invoke-direct {v0, v1, v3}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 253
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    const-string v1, "create_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNeedCreateFingerprint:Z

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_fingerprint_from_pkg"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.setup"

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlymeFingerprintManagementFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isMultiOpenUserId(I)Z
    .registers 7

    const/4 v0, 0x0

    .line 198
    :try_start_1
    sget-object v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->method_isMultiOpenUserId:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 199
    const-class v1, Landroid/os/UserHandle;

    const-string v3, "isMultiOpenUserId"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->method_isMultiOpenUserId:Ljava/lang/reflect/Method;

    .line 201
    sget-object v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->method_isMultiOpenUserId:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 203
    :cond_1b
    sget-object v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->method_isMultiOpenUserId:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception p0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiOpenUserId E : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlymeFingerprintManagementFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return v0
.end method

.method private notifyDataSetChangedSafely()V
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 911
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_15
    return-void
.end method

.method private refreshFingerprintDatas()V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 511
    :cond_e
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    aget v3, v0, v2

    .line 512
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method private refreshFingerprintView()V
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 460
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLastFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_46

    const/4 v1, 0x0

    .line 463
    :goto_17
    array-length v2, v0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2d

    .line 464
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLastFingerprintList:Ljava/util/ArrayList;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_2e

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2d
    move v1, v3

    :goto_2e
    if-eq v1, v3, :cond_46

    .line 471
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v3, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$5;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;[II)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    .line 489
    :cond_3d
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->refreshFingerprintDatas()V

    .line 490
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->notifyDataSetChangedSafely()V

    .line 492
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->handAddFingerprintLayoutEnabled()V

    :cond_46
    :goto_46
    return-void
.end method

.method private reportUseFingerprintUnlock()V
    .registers 8

    .line 394
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 395
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_10

    move-object v1, v2

    goto :goto_11

    :cond_10
    move-object v1, v3

    :goto_11
    const-string v4, "open_type"

    const-string v5, "FlymeFingerprintManagementFragment"

    const-string v6, "set_fingerprint_service"

    .line 394
    invoke-virtual {v0, v5, v6, v4, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 398
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_26

    move-object v1, v2

    goto :goto_27

    :cond_26
    move-object v1, v3

    :goto_27
    const-string v6, "set_fingerprint_lockapps"

    .line 397
    invoke-virtual {v0, v5, v6, v4, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 401
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_38

    :cond_37
    move-object v2, v3

    :goto_38
    const-string p0, "set_fingerprint_lockdocs"

    .line 400
    invoke-virtual {v0, v5, p0, v4, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveFingerprintName()V
    .registers 6

    .line 651
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->modifyFingerPrintName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name fp success :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerprintManagementFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    if-nez v0, :cond_39

    return-void

    .line 657
    :cond_39
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 658
    array-length v1, v0

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_50

    aget v3, v0, v2

    .line 659
    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 661
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 663
    :cond_58
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120dac

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    :goto_60
    return-void
.end method

.method private setAddFPLayoutEnabled(Z)V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_20

    .line 519
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f120da8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 520
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    .line 522
    :cond_20
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getMaxFingerprintSupport()I

    move-result v0

    if-ge p1, v0, :cond_46

    .line 523
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f120d89

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mBootomButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0807a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_46
    :goto_46
    return-void
.end method

.method private setUseFpSwitchLayoutEnable(Z)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUserFpSwitchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/Switch;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenFingerprintSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUserFpSwitchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/Switch;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppFingerprintSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUserFpSwitchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/Switch;->setEnabled(Z)V

    .line 345
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentFingerprintSwitchLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private showDeleteDialog()V
    .registers 8

    .line 668
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    if-eqz v0, :cond_a

    .line 669
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    .line 672
    :cond_a
    new-instance v0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 673
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setNavigationBarColor(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/res/ColorStateList;

    .line 674
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 675
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120d56

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 676
    new-instance v4, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$11;

    invoke-direct {v4, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$11;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v3, v4, v1, v2}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    .line 682
    invoke-virtual {v0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    .line 683
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDeleteDialog:Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startCreateFpActivity()V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mExtra:Landroid/os/Bundle;

    .line 638
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "password_confirmed"

    const/4 v3, 0x1

    .line 639
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mEnrollToken:[B

    const-string v3, "hw_auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "create_fingerprint_bundle"

    .line 641
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 642
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mTargetuserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    const-string v2, "from_setupwizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 645
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 647
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mLastFingerprintList:Ljava/util/ArrayList;

    return-void
.end method

.method private startEnterPasswordFragment(I)V
    .registers 8

    .line 444
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "password_from"

    const/4 v1, 0x0

    .line 445
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    const-string v1, "from_setupwizard"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "create_fingerprint"

    const/4 v1, 0x1

    .line 449
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120ff3

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateUseFpSwitch()V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isScreenUnlockWithFingerprintEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 351
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mScreenUseFpSwitch:Lcom/meizu/common/widget/Switch;

    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isAppUnlockWithFingerprintEnabled()Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 360
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mAppUseFpSwitch:Lcom/meizu/common/widget/Switch;

    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$3;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isDocumentUnlockWithFingerprintEnabled()Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 369
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mDocumentUseFpSwitch:Lcom/meizu/common/widget/Switch;

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$4;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateViewToNormal(Z)V
    .registers 6

    const-string v0, "FlymeFingerprintManagementFragment"

    const-string v1, "updateViewToNormal...."

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 175
    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCurrentEditPosition:I

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getMaxFingerprintSupport()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_22

    .line 179
    invoke-direct {p0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setAddFPLayoutEnabled(Z)V

    goto :goto_25

    .line 181
    :cond_22
    invoke-direct {p0, v3}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setAddFPLayoutEnabled(Z)V

    :goto_25
    if-eqz p1, :cond_2a

    .line 185
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->notifyDataSetChangedSafely()V

    .line 188
    :cond_2a
    invoke-direct {p0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setUseFpSwitchLayoutEnable(Z)V

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    invoke-virtual {p0, v3, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x1

    .line 946
    :try_start_1
    invoke-static {}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->getInstance()Lcom/meizu/settings/utils/UnAcceptableCharChecker;

    move-result-object v0

    .line 947
    invoke-virtual {v0, p1}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->checkEmojiString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    :cond_d
    move v1, v2

    .line 950
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 951
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->checkUnAcceptableChar(C)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_22

    if-ne v3, p0, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catch_22
    :cond_22
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-string v0, "hw_auth_token"

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_39

    if-nez p2, :cond_10

    .line 287
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_b3

    :cond_10
    if-ne p2, v2, :cond_b3

    .line 289
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->hasPassword()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 290
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 294
    :cond_1e
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    .line 295
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mEnrollToken:[B

    .line 296
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNeedCreateFingerprint:Z

    if-eqz p1, :cond_b3

    .line 297
    :cond_34
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->startCreateFpActivity()V

    goto/16 :goto_b3

    :cond_39
    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_ad

    if-eqz p3, :cond_47

    .line 302
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_47

    .line 304
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mEnrollToken:[B

    :cond_47
    if-ne p2, v2, :cond_65

    .line 308
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    if-nez p1, :cond_53

    if-eqz p3, :cond_aa

    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNeedCreateFingerprint:Z

    if-eqz p1, :cond_aa

    .line 309
    :cond_53
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 310
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 311
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    goto :goto_aa

    :cond_65
    if-nez p2, :cond_aa

    .line 314
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mNeedCreateFingerprint:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    if-eqz p1, :cond_70

    goto :goto_88

    :cond_70
    if-eqz p3, :cond_aa

    const/4 p1, 0x0

    const-string p2, "cancel_for_screenoff"

    .line 321
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 323
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 324
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    goto :goto_aa

    .line 315
    :cond_88
    :goto_88
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    if-eqz p1, :cond_9e

    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getFingerPrintCount()I

    move-result p1

    if-lez p1, :cond_9e

    .line 316
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 318
    :cond_9e
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 319
    iget-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    .line 328
    :cond_aa
    :goto_aa
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    goto :goto_b3

    :cond_ad
    const/16 p2, 0x8

    if-ne p1, p2, :cond_b3

    .line 330
    iput-boolean v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    :cond_b3
    :goto_b3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 136
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 140
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 142
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initBackPressedListener()V

    .line 144
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initValues()V

    if-eqz p1, :cond_25

    const/4 v0, 0x0

    const-string v1, "has_start_pwd_confirmed"

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    const-string v0, "fp_list"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 150
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    .line 154
    :cond_25
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d01d4

    const/4 p3, 0x0

    .line 531
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .registers 3

    .line 694
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 695
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    .line 697
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->reportUseFingerprintUnlock()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 901
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_e

    .line 902
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .registers 2

    .line 276
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    .line 278
    iput-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    .line 279
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 262
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->checkPasswordConfirm()V

    .line 264
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->refreshFingerprintView()V

    .line 266
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mPasswordConfirmed:Z

    invoke-direct {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->setUseFpSwitchLayoutEnable(Z)V

    .line 267
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->updateUseFpSwitch()V

    .line 270
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initTipsText()V

    .line 271
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initFPAnimationSummary()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 917
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 918
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    const-string v1, "has_start_pwd_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 919
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFingerprintList:Ljava/util/ArrayList;

    const-string v1, "fp_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 920
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mHasStartPasswordConfirmed:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 537
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initRecylerView(Landroid/view/View;)V

    .line 539
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initFpSwitchView(Landroid/view/View;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initAddFPLayout(Landroid/view/View;)V

    const p2, 0x7f0a074e

    .line 542
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mCtsTipView:Landroid/widget/TextView;

    .line 545
    iget-boolean p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFromSetupwizard:Z

    if-eqz p2, :cond_30

    .line 546
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 547
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 546
    invoke-static {p2, v0}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    :cond_30
    const p2, 0x7f0a02dd

    .line 551
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFpAnimationLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0097

    .line 552
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFpAnimationLine:Landroid/widget/LinearLayout;

    const p2, 0x7f0a06f5

    .line 553
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFpAnimationSummary:Landroid/widget/TextView;

    .line 554
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->mFpAnimationLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$6;

    invoke-direct {p2, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$6;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
