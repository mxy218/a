.class public Lcom/meizu/settings/calibration/CalibrationPreference;
.super Landroid/preference/Preference;
.source "CalibrationPreference.java"


# instance fields
.field private mCalibrationTip:Ljava/lang/String;

.field private mCalibrationTitle:Ljava/lang/String;

.field mCancleListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mOnCalibrating:Z

.field private mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/calibration/CalibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Lcom/meizu/settings/calibration/CalibrationPreference$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/calibration/CalibrationPreference$1;-><init>(Lcom/meizu/settings/calibration/CalibrationPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    new-instance p2, Lcom/meizu/settings/calibration/CalibrationPreference$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/calibration/CalibrationPreference$2;-><init>(Lcom/meizu/settings/calibration/CalibrationPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private OnConfirmButtonClick()V
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mOnCalibrating:Z

    if-eqz v0, :cond_c

    const-string p0, "CalibrationPreference"

    const-string v0, "OnConfirmButtonClick mOnCalibrating, return"

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_c
    new-instance v0, Lcom/meizu/settings/calibration/CalibrationPreference$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/calibration/CalibrationPreference$3;-><init>(Lcom/meizu/settings/calibration/CalibrationPreference;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 92
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/calibration/CalibrationPreference;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->OnConfirmButtonClick()V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/calibration/CalibrationPreference;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mOnCalibrating:Z

    return p1
.end method

.method private cancelConfirmDialog()V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 140
    :try_start_5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 144
    :goto_8
    iput-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_28

    :catchall_b
    move-exception v0

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v2, "CalibrationPreference"

    .line 142
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

    .line 144
    :goto_25
    iput-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method private cancelProgressDialog()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 163
    :try_start_5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 167
    :goto_8
    iput-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    goto :goto_28

    :catchall_b
    move-exception v0

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v2, "CalibrationPreference"

    .line 165
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

    .line 167
    :goto_25
    iput-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method private showConfirmDialog()V
    .registers 5

    .line 118
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->cancelConfirmDialog()V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f121490

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f120442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCancleListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCalibrationTitle:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v2, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCalibrationTip:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCalibrationTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_55

    .line 126
    :cond_37
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d02ba

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a05a1

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->actInMzNightMode(I)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 132
    :goto_55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showProgressDialog()V
    .registers 3

    .line 150
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->cancelProgressDialog()V

    .line 152
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1200f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v1, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/LoadingDialog;->setCancelable(Z)V

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mProgressDialog:Lcom/meizu/common/app/LoadingDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected OnCancelButtonClick()V
    .registers 1

    return-void
.end method

.method protected OnFinishedCalibrate(Z)V
    .registers 3

    .line 104
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->cancelProgressDialog()V

    if-eqz p1, :cond_9

    const p1, 0x7f1200f7

    goto :goto_c

    :cond_9
    const p1, 0x7f1200f5

    .line 107
    :goto_c
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meizu/common/widget/CompleteToast;->makeText(Landroid/content/Context;II)Lcom/meizu/common/widget/CompleteToast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected OnPrepareCalibrate()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->showProgressDialog()V

    return-void
.end method

.method protected onClick()V
    .registers 1

    .line 113
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->showConfirmDialog()V

    return-void
.end method

.method public setCalibrationTip(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCalibrationTip:Ljava/lang/String;

    return-void
.end method

.method public setCalibrationTitle(Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference;->mCalibrationTitle:Ljava/lang/String;

    return-void
.end method

.method protected startCalibrate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
