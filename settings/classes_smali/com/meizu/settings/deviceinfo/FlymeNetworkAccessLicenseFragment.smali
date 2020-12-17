.class public Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;
.super Landroid/app/Fragment;
.source "FlymeNetworkAccessLicenseFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentShowingDialog:Landroid/app/Dialog;

.field private mFromSetupwizard:Z

.field private mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->hideNavigationbarInSetupwiard()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showQueryAuthenticitySuccessDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showQueryAuthenticityFailedDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Lcom/meizu/common/app/LoadingDialog;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->queryAuthenticityAsync()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showWarningDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showNetworkUnavaiableDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->startFlymeAccountIntroduceActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showNetworkAccessLicenseInfoDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Ljava/lang/String;
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->queryAuthenticity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->showLoadingDialog()V

    return-void
.end method

.method private getIMEI()[Ljava/lang/String;
    .registers 6

    const-string/jumbo p0, "ril.gsm.imei"

    const-string v0, ""

    .line 233
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const/4 v3, 0x1

    if-nez v0, :cond_27

    const-string v0, ","

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 239
    array-length v0, p0

    if-lez v0, :cond_27

    .line 240
    aget-object v0, p0, v1

    .line 241
    array-length v4, p0

    if-le v4, v3, :cond_28

    .line 242
    aget-object v2, p0, v3

    goto :goto_28

    :cond_27
    move-object v0, v2

    :cond_28
    :goto_28
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method

.method private getLicenseNumber()Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "ro.meizu.carrier.number"

    const-string v0, "02-0000-000000"

    .line 283
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMEID()Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "ril.cdma.meid"

    const-string/jumbo v0, "unknown"

    .line 229
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getModel()Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "ro.vendor.meizu.carrier.model"

    const-string/jumbo v0, "unknown"

    .line 291
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getQRCodeContent()Ljava/lang/String;
    .registers 5

    .line 251
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getIMEI()[Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120e84

    .line 254
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getLicenseNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120e81

    .line 257
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120e8b

    .line 260
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getScramblingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12149e

    .line 263
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getMEID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1206da

    .line 266
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1206dc

    .line 269
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120e88

    .line 272
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120e87

    .line 273
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScramblingNumber()Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "ro.boot.scramble"

    const-string v0, "ABCDE0123456789"

    .line 299
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideNavigationbarInSetupwiard()V
    .registers 2

    .line 304
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_15

    .line 305
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lflyme/support/v7/app/AppCompatActivity;

    .line 306
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    .line 305
    invoke-static {v0, p0}, Lcom/meizu/settings/utils/MzUtils;->hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V

    :cond_15
    return-void
.end method

.method private initQrCodeView(Landroid/view/View;)V
    .registers 5

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08072a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getQRCodeContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v0, v1}, Lcom/meizu/settings/utils/QRImageUtil;->createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x7f0a04c9

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$6;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    .line 98
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->initQrCodeView(Landroid/view/View;)V

    const v0, 0x7f0a04cf

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getLicenseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04cc

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00df

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->initViewFromSetupwizard(Landroid/view/View;)V

    return-void
.end method

.method private initViewFromSetupwizard(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0a076a

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_3e

    const v0, 0x7f0a0663

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0229

    .line 166
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0753

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 168
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance p1, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$5;

    invoke-direct {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$5;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3e
    return-void
.end method

.method private queryAuthenticity()Ljava/lang/String;
    .registers 6

    const-string v0, ","

    const-string v1, "https://V.tenaa.com.cn/VLD/"

    .line 320
    :try_start_4
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getIMEI()[Ljava/lang/String;

    move-result-object v2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getMEID()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_3c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "BizCode"

    const-string v4, "VLD"

    .line 328
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "L"

    .line 329
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getLicenseNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "M"

    .line 330
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "R"

    .line 331
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getScramblingNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "C"

    .line 332
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    invoke-static {v1, v0}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->httpsPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    .line 336
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private queryAuthenticityAsync()V
    .registers 2

    .line 343
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 344
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 396
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_15
    return-void
.end method

.method private showLoadingDialog()V
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f120e8a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mLoadingDialog:Lcom/meizu/common/app/LoadingDialog;

    .line 313
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->hideNavigationbarInSetupwiard()V

    return-void
.end method

.method private showNetworkAccessLicenseInfoDialog()V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0237

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a04cf

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getLicenseNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04cc

    .line 200
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04d1

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getScramblingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getMEID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    .line 207
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_58

    const v2, 0x7f0a0425

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64

    :cond_58
    const v3, 0x7f0a0424

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_64
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->getIMEI()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a034d

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 216
    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0350

    .line 218
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    .line 219
    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04ca

    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 224
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120e7d

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120f9e

    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showNetworkUnavaiableDialog()V
    .registers 4

    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120eaf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$8;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$8;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    const v2, 0x7f121364

    .line 402
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    .line 412
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showQueryAuthenticityFailedDialog()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 421
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120e89

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209ef

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    .line 423
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showQueryAuthenticitySuccessDialog(Ljava/lang/String;)V
    .registers 4

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$9;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    const v1, 0x7f1209ef

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    .line 437
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showWarningDialog()V
    .registers 4

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120e8c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    const v2, 0x7f120f9e

    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    .line 137
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mCurrentShowingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startFlymeAccountIntroduceActivity()V
    .registers 4

    .line 442
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.account.action.START_INTRODUCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action_key"

    const-string v2, "com.meizu.setup.choose_service"

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "source"

    const-string v2, "com.meizu.setup"

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_network_key"

    const-string v2, "com.meizu.setup.action_network"

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    move-exception p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "FlymeNetworkAccessLicenseFragment"

    const-string v0, "can not startAccountIndroduceActivity"

    .line 449
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    .line 75
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "from_setupwizard"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromSetupWizard:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FlymeNetworkAccessLicenseFragment"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    if-nez p1, :cond_57

    .line 80
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->mFromSetupwizard:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_57
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->hideNavigationbarInSetupwiard()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0236

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method
