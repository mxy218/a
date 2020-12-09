.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallHandler;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/server/firewall/FilterFactory;

    sget-object v1, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0x8

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0x9

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xa

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xb

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xc

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xd

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xe

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xf

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0x10

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0x11

    aput-object v1, v0, v5

    .line 104
    new-instance v1, Ljava/util/HashMap;

    array-length v5, v0

    mul-int/2addr v5, v4

    div-int/2addr v5, v3

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 105
    nop

    :goto_80
    array-length v1, v0

    if-ge v2, v1, :cond_91

    .line 106
    aget-object v1, v0, v2

    .line 107
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 109
    :cond_91
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 76
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 77
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 112
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    .line 113
    new-instance p1, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 114
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 119
    new-instance p2, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 120
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    .line 121
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .registers 1

    .line 254
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 226
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_a
    array-length v5, p0

    const/16 v6, 0x96

    if-ge v3, v5, :cond_3a

    .line 229
    aget-object v5, p0, v3

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    if-ge v7, v6, :cond_2a

    .line 234
    if-nez v4, :cond_25

    .line 235
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 237
    :cond_25
    move v4, v1

    .line 239
    :goto_26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 240
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x7d

    if-lt v5, v6, :cond_37

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 228
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 244
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_61

    array-length v0, p0

    if-lez v0, :cond_61

    .line 245
    aget-object p0, p0, v1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 15

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 188
    nop

    .line 189
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 190
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 189
    :cond_e
    move-object v3, v1

    .line 193
    :goto_f
    nop

    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_30

    .line 198
    :try_start_17
    invoke-interface {v2, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_22

    .line 200
    array-length v0, v2

    .line 201
    invoke-static {v2}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_25

    .line 205
    :cond_22
    move v5, v0

    move-object v6, v1

    goto :goto_32

    .line 203
    :catch_25
    move-exception v2

    .line 204
    const-string v4, "IntentFirewall"

    const-string v5, "Remote exception while retrieving packages"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v0

    move-object v6, v1

    goto :goto_32

    .line 196
    :cond_30
    move v5, v0

    move-object v6, v1

    .line 208
    :goto_32
    nop

    .line 209
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 208
    move v2, p0

    move v4, p2

    move-object v8, p3

    invoke-static/range {v2 .. v10}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    .line 389
    if-eqz v1, :cond_13

    .line 392
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 390
    :cond_13
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element in filter list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .registers 15

    .line 302
    const-string v0, "Error reading intent firewall rules from "

    const-string v1, "Error while closing "

    const-string v2, "IntentFirewall"

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    const/4 v5, 0x0

    move v6, v5

    :goto_e
    if-ge v6, v4, :cond_1b

    .line 304
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 309
    :cond_1b
    :try_start_1b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_158

    .line 313
    nop

    .line 316
    :try_start_21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 318
    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v8, "rules"

    invoke-static {v6, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 322
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 323
    :goto_33
    invoke-static {v6, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 324
    nop

    .line 326
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 327
    const-string v10, "activity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_49

    .line 328
    move v9, v5

    goto :goto_5f

    .line 329
    :cond_49
    const-string v10, "broadcast"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 330
    const/4 v9, 0x1

    goto :goto_5f

    .line 331
    :cond_53
    const-string/jumbo v10, "service"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 332
    const/4 v9, 0x2

    goto :goto_5f

    .line 331
    :cond_5e
    move v9, v11

    .line 335
    :goto_5f
    if-eq v9, v11, :cond_8a

    .line 336
    new-instance v10, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-direct {v10, v7}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    .line 338
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_6c} :catch_115
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_6c} :catch_ea
    .catchall {:try_start_21 .. :try_end_6c} :catchall_e8

    .line 343
    :try_start_6c
    invoke-virtual {v10, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_74
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_ea
    .catchall {:try_start_6c .. :try_end_6f} :catchall_e8

    .line 347
    nop

    .line 349
    :try_start_70
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 344
    :catch_74
    move-exception v9

    .line 345
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading an intent firewall rule from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_89} :catch_115
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_89} :catch_ea
    .catchall {:try_start_70 .. :try_end_89} :catchall_e8

    .line 346
    goto :goto_33

    .line 351
    :cond_8a
    :goto_8a
    goto :goto_33

    .line 362
    :cond_8b
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 365
    goto :goto_a3

    .line 363
    :catch_8f
    move-exception v0

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    nop

    .line 368
    :goto_a3
    move p1, v5

    :goto_a4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_e7

    .line 369
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 370
    aget-object v1, p2, p1

    .line 372
    move v2, v5

    :goto_b3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_e4

    .line 373
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 374
    move v6, v5

    :goto_c0
    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v7

    if-ge v6, v7, :cond_d0

    .line 375
    invoke-virtual {v4, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 374
    add-int/lit8 v6, v6, 0x1

    goto :goto_c0

    .line 377
    :cond_d0
    move v6, v5

    :goto_d1
    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v7

    if-ge v6, v7, :cond_e1

    .line 378
    invoke-virtual {v4, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 377
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 372
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 368
    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_a4

    .line 382
    :cond_e7
    return-void

    .line 361
    :catchall_e8
    move-exception p2

    goto :goto_140

    .line 357
    :catch_ea
    move-exception p2

    .line 358
    :try_start_eb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fd
    .catchall {:try_start_eb .. :try_end_fd} :catchall_e8

    .line 362
    :try_start_fd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    .line 365
    goto :goto_114

    .line 363
    :catch_101
    move-exception p2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :goto_114
    return-void

    .line 352
    :catch_115
    move-exception p2

    .line 355
    :try_start_116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_128
    .catchall {:try_start_116 .. :try_end_128} :catchall_e8

    .line 362
    :try_start_128
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12c

    .line 365
    goto :goto_13f

    .line 363
    :catch_12c
    move-exception p2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_13f
    return-void

    .line 362
    :goto_140
    :try_start_140
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144

    .line 365
    goto :goto_157

    .line 363
    :catch_144
    move-exception v0

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :goto_157
    throw p2

    .line 310
    :catch_158
    move-exception p1

    .line 312
    return-void
.end method

.method private readRulesDir(Ljava/io/File;)V
    .registers 8

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 269
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 270
    new-instance v3, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aput-object v3, v0, v2

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 273
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 274
    if-eqz p1, :cond_31

    .line 275
    move v2, v1

    :goto_1a
    array-length v3, p1

    if-ge v2, v3, :cond_31

    .line 276
    aget-object v3, p1, v2

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 279
    invoke-direct {p0, v3, v0}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    .line 275
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 284
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read new rules (A:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " B:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    .line 285
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " S:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 286
    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string v4, "IntentFirewall"

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {p1}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 289
    :try_start_83
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 290
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 291
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 292
    monitor-exit p1

    .line 293
    return-void

    .line 292
    :catchall_91
    move-exception v0

    monitor-exit p1
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_91

    throw v0
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 15

    .line 141
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .registers 12

    .line 598
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .registers 26

    .line 148
    move-object/from16 v0, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    .line 149
    nop

    .line 154
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10, v10}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    .line 155
    if-nez v1, :cond_15

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    goto :goto_16

    .line 155
    :cond_15
    move-object v11, v1

    .line 158
    :goto_16
    move-object/from16 v12, p2

    invoke-virtual {v0, v12, v11}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 162
    move v13, v10

    move v14, v13

    move v15, v14

    :goto_1e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_54

    .line 163
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 164
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 166
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v0

    or-int/2addr v14, v0

    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v0

    or-int/2addr v15, v0

    .line 171
    if-eqz v14, :cond_51

    if-eqz v15, :cond_51

    .line 172
    goto :goto_54

    .line 162
    :cond_51
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 177
    :cond_54
    :goto_54
    if-eqz v15, :cond_5d

    .line 178
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v8, v1, v9}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    .line 181
    :cond_5d
    if-nez v14, :cond_60

    const/4 v10, 0x1

    :cond_60
    return v10
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16

    .line 135
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15

    .line 129
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method signaturesMatch(II)Z
    .registers 5

    .line 604
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 605
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-nez p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 606
    :catch_d
    move-exception p1

    .line 607
    const-string p2, "IntentFirewall"

    const-string v1, "Remote exception while checking signatures"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    return v0
.end method
