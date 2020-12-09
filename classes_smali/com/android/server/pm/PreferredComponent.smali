.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field private final mSetupWizardPackageName:Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 10

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 67
    const/high16 p1, 0xfff0000

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 68
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 69
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 70
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 71
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    .line 73
    if-eqz p3, :cond_54

    .line 74
    array-length p2, p3

    .line 75
    new-array p4, p2, [Ljava/lang/String;

    .line 76
    new-array p5, p2, [Ljava/lang/String;

    .line 77
    new-array v0, p2, [Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    :goto_23
    if-ge v1, p2, :cond_4d

    .line 79
    aget-object v2, p3, v1

    .line 80
    if-nez v2, :cond_30

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 84
    return-void

    .line 86
    :cond_30
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 87
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v1

    .line 88
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 90
    :cond_4d
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 93
    goto :goto_5a

    .line 94
    :cond_54
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 98
    :goto_5a
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 103
    const-string/jumbo p1, "name"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 105
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_30

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad activity name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 108
    :cond_30
    const-string v1, "match"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    if-eqz v1, :cond_40

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    iput v1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 110
    const-string/jumbo v1, "set"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_51

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_52

    :cond_51
    move v3, v2

    .line 112
    :goto_52
    const-string v4, "always"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    const/4 v5, 0x1

    if-eqz v4, :cond_60

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_61

    :cond_60
    move v4, v5

    :goto_61
    iput-boolean v4, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 115
    if-lez v3, :cond_68

    new-array v4, v3, [Ljava/lang/String;

    goto :goto_69

    :cond_68
    move-object v4, v0

    .line 116
    :goto_69
    if-lez v3, :cond_6e

    new-array v6, v3, [Ljava/lang/String;

    goto :goto_6f

    :cond_6e
    move-object v6, v0

    .line 117
    :goto_6f
    if-lez v3, :cond_74

    new-array v7, v3, [Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v7, v0

    .line 119
    :goto_75
    nop

    .line 121
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 123
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v5, :cond_138

    const/4 v10, 0x3

    if-ne v9, v10, :cond_89

    .line 125
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_138

    .line 126
    :cond_89
    if-eq v9, v10, :cond_7a

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8f

    .line 128
    goto :goto_7a

    .line 131
    :cond_8f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_111

    .line 135
    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    if-nez v9, :cond_b9

    .line 137
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_10d

    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No name in set tag in preferred activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_10d

    .line 141
    :cond_b9
    if-lt v2, v3, :cond_d5

    .line 142
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_10d

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many set tags in preferred activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_10d

    .line 147
    :cond_d5
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 148
    if-nez v10, :cond_fd

    .line 149
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v10, :cond_10d

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad set name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in preferred activity "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_10d

    .line 154
    :cond_fd
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 155
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 156
    aput-object v9, v7, v2

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 160
    :cond_10d
    :goto_10d
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    :cond_110
    goto :goto_136

    :cond_111
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v10, v9, p2}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v9

    if-nez v9, :cond_110

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PreferredComponent"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    :goto_136
    goto/16 :goto_7a

    .line 167
    :cond_138
    if-eq v2, v3, :cond_163

    .line 168
    iget-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez p1, :cond_163

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough set tags (expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 174
    :cond_163
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 175
    iput-object v6, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 176
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 177
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 178
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    if-nez p1, :cond_8

    goto :goto_5e

    .line 296
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 297
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 299
    move v4, v1

    :goto_15
    if-ge v4, v0, :cond_51

    .line 300
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 301
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 302
    move v6, v1

    :goto_20
    if-ge v6, v2, :cond_4e

    .line 303
    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 304
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v6, v8, v6

    invoke-direct {v5, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    goto :goto_4e

    .line 302
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 299
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 309
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    return-object p1

    .line 294
    :cond_5e
    :goto_5e
    new-array p1, v1, [Landroid/content/ComponentName;

    return-object p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 313
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(C)V

    .line 316
    iget-object p3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mMatch=0x"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget p3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const-string p3, " mAlways="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 320
    iget-object p3, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz p3, :cond_57

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  Selected from:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const/4 p3, 0x0

    :goto_40
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_57

    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    add-int/lit8 p3, p3, 0x1

    goto :goto_40

    .line 327
    :cond_57
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperset(Ljava/util/List;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 259
    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 261
    :cond_a
    if-nez p1, :cond_d

    .line 262
    return v2

    .line 264
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 266
    if-nez p2, :cond_19

    if-ge v3, v0, :cond_19

    .line 267
    return v1

    .line 269
    :cond_19
    move v4, v1

    :goto_1a
    if-ge v4, v0, :cond_5a

    .line 270
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 271
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 272
    nop

    .line 276
    if-eqz p2, :cond_32

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 277
    goto :goto_57

    .line 280
    :cond_32
    move v6, v1

    :goto_33
    if-ge v6, v3, :cond_53

    .line 281
    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 282
    nop

    .line 283
    move v5, v2

    goto :goto_54

    .line 280
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_53
    move v5, v1

    .line 286
    :goto_54
    if-nez v5, :cond_57

    return v1

    .line 269
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 288
    :cond_5a
    return v2
.end method

.method public sameSet(Ljava/util/List;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 204
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 206
    :cond_b
    if-nez p1, :cond_e

    .line 207
    return v2

    .line 209
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 211
    nop

    .line 212
    move v4, v2

    move v5, v4

    :goto_18
    if-ge v4, v0, :cond_5d

    .line 213
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 214
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 215
    nop

    .line 219
    if-eqz p2, :cond_30

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 220
    goto :goto_5a

    .line 223
    :cond_30
    move v7, v2

    :goto_31
    if-ge v7, v3, :cond_54

    .line 224
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 226
    add-int/lit8 v5, v5, 0x1

    .line 227
    nop

    .line 228
    move v6, v5

    move v5, v1

    goto :goto_56

    .line 223
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_54
    move v6, v5

    move v5, v2

    .line 231
    :goto_56
    if-nez v5, :cond_59

    return v2

    :cond_59
    move v5, v6

    .line 212
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 233
    :cond_5d
    if-ne v5, v3, :cond_60

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    return v1
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .registers 12

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 238
    :cond_6
    array-length v2, p1

    .line 239
    array-length v0, v0

    .line 240
    nop

    .line 241
    move v3, v1

    move v4, v3

    :goto_b
    const/4 v5, 0x1

    if-ge v3, v2, :cond_3e

    .line 242
    aget-object v6, p1, v3

    .line 243
    nop

    .line 244
    move v7, v1

    :goto_12
    if-ge v7, v0, :cond_37

    .line 245
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 246
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 247
    add-int/lit8 v4, v4, 0x1

    .line 248
    nop

    .line 249
    goto :goto_38

    .line 244
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_37
    move v5, v1

    .line 252
    :goto_38
    if-nez v5, :cond_3b

    return v1

    .line 241
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 254
    :cond_3e
    if-ne v4, v0, :cond_41

    move v1, v5

    :cond_41
    return v1
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    goto :goto_8

    :cond_7
    move v0, v1

    .line 187
    :goto_8
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    if-eqz p2, :cond_48

    .line 189
    iget p2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz p2, :cond_20

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "match"

    invoke-interface {p1, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    :cond_20
    iget-boolean p2, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "always"

    invoke-interface {p1, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "set"

    invoke-interface {p1, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    nop

    :goto_36
    if-ge v1, v0, :cond_48

    .line 195
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    iget-object p2, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, v4, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 200
    :cond_48
    return-void
.end method
