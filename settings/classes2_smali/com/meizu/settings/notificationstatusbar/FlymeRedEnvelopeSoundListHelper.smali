.class public Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;
.super Ljava/lang/Object;
.source "FlymeRedEnvelopeSoundListHelper.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_STR:Ljava/lang/String;

.field private static final EMPTY_URI:Landroid/net/Uri;

.field private static volatile mInstance:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteContext:Landroid/content/Context;

.field private mRemoteResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 27
    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_INT_ARRAY:[I

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;
    .registers 3

    .line 41
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mInstance:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    if-nez v0, :cond_1b

    .line 42
    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    monitor-enter v0

    .line 43
    :try_start_7
    sget-object v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mInstance:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    if-nez v1, :cond_16

    .line 44
    new-instance v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mInstance:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    .line 46
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 48
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mInstance:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    return-object p0
.end method

.method private getRemoteResId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_14

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    .line 82
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    const-string v0, "com.flyme.systemuitools"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method private getStrByValue(I[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 124
    invoke-virtual {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getSoundValues()[I

    move-result-object p0

    if-nez p0, :cond_9

    .line 126
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0

    :cond_9
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 129
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 130
    aget v2, p0, v1

    if-ne v2, p1, :cond_14

    move v0, v1

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    :goto_17
    if-ltz v0, :cond_22

    if-eqz p2, :cond_22

    .line 135
    array-length p0, p2

    if-le v0, p0, :cond_1f

    goto :goto_22

    .line 140
    :cond_1f
    aget-object p0, p2, v0

    return-object p0

    .line 138
    :cond_22
    :goto_22
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public buildUri(I)Landroid/net/Uri;
    .registers 4

    .line 61
    invoke-virtual {p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getFileByValue(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    const-string v1, "silence"

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3f

    :cond_10
    const-string v1, "system"

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_20
    const-string v1, "raw"

    .line 69
    invoke-direct {p0, p1, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getRemoteResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_29

    return-object v0

    .line 73
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://com.flyme.systemuitools/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public getFileByValue(I)Ljava/lang/String;
    .registers 4

    const-string v0, "luckymoney_sound_file"

    const-string v1, "array"

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getRemoteResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 113
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getStrByValue(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_17} :catch_18

    return-object p0

    .line 119
    :catch_18
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0
.end method

.method public getNameByValue(I)Ljava/lang/String;
    .registers 4

    const-string v0, "luckymoney_sound_name"

    const-string v1, "array"

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getRemoteResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 100
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0

    .line 103
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getStrByValue(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_17} :catch_18

    return-object p0

    .line 106
    :catch_18
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_STR:Ljava/lang/String;

    return-object p0
.end method

.method public getSoundValues()[I
    .registers 3

    const-string v0, "luckymoney_sound_value"

    const-string v1, "array"

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getRemoteResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 88
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 91
    :cond_d
    :try_start_d
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_13} :catch_14

    return-object p0

    .line 93
    :catch_14
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->EMPTY_INT_ARRAY:[I

    return-object p0
.end method

.method public isRemoteAvailable()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public updateRemoteRes()V
    .registers 4

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.flyme.systemuitools"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->mRemoteResource:Landroid/content/res/Resources;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_2b

    :catch_14
    move-exception p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart remote context error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlymeRedEnvelopeSoundListHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method
