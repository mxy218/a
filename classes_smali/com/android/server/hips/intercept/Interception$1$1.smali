.class Lcom/android/server/hips/intercept/Interception$1$1;
.super Landroid/os/Handler;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/Interception$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/Interception$1;

.field final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/Interception$1;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/Interception$1;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 634
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$1$1;->this$0:Lcom/android/server/hips/intercept/Interception$1;

    iput-object p3, p0, Lcom/android/server/hips/intercept/Interception$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"  # Landroid/os/Message;

    .line 638
    const-string v0, "Interception"

    if-nez p1, :cond_b

    .line 639
    const-string/jumbo v1, "updateInterceptionItem, the msg is null, return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 643
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 644
    .local v1, "data":Landroid/os/Bundle;
    if-nez v1, :cond_18

    .line 645
    const-string/jumbo v2, "updateInterceptionItem, the data is null, return."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 649
    :cond_18
    nop

    .line 650
    const-string/jumbo v2, "map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 652
    .local v2, "serializable":Ljava/io/Serializable;
    if-nez v2, :cond_29

    .line 653
    const-string/jumbo v3, "updateInterceptionItem, the serializable is null, return."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 657
    :cond_29
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 658
    .local v3, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v4, ""

    .line 659
    .local v4, "itemsInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 661
    .local v5, "userfulItemsCount":I
    :try_start_31
    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    .line 662
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 661
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 664
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v7, :cond_51

    .line 665
    const-string/jumbo v8, "updateInterceptionItem, the entry is null, stop to update"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    goto :goto_3c

    .line 669
    :cond_51
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 670
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 671
    .local v9, "value":Ljava/lang/Integer;
    if-eqz v8, :cond_87

    if-nez v9, :cond_62

    goto :goto_87

    .line 676
    :cond_62
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "|||"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "###"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 678
    nop

    .end local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8  # "key":Ljava/lang/String;
    .end local v9  # "value":Ljava/lang/Integer;
    add-int/lit8 v5, v5, 0x1

    .line 679
    goto :goto_3c

    .line 672
    .restart local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8  # "key":Ljava/lang/String;
    .restart local v9  # "value":Ljava/lang/Integer;
    :cond_87
    :goto_87
    const-string/jumbo v10, "updateInterceptionItem, the key or value is null, stop to update"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_8d} :catch_8f

    .line 673
    goto :goto_3c

    .line 682
    .end local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8  # "key":Ljava/lang/String;
    .end local v9  # "value":Ljava/lang/Integer;
    :cond_8e
    goto :goto_96

    .line 680
    :catch_8f
    move-exception v6

    .line 681
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "updateInterceptionItem, get data from serializable error!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v6  # "e":Ljava/lang/Exception;
    :goto_96
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->access$000(Ljava/util/Map;)V

    .line 688
    invoke-static {v3}, Lcom/android/server/am/AmsInjector;->setIntercept(Ljava/util/Map;)V

    .line 691
    const-string v6, "/data/system/interception_items"

    invoke-static {v4, v6}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInterceptionItem, userfulItemsCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/server/hips/intercept/Interception$1$1;->this$0:Lcom/android/server/hips/intercept/Interception$1;

    iget-object v0, v0, Lcom/android/server/hips/intercept/Interception$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/hips/intercept/Interception$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 695
    return-void
.end method
