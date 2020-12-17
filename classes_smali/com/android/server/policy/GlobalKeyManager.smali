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
    .param p1, "context"  # Landroid/content/Context;

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
    .registers 12
    .param p1, "context"  # Landroid/content/Context;

    .line 93
    const-string v0, "GlobalKeyManager"

    const/4 v1, 0x0

    .line 95
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 96
    const-string v2, "global_keys"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_50

    .line 100
    :goto_20
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_2a

    .line 103
    goto :goto_50

    .line 105
    :cond_2a
    const-string/jumbo v5, "key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 106
    const-string/jumbo v5, "keyCode"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "keyCodeName":Ljava/lang/String;
    const-string v6, "component"

    invoke-interface {v1, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "componentName":Ljava/lang/String;
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    .line 109
    .local v7, "keyCode":I
    if-eqz v7, :cond_4f

    .line 110
    iget-object v8, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_4f} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_4f} :catch_61
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4f} :catch_57
    .catchall {:try_start_3 .. :try_end_4f} :catchall_55

    .line 114
    .end local v3  # "element":Ljava/lang/String;
    .end local v5  # "keyCodeName":Ljava/lang/String;
    .end local v6  # "componentName":Ljava/lang/String;
    .end local v7  # "keyCode":I
    :cond_4f
    goto :goto_20

    .line 123
    .end local v2  # "version":I
    :cond_50
    :goto_50
    nop

    .line 124
    :goto_51
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_75

    .line 123
    :catchall_55
    move-exception v0

    goto :goto_76

    .line 120
    :catch_57
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    :try_start_58
    const-string v3, "I/O exception reading global keys file"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    nop

    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_75

    .line 124
    goto :goto_51

    .line 118
    :catch_61
    move-exception v2

    .line 119
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "XML parser exception reading global keys file"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    nop

    .end local v2  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_75

    .line 124
    goto :goto_51

    .line 116
    :catch_6b
    move-exception v2

    .line 117
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "global keys file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_58 .. :try_end_71} :catchall_55

    .line 123
    nop

    .end local v2  # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_75

    .line 124
    goto :goto_51

    .line 127
    :cond_75
    :goto_75
    return-void

    .line 123
    :goto_76
    if-eqz v1, :cond_7b

    .line 124
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7b
    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 131
    .local v0, "numKeys":I
    if-nez v0, :cond_12

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mKeyMapping.size=0"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_12
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_4a

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

    goto :goto_1c

    .line 143
    .end local v1  # "i":I
    :cond_4a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "keyCode"  # I
    .param p3, "event"  # Landroid/view/KeyEvent;

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_31

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 77
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v0  # "component":Landroid/content/ComponentName;
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
