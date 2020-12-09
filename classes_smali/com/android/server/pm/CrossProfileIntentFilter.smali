.class Lcom/android/server/pm/CrossProfileIntentFilter;
.super Landroid/content/IntentFilter;
.source "CrossProfileIntentFilter.java"


# static fields
.field private static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final TAG:Ljava/lang/String; = "CrossProfileIntentFilter"


# instance fields
.field final mFlags:I

.field final mOwnerPackage:Ljava/lang/String;

.field final mTargetUserId:I


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .registers 5

    .line 48
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 49
    iput p3, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 50
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string/jumbo v0, "targetUserId"

    const/16 v1, -0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 68
    const-string/jumbo v0, "ownerPackage"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 69
    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_2a
    :goto_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "filter"

    if-eq v2, v3, :cond_75

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_75

    .line 76
    :cond_3d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eq v2, v3, :cond_2a

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 78
    goto :goto_2a

    .line 79
    :cond_47
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 80
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 81
    goto :goto_75

    .line 83
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 88
    goto :goto_2a

    .line 91
    :cond_75
    :goto_75
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9a

    .line 94
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing element under CrossProfileIntentFilter: filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    :goto_9a
    return-void
.end method


# virtual methods
.method equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 4

    .line 137
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iget p1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    if-ne v0, p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 137
    :goto_19
    return p1
.end method

.method public getFlags()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    return v0
.end method

.method getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_c

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 118
    :cond_c
    return p3
.end method

.method public getOwnerPackage()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    return-object v0
.end method

.method getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 102
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_29

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing element under CrossProfileIntentFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    const/4 p2, 0x5

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 107
    return-object p3

    .line 109
    :cond_29
    return-object v0
.end method

.method public getTargetUserId()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileIntentFilter{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "targetUserId"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    const-string/jumbo v2, "ownerPackage"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 127
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    return-void
.end method
