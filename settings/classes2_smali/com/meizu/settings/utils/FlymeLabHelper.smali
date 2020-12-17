.class public Lcom/meizu/settings/utils/FlymeLabHelper;
.super Ljava/lang/Object;
.source "FlymeLabHelper.java"


# static fields
.field private static mInstance:Lcom/meizu/settings/utils/FlymeLabHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeLabHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeLabHelper;
    .registers 2

    .line 23
    sget-object v0, Lcom/meizu/settings/utils/FlymeLabHelper;->mInstance:Lcom/meizu/settings/utils/FlymeLabHelper;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/meizu/settings/utils/FlymeLabHelper;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/FlymeLabHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/utils/FlymeLabHelper;->mInstance:Lcom/meizu/settings/utils/FlymeLabHelper;

    .line 27
    :cond_b
    sget-object p0, Lcom/meizu/settings/utils/FlymeLabHelper;->mInstance:Lcom/meizu/settings/utils/FlymeLabHelper;

    return-object p0
.end method


# virtual methods
.method public hasRaiseFlipFeature()Z
    .registers 2

    const-string v0, "com.android.settings.raiseflip"

    .line 57
    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->isFlymeLabHasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFlymeLabHasAppCloneFeature()Z
    .registers 2

    const-string v0, "com.android.settings.appcloner"

    .line 53
    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->isFlymeLabHasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFlymeLabHasFeature(Ljava/lang/String;)Z
    .registers 8

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeLabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.meizu.flymelab.features/packageNameList"

    .line 36
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    .line 39
    :cond_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 40
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_2f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_32
    return v0
.end method
