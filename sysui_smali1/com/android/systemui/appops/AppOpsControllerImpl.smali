.class public Lcom/android/systemui/appops/AppOpsControllerImpl;
.super Ljava/lang/Object;
.source "AppOpsControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController;
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpNotedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appops/AppOpsControllerImpl$H;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field protected static final OPS:[I


# instance fields
.field private final mActiveItems:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpsController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksByCode:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/appops/AppOpsController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private final mNotedItems:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotedItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 71
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1a
        0x18
        0x1b
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p2  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 83
    new-instance p1, Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 84
    sget-object p1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    array-length p1, p1

    const/4 p2, 0x0

    :goto_36
    if-ge p2, p1, :cond_4d

    .line 86
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_36

    :cond_4d
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->removeNoted(IILjava/lang/String;)V

    return-void
.end method

.method private addNoted(IILjava/lang/String;)Z
    .registers 12

    .line 211
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 214
    new-instance v1, Lcom/android/systemui/appops/AppOpItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;J)V

    .line 215
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 219
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2e

    .line 221
    iget-object p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;->scheduleRemoval(Lcom/android/systemui/appops/AppOpItem;J)V

    return p1

    :catchall_2e
    move-exception p0

    .line 219
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method private getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/appops/AppOpItem;"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_27

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appops/AppOpItem;

    .line 165
    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v2

    if-ne v2, p2, :cond_24

    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_24

    .line 166
    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifySuscribers(IILjava/lang/String;Z)V
    .registers 7

    .line 308
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 310
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpsController$Callback;

    .line 311
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsController$Callback;->onActiveStateChanged(IILjava/lang/String;Z)V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method private removeNoted(IILjava/lang/String;)V
    .registers 7

    .line 192
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-nez v1, :cond_d

    .line 194
    monitor-exit v0

    return-void

    .line 195
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2c

    .line 200
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v1

    .line 201
    :try_start_16
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 202
    :goto_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_29

    if-nez v0, :cond_28

    .line 204
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    .line 202
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0

    :catchall_2c
    move-exception p0

    .line 197
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private updateActives(IILjava/lang/String;Z)Z
    .registers 14

    .line 174
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_22

    if-eqz p4, :cond_22

    .line 177
    new-instance p4, Lcom/android/systemui/appops/AppOpItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, p4

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;J)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v0

    return v2

    :cond_22
    if-eqz v1, :cond_2d

    if-nez p4, :cond_2d

    .line 182
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v0

    return v2

    :cond_2d
    const/4 p0, 0x0

    .line 186
    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    .line 187
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method


# virtual methods
.method public addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
    .registers 9

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v1, v0, :cond_29

    .line 128
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 129
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/ArrayMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    if-eqz v2, :cond_30

    .line 135
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_30
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {p0, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    :cond_3b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "AppOpsController state:"

    .line 318
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Listening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Active Items:"

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 321
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "    "

    if-ge p3, v0, :cond_41

    .line 322
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpItem;

    .line 323
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_41
    const-string p3, "  Noted Items:"

    .line 325
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    :goto_46
    iget-object p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_63

    .line 327
    iget-object p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/appops/AppOpItem;

    .line 328
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_63
    return-void
.end method

.method public synthetic lambda$onOpActiveChanged$0$AppOpsControllerImpl(IILjava/lang/String;Z)V
    .registers 5

    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onOpNoted$1$AppOpsControllerImpl(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 303
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    return-void
.end method

.method public onOpActiveChanged(IILjava/lang/String;Z)V
    .registers 13

    .line 274
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateActives(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 279
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 280
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_29

    if-nez v1, :cond_28

    .line 285
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v7, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$ytWudla0eUXQNol33KSx7VyQvYM;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$ytWudla0eUXQNol33KSx7VyQvYM;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    .line 280
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onOpNoted(IILjava/lang/String;I)V
    .registers 6

    if-eqz p4, :cond_3

    return-void

    .line 296
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addNoted(IILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    return-void

    .line 299
    :cond_a
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p4

    .line 300
    :try_start_d
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItem(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 301
    :goto_18
    monitor-exit p4
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_26

    if-nez v0, :cond_25

    .line 303
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 301
    :try_start_27
    monitor-exit p4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method protected setBGHandler(Lcom/android/systemui/appops/AppOpsControllerImpl$H;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    return-void
.end method

.method protected setListening(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    if-eqz p1, :cond_13

    .line 99
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    goto :goto_35

    .line 102
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p1

    .line 106
    :try_start_26
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_39

    .line 108
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_2f
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit v0

    :goto_35
    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw p0

    :catchall_39
    move-exception p0

    .line 107
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method
