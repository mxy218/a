.class public Lcom/meizu/settings/language/FlymeLocaleDisplayName;
.super Ljava/lang/Object;
.source "FlymeLocaleDisplayName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;
    }
.end annotation


# instance fields
.field private mInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mInfoMap:Ljava/util/Map;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mResources:Landroid/content/res/Resources;

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->parser(Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method private parser(Landroid/content/res/XmlResourceParser;)V
    .registers 11

    if-nez p1, :cond_a

    const-string p0, "FlymeLocaleDisplayName"

    const-string p1, "parser xml failed."

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 47
    :goto_d
    :try_start_d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_85

    .line 48
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_18} :catch_90
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_8b
    .catchall {:try_start_d .. :try_end_18} :catchall_89

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "item"

    if-ne v3, v6, :cond_57

    .line 49
    :try_start_1e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 51
    new-instance v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;

    invoke-direct {v2, p0}, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;-><init>(Lcom/meizu/settings/language/FlymeLocaleDisplayName;)V

    const/4 v3, 0x0

    .line 52
    invoke-interface {p1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->code:Ljava/lang/String;

    .line 54
    invoke-interface {p1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 56
    iget-object v4, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mResources:Landroid/content/res/Resources;

    const-string v7, "drawable"

    const-string v8, "com.android.settings"

    invoke-virtual {v4, v3, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->flagRes:I

    .line 58
    :cond_4a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    if-ne v3, v5, :cond_81

    .line 59
    invoke-interface {p1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->specialName:Ljava/lang/String;

    goto :goto_81

    .line 62
    :cond_57
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6b

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 63
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->englishName:Ljava/lang/String;

    goto :goto_81

    .line 64
    :cond_6b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_81

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    if-eqz v2, :cond_80

    .line 66
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mInfoMap:Ljava/util/Map;

    iget-object v3, v2, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->code:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    move-object v1, v0

    .line 70
    :cond_81
    :goto_81
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_84} :catch_90
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_84} :catch_8b
    .catchall {:try_start_1e .. :try_end_84} :catchall_89

    goto :goto_d

    .line 77
    :cond_85
    :goto_85
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_95

    :catchall_89
    move-exception p0

    goto :goto_96

    :catch_8b
    move-exception p0

    .line 75
    :try_start_8c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    :catch_90
    move-exception p0

    .line 73
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_89

    goto :goto_85

    :goto_95
    return-void

    .line 77
    :goto_96
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method


# virtual methods
.method public getEnglishName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;

    if-eqz p0, :cond_d

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->englishName:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getSpecialName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;

    if-eqz v0, :cond_15

    .line 98
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->mInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->specialName:Ljava/lang/String;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method
