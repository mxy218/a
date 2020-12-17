.class public Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "FlymeChooseFpDialog.java"


# instance fields
.field private mCancelChooseButton:Landroid/widget/TextView;

.field private mChooseFpDialog:Landroid/app/AlertDialog;

.field private mChooseFpHint:Landroid/widget/TextView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mFingerprintLockout:Z

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$2;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;I)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->successVerifyFp(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->faildVerifyFp()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFingerprintLockout:Z

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/os/Handler;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/widget/TextView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->checkIfNeedFinish()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->cancelChooseResult()V

    return-void
.end method

.method private cancelChooseResult()V
    .registers 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private checkIfNeedFinish()V
    .registers 3

    .line 136
    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->needFinishSecretsModeActivity()Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1c
    return-void
.end method

.method private faildVerifyFp()V
    .registers 5

    const-string v0, "FlymeChooseFpDialog"

    const-string v1, "faildVerifyFp"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpHint:Landroid/widget/TextView;

    const v1, 0x7f1208ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private successVerifyFp(I)V
    .registers 4

    const-string v0, "FlymeChooseFpDialog"

    const-string v1, "successVerifyFp"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_binded_fp_id"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 163
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 88
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FlymeChooseFpDialog"

    const-string v0, "onCreate"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 93
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0178

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/View;->actInMzNightMode(I)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$3;-><init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    .line 105
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setGravity(I)V

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    const v0, 0x7f0a0148

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mCancelChooseButton:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mCancelChooseButton:Landroid/widget/TextView;

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$4;-><init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpDialog:Landroid/app/AlertDialog;

    const v0, 0x7f0a0177

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpHint:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const-string v0, "FlymeChooseFpDialog"

    const-string v1, "onDestroy"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "FlymeChooseFpDialog"

    const-string v1, "onPause"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endVerify()V

    .line 148
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "FlymeChooseFpDialog"

    const-string v1, "onResume"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->mChooseFpHint:Landroid/widget/TextView;

    const v0, 0x7f1208e9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
