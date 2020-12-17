.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
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

    .line 1207
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1210
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1211
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 v0, 0x1

    const-string v1, "/sys/class/meizu/lcm/display/doze_s2"

    invoke-static {p0, v1, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$3100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Ljava/lang/String;I)V

    :cond_10
    return-void
.end method
