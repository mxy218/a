.class public Lcom/meizu/settings/utils/FlymeAccountHelper;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;,
        Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mAuthenticator:Lcom/meizu/account/oauth/MzAuthenticator;

.field private mBindIntent:Landroid/content/Intent;

.field private mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

.field private mBusinessResponse:Lcom/meizu/account/validate/IMzAccountBusinessResponse;

.field private mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

.field private mContext:Landroid/content/Context;

.field private mCurrentBusiness:Ljava/lang/String;

.field private mDialogHint:Ljava/lang/String;

.field private mDialogMsg:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mFlymeName:Ljava/lang/String;

.field private mIsGettingUserInfo:Z

.field private mPhoneNumber:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mUserIconPath:Ljava/lang/String;

.field private mUserIconUrl:Ljava/lang/String;

.field private mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

.field private mUserNickName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/utils/FlymeAccountHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mIsGettingUserInfo:Z

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mPhoneNumber:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/meizu/settings/utils/FlymeAccountHelper$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$1;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 124
    new-instance v1, Lcom/meizu/settings/utils/FlymeAccountHelper$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$2;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessResponse:Lcom/meizu/account/validate/IMzAccountBusinessResponse;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    .line 162
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.meizu.account.service.MzAccountBusinessService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBindIntent:Landroid/content/Intent;

    .line 163
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBindIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBindIntent:Landroid/content/Intent;

    const-string v1, "com.meizu.account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    new-instance p1, Lcom/meizu/account/oauth/MzAuthenticator;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    const-string v2, "basic"

    invoke-direct {p1, v1, v2}, Lcom/meizu/account/oauth/MzAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mAuthenticator:Lcom/meizu/account/oauth/MzAuthenticator;

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flyme_account"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconPath:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getUserIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 168
    invoke-direct {p0, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->initUserName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/account/validate/IMzAccountBusiness;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/utils/FlymeAccountHelper;Lcom/meizu/account/validate/IMzAccountBusiness;)Lcom/meizu/account/validate/IMzAccountBusiness;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/utils/FlymeAccountHelper;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->startBusiness()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->saveUserIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/utils/FlymeAccountHelper;Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->requestUserInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/utils/FlymeAccountHelper;Lorg/json/JSONObject;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->handleUserInfoJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$402(Lcom/meizu/settings/utils/FlymeAccountHelper;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mIsGettingUserInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getRoundUserIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/utils/FlymeAccountHelper;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/settings/utils/FlymeAccountHelper;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private doBusiness(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 216
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    .line 217
    iput-object p2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogTitle:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogMsg:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogHint:Ljava/lang/String;

    .line 221
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

    if-nez p1, :cond_17

    .line 222
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBindIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1a

    .line 224
    :cond_17
    invoke-direct {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->startBusiness()V

    :goto_1a
    return-void
.end method

.method private getAuthTokenAsync(Lcom/meizu/account/oauth/OnMzAuthListener;)V
    .registers 4

    .line 309
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mAuthenticator:Lcom/meizu/account/oauth/MzAuthenticator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/meizu/account/oauth/MzAuthenticator;->getAuthToken(ZZLandroid/app/Activity;Lcom/meizu/account/oauth/OnMzAuthListener;)V

    return-void
.end method

.method public static getFlymeAccountName(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 11

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_5d

    .line 268
    array-length v2, v0

    if-lez v2, :cond_5d

    .line 269
    sget-object v2, Lcom/meizu/settings/Constants;->URI_MEIZU_ACCOUNT:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 271
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "flyme"

    .line 272
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    if-eqz p1, :cond_59

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@flyme.cn"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_5a

    :cond_59
    move-object v1, v0

    .line 281
    :cond_5a
    :goto_5a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5d
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeAccountHelper;
    .registers 3

    .line 152
    sget-object v0, Lcom/meizu/settings/utils/FlymeAccountHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Lcom/meizu/settings/utils/FlymeAccountHelper;->mInstance:Lcom/meizu/settings/utils/FlymeAccountHelper;

    if-nez v1, :cond_e

    .line 154
    new-instance v1, Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {v1, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/utils/FlymeAccountHelper;->mInstance:Lcom/meizu/settings/utils/FlymeAccountHelper;

    .line 156
    :cond_e
    sget-object p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mInstance:Lcom/meizu/settings/utils/FlymeAccountHelper;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 157
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getRoundUserIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 338
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v3, v4

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private handleUserInfoJson(Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "@flyme.cn"

    :try_start_2
    const-string v1, "icon"

    .line 352
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    const-string v1, "nickname"

    .line 353
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    const-string v1, "flyme"

    .line 354
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    :cond_3d
    const-string v0, "phone"

    .line 358
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mPhoneNumber:Ljava/lang/String;

    .line 360
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    if-eqz p1, :cond_52

    .line 361
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;->getUserInfoSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_52
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->saveUserName(Ljava/lang/String;)V

    .line 366
    new-instance p1, Lcom/android/volley/toolbox/ImageRequest;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    new-instance v2, Lcom/meizu/settings/utils/FlymeAccountHelper$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$4;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/meizu/settings/utils/FlymeAccountHelper$5;

    invoke-direct {v6, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$5;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 392
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/utils/VolleyRequestManager;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/VolleyRequestManager;

    move-result-object p0

    const-string v0, "FlymeAccountHelper"

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/utils/VolleyRequestManager;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p0

    .line 395
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_81
    return-void
.end method

.method public static handleValidatePasswordError(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 4

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_1a

    if-eqz p2, :cond_1a

    const-string p1, "ErrorMsg"

    .line 301
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a

    const/4 p2, 0x0

    .line 303
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1a
    return-void
.end method

.method private initUserName(Ljava/lang/String;)V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    const-string v1, "flyme_account_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "flyme_account_name"

    .line 409
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    return-void
.end method

.method public static isFlymeAccountLogined(Landroid/content/Context;)Z
    .registers 2

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.meizu.account"

    .line 291
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 292
    array-length p0, p0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private requestUserInfo(Ljava/lang/String;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mAuthenticator:Lcom/meizu/account/oauth/MzAuthenticator;

    new-instance v1, Lcom/meizu/settings/utils/FlymeAccountHelper$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$3;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    invoke-virtual {v0, p1, v1}, Lcom/meizu/account/oauth/MzAuthenticator;->getUserInfo(Ljava/lang/String;Lcom/meizu/account/oauth/OnUserInfoListener;)V

    return-void
.end method

.method private requestUserInfoInternal()V
    .registers 2

    .line 479
    iget-boolean v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mIsGettingUserInfo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mIsGettingUserInfo:Z

    .line 485
    new-instance v0, Lcom/meizu/settings/utils/FlymeAccountHelper$7;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$7;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V

    invoke-direct {p0, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getAuthTokenAsync(Lcom/meizu/account/oauth/OnMzAuthListener;)V

    return-void
.end method

.method private saveUserIcon(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 413
    new-instance v0, Lcom/meizu/settings/utils/FlymeAccountHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper$6;-><init>(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveUserName(Ljava/lang/String;)V
    .registers 4

    .line 401
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    const-string v0, "flyme_account_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 403
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "flyme_account_name"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startBusiness()V
    .registers 4

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mCurrentBusiness:Ljava/lang/String;

    const-string v2, "validate_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 232
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogTitle:Ljava/lang/String;

    const-string v2, "Validate_Title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogMsg:Ljava/lang/String;

    const-string v2, "Validate_Message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 234
    :cond_29
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mCurrentBusiness:Ljava/lang/String;

    const-string v2, "logout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 235
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogTitle:Ljava/lang/String;

    const-string v2, "dialogTitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogMsg:Ljava/lang/String;

    const-string v2, "dialogMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mDialogHint:Ljava/lang/String;

    const-string v2, "dialogHint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "showClearData"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "showSyncDialog"

    .line 239
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mCurrentBusiness:Ljava/lang/String;

    const-string v2, "BUSINESS_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :try_start_5a
    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

    iget-object v2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessResponse:Lcom/meizu/account/validate/IMzAccountBusinessResponse;

    invoke-interface {v1, v0, v2}, Lcom/meizu/account/validate/IMzAccountBusiness;->doBusiness(Landroid/os/Bundle;Lcom/meizu/account/validate/IMzAccountBusinessResponse;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_70

    :catch_62
    const-string v0, "doBusiness error"

    const-string v1, "FlymeAccountHelper"

    .line 246
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    if-eqz p0, :cond_70

    .line 248
    invoke-interface {p0, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;->onError(Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public getDefaultUserIcon()Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    .line 455
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0807b7

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getFlymeName()Ljava/lang/String;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mFlymeName:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getUserIcon()Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    .line 440
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_34

    .line 441
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 443
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 444
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_34

    .line 445
    invoke-virtual {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getDefaultUserIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0

    .line 448
    :cond_2f
    invoke-virtual {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getDefaultUserIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0

    .line 451
    :cond_34
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public getUserNickName()Ljava/lang/String;
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    return-object p0
.end method

.method public logout(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout on the way mBusiness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusiness:Lcom/meizu/account/validate/IMzAccountBusiness;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "logout"

    .line 256
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mCurrentBusiness:Ljava/lang/String;

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/utils/FlymeAccountHelper;->doBusiness(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mzAccountAppInstalled()Z
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.account"

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needUpdateFlymeAccount()Z
    .registers 8

    .line 172
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.meizu.account/account"

    .line 173
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 172
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, ""

    move-object v2, v1

    if-eqz v0, :cond_37

    .line 177
    :goto_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v1, "icon"

    .line 178
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 179
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname"

    .line 180
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 181
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .line 184
    :cond_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconUrl from uri :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mUserIconUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nickname:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mUserNickName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FlymeAccountHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 190
    :cond_77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserNickName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    :cond_85
    const/4 p0, 0x1

    return p0

    :cond_87
    const/4 p0, 0x0

    return p0
.end method

.method public registerFlymeAccountContentObserver(Landroid/database/ContentObserver;)V
    .registers 4

    if-eqz p1, :cond_12

    const-string v0, "content://com.meizu.account"

    .line 199
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_12
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    .line 475
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mBusinessStateChangeListenner:Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    return-void
.end method

.method public requestUserInfo(Ljava/lang/String;ZLcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;)V
    .registers 4

    .line 460
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->initUserName(Ljava/lang/String;)V

    .line 461
    iput-object p3, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    .line 463
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeNetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserInfoLister:Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    if-eqz p1, :cond_18

    const/4 p0, 0x1

    const-string p2, "network error"

    .line 464
    invoke-interface {p1, p0, p2}, Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;->getUserInfoFailed(ILjava/lang/String;)V

    return-void

    .line 468
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mUserIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_21

    .line 469
    :cond_1e
    invoke-direct {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->requestUserInfoInternal()V

    :cond_21
    return-void
.end method

.method public startFlymeAccountLogincActivity(Landroid/content/Context;)V
    .registers 3

    .line 535
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.meizu.account.action.normal_login"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.account"

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 538
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 540
    :cond_16
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string p0, "FlymeAccountHelper"

    const-string p1, "action : com.meizu.account.action.normal_login not found."

    .line 543
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public startFlymeDataSyncActivity(Landroid/content/Context;)V
    .registers 3

    .line 520
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.meizu.sync.SYNC_CONTROL"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.mzsyncservice"

    .line 521
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 523
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 525
    :cond_16
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string p0, "FlymeAccountHelper"

    const-string p1, "action : com.meizu.sync.SYNC_CONTROL not found."

    .line 529
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public unregisterFlymeAccountContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public validatePassword(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "validate_password"

    .line 210
    iput-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper;->mCurrentBusiness:Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/utils/FlymeAccountHelper;->doBusiness(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
