.class final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .registers 8

    .line 93
    const-string v0, "GlobalKeyManager"

    .line 95
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1170008

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_e} :catch_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_e} :catch_64
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_58
    .catchall {:try_start_3 .. :try_end_e} :catchall_55

    .line 96
    :try_start_e
    const-string v2, "global_keys"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 98
    const/4 v3, 0x1

    if-ne v3, v2, :cond_4c

    .line 100
    :goto_1e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    if-nez v2, :cond_28

    .line 103
    goto :goto_4c

    .line 105
    :cond_28
    const-string v3, "key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 106
    const-string v2, "keyCode"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "component"

    invoke-interface {p1, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    .line 109
    if-eqz v2, :cond_4b

    .line 110
    iget-object v4, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_4b} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_4b} :catch_51
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4b} :catch_4f
    .catchall {:try_start_e .. :try_end_4b} :catchall_4d

    .line 114
    :cond_4b
    goto :goto_1e

    .line 123
    :cond_4c
    :goto_4c
    goto :goto_7b

    :catchall_4d
    move-exception v0

    goto :goto_7f

    .line 120
    :catch_4f
    move-exception v1

    goto :goto_5c

    .line 118
    :catch_51
    move-exception v1

    goto :goto_68

    .line 116
    :catch_53
    move-exception v1

    goto :goto_74

    .line 123
    :catchall_55
    move-exception v0

    move-object p1, v1

    goto :goto_7f

    .line 120
    :catch_58
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 121
    :goto_5c
    :try_start_5c
    const-string v2, "I/O exception reading global keys file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    if-eqz p1, :cond_7e

    .line 124
    goto :goto_7b

    .line 118
    :catch_64
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 119
    :goto_68
    const-string v2, "XML parser exception reading global keys file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    if-eqz p1, :cond_7e

    .line 124
    goto :goto_7b

    .line 116
    :catch_70
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 117
    :goto_74
    const-string v2, "global keys file not found"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_4d

    .line 123
    if-eqz p1, :cond_7e

    .line 124
    :goto_7b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 127
    :cond_7e
    return-void

    .line 123
    :goto_7f
    if-eqz p1, :cond_84

    .line 124
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_84
    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 131
    if-nez v0, :cond_11

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mKeyMapping.size=0"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_48

    .line 137
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 143
    :cond_48
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 73
    if-eqz p2, :cond_36

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 77
    const-string p3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 78
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 79
    const/4 p1, 0x1

    return p1

    .line 82
    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 89
    iget-object p2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
