.class public Lcom/android/server/slice/SliceFullAccessList;
.super Ljava/lang/Object;
.source "SliceFullAccessList.java"


# static fields
.field static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SliceFullAccessList"

.field private static final TAG_LIST:Ljava/lang/String; = "slice-access-list"

.field private static final TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field private final ATT_USER_ID:Ljava/lang/String;

.field private final ATT_VERSION:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFullAccessPkgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "user"

    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->ATT_USER_ID:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->ATT_VERSION:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/android/server/slice/SliceFullAccessList;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public grantFullAccess(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 58
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 59
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_16

    .line 60
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 61
    iget-object v1, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_16
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public hasFullAccess(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 53
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 54
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "xmlVersion":I
    iget-object v2, p0, Lcom/android/server/slice/SliceFullAccessList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, "activeUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 106
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p0, v1, v6}, Lcom/android/server/slice/SliceFullAccessList;->upgradeXml(II)V

    .line 107
    .end local v5  # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_17

    .line 109
    :cond_2f
    iget-object v4, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 112
    :goto_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v3, :cond_8e

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "tag":Ljava/lang/String;
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4c

    .line 115
    const-string/jumbo v7, "slice-access-list"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 116
    goto :goto_8e

    .line 118
    :cond_4c
    const/4 v7, 0x2

    if-ne v5, v7, :cond_8d

    .line 119
    const-string/jumbo v8, "user"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 120
    invoke-static {p1, v8, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 121
    .local v9, "userId":I
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 122
    .local v10, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v5, v11

    if-eq v11, v3, :cond_88

    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "userTag":Ljava/lang/String;
    if-ne v5, v6, :cond_75

    .line 125
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_75

    .line 126
    goto :goto_88

    .line 128
    :cond_75
    if-ne v5, v7, :cond_87

    .line 129
    const-string/jumbo v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v11  # "userTag":Ljava/lang/String;
    .end local v12  # "pkg":Ljava/lang/String;
    :cond_87
    goto :goto_61

    .line 135
    :cond_88
    :goto_88
    iget-object v6, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    .end local v4  # "tag":Ljava/lang/String;
    .end local v9  # "userId":I
    .end local v10  # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8d
    goto :goto_34

    .line 139
    :cond_8e
    :goto_8e
    return-void
.end method

.method public removeGrant(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 67
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 68
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_16

    .line 69
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 70
    iget-object v1, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_16
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method protected upgradeXml(II)V
    .registers 3
    .param p1, "xmlVersion"  # I
    .param p2, "userId"  # I

    .line 141
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 14
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "user"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string/jumbo v0, "slice-access-list"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v2, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 80
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_60

    .line 81
    iget-object v4, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 82
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 83
    .local v5, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    if-eq p2, v6, :cond_2f

    if-eq p2, v4, :cond_2f

    .line 84
    goto :goto_5d

    .line 86
    :cond_2f
    const-string/jumbo v6, "user"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    if-eqz v5, :cond_5a

    .line 89
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 90
    .local v7, "M":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_43
    if-ge v8, v7, :cond_5a

    .line 91
    const-string/jumbo v9, "pkg"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 96
    .end local v7  # "M":I
    .end local v8  # "j":I
    :cond_5a
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .end local v4  # "userId":I
    .end local v5  # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 98
    .end local v3  # "i":I
    :cond_60
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    return-void
.end method
