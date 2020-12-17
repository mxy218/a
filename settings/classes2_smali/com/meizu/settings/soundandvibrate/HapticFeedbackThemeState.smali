.class public Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;,
        Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;,
        Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;,
        Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;
    }
.end annotation


# static fields
.field private static mState:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

.field private static sGlobalLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

.field private mHandler:Landroid/os/Handler;

.field private mNormalHapticPreviewLength:I

.field private mRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSoftHapticPreviewLength:I

.field private mStrongHapticPreviewLength:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;-><init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mReceiver:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;

    .line 64
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;-><init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$2;-><init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mRankComparator:Ljava/util/Comparator;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mContext:Landroid/content/Context;

    .line 151
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    .line 152
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "HapticFeedbackThemeState"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 153
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance p1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;-><init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundHandler:Landroid/os/Handler;

    .line 156
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mVibrator:Landroid/os/Vibrator;

    .line 157
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0b0041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mStrongHapticPreviewLength:I

    .line 158
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0b0039

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mNormalHapticPreviewLength:I

    .line 159
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mSoftHapticPreviewLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->prepareThemeList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
    .registers 3

    .line 163
    sget-object v0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-object v1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mState:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    if-nez v1, :cond_e

    .line 165
    new-instance v1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mState:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    .line 167
    :cond_e
    sget-object p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mState:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private prepareThemeList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 198
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x8

    .line 199
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 201
    new-instance v2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    invoke-direct {v2}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;-><init>()V

    .line 202
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f12094c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->name:Ljava/lang/String;

    const-string v3, "content://com.immersion.android.haptics.defaulttheme"

    .line 203
    iput-object v3, v2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    const/4 v3, 0x1

    .line 204
    iput v3, v2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->rank:I

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 211
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    move v4, v3

    .line 212
    :goto_42
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v5

    if-ge v4, v6, :cond_30

    .line 213
    aget-object v6, v5, v4

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v6, :cond_ce

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, "com.immersion.android.haptictheme."

    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_67

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, "com.meizu.flyme.android.haptictheme."

    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 222
    :cond_67
    :try_start_67
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "theme_name"

    const-string v7, "string"

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 223
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 224
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 225
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ce

    .line 228
    new-instance v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    invoke-direct {v6}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;-><init>()V

    .line 229
    iput-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->name:Ljava/lang/String;

    .line 230
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    .line 231
    iget-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    const-string v7, "Soft"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 232
    iget-object v5, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f12094d

    .line 233
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->name:Ljava/lang/String;

    const/4 v5, 0x2

    .line 234
    iput v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->rank:I

    goto :goto_c6

    .line 235
    :cond_af
    iget-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    const-string v7, "Strong"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 236
    iget-object v5, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f12094e

    .line 237
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->name:Ljava/lang/String;

    .line 238
    iput v3, v6, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->rank:I

    .line 240
    :cond_c6
    :goto_c6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception v5

    .line 243
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_ce
    :goto_ce
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_42

    .line 249
    :cond_d2
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mRankComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public pause()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mReceiver:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;

    invoke-virtual {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->pause()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public performHapticPreview(Ljava/lang/String;)V
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performHapticPreview theme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticFeedbackThemeState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 259
    :cond_1d
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mNormalHapticPreviewLength:I

    const-string v1, "Soft"

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 261
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mSoftHapticPreviewLength:I

    goto :goto_34

    :cond_2a
    const-string v1, "Strong"

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 263
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mStrongHapticPreviewLength:I

    :cond_34
    :goto_34
    if-lez v0, :cond_3e

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_3e

    int-to-long v0, v0

    .line 266
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3e
    return-void
.end method

.method public resume(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;Z)V
    .registers 3

    .line 172
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    .line 173
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mReceiver:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;

    invoke-virtual {p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->resume()V

    if-eqz p2, :cond_19

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    if-eqz p1, :cond_27

    .line 176
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->prepareThemeList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mGetHapticCompleteListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    invoke-interface {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;->OnGetHapticComplete(Ljava/util/ArrayList;)V

    goto :goto_27

    .line 180
    :cond_19
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_27

    .line 181
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_27
    :goto_27
    return-void
.end method
