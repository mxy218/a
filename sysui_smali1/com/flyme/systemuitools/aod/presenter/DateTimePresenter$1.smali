.class Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 92
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;

    invoke-direct {v0, p0, p2}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
