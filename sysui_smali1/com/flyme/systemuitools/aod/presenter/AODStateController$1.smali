.class Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;
.super Landroid/database/ContentObserver;
.source "AODStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Landroid/os/Handler;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 105
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$000(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "aod_style"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 107
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$000(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "notification_settings"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1d

    move v0, v2

    .line 109
    :cond_1d
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)I

    move-result v1

    if-eq p1, v1, :cond_34

    .line 110
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {v1, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$102(Lcom/flyme/systemuitools/aod/presenter/AODStateController;I)I

    .line 111
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$200(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)V

    .line 112
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$300(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)V

    .line 115
    :cond_34
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$400(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)Z

    move-result p1

    if-eq v0, p1, :cond_46

    .line 116
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p1, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$402(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Z)Z

    .line 117
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-static {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Z)V

    :cond_46
    return-void
.end method
