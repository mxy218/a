.class public Lcom/meizu/settings/widget/ProgressDialogPreference;
.super Landroid/preference/Preference;
.source "ProgressDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;,
        Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;
    }
.end annotation


# instance fields
.field mCancleListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDlgMessageResId:I

.field private mDlgNegativeBtnResId:I

.field private mDlgPositiveBtnResId:I

.field private mDlgTitleResId:I

.field private mFailedTipsResId:I

.field private mIsConfirmBtnClicked:Z

.field private mIsLoading:Z

.field private mOnDialogStateListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

.field private mOnProgressListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

.field private mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mProgressDlgMessageResId:I

.field private mResources:Landroid/content/res/Resources;

.field private mShowNoticeWhenFinished:Z

.field private mSuccessTipsResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$1;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$2;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$1;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$2;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$1;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    new-instance p2, Lcom/meizu/settings/widget/ProgressDialogPreference$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$2;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    .line 69
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private OnConfirmButtonClick()V
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mIsLoading:Z

    if-eqz v0, :cond_c

    const-string p0, "CalibrationPreference"

    const-string v0, "OnConfirmButtonClick mIsLoading, return"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mIsConfirmBtnClicked:Z

    .line 81
    new-instance v0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$3;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 115
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/ProgressDialogPreference;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->OnConfirmButtonClick()V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mOnProgressListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/ProgressDialogPreference;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mIsConfirmBtnClicked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mIsConfirmBtnClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/ProgressDialogPreference;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/ProgressDialogPreference;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mSuccessTipsResId:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/ProgressDialogPreference;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mFailedTipsResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/widget/ProgressDialogPreference;)Landroid/content/Context;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mOnDialogStateListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    return-object p0
.end method

.method private cancelConfirmDialog()V
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 193
    :try_start_b
    iget-object v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_15
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    .line 197
    :goto_10
    iput-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_30

    :catchall_13
    move-exception v1

    goto :goto_2d

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "CalibrationPreference"

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelConfirmDialog error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_13

    goto :goto_10

    .line 197
    :goto_2d
    iput-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    throw v1

    :cond_30
    :goto_30
    return-void
.end method

.method private cancelProgressDialog()V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 212
    :try_start_5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 216
    :goto_8
    iput-object v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    goto :goto_28

    :catchall_b
    move-exception v0

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v2, "CalibrationPreference"

    .line 214
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

    .line 216
    :goto_25
    iput-object v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method private showConfirmDialog()V
    .registers 5

    .line 152
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->cancelConfirmDialog()V

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    iget v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgPositiveBtnResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 155
    iget-object v3, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    :cond_1a
    iget v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgNegativeBtnResId:I

    if-eq v1, v2, :cond_29

    .line 158
    iget-object v3, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    :cond_29
    iget v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgTitleResId:I

    if-eq v1, v2, :cond_30

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    :cond_30
    iget v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgMessageResId:I

    if-eq v1, v2, :cond_37

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 166
    :cond_37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/meizu/settings/widget/ProgressDialogPreference$6;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$6;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mOnDialogStateListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    if-eqz p0, :cond_59

    .line 186
    invoke-interface {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;->onDialogShowed()V

    :cond_59
    return-void
.end method

.method private showProgressDialog()V
    .registers 8

    .line 203
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->cancelProgressDialog()V

    .line 205
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgTitleResId:I

    iget v4, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDlgMessageResId:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    return-void
.end method


# virtual methods
.method protected OnCancelButtonClick()V
    .registers 1

    return-void
.end method

.method protected OnFinishedLoading(Z)V
    .registers 6

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 125
    new-instance v1, Lcom/meizu/settings/widget/ProgressDialogPreference$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$4;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    iget-boolean v1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mShowNoticeWhenFinished:Z

    if-nez v1, :cond_14

    return-void

    .line 135
    :cond_14
    new-instance v1, Lcom/meizu/settings/widget/ProgressDialogPreference$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$5;-><init>(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected OnPrepareLoading()V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->showProgressDialog()V

    return-void
.end method

.method public init(IIIIIIIZ)V
    .registers 9

    .line 224
    iput p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgTitleResId:I

    .line 225
    iput p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgMessageResId:I

    .line 226
    iput p3, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgPositiveBtnResId:I

    .line 227
    iput p4, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mDlgNegativeBtnResId:I

    .line 228
    iput p5, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mProgressDlgMessageResId:I

    .line 229
    iput p6, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mSuccessTipsResId:I

    .line 230
    iput p7, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mFailedTipsResId:I

    .line 231
    iput-boolean p8, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mShowNoticeWhenFinished:Z

    return-void
.end method

.method protected onClick()V
    .registers 1

    .line 147
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 148
    invoke-direct {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->showConfirmDialog()V

    return-void
.end method

.method public setOnDialogStateListener(Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mOnDialogStateListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    return-void
.end method

.method public setOnProgressListener(Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference;->mOnProgressListener:Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    return-void
.end method
