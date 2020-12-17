.class public Lcom/android/systemui/tuner/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPkg:Ljava/lang/String;

.field private final mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1, p2}, Lcom/android/systemui/tuner/ShortcutParser;->getResId(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p2

    .line 52
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    .line 70
    iput p4, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    .line 71
    iput-object p3, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    return-void
.end method

.method private static getResId(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 61
    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.app.shortcuts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 62
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    sget-object v2, Lcom/android/internal/R$styleable;->Shortcut:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    invoke-direct {v1}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;-><init>()V

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return-object v3

    :cond_18
    const/4 v2, 0x2

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x3

    .line 110
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 112
    iget-object v5, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->pkg:Ljava/lang/String;

    .line 113
    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    .line 114
    iput-object v4, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->name:Ljava/lang/String;

    .line 118
    :cond_3f
    :goto_3f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_5f

    if-eq v0, v2, :cond_48

    goto :goto_3f

    .line 122
    :cond_48
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "intent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 123
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    invoke-static {v0, p1, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    goto :goto_3f

    .line 126
    :cond_5f
    iget-object p0, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_64

    goto :goto_65

    :cond_64
    move-object v1, v3

    :goto_65
    return-object v1
.end method


# virtual methods
.method public getShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/tuner/ShortcutParser$Shortcut;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    if-eqz v1, :cond_4b

    .line 78
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    .line 82
    :cond_25
    :goto_25
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_30

    goto :goto_25

    .line 86
    :cond_30
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 87
    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/ShortcutParser;->parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_47

    goto :goto_25

    :catch_47
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    return-object v0
.end method
