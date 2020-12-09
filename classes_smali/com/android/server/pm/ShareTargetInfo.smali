.class Lcom/android/server/pm/ShareTargetInfo;
.super Ljava/lang/Object;
.source "ShareTargetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShareTargetInfo$TargetData;
    }
.end annotation


# static fields
.field private static final ATTR_HOST:Ljava/lang/String; = "host"

.field private static final ATTR_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_PATH_PATTERN:Ljava/lang/String; = "pathPattern"

.field private static final ATTR_PATH_PREFIX:Ljava/lang/String; = "pathPrefix"

.field private static final ATTR_PORT:Ljava/lang/String; = "port"

.field private static final ATTR_SCHEME:Ljava/lang/String; = "scheme"

.field private static final ATTR_TARGET_CLASS:Ljava/lang/String; = "targetClass"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"


# instance fields
.field final mCategories:[Ljava/lang/String;

.field final mTargetClass:Ljava/lang/String;

.field final mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;


# direct methods
.method constructor <init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 106
    iput-object p2, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 154
    const-string/jumbo v0, "targetClass"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_11
    :goto_11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6d

    .line 160
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5d

    .line 161
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x2eefaa

    if-eq v6, v7, :cond_39

    const v7, 0x302bcfe

    if-eq v6, v7, :cond_2f

    :cond_2e
    goto :goto_43

    :cond_2f
    const-string v6, "category"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v4

    goto :goto_44

    :cond_39
    const-string v6, "data"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    goto :goto_44

    :goto_43
    move v3, v5

    :goto_44
    if-eqz v3, :cond_54

    if-eq v3, v4, :cond_49

    goto :goto_5c

    .line 166
    :cond_49
    const-string/jumbo v3, "name"

    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 163
    :cond_54
    invoke-static {p0}, Lcom/android/server/pm/ShareTargetInfo;->parseTargetData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    nop

    .line 167
    :goto_5c
    goto :goto_11

    .line 169
    :cond_5d
    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "share-target"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 173
    :cond_6d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9a

    if-eqz v0, :cond_9a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7c

    goto :goto_9a

    .line 176
    :cond_7c
    new-instance p0, Lcom/android/server/pm/ShareTargetInfo;

    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    return-object p0

    .line 174
    :cond_9a
    :goto_9a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseTargetData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 10

    .line 182
    const-string/jumbo v0, "scheme"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v0, "host"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string/jumbo v0, "port"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    const-string/jumbo v0, "path"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    const-string/jumbo v0, "pathPattern"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    const-string/jumbo v0, "pathPrefix"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    const-string v0, "mimeType"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    new-instance p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-string/jumbo v0, "share-target"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    const-string/jumbo v3, "targetClass"

    invoke-static {p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    const/4 v2, 0x0

    move v3, v2

    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v4, v4

    if-ge v3, v4, :cond_73

    .line 132
    const-string v4, "data"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    const-string/jumbo v6, "scheme"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    const-string v6, "host"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    const-string/jumbo v6, "port"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    const-string/jumbo v6, "path"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    const-string/jumbo v6, "pathPattern"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    const-string/jumbo v6, "pathPrefix"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 139
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    const-string v6, "mimeType"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 143
    :cond_73
    nop

    :goto_74
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_8e

    .line 144
    const-string v3, "category"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget-object v4, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 149
    :cond_8e
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string/jumbo v1, "targetClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    .line 115
    const-string v3, " data={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShareTargetInfo$TargetData;->toStringInner(Ljava/lang/StringBuilder;)V

    .line 117
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 119
    :cond_2c
    nop

    :goto_2d
    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_41

    .line 120
    const-string v2, " category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 123
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
