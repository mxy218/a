.class Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;
.super Ljava/lang/Object;
.source "DateTimePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;Landroid/content/Intent;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;->this$1:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;->this$1:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;

    iget-object v0, v0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V

    .line 97
    :cond_15
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1$1;->this$1:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->updateDateTime()V

    return-void
.end method
