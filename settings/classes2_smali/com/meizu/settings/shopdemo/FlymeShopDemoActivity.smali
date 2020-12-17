.class public Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "FlymeShopDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;
    }
.end annotation


# instance fields
.field private mCurrentDemoFrom:I

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mIsShopDemoVersion:Z

.field private mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mLockScreenReason:Ljava/lang/String;

.field private mNeedStartLockScreen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mNeedStartLockScreen:Z

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockScreenReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->prepareShopDemoPassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startDemoSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->playPrivacyModeVideo()V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockScreenReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startCreateFingerprintActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Z
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->isFaceDataExisted()Z

    move-result p0

    return p0
.end method

.method private clearPasswordIfNeed()V
    .registers 3

    .line 342
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
    .registers 2

    .line 305
    new-instance v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$6;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    return-object v0
.end method

.method private init()V
    .registers 12

    .line 86
    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "flyme.intent.action.FINGERPRINT_SHOP_DEMO"

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 92
    iput v2, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    goto :goto_3f

    :cond_1d
    const-string v3, "flyme.intent.action.PRIVACY_SHOP_DEMO"

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 94
    iput v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    goto :goto_3f

    :cond_28
    const-string v3, "flyme.intent.action.FACE_RECOGNITION_SHOP_DEMO"

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    .line 96
    iput v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    .line 97
    new-instance v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$1;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startDemoSettings()V

    return-void

    :cond_3f
    :goto_3f
    const v0, 0x7f0a0662

    .line 108
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a0666

    .line 109
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f0a0665

    .line 110
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const v0, 0x7f0a0113

    .line 111
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 116
    iget v3, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    if-eq v3, v2, :cond_87

    if-eq v3, v1, :cond_70

    move-object v10, v0

    goto :goto_9d

    .line 133
    :cond_70
    new-instance v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;

    const v2, 0x7f0800ef

    const v3, 0x7f1206af

    const v4, 0x7f1206ae

    const v5, 0x7f1206ab

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;IIII)V

    .line 137
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->initPrivacyMode()V

    goto :goto_9d

    :cond_87
    const v4, 0x7f1206b1

    const v2, 0x7f0807b1

    .line 126
    new-instance v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;

    const v3, 0x7f1206a8

    const v5, 0x7f1207fa

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;IIII)V

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->initFingerprint()V

    .line 144
    :goto_9d
    iget v0, v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupLogoRes:I

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget v0, v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupTitleRes:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget v0, v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupSummaryRes:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget v0, v10, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupBtnTextRes:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0114

    .line 150
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$2;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0145

    .line 157
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$3;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFingerprint()V
    .registers 2

    .line 166
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    return-void
.end method

.method private initPrivacyMode()V
    .registers 3

    const v0, 0x7f0a0662

    .line 170
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$4;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isFaceDataExisted()Z
    .registers 3

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_management_added_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method private playPrivacyModeVideo()V
    .registers 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "demo_privacy.mp4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "URI:::::::::"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "video/mp4"

    .line 185
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareShopDemoPassword()V
    .registers 9

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    .line 233
    :cond_e
    iget-object v2, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "1234"

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->savePassword(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setFaceUnlock(ZLjava/lang/String;)V
    .registers 3

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startCreateFaceSettings()V
    .registers 5

    .line 275
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->isFaceDataExisted()Z

    move-result v0

    const-string v1, "FlymeShopDemoActivity"

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    .line 276
    invoke-static {p0, v0}, Lcom/meizu/settings/face/FaceUtil;->updateFaceRecognitonAddedDataState(Landroid/content/Context;Z)V

    const-string v2, "mz_face_unlock"

    .line 277
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v2, "mz_face_unlock_app"

    .line 278
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v2, "mz_face_unlock_document"

    .line 279
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->setFaceUnlock(ZLjava/lang/String;)V

    .line 280
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 281
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->getMzFaceAllowPrivateNotification(Landroid/content/Context;)I

    move-result v0

    .line 282
    invoke-static {p0, v0}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    .line 283
    invoke-static {p0, v1, v0}, Lcom/meizu/settings/face/FaceUtil;->reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    :cond_2b
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    .line 289
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "password_confirmed"

    .line 290
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "bind_face_recognition_from"

    .line 292
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x3ea

    .line 295
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p0, "startCreateFaceActivity"

    .line 297
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startCreateFingerprintActivity()V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 240
    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getEnrollChallenge()J

    move-result-wide v1

    new-instance v3, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;

    invoke-direct {v3, p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;-><init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    const-string p0, "1234"

    .line 239
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenPasswordVerifiedToken(Ljava/lang/String;JLcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V

    return-void
.end method

.method private startDemoSettings()V
    .registers 3

    .line 190
    iget v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_17

    .line 198
    :cond_c
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startCreateFaceSettings()V

    goto :goto_17

    .line 195
    :cond_10
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startPrivacyModeSettings()V

    goto :goto_17

    .line 192
    :cond_14
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startFingerprintDemoSettings()V

    :goto_17
    return-void
.end method

.method private startFingerprintDemoSettings()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getMaxFingerprintSupport()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_23

    .line 262
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 263
    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object p0

    .line 262
    invoke-interface {v0, v1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V

    goto :goto_26

    .line 265
    :cond_23
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startCreateFingerprintActivity()V

    :goto_26
    return-void
.end method

.method private startLockScreen()V
    .registers 4

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mLockScreenReason:Ljava/lang/String;

    const-string v2, "lock_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startPrivacyModeSettings()V
    .registers 8

    .line 206
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_from_shopdemo"

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1212d7

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x7f1212d7

    move-object v0, p0

    .line 208
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 318
    iget v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 321
    iput-boolean v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mNeedStartLockScreen:Z

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1c

    :cond_12
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1c

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 330
    :cond_1c
    :goto_1c
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 335
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->clearPasswordIfNeed()V

    .line 337
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->setHasWhiteNavigationbar(Z)V

    const p1, 0x7f0d030a

    .line 73
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 75
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mIsShopDemoVersion:Z

    .line 77
    iget-boolean p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mIsShopDemoVersion:Z

    if-nez p1, :cond_1e

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 82
    :cond_1e
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 368
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 370
    iget-boolean v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mIsShopDemoVersion:Z

    if-nez v0, :cond_8

    return-void

    .line 374
    :cond_8
    iget-boolean v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mNeedStartLockScreen:Z

    if-eqz v0, :cond_f

    .line 375
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startLockScreen()V

    :cond_f
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 215
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 217
    iget-boolean v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mIsShopDemoVersion:Z

    if-nez v0, :cond_8

    return-void

    .line 221
    :cond_8
    iget v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->mCurrentDemoFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 222
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->prepareShopDemoPassword()V

    :cond_10
    return-void
.end method
