.class final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationAccessManager"
.end annotation


# instance fields
.field private final mAllowedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 448
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V
    .registers 3

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 452
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 455
    if-nez v1, :cond_13

    .line 456
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 460
    :cond_13
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 461
    add-int/lit8 v2, v2, -0x1

    :goto_1b
    if-ltz v2, :cond_4a

    .line 462
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 463
    if-eq v3, v0, :cond_47

    .line 464
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 465
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v3}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 466
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 467
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v3}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 468
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 461
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 472
    :cond_4a
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 474
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 475
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 477
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_74
    goto :goto_4e

    .line 480
    :cond_75
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 481
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 482
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3}, Lcom/android/server/vr/VrManagerService;->access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 484
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 485
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_a3
    goto :goto_79

    .line 489
    :cond_a4
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 490
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    return-void
.end method
