.class public Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChildClassName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mEnabled:Z

.field private mEntries:Ljava/lang/String;

.field private mIconResId:I

.field private mIntentAction:Ljava/lang/String;

.field private mIntentTargetClass:Ljava/lang/String;

.field private mIntentTargetPackage:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mNormalizedSummaryOff:Ljava/lang/String;

.field private mNormalizedSummaryOn:Ljava/lang/String;

.field private mNormalizedTitle:Ljava/lang/String;

.field private mPayload:Lcom/meizu/settings/search/ResultPayload;

.field private mPayloadType:I

.field private mRank:I

.field private mScreenTitle:Ljava/lang/String;

.field private mSpaceDelimitedKeywords:Ljava/lang/String;

.field private mUpdatedSummaryOff:Ljava/lang/String;

.field private mUpdatedSummaryOn:Ljava/lang/String;

.field private mUpdatedTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIconResId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mRank:I

    return p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mSpaceDelimitedKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Z
    .registers 1

    .line 1141
    iget-boolean p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mEnabled:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUserId:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayloadType:I

    return p0
.end method

.method static synthetic access$2100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/meizu/settings/search/ResultPayload;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/meizu/settings/search/ResultPayload;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mChildClassName:Ljava/lang/String;

    return-object p0
.end method

.method private buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 1305
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    if-nez v0, :cond_15

    .line 1307
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    const-string v1, "subsetting_target_package"

    .line 1308
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_63

    .line 1314
    :cond_15
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1315
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1316
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    :cond_27
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    .line 1320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    const-string v2, "com.meizu.settings.search.FlymeSearchIndexableResources"

    .line 1321
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1322
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    .line 1324
    :cond_43
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1326
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1330
    :cond_5b
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6d

    .line 1311
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->buildSubsettingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_6d
    return-object p1
.end method

.method private setIntent(Landroid/content/Context;)V
    .registers 3

    .line 1291
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/meizu/settings/search/ResultPayload;

    if-eqz v0, :cond_5

    return-void

    .line 1294
    :cond_5
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1295
    new-instance v0, Lcom/meizu/settings/search/ResultPayload;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/meizu/settings/search/ResultPayload;

    const/4 p1, 0x0

    .line 1296
    iput p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayloadType:I

    return-void
.end method

.method private setPayloadType(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1282
    iput p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayloadType:I

    return-object p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;
    .registers 3

    .line 1336
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntent(Landroid/content/Context;)V

    .line 1337
    new-instance p1, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;-><init>(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Lcom/meizu/settings/search/DatabaseIndexingManager$1;)V

    return-object p1
.end method

.method public setChildClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1212
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mChildClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1207
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1252
    iput-boolean p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setEntries(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1202
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method public setIconResId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1222
    iput p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIconResId:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1237
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1247
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1242
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1257
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1167
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedSummaryOff(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1197
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedSummaryOn(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1187
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1177
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1267
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/meizu/settings/search/ResultPayload;

    .line 1269
    iget-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/meizu/settings/search/ResultPayload;

    if-eqz p1, :cond_d

    .line 1270
    invoke-virtual {p1}, Lcom/meizu/settings/search/ResultPayload;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setPayloadType(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    :cond_d
    return-object p0
.end method

.method public setRank(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1227
    iput p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mRank:I

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1217
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSpaceDelimitedKeywords(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1232
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mSpaceDelimitedKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOff(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1192
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOn(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1182
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1172
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    .registers 2

    .line 1262
    iput p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->mUserId:I

    return-object p0
.end method
