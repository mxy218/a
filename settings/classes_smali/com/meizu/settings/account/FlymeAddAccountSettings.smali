.class public Lcom/meizu/settings/account/FlymeAddAccountSettings;
.super Ljava/lang/Object;
.source "FlymeAddAccountSettings.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mProgressDialog:Lcom/meizu/common/app/LoadingDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Landroid/app/Activity;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->showUnsupportDialog()V

    return-void
.end method

.method private showUnsupportDialog()V
    .registers 4

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 58
    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121680

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120f9e

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v1, Lcom/meizu/settings/account/FlymeAddAccountSettings$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings$3;-><init>(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 73
    :try_start_b
    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_15
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    .line 78
    :goto_10
    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    goto :goto_37

    :catchall_13
    move-exception v1

    goto :goto_34

    :catch_15
    move-exception v1

    .line 75
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "FlymeAddAccountSettings"

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dismissLoadingDialog error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_13

    goto :goto_10

    .line 78
    :goto_34
    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    throw v1

    :cond_37
    :goto_37
    return-void
.end method

.method public onUserLeaveHint()V
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->dismissLoadingDialog()V

    return-void
.end method

.method public showLoadingDialog()V
    .registers 5

    .line 29
    invoke-virtual {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->dismissLoadingDialog()V

    .line 31
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f130327

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    .line 32
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1213a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v1, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    new-instance v1, Lcom/meizu/settings/account/FlymeAddAccountSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings$1;-><init>(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;-><init>(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
