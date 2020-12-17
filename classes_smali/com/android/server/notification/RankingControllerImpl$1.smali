.class Lcom/android/server/notification/RankingControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "RankingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10
    .param p1, "selfChange"  # Z

    .line 71
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v0, v0, Lcom/android/server/notification/RankingControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_notification_filter_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "currentPkgAndFilter":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange: GroupDebug,value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_2a

    .line 75
    return-void

    .line 77
    :cond_2a
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "pkgAndFilter":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 79
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "filter":I
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 81
    .local v5, "from":I
    const-string/jumbo v6, "onChange: GroupDebug,from="

    if-nez v5, :cond_62

    .line 82
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",return."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 84
    :cond_62
    if-ne v5, v3, :cond_86

    .line 85
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",continue reset notification score"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    const/high16 v6, 0x42c80000  # 100.0f

    invoke-static {v3, v2, v6}, Lcom/android/server/notification/RankingControllerImpl;->access$100(Lcom/android/server/notification/RankingControllerImpl;Ljava/lang/String;F)V

    .line 89
    .end local v1  # "pkgAndFilter":[Ljava/lang/String;
    .end local v2  # "pkg":Ljava/lang/String;
    .end local v4  # "filter":I
    .end local v5  # "from":I
    :cond_86
    return-void
.end method
