.class public final Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;
.super Ljava/lang/Object;
.source "FlymeStatusBarServiceController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;


# instance fields
.field private mAlwaysShowImageView:Landroid/widget/ImageView;

.field private mAlwaysShowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysShowTips:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field protected mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

.field protected mFlymeCommandQueue:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

.field private mNotificationIconArea:Landroid/view/View;

.field private mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowMap:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->initFlymeStatusBarService()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/widget/LinearLayout;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mSystemIconArea:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mCurrentPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->updateAlwaysShowArea(Landroid/os/Bundle;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->sInstance:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    if-nez v1, :cond_e

    .line 60
    new-instance v1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->sInstance:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    .line 62
    :cond_e
    sget-object p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->sInstance:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private inflateStatusBarAlwaysShowArea()V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_31

    .line 215
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->mz_always_show_area:I

    iget-object v2, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    .line 216
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    sget v1, Lcom/android/systemui/R$id;->always_show_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowTips:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    sget v1, Lcom/android/systemui/R$id;->always_show_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowImageView:Landroid/widget/ImageView;

    :cond_31
    return-void
.end method

.method private initFlymeStatusBarService()V
    .registers 3

    const-string v0, "flyme_statusbar"

    .line 66
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    if-eqz v0, :cond_43

    .line 69
    :try_start_10
    new-instance v0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    new-instance v1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)V

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mFlymeCommandQueue:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    .line 204
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mFlymeCommandQueue:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-interface {v0, p0}, Lmeizu/statusbar/IFlymeStatusBarService;->registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_23} :catch_24

    goto :goto_43

    :catch_24
    move-exception p0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeStatusBarService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_43
    :goto_43
    return-void
.end method

.method private updateAlwaysShowArea(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "resId"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "textColor"

    .line 223
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "bgColor"

    .line 224
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "tips"

    .line 225
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-object v3, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    if-nez v1, :cond_22

    if-nez v2, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->setNeedAutoColor(Z)V

    .line 227
    iget-object v3, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v1, :cond_3f

    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->status_bar_clock_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_44

    .line 231
    :cond_3f
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    :goto_44
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 234
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mAlwaysShowTips:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    if-eqz v0, :cond_25

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeStatusBarService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    goto :goto_22

    :cond_20
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_25
    return-void
.end method

.method public setOnConfigurationChanged(Z)V
    .registers 3

    if-eqz p1, :cond_16

    .line 255
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    if-eqz p1, :cond_16

    .line 256
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 257
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 259
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    return-void
.end method

.method public setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .registers 3

    .line 239
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 240
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v0, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 241
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->mNotificationIconArea:Landroid/view/View;

    .line 243
    invoke-direct {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->inflateStatusBarAlwaysShowArea()V

    return-void
.end method
