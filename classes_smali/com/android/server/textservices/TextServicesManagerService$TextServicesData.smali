.class Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesData"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateCount:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 104
    iput p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 105
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 107
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 108
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 110
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->initializeTextServicesData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I
    .registers 1

    .line 93
    iget p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 16

    .line 222
    nop

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v0, "  Spell Checkers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Spell Checkers: mUpdateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Spell Checker #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3, p1, v4}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 230
    goto :goto_3e

    .line 232
    :cond_66
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v0, "  Spell Checker Bind Groups:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 236
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_257

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mInternalConnection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mSpellChecker="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$200(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mUnbindCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$300(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$400(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 244
    move v6, v1

    :goto_11a
    const-string v7, " mUid="

    const-string v8, "        mScLocale="

    const-string v9, "        mTsListener="

    const-string v10, "        mScListener="

    if-ge v6, v5, :cond_18c

    .line 245
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 246
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Pending Request #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_11a

    .line 252
    :cond_18c
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 253
    move v6, v1

    :goto_195
    if-ge v6, v5, :cond_1ff

    .line 254
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 255
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      On going Request #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto :goto_195

    .line 261
    :cond_1ff
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v5

    .line 262
    move v6, v1

    :goto_208
    if-ge v6, v5, :cond_255

    .line 263
    nop

    .line 264
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      Listener #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        mGroup="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_208

    .line 269
    :cond_255
    goto/16 :goto_7a

    .line 270
    :cond_257
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    return p2
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private getSelectedSpellChecker()Ljava/lang/String;
    .registers 3

    .line 145
    const-string/jumbo v0, "selected_spell_checker"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 120
    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    move-object p1, p2

    :goto_c
    return-object p1
.end method

.method private initializeTextServicesData()V
    .registers 10

    .line 178
    const-string v0, "Unable to load the spell checker "

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 180
    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 181
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 189
    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_d6

    .line 190
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 191
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 192
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "Skipping text service "

    if-nez v5, :cond_6a

    .line 194
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": it does not require the permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_d2

    .line 201
    :cond_6a
    :try_start_6a
    new-instance v5, Landroid/view/textservice/SpellCheckerInfo;

    iget-object v7, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 202
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v4

    if-gtz v4, :cond_93

    .line 203
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": it does not contain subtypes."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    goto :goto_d2

    .line 207
    :cond_93
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_a1} :catch_ba
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_a1} :catch_a2

    goto :goto_d1

    .line 211
    :catch_a2
    move-exception v4

    .line 212
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d2

    .line 209
    :catch_ba
    move-exception v4

    .line 210
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    :goto_d1
    nop

    .line 189
    :goto_d2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2c

    .line 219
    :cond_d6
    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    return-void
.end method

.method private putSelectedSpellChecker(Ljava/lang/String;)V
    .registers 3

    .line 136
    const-string/jumbo v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private putSelectedSpellCheckerSubtype(I)V
    .registers 3

    .line 140
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putInt(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 114
    return-void
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 158
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_c
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .registers 3

    .line 149
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .line 153
    const-string/jumbo v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 2

    .line 166
    if-eqz p1, :cond_a

    .line 167
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    goto :goto_f

    .line 169
    :cond_a
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 171
    :goto_f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellCheckerSubtype(I)V

    .line 172
    return-void
.end method
