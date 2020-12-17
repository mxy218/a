.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->onStartedGoingToSleep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 604
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 605
    :cond_1c
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2502(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 606
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V

    .line 607
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2502(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    :cond_2d
    return-void
.end method
