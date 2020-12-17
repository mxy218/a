.class public Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;
.super Landroid/app/Activity;
.source "ExternalMediaFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;
    }
.end annotation


# instance fields
.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmed:Z

.field private mContext:Landroid/content/Context;

.field private mDiskId:Ljava/lang/String;

.field private mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mResource:Landroid/content/res/Resources;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmed:Z

    .line 58
    new-instance v0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->cancelConfirmDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mDiskId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Landroid/os/storage/StorageManager;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelConfirmDialog()V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 154
    :try_start_5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 158
    :goto_8
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_28

    :catchall_b
    move-exception v0

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v2, "ExternalMediaFormatActivity"

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelConfirmDialog error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_b

    goto :goto_8

    .line 158
    :goto_25
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method private cancelProgressDialog()V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 178
    :try_start_5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 182
    :goto_8
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    goto :goto_28

    :catchall_b
    move-exception v0

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v2, "ExternalMediaFormatActivity"

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cancelProgressDialog error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_b

    goto :goto_8

    .line 182
    :goto_25
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method private showConfirmDialog()V
    .registers 4

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmed:Z

    .line 110
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->cancelConfirmDialog()V

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f120732

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f120442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v1, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f1208e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f1208e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 148
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showProgressDialog()V
    .registers 8

    .line 164
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->cancelProgressDialog()V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xa100117

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ExternalMediaFormatActivity"

    const-string/jumbo v0, "onCreate!"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mContext:Landroid/content/Context;

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mResource:Landroid/content/res/Resources;

    const-string/jumbo p1, "storage"

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mDiskId:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mDiskId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 86
    :cond_38
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->showConfirmDialog()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
