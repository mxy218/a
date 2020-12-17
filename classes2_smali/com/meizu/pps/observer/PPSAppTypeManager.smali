.class public Lcom/meizu/pps/observer/PPSAppTypeManager;
.super Ljava/lang/Object;
.source "PPSAppTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;,
        Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;,
        Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    }
.end annotation


# static fields
.field public static final BAD_APP_MASK:I

.field private static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final FAVORITE_APP:I = 0x3

.field public static final HEAVY_APP_MASK:I = 0x1600

.field private static final LIST_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field public static final PRIORITY_MASK:I

.field private static final RECENT_LOCK_SAVED_APPS:Ljava/lang/String; = "recent_lock_apps"

.field private static final TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/pps/observer/PPSAppTypeManager$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_LOCKED_MASK:I = 0x600

.field private static sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

.field private static sSettingObserver:Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/high16 v0, 0x40000

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->mask(I)I

    move-result v0

    sput v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->PRIORITY_MASK:I

    .line 42
    sget v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->PRIORITY_MASK:I

    not-int v0, v0

    sput v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->BAD_APP_MASK:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->clear()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateLockedList()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateInputMethod()V

    return-void
.end method

.method public static addNotification(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"  # Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 139
    .local v1, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 140
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v3, "notification"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 143
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v2, 0x4000

    invoke-static {p0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addType(Ljava/lang/String;I)V

    .line 146
    .end local v1  # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2a
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public static addType(Ljava/lang/String;I)V
    .registers 2
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "type"  # I

    .line 215
    invoke-static {p0, p1, p1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->setType(Ljava/lang/String;II)V

    .line 216
    return-void
.end method

.method public static addWidget(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"  # Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 98
    .local v1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 99
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v3, "widget"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 102
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addType(Ljava/lang/String;I)V

    .line 104
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAppList(ILjava/util/ArrayList;)V

    .line 106
    .end local v1  # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_36
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private static clear()V
    .registers 7

    .line 271
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 274
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;

    .line 276
    .local v5, "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    if-eqz v5, :cond_2c

    iget v6, v5, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    if-nez v6, :cond_2f

    .line 277
    :cond_2c
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4  # "key":Ljava/lang/String;
    .end local v5  # "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    :cond_2f
    goto :goto_12

    .line 280
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .restart local v4  # "key":Ljava/lang/String;
    sget-object v5, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    nop

    .end local v4  # "key":Ljava/lang/String;
    goto :goto_34

    .line 283
    .end local v1  # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_47
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public static clearType(Ljava/lang/String;I)V
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "type"  # I

    .line 219
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->setType(Ljava/lang/String;II)V

    .line 220
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 381
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->clear()V

    .line 383
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    .local v2, "pkg":Ljava/lang/String;
    sget-object v3, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;

    .line 385
    .local v3, "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    if-eqz v3, :cond_42

    iget v4, v3, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    if-eqz v4, :cond_42

    .line 386
    const-string v4, "%s:[%s]\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget v7, v3, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    invoke-static {v7}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getTypeName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 388
    .end local v2  # "pkg":Ljava/lang/String;
    .end local v3  # "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    :cond_42
    goto :goto_10

    .line 389
    :cond_43
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public static fillAppList(Landroid/os/Bundle;)V
    .registers 7
    .param p0, "bundle"  # Landroid/os/Bundle;

    .line 82
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3d

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_7
    sget-object v3, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    .local v4, "typeName":Ljava/lang/String;
    sget-object v5, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 87
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    .end local v4  # "typeName":Ljava/lang/String;
    :cond_36
    goto :goto_11

    .line 91
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_3a

    .line 92
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    .line 93
    return-void

    .line 91
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0  # "bundle":Landroid/os/Bundle;
    :try_start_3c
    throw v2

    .line 92
    .restart local p0  # "bundle":Landroid/os/Bundle;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public static getType(Ljava/lang/String;)I
    .registers 4
    .param p0, "pkg"  # Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;

    .line 235
    .local v1, "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    if-nez v1, :cond_10

    .line 236
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 238
    :cond_10
    iget v2, v1, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    monitor-exit v0

    return v2

    .line 239
    .end local v1  # "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"  # I

    .line 354
    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    .line 355
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget-object v2, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 357
    sget-object v2, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_2e

    .line 358
    sget-object v2, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 362
    .end local v1  # "i":I
    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/os/Looper;)Z
    .registers 6
    .param p0, "looper"  # Landroid/os/Looper;

    .line 57
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->sSettingObserver:Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_49

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;

    invoke-direct {v2, v0}, Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->sSettingObserver:Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;

    .line 60
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateLockedList()V

    .line 61
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/pps/observer/PPSServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 62
    const-string v3, "recent_lock_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/pps/observer/PPSAppTypeManager;->sSettingObserver:Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;

    .line 61
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateInputMethod()V

    .line 66
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/pps/observer/PPSServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 67
    const-string v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/pps/observer/PPSAppTypeManager;->sSettingObserver:Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;

    .line 66
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    .end local v0  # "handler":Landroid/os/Handler;
    :cond_49
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    if-nez v0, :cond_79

    const-string v0, "alphame_server"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 73
    const/16 v0, 0x1000

    .line 74
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getFavoriteApps"

    invoke-virtual {v2, v4, v3}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 73
    invoke-static {v0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 75
    new-instance v0, Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;-><init>(Lcom/meizu/pps/observer/PPSAppTypeManager$1;)V

    sput-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    .line 76
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    invoke-virtual {v0, v2}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 78
    :cond_79
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->sReceiver:Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;

    if-eqz v0, :cond_7e

    const/4 v1, 0x1

    :cond_7e
    return v1
.end method

.method public static isBadApp(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;

    .line 248
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getType(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->BAD_APP_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static isFavoriteApp(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;

    .line 243
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getType(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "type":I
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_f

    sget v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->BAD_APP_MASK:I

    and-int/2addr v1, v0

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static isHeavyApp(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;

    .line 252
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getType(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "type":I
    and-int/lit16 v1, v0, 0x1600

    if-eqz v1, :cond_f

    sget v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->BAD_APP_MASK:I

    and-int/2addr v1, v0

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static mask(I)I
    .registers 3
    .param p0, "type"  # I

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "mask":I
    move v1, p0

    .line 263
    .local v1, "tmp_type":I
    :goto_2
    if-eqz v1, :cond_8

    .line 264
    or-int/2addr v0, p0

    .line 265
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_8
    return v0
.end method

.method public static removeNotification(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"  # Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 152
    .local v1, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 153
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v3, "notification"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    const/16 v2, 0x4000

    invoke-static {p0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->clearType(Ljava/lang/String;I)V

    .line 157
    .end local v1  # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static removeWidget(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"  # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 112
    .local v1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 113
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v3, "widget"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->clearType(Ljava/lang/String;I)V

    .line 117
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAppList(ILjava/util/ArrayList;)V

    .line 118
    .end local v1  # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static setHome(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"  # Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v2, "home"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 124
    .local v1, "home":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 125
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    const-string v3, "home"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 129
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/high16 v2, 0x20000

    invoke-static {p0, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addType(Ljava/lang/String;I)V

    .line 131
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAppList(ILjava/util/ArrayList;)V

    .line 133
    .end local v1  # "home":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static setIntercept(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "disallowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 201
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 202
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    .line 204
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 205
    :cond_37
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    .line 206
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v4  # "key":Ljava/lang/String;
    :cond_47
    :goto_47
    goto :goto_1a

    .line 210
    .end local v2  # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_48
    const/16 v2, 0x800

    invoke-static {v2, v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 211
    const/high16 v2, 0x2000000

    invoke-static {v2, v1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 212
    return-void
.end method

.method public static setType(Ljava/lang/String;II)V
    .registers 7
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "type"  # I
    .param p2, "mask"  # I

    .line 223
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    sget-object v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;

    .line 225
    .local v1, "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    if-nez v1, :cond_18

    .line 226
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->TYPE_MAP:Ljava/util/HashMap;

    new-instance v3, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;

    invoke-direct {v3}, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;-><init>()V

    move-object v1, v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_18
    iget v2, v1, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    not-int v3, p2

    and-int/2addr v2, v3

    and-int v3, p1, p2

    or-int/2addr v2, v3

    iput v2, v1, Lcom/meizu/pps/observer/PPSAppTypeManager$Type;->type:I

    .line 229
    .end local v1  # "currentType":Lcom/meizu/pps/observer/PPSAppTypeManager$Type;
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static updateInputMethod()V
    .registers 4

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "inputMethodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/pps/observer/PPSServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "inputMethod":Ljava/lang/String;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 345
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "methodId":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_2e

    .line 347
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v2  # "methodId":[Ljava/lang/String;
    :cond_2e
    const/16 v2, 0x10

    invoke-static {v2, v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 351
    return-void
.end method

.method public static updateList(ILjava/util/ArrayList;)V
    .registers 9
    .param p0, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/meizu/pps/observer/PPSAppTypeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    if-nez p1, :cond_7

    .line 163
    :try_start_5
    monitor-exit v0

    return-void

    .line 165
    :cond_7
    sget-object v1, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "typeName":Ljava/lang/String;
    if-nez v1, :cond_13

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_13
    sget-object v2, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 170
    .local v2, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_28

    .line 171
    sget-object v3, Lcom/meizu/pps/observer/PPSAppTypeManager;->LIST_MAP:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 175
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_46

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 176
    :cond_44
    monitor-exit v0

    return-void

    .line 179
    :cond_46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .local v3, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v4, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 185
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6, p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addType(Ljava/lang/String;I)V

    .line 188
    .end local v6  # "pkg":Ljava/lang/String;
    goto :goto_60

    .line 189
    :cond_70
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 190
    .restart local v6  # "pkg":Ljava/lang/String;
    invoke-static {v6, p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->clearType(Ljava/lang/String;I)V

    .line 191
    .end local v6  # "pkg":Ljava/lang/String;
    goto :goto_74

    .line 192
    :cond_84
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAppList(ILjava/util/ArrayList;)V

    .line 193
    .end local v1  # "typeName":Ljava/lang/String;
    .end local v2  # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4  # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method private static updateLockedList()V
    .registers 13

    .line 313
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    const-string v1, "recent_lock_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "packageNames":Ljava/lang/String;
    if-eqz v0, :cond_75

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "lockedList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v2, "lockedList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "strings":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_27
    if-ge v6, v4, :cond_6b

    aget-object v7, v3, v6

    .line 320
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 321
    goto :goto_68

    .line 323
    :cond_32
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 324
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v5

    .line 325
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 326
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 327
    :cond_53
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v11

    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 328
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v9  # "pkgName":Ljava/lang/String;
    :cond_64
    :goto_64
    goto :goto_68

    .line 331
    :cond_65
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v7  # "name":Ljava/lang/String;
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 334
    :cond_6b
    const/16 v4, 0x200

    invoke-static {v4, v1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 335
    const/16 v4, 0x400

    invoke-static {v4, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 337
    .end local v1  # "lockedList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "lockedList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "strings":[Ljava/lang/String;
    :cond_75
    return-void
.end method


# virtual methods
.method public isUserLockApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 256
    invoke-static {p1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getType(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "type":I
    and-int/lit16 v1, v0, 0x600

    if-eqz v1, :cond_f

    sget v1, Lcom/meizu/pps/observer/PPSAppTypeManager;->BAD_APP_MASK:I

    and-int/2addr v1, v0

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
