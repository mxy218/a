.class final Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/textservices/TextServicesManagerService;
    .param p2, "x1"  # Lcom/android/server/textservices/TextServicesManagerService$1;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 10

    .line 384
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v0

    .line 389
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 390
    :try_start_b
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 391
    .local v2, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_1b

    monitor-exit v1

    return-void

    .line 394
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 395
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 398
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v4

    if-nez v4, :cond_2a

    monitor-exit v1

    return-void

    .line 400
    :cond_2a
    if-nez v3, :cond_3a

    .line 401
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    move-object v3, v4

    .line 405
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v4, v3, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    goto :goto_63

    .line 407
    :cond_3a
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v5

    .line 410
    .local v5, "change":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_48

    const/4 v6, 0x2

    if-ne v5, v6, :cond_63

    .line 411
    :cond_48
    iget-object v6, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 412
    invoke-static {v6, v4, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 414
    .local v6, "availSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v6, :cond_5e

    .line 415
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 416
    :cond_5e
    iget-object v7, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v7, v6, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 420
    .end local v2  # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v3  # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "change":I
    .end local v6  # "availSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_63
    :goto_63
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_b .. :try_end_67} :catchall_65

    throw v2
.end method
